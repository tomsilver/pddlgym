"""Gym spaces involving Literals.

Unlike typical spaces, Literal spaces may change with
each episode, since objects, and therefore possible
groundings, may change with each new PDDL problem.
"""
from pddlgym.structs import LiteralConjunction, Literal, ground_literal
from gym.spaces import Space
from collections import defaultdict

import itertools


class LiteralSpace(Space):

    def __init__(self, predicates,
                 lit_valid_test=lambda state,lit: True,
                 type_hierarchy=None,
                 type_to_parent_types=None):
        self.predicates = sorted(predicates)
        self.num_predicates = len(predicates)
        self._objects = None
        self._lit_valid_test = lit_valid_test
        self.type_hierarchy = type_hierarchy
        self._type_to_parent_types = type_to_parent_types
        super().__init__()

    def _update_objects_from_state(self, state):
        """Given a state, extract the objects and if they have changed, 
        recompute all ground literals
        """
        # Check whether the objects have changed
        # If so, we need to recompute the ground literals
        if state.objects == self._objects:
            return

        # Organize objects by type
        self._type_to_objs = defaultdict(list)

        for obj in sorted(state.objects):
            if self._type_to_parent_types is None:
                self._type_to_objs[obj.var_type].append(obj)
            else:
                for t in self._type_to_parent_types[obj.var_type]:
                    self._type_to_objs[t].append(obj)

        self._objects = state.objects
        self._all_ground_literals = sorted(self._compute_all_ground_literals(state))

    def sample_literal(self, state):
        while True:
            num_lits = len(self._all_ground_literals)
            idx = self.np_random.choice(num_lits)
            lit = self._all_ground_literals[idx]
            if self._lit_valid_test(state, lit):
                break
        return lit  

    def sample(self, state):
        self._update_objects_from_state(state)
        return self.sample_literal(state)

    def all_ground_literals(self, state, valid_only=True):
        self._update_objects_from_state(state)
        if not valid_only:
            return set(self._all_ground_literals)
        return set(l for l in self._all_ground_literals \
                   if self._lit_valid_test(state, l))

    def _compute_all_ground_literals(self, state):
        all_ground_literals = set()
        for predicate in self.predicates:
            choices = [self._type_to_objs[vt] for vt in predicate.var_types]
            for choice in itertools.product(*choices):
                if len(set(choice)) != len(choice):
                    continue
                lit = predicate(*choice)
                all_ground_literals.add(lit)
        return all_ground_literals


