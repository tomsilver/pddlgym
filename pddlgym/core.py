"""Implements PDDLEnv, a gym.Env parameterized by PDDL.

One PDDLEnv corresponds to one PDDL domain. Each episode corresponds to
one one PDDL problem; calling env.reset() sets up a new problem.

Observations are namedtuples with attributes `literals`, `objects`, `goal`.
Actions are single ground literals (not operators -- see README).

The debug_info returned by reset and step contains the domain PDDL file
and current problem PDDL file to facilitate interaction with a planner.

Usage example:
>>> env = PDDLEnv("pddl/sokoban.pddl", "pddl/sokoban")
>>> obs, debug_info = env.reset()
>>> action = env.action_space.sample()
>>> obs, reward, done, debug_info = env.step(action)
"""
from pddlgym.parser import PDDLDomainParser, PDDLProblemParser, PDDLParser
from pddlgym.inference import find_satisfying_assignments
from pddlgym.structs import ground_literal, Literal, State, ProbabilisticEffect, LiteralConjunction
from pddlgym.spaces import LiteralSpace, LiteralSetSpace
from pddlgym.planning import get_fd_optimal_plan_cost, get_pyperplan_heuristic

import pyperplan
import copy
import functools
import glob
import os
import tempfile

import gym

import numpy as np

TMP_PDDL_DIR = "/dev/shm" if os.path.exists("/dev/shm") else None


class InvalidAction(Exception):
    """See PDDLEnv docstring"""
    pass


def _apply_effects(state, lifted_effects, assignments):
    """
    Update a state given lifted operator effects and
    assignments of variables to objects.

    Parameters
    ----------
    state : State
        The state on which the effects are applied.
    lifted_effects : { Literal }
    assignments : { TypedEntity : TypedEntity }
        Maps variables to objects.
    """
    new_literals = set(state.literals)
    determinized_lifted_effects = []
    # Handle probabilistic effects.
    for lifted_effect in lifted_effects:
        if isinstance(lifted_effect, ProbabilisticEffect):
            chosen_effect = lifted_effect.sample()
            if chosen_effect == "NOCHANGE":
                continue
            if isinstance(chosen_effect, LiteralConjunction):
                for lit in chosen_effect.literals:
                    determinized_lifted_effects.append(lit)
            else:
                determinized_lifted_effects.append(chosen_effect)
        else:
            determinized_lifted_effects.append(lifted_effect)

    for lifted_effect in determinized_lifted_effects:
        effect = ground_literal(lifted_effect, assignments)
        # Negative effect
        if effect.is_anti:
            literal = effect.inverted_anti
            if literal in new_literals:
                new_literals.remove(literal)
    for lifted_effect in determinized_lifted_effects:
        effect = ground_literal(lifted_effect, assignments)
        if not effect.is_anti:
            new_literals.add(effect)
    return state.with_literals(new_literals)


def _make_heuristic(domain_file, problem, mode, action_space,
                    cache_maxsize=10000):
    try:
        # generate a temporary file to hand over to pyperplan
        pyp, problem_file = tempfile.mkstemp(dir=TMP_PDDL_DIR, text=True)
        initial_state = problem.initial_state
        # Add action literals to initial state so pyperplan works
        action_lits = set(
            action_space.all_ground_literals(problem, valid_only=False))
        initial_state |= action_lits
        with os.fdopen(pyp, "w") as f:
            problem.write(f, initial_state=initial_state,
                          fast_downward_order=True)
        parser = pyperplan.Parser(domain_file, problem_file)
        pyperplan_domain = parser.parse_domain()
        pyperplan_problem = parser.parse_problem(pyperplan_domain)
    finally:
        try:
            os.remove(problem_file)
        except FileNotFoundError:
            pass

    task = pyperplan.grounding.ground(pyperplan_problem)
    heuristic = pyperplan.HEURISTICS[mode](task)

    @functools.lru_cache(cache_maxsize)
    def _call_heuristic(state):
        state = frozenset({lit.pddl_str() for lit in state.literals})
        # Rohan: task.facts is basically all the literals that could
        # ever change in the domain, unioned with the goal literals.
        # (I guess this handles the case where you ever have a static
        # literal in the goal...but that would be sort of silly anyway.)
        # So, the following line removes static literals from the state.
        # Also, I verified that this doesn't change the heuristics in blocks.
        state &= task.facts
        node = pyperplan.search.searchspace.make_root_node(state)
        return heuristic(node)

    return _call_heuristic


