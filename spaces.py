"""Gym spaces involving Literals.

Unlike typical spaces, Literal spaces may change with
each episode, since objects, and therefore possible
groundings, may change with each new PDDL problem.
"""
from gym.spaces import Space
from collections import defaultdict

import itertools


class LiteralSpace(Space):

    def __init__(self, predicates,
                 lit_valid_test=lambda state,lit: True,
                 type_to_parent_types=None):
        self.predicates = sorted(predicates)
        self.num_predicates = len(predicates)
        self._objects = None
        self._lit_valid_test = lit_valid_test
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


class LiteralSetSpace(LiteralSpace):

    def sample(self):
        raise NotImplementedError()