class StripsDynamicLiteralActionSpace(LiteralSpace):
    """Literal space with more efficient valid action generation
    when operators are STRIPS
    """
    def __init__(self, operators, predicates,
                 type_hierarchy=None,
                 type_to_parent_types=None):

        # Validate and organize operators
        action_predicate_to_operators = {}
        for operator_name, operator in operators.items():
            assert len([p for p in predicates if p.name == operator_name]) == 1
            action_predicate = [p for p in predicates if p.name == operator_name][0]
            action_predicate_to_operators[action_predicate] = operator
            assert isinstance(operator.preconds, LiteralConjunction)
            assert all([isinstance(l, Literal) for l in operator.preconds.literals])

        self._operators = operators # used for successor generation
        self._action_predicate_to_operators = action_predicate_to_operators
        super().__init__(predicates, 
            type_hierarchy=type_hierarchy,
            type_to_parent_types=type_to_parent_types)

    def _update_objects_from_state(self, state):
        """
        """
        # Check whether the objects have changed
        # If so, we need to recompute things
        if state.objects == self._objects:
            return
        
        # Parent class update
        super()._update_objects_from_state(state)

        # Recompute all ground operators
        self._update_ground_operators(state)

    def _update_ground_operators(self, state):
        """
        """
        # Associate each ground action literal with ground preconditions
        self._ground_action_to_pos_preconds = {}
        self._ground_action_to_neg_preconds = {}
        for ground_action in self._all_ground_literals:
            operator = self._action_predicate_to_operators[ground_action.predicate]
            lifted_preconds = operator.preconds.literals
            subs = dict(zip(operator.params, ground_action.variables))
            preconds = [ground_literal(lit, subs) for lit in lifted_preconds]
            pos_preconds, neg_preconds = set(), set()
            for p in preconds:
                if p.is_negative:
                    neg_preconds.add(p.positive)
                else:
                    pos_preconds.add(p)
            self._ground_action_to_pos_preconds[ground_action] = pos_preconds
            self._ground_action_to_neg_preconds[ground_action] = neg_preconds

    def sample_literal(self, state):
        valid_literals = self.all_ground_literals(state)
        valid_literals = list(sorted(valid_literals))
        return valid_literals[self.np_random.choice(len(valid_literals))]

    def sample(self, state):
        return self.sample_literal(state)

    def all_ground_literals(self, state, valid_only=True):
        self._update_objects_from_state(state)
        assert valid_only, "The point of this class is to avoid the cross product!"
        valid_literals = set()
        for ground_action in self._all_ground_literals:
            pos_preconds = self._ground_action_to_pos_preconds[ground_action]
            if not pos_preconds.issubset(state.literals):
                continue
            neg_preconds = self._ground_action_to_neg_preconds[ground_action]
            if len(neg_preconds & state.literals) > 0:
                continue
            valid_literals.add(ground_action)
        return valid_literals

    def _compute_all_ground_literals(self, state):
        """Implement Algorithm 1 from
        https://ai.dmi.unibas.ch/research/reading_group/gnad-et-al-aaai2019.pdf
        which computes all ground literals for the fixed-point
        delete-relaxed-reachable state.
        """
        queue = list(sorted(state.literals))
        facts = set()
        ground_actions = set()
        while queue:
            fact_or_op = queue.pop(0)
            if fact_or_op.predicate in self.predicates:  # a ground action
                if fact_or_op in ground_actions:
                    continue  # we've already processed this element
                ground_actions.add(fact_or_op)
                op = self._action_predicate_to_operators[fact_or_op.predicate]
                for eff in op.effects.literals:
                    if eff.is_anti:  # ignore negative effects
                        continue
                    subs = dict(zip(op.params, fact_or_op.variables))
                    ground_eff = ground_literal(eff, subs)
                    if ground_eff in facts:
                        continue
                    queue.append(ground_eff)
            else:  # a state literal
                if fact_or_op in facts:
                    continue  # we've already processed this element
                facts.add(fact_or_op)
                for predicate in self.predicates:
                    op = self._action_predicate_to_operators[predicate]
                    # Filter out objects that don't satisfy the unary preconds.
                    unary_preconds = [lit for lit in op.preconds.literals
                                      if lit.predicate.arity == 1]
                    params_to_possible_objects = {
                        param: set(self._type_to_objs[param.var_type])
                        for param in op.params}
                    for precond in unary_preconds:
                        if precond.is_negative:  # ignore negative preconditions
                            continue
                        assert len(precond.variables) == 1
                        param = precond.variables[0]
                        for possible_obj in self._type_to_objs[param.var_type]:
                            if precond.predicate(possible_obj) not in facts:
                                params_to_possible_objects[param].discard(possible_obj)
                    # Now take the cross product and check remaining preconds.
                    choices = [sorted(params_to_possible_objects[param])
                               for param in op.params]
                    for choice in itertools.product(*choices):
                        if len(set(choice)) != len(choice):
                            continue
                        possible_action = predicate(*choice)
                        if possible_action in ground_actions:
                            continue
                        subs = dict(zip(op.params, possible_action.variables))
                        preconds = [ground_literal(lit, subs)
                                    for lit in op.preconds.literals]
                        pos_preconds = {p for p in preconds if not p.is_negative}
                        if pos_preconds.issubset(facts):
                            queue.append(possible_action)
        return ground_actions


