"""Implements PDDLEnv, a gym.Env parameterized by PDDL.

One PDDLEnv corresponds to one PDDL domain. Each episode corresponds to
one one PDDL problem; calling env.reset() sets up a new problem.

Observations are sets of ground literals. Actions are single ground
literals (not operators -- see README).

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
from pddlgym.structs import ground_literal, Literal
from pddlgym.spaces import LiteralSpace, LiteralSetSpace
from pddlgym.planning import get_fd_optimal_plan_cost, get_pyperplan_heuristic

from collections import defaultdict

import copy
import glob
import gym
import os
import numpy as np


class InvalidAction(Exception):
    """See PDDLEnv docstring"""
    pass


def _apply_effects(state, lifted_effects, assignments):
    """
    Update a state given lifted operator effects and
    assignments of variables to objects.

    Parameters
    ----------
    state : #TODO figure out type
        The state on which the effects are applied.
    lifted_effects : { Literal }
    assignments : { TypedEntity : TypedEntity }
        Maps variables to objects.
    """
    new_state = {lit for lit in state}

    for lifted_effect in lifted_effects:
        effect = ground_literal(lifted_effect, assignments)
        # Negative effect
        if effect.is_anti:
            literal = effect.inverted_anti
            if literal in new_state:
                new_state.remove(literal)
    for lifted_effect in lifted_effects:
        effect = ground_literal(lifted_effect, assignments)
        if not effect.is_anti:
            new_state.add(effect)
    return new_state


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
    compute_approx_reachable_set : bool
        On each step, compute the approximate reachable set of literals under
        the delete-relaxed version of the domain. Add it to info dict.
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
                 compute_approx_reachable_set=False,
                 shape_reward_mode=None):
        self._state = None
        self._domain_file = domain_file
        self._problem_dir = problem_dir
        self._render = render
        self.seed(seed)
        self._raise_error_on_invalid_action = raise_error_on_invalid_action
        self.operators_as_actions = operators_as_actions
        self._compute_approx_reachable_set = compute_approx_reachable_set
        self._shape_reward_mode = shape_reward_mode

        # Set by self.fix_problem_index
        self._problem_index_fixed = False

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

        if self._compute_approx_reachable_set:
            self._delete_relaxed_ops = self._get_delete_relaxed_ops()

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
                domain.types, domain.predicates)
            problems.append(problem)
        return domain, problems

    @property
    def observation_space(self):
        return self._observation_space

    @property
    def action_space(self):
        return self._action_space

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
        self._problem_idx = problem_idx
        self._problem_index_fixed = True

    def reset(self):
        """
        Set up a new PDDL problem and start a new episode.

        Note that the PDDL files are included in debug_info.

        Returns
        -------
        obs : { Literal }
            See self._get_observation()
        debug_info : dict
            See self._get_debug_info()
        """
        if not self._problem_index_fixed:
            self._problem_idx = self.rng.choice(len(self.problems))
        self._problem = self.problems[self._problem_idx]
        self._state = { lit for lit in self._problem.initial_state \
            if lit.predicate.name not in self.domain.actions }
        self._action_lits = { lit for lit in self._problem.initial_state \
            if lit.predicate.name in self.domain.actions }
        self._goal = self._problem.goal
        # The action and observation spaces depend on the objects
        self._action_space.update(self._problem.objects)
        self._observation_space.update(self._problem.objects)
        debug_info = self._get_debug_info()
        self._initialize_reward_shaping_data(debug_info)
        return self._get_observation(self._state), debug_info

    def _get_observation(self, state):
        """
        Observations are sets of ground literals.

        Action literals are not included in the observation.

        Returns
        -------
        obs : { Literal }
        """
        return state

    def _initialize_reward_shaping_data(self, debug_info):
        """At the start of each episode, initialize whatever is needed to
        perform reward shaping.
        """
        if self._shape_reward_mode is not None:
            # Update problem file by ordering objects, init, and goal properly.
            with open(debug_info["problem_file"], "r") as f:
                problem = f.read().lower()
            obj_ind = problem.index("(:objects")
            objects = PDDLParser._find_balanced_expression(problem, obj_ind)
            init_ind = problem.index("(:init")
            init = PDDLParser._find_balanced_expression(problem, init_ind)
            goal_ind = problem.index("(:goal")
            goal = PDDLParser._find_balanced_expression(problem, goal_ind)
            start = problem[:min(obj_ind, init_ind, goal_ind)]
            updated_problem = start+objects+"\n"+init+"\n"+goal+"\n)"
            with open("updated_problem.pddl", "w") as f:
                f.write(updated_problem)
            self._initial_distance = self._get_distance(
                debug_info["domain_file"], "updated_problem.pddl")
            os.remove("updated_problem.pddl")

    def _get_debug_info(self):
        """
        Contains the problem file, domain file, and objects
        for interaction with a planner.
        """
        info = {'problem_file' : self._problem.problem_fname,
                'domain_file' : self.domain.domain_fname,
                'objects' : self._problem.objects,
                'image' : self.render()}
        if self._compute_approx_reachable_set:
            info['approx_reachable_set'] = self._get_approx_reachable_set()
        return info

    def _get_delete_relaxed_ops(self):
        relaxed_ops = {}
        for name, operator in self.domain.operators.items():
            relaxed_op = copy.deepcopy(operator)
            for precond in operator.preconds.literals:
                if precond.is_negative:
                    relaxed_op.preconds.literals.remove(precond)
                assert not precond.is_anti, "Should be impossible"
            for effect in operator.effects.literals:
                assert not effect.is_negative, "Should be impossible"
                if effect.is_anti:
                    relaxed_op.effects.literals.remove(effect)
            relaxed_ops[name] = relaxed_op
        return relaxed_ops

    def _get_approx_reachable_set(self):
        obs = self._get_observation(self._state)
        old_ops = self.domain.operators
        self.domain.operators = self._delete_relaxed_ops
        prev_len = 0
        while prev_len != len(obs):  # do the fixed-point iteration
            prev_len = len(obs)
            for action in self.action_space.all_ground_literals():
                selected_operator, assignment = self._select_operator(
                    self._state, action)
                if assignment is not None:
                    for lifted_effect in selected_operator.effects.literals:
                        effect = ground_literal(lifted_effect, assignment)
                        assert not effect.is_anti  # should be relaxed
                        obs.add(effect)
        self.domain.operators = old_ops
        return obs

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
        kb = self._get_observation(state) | { action }

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
        obs : { Literal }
            See self._get_observation.
        reward : float
            1 if the goal is reached and 0 otherwise.
        done : bool
            True if the goal is reached.
        debug_info : dict
            See self._get_debug_info.
        """
        selected_operator, assignment = self._select_operator(self._state,
                                                              action)

        # A ground operator was found; execute the ground effects
        if assignment is not None:
            self._state = _apply_effects(
                self._state,
                selected_operator.effects.literals,
                assignment,
            )

        # No operator was found
        elif self._raise_error_on_invalid_action:
            # import ipdb; ipdb.set_trace()
            raise InvalidAction()

        obs = self._get_observation(self._state)
        done = self._is_goal_reached(self._state)
        debug_info = self._get_debug_info()
        reward = self._reward(self._state, done)

        return obs, reward, done, debug_info

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

        obs = self._get_observation(state)
        done = self._is_goal_reached(state)
        reward = self._reward(state, done)

        return obs, reward, done, {}

    def _reward(self, state, done):
        if done:
            reward = 1.
        else:
            reward = 0.

        if self._shape_reward_mode is not None:
            # Update problem file to contain current state.
            with open(self._problem.problem_fname, "r") as f:
                problem = f.read().lower()
            obj_ind = problem.index("(:objects")
            objects = PDDLParser._find_balanced_expression(problem, obj_ind)
            init_ind = problem.index("(:init")
            init = "(:init\n"
            for lit in state:
                init += lit.pddl_str()+"\n"
            for lit in self._action_lits:
                init += lit.pddl_str()+"\n"
            init += "\n)"
            goal_ind = problem.index("(:goal")
            goal = PDDLParser._find_balanced_expression(problem, goal_ind)
            start = problem[:min(obj_ind, init_ind, goal_ind)]
            updated_problem = start+objects+"\n"+init+"\n"+goal+"\n)"
            with open("updated_problem.pddl", "w") as f:
                f.write(updated_problem)
            distance = self._get_distance(
                self.domain.domain_fname, "updated_problem.pddl")
            os.remove("updated_problem.pddl")
            reward = 1.0-distance/self._initial_distance  # range: (-inf, 1]

        return reward

    def _get_distance(self, domain_file, problem_file):
        """Used by reward shaping methods. Get distance from initial state to
        goal in the problem_file.
        """
        if self._shape_reward_mode == "optimal":
            return get_fd_optimal_plan_cost(domain_file, problem_file)
        return get_pyperplan_heuristic(
            self._shape_reward_mode, domain_file, problem_file)

    def _is_goal_reached(self, state):
        """
        Used to calculate reward.
        """
        return self._goal.holds(state)

    def _action_valid_test(self, action):
        _, assignment = self._select_operator(self._state, action)
        return assignment is not None

    def render(self, *args, **kwargs):
        if self._render:
            obs = self._get_observation(self._state)
            return self._render(obs, *args, **kwargs)

