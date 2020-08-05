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
        self._all_ground_literals = sorted(self._compute_all_ground_literals())

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

    def _compute_all_ground_literals(self):
        all_ground_literals = set()
        for predicate in self.predicates:
            choices = [self._type_to_objs[vt] for vt in predicate.var_types]
            for choice in itertools.product(*choices):
                if len(set(choice)) != len(choice):
                    continue
                lit = predicate(*choice)
                all_ground_literals.add(lit)
        return all_ground_literals


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