class TreeBasedDynamicLiteralActionSpace(LiteralSpace):
    """A literal space where the literals are actions
    and valid actions are computed using tree-based
    successor generation, as described in the FastDownward
    paper.
    """
    def __init__(self, operators, predicates,
                 type_hierarchy=None,
                 type_to_parent_types=None):

        # Validate and organize operators
        operator_name_to_predicate = {}
        action_predicate_to_operators = {}
        predicates_in_preconditions = set()
        for operator_name, operator in operators.items():
            assert len([p for p in predicates if p.name == operator_name]) == 1
            action_predicate = [p for p in predicates if p.name == operator_name][0]
            operator_name_to_predicate[operator_name] = action_predicate
            action_predicate_to_operators[action_predicate] = operator
            assert isinstance(operator.preconds, LiteralConjunction)
            assert all([isinstance(l, Literal) for l in operator.preconds.literals])
            predicates_in_preconditions.update([l.predicate for l in operator.preconds.literals])

        self._operators = operators # used for successor generation
        self._operator_name_to_predicate = operator_name_to_predicate
        self._action_predicate_to_operators = action_predicate_to_operators
        self._predicates_in_preconditions = predicates_in_preconditions
        self._dynamic_obs_space = LiteralSpace(self._predicates_in_preconditions,
            type_hierarchy=type_hierarchy,
            type_to_parent_types=type_to_parent_types)
        super().__init__(predicates, 
            type_hierarchy=type_hierarchy,
            type_to_parent_types=type_to_parent_types)
        self._succ_gen_tree = None

    def _update_objects_from_state(self, state, verbose=False):
        """
        """
        # Check whether the objects have changed
        # If so, we need to recompute things
        if state.objects == self._objects:
            return
        
        # Parent class update
        super()._update_objects_from_state(state)

        # Update the successor generation tree
        self._build_successor_generation_tree(state, verbose=verbose)

    def _build_successor_generation_tree(self, state, verbose=False):
        """
        """
        # Get all ground obs literals (preconds in the operators)
        ground_obs_literals = sorted(self._dynamic_obs_space.all_ground_literals(state, 
            valid_only=False))
        num_ground_obs_literals = len(ground_obs_literals)

        # Associate each ground action literal with ground preconditions
        positive_preconds_to_ground_actions = defaultdict(set)
        negative_preconds_to_ground_actions = defaultdict(set)
        for ground_action in self._all_ground_literals:
            operator = self._action_predicate_to_operators[ground_action.predicate]
            lifted_preconds = operator.preconds.literals
            subs = dict(zip(operator.params, ground_action.variables))
            preconds = [ground_literal(lit, subs) for lit in lifted_preconds]
            for p in preconds:
                if p.is_negative:
                    negative_preconds_to_ground_actions[pos_p].add(ground_action)
                else:
                    positive_preconds_to_ground_actions[p].add(ground_action)

        # Each node is a ground literal or operator, then T/F/DC child nodes.
        root_node = [None, None, None, None]
        self._succ_gen_tree = root_node
        num_nodes = 1
        num_unsorted_actions = len(self._all_ground_literals)

        # Node, remaining actions at this node, remaining ground obs literals
        queue = [(root_node, set(self._all_ground_literals), 0)]

        while len(queue) > 0:
            node, ground_actions, obs_literal_index = queue.pop()
            if verbose:
                print("Popped node from queue. Total number of nodes is {}".format(num_nodes))
                print("Num unsorted actions is {}".format(num_unsorted_actions))
            assert node[0] is None
            # Find the next ground obs literal that is involved in at least one
            # of the actions at this node
            obs_literal = None
            while obs_literal_index < num_ground_obs_literals:
                # Check if there is some action whose operator involves this obs literal
                candidate = ground_obs_literals[obs_literal_index]
                relevant_actions = positive_preconds_to_ground_actions[candidate] | \
                    negative_preconds_to_ground_actions[candidate]
                if len(relevant_actions & ground_actions) > 0:
                    obs_literal = candidate
                    break
                obs_literal_index += 1
            # If obs literal is still None, make this a leaf
            if obs_literal is None:
                num_nodes += 1
                num_unsorted_actions -= len(ground_actions)
                node[0] = ground_actions
                continue
            # Otherwise, split on this obs literal
            true_child = [None, None, None, None]
            false_child = [None, None, None, None]
            dontcare_child = [None, None, None, None]
            node[0] = obs_literal
            # Split the remaining ground actions among the children
            true_ground_actions = ground_actions & positive_preconds_to_ground_actions[obs_literal]
            false_ground_actions = ground_actions & negative_preconds_to_ground_actions[obs_literal]
            dontcare_ground_actions = ground_actions - (true_ground_actions | false_ground_actions)
            # Add children to queue
            if len(true_ground_actions):
                num_nodes += 1
                node[1] = true_child
                queue.append((true_child, true_ground_actions, obs_literal_index+1))
            if len(false_ground_actions):
                num_nodes += 1
                node[2] = false_child
                queue.append((false_child, false_ground_actions, obs_literal_index+1))
            if len(dontcare_ground_actions):
                num_nodes += 1
                node[3] = dontcare_child
                queue.append((dontcare_child, dontcare_ground_actions, obs_literal_index+1))

    def sample_literal(self, state):
        """
        """
        valid_literals = self.all_ground_literals(state)
        return valid_literals[self.np_random.choice(len(valid_literals))]

    def all_ground_literals(self, state, valid_only=True, verbose=False):
        self._update_objects_from_state(state, verbose=verbose)
        if not valid_only:
            return set(self._all_ground_literals)
        ground_literals = self._traverse_succ_gen_tree(state, self._succ_gen_tree)
        return set(ground_literals)

    def _traverse_succ_gen_tree(self, state, node):
        """Helper for all_ground_literals
        """
        # Check if the node is a leaf and return if so
        if isinstance(node[0], set):
            return node[0]
        # Check the feature in the state
        obs_literal = node[0]
        subtrees = [node[3]]
        if obs_literal in state.literals:
            subtrees.append(node[1])
        else:
            subtrees.append(node[2])
        # Traverse subtrees
        leaves = []
        for subtree in subtrees:
            if subtree is not None:
                leaves += self._traverse_succ_gen_tree(state, subtree)
        return leaves


class LiteralSetSpace(LiteralSpace):

    def sample(self):
        raise NotImplementedError()