class PDDLEnv(gym.Env):
    """
    Parameters
    ----------
    domain_file : str
        Path to a PDDL domain file.
    problem_dir : str
        Path to a directory of PDDL problem files.
    render : fn or None
        An optional render function (obs -> img).
    seed : int
        Random seed used to sample new problems upon reset.
    raise_error_on_invalid_action : bool
        When an action is taken for which no operator's
        preconditions holds, raise InvalidAction() if True;
        otherwise silently make no changes to the state.
    operators_as_actions : bool
        If True, the PDDL operators are treated as the actions.
        Otherwise, actions must be specified separately in the PDDL file.
    dynamic_action_space : bool
        Let self.action_space dynamically change on each iteration to
        include only valid actions (must match operator preconditions).
    shape_reward_mode : Method for reward shaping.
        - None: no reward shaping is done.
        - "optimal": Evaluates the current state against the distance to goal
                     given by an optimal planner. Gives rewards in the range
                     (-inf, 1), with 1 for the goal state and 0 for the
                     initial state.
        - any heuristic in pyperplan.HEURISTICS:
              https://github.com/aibasel/pyperplan/tree/master/src/heuristics
              e.g., "blind", "hadd", "hff", "hmax", "hsa", "lmcut"
              Note that "blind" is equivalent to None.
              Note that "landmark" is path-dependent and so disallowed.
              Gives rewards in the range (-inf, 1), with 1 for the goal state
              and 0 for the initial state.
    """
    def __init__(self, domain_file, problem_dir, render=None, seed=0,
                 raise_error_on_invalid_action=False,
                 operators_as_actions=False,
                 dynamic_action_space=False,
                 shape_reward_mode=None,
                 shaping_discount=1.):
        self._state = None
        self._domain_file = domain_file
        self._problem_dir = problem_dir
        self._render = render
        self.seed(seed)
        self._raise_error_on_invalid_action = raise_error_on_invalid_action
        self.operators_as_actions = operators_as_actions

        if shape_reward_mode == "none":
            shape_reward_mode = None
        self._shape_reward_mode = shape_reward_mode
        self._shaping_discount = shaping_discount
        self._current_heuristic = None
        self._heuristic = None

        # Set by self.fix_problem_index
        self._problem_index_fixed = False

        self._problem_idx = None

        # Parse the PDDL files
        self.domain, self.problems = self.load_pddl(domain_file, problem_dir,
            operators_as_actions=self.operators_as_actions)

        # Initialize action space with problem-independent components
        actions = list(self.domain.actions)
        self.action_predicates = [self.domain.predicates[a] for a in actions]
        if dynamic_action_space:
            self._action_space = LiteralSpace(
                self.action_predicates, lit_valid_test=self._action_valid_test,
                type_to_parent_types=self.domain.type_to_parent_types)
        else:
            self._action_space = LiteralSpace(self.action_predicates,
                type_to_parent_types=self.domain.type_to_parent_types)

        # Initialize observation space with problem-independent components
        self._observation_space = LiteralSetSpace(
            set(self.domain.predicates.values()) - set(self.action_predicates),
            type_to_parent_types=self.domain.type_to_parent_types)

    @staticmethod
    def load_pddl(domain_file, problem_dir, operators_as_actions=False):
        """
        Parse domain and problem PDDL files.

        Parameters
        ----------
        domain_file : str
            Path to a PDDL domain file.
        problem_dir : str
            Path to a directory of PDDL problem files.
        operators_as_actions : bool
            See class docstirng.

        Returns
        -------
        domain : PDDLDomainParser
        problems : [ PDDLProblemParser ]
        """
        domain = PDDLDomainParser(domain_file, 
            expect_action_preds=(not operators_as_actions),
            operators_as_actions=operators_as_actions)
        problems = []
        problem_files = [f for f in glob.glob(os.path.join(problem_dir, "*.pddl"))]
        for problem_file in sorted(problem_files):
            problem = PDDLProblemParser(problem_file, domain.domain_name, 
                domain.types, domain.predicates, domain.actions)
            problems.append(problem)
        return domain, problems

    @property
    def observation_space(self):
        return self._observation_space

    @property
    def action_space(self):
        return self._action_space

    def set_state(self, state):
        self._state = state
        if self._shape_reward_mode is not None:
            self._current_heuristic = self.compute_heuristic(state)

    def get_state(self):
        return self._state

    def seed(self, seed):
        self._seed = seed
        self.rng = np.random.RandomState(seed)

    def fix_problem_index(self, problem_idx):
        """
        Fix the PDDL problem used when reset is called.

        Useful for reproducible testing.

        The order of PDDL problems is determined by the names
        of their files. See PDDLEnv.load_pddl.

        Parameters
        ----------
        problem_idx : int
        """
        if problem_idx != self._problem_idx:
            # Problem is changing, force ourselves to recompute heuristic
            self._heuristic = None
        self._problem_idx = problem_idx
        self._problem_index_fixed = True

    def reset(self):
        """
        Set up a new PDDL problem and start a new episode.

        Note that the PDDL files are included in debug_info.

        Returns
        -------
        obs : { Literal }
            The set of active predicates.
        debug_info : dict
            See self._get_debug_info()
        """
        if not self._problem_index_fixed:
            # Problem is changing, force ourselves to recompute heuristic
            self._heuristic = None
            self._problem_idx = self.rng.choice(len(self.problems))
        self._problem = self.problems[self._problem_idx]

        # Create new heuristic if using reward shaping and either the problem
        # isn't fixed or no heuristic has been created yet.
        if (self._shape_reward_mode is not None
                and self._shape_reward_mode != "optimal"
                and self._heuristic is None):
            self._heuristic = self.make_heuristic_function(self._shape_reward_mode)

        # reset the current heuristic
        self._current_heuristic = None
        initial_state = State(frozenset(self._problem.initial_state),
                              frozenset(self._problem.objects),
                              self._problem.goal)
        self.set_state(initial_state)

        self._goal = self._problem.goal
        debug_info = self._get_debug_info()

        return self.get_state(), debug_info

    def make_heuristic_function(self, mode):
        return _make_heuristic(
                self._domain_file,
                self._problem,
                mode=mode,
                action_space=self.action_space,
            )

    def _get_debug_info(self):
        """
        Contains the problem file and domain file
        for interaction with a planner.
        """
        info = {'problem_file' : self._problem.problem_fname,
                'domain_file' : self.domain.domain_fname }
        return info

    def _select_operator(self, state, action):
        """
        Helper function for step.
        """
        if self.operators_as_actions:
            # There should be only one possible operator if actions are operators
            possible_operators = set()
            for name, operator in self.domain.operators.items():
                if name.lower() == action.predicate.name.lower():
                    assert len(possible_operators) == 0
                    possible_operators.add(operator)
        else:
            # Possibly multiple operators per action
            possible_operators = set(self.domain.operators.values())

        # Knowledge base: literals in the state + action taken
        kb = set(state.literals) | {action}

        selected_operator = None
        assignment = None
        for operator in possible_operators:
            if isinstance(operator.preconds, Literal):
                conds = [operator.preconds]
            else:
                conds = operator.preconds.literals
            # Necessary for binding the operator arguments to the variables
            if self.operators_as_actions:
                conds = [action.predicate(*operator.params)] + conds
            # Check whether action is in the preconditions
            action_literal = None
            for lit in conds: 
                if lit.predicate == action.predicate:
                    action_literal = lit
                    break
            if action_literal is None:
                continue
            # For proving, consider action variable first
            action_variables = action_literal.variables
            variable_sort_fn = lambda v : (not v in action_variables, v)
            assignments = find_satisfying_assignments(kb, conds,
                variable_sort_fn=variable_sort_fn,
                type_to_parent_types=self.domain.type_to_parent_types)
            num_assignments = len(assignments)
            if num_assignments > 0:
                assert num_assignments == 1, "Nondeterministic envs not supported"
                selected_operator = operator
                assignment = assignments[0]
                break

        return selected_operator, assignment

    def step(self, action):
        """
        Execute an action and update the state.

        Tries to find a ground operator for which the 
        preconditions hold when this action is taken. If none
        exist, optionally raises InvalidAction. If multiple
        exist, raises an AssertionError, since we assume
        deterministic environments only. Once the operator
        is found, the ground effects are executed to update
        the state.

        Parameters
        ----------
        action : Literal

        Returns
        -------
        state : State
            The set of active predicates.
        reward : float
            1 if the goal is reached and 0 otherwise.
        done : bool
            True if the goal is reached.
        debug_info : dict
            See self._get_debug_info.
        """
        state, reward, done, debug_info = self.sample_transition(action)
        self.set_state(state)
        if "next_state_heuristic" in debug_info:
            self._current_heuristic = debug_info["next_state_heuristic"]
        return state, reward, done, debug_info

    def sample_transition(self, action):
        selected_operator, assignment = self._select_operator(self._state,
                                                              action)
        state = self._state

        # A ground operator was found; execute the ground effects
        if assignment is not None:
            state = _apply_effects(
                self._state,
                selected_operator.effects.literals,
                assignment,
            )

        # No operator was found
        elif self._raise_error_on_invalid_action:
            raise InvalidAction()

        done = self._is_goal_reached(state)

        reward = self.extrinsic_reward(state, done)
        debug_info = self._get_debug_info()

        # add intrinsic reward
        if self._shape_reward_mode:
            next_heuristic = 0. if done else self.compute_heuristic(state)
            reward += self._current_heuristic - next_heuristic * self._shaping_discount
            debug_info["next_state_heuristic"] = next_heuristic

        return state, reward, done, debug_info

    def extrinsic_reward(self, state, done):
        if done:
            reward = 1.
        else:
            reward = 0.

        return reward

    def compute_heuristic(self, state):
        """Compute the heuristic for a given state in the current problem.
        """
        if self._shape_reward_mode == "optimal":
            problem = self.problems[self._problem_idx]

            # Add action literals to state to enable planning
            state_lits = set(state.literals)
            action_lits = set(
                self.action_space.all_ground_literals(state, valid_only=False))
            state_lits |= action_lits

            problem_path = ""
            try:
                # generate a temporary file to hand over to the external planner
                fd, problem_path = tempfile.mkstemp(dir=TMP_PDDL_DIR, text=True)
                with os.fdopen(fd, "w") as f:
                    problem.write(f, initial_state=state_lits, fast_downward_order=True)

                return get_fd_optimal_plan_cost(
                    self.domain.domain_fname, problem_path)
            finally:
                try:
                    os.remove(problem_path)
                except FileNotFoundError:
                    pass
        else:
            return self._heuristic(state)

    def _is_goal_reached(self, state):
        """
        Check if the terminal condition is met, i.e., the goal is reached.
        """
        return self._goal.holds(state.literals)

    def _action_valid_test(self, state, action):
        _, assignment = self._select_operator(state, action)
        return assignment is not None

    def render(self, *args, **kwargs):
        if self._render:
            return self._render(self._state.literals, *args, **kwargs)
