from pddlgym.core import PDDLEnv
from pddlgym.structs import Predicate, Type
import os
import numpy as np
from collections import defaultdict


class InversePlanningKitchenPDDLEnv(PDDLEnv):
    """Kitchen domain and problems from Ramirez & Geffner, 2010.
    """
    dir_path = os.path.join(os.path.dirname(os.path.realpath(__file__)), "pddl")
    domain_file = os.path.join(dir_path, "kitchen.pddl")
    problem_dir = os.path.join(dir_path, "kitchen")

    def __init__(self, seed=0):
        super().__init__(self.domain_file, self.problem_dir, render=None, seed=seed,
                 raise_error_on_invalid_action=True,
                 operators_as_actions=True,
                 dynamic_action_space=True,
                 compute_approx_reachable_set=False,
                 shape_reward_mode=None)
        self._static_state = { self.domain.predicates["dummy"] }
        self._objects = ["water-jug", "keetle", "cloth", "tea-bag", "cup", 
            "sugar", "bowl", "milk", "cereal", "creamer", "coffee", "cheese", 
            "plate", "bread", "butter", "knife", "peanut-butter", "spoon", 
            "pill-box", "juice", "popcorn", "dressing", "salad-tosser", "lunch-bag"]
        for c in self._objects:
            self._static_state.add(Predicate("is-{}".format(c), 1, [Type("object")]))
        self._useables = ["microwave", "phone", "toaster", "plants"]
        for c in self._useables:
            self._static_state.add(Predicate("is-{}".format(c), 1, [Type("useable")]))

        self._taken = self.domain.predicates['taken']
        self._used = self.domain.predicates['used']

        self._state_predicates = [p for _, p in self.domain.predicates.items() \
            if p not in { self._taken, self._used } | set(self._static_state)\
                 | set(self.action_predicates)]

        self._rng = np.random.RandomState(seed=seed)

    def sample_state(self):
        state = self._static_state.copy()

        for pred in self._state_predicates:
            if self._rng.uniform() < 0.25:
                state.add(pred())

        # Random taken
        for obj in self._objects:
            if self._rng.uniform() < 0.25:
                state.add(self._taken(obj))

        # Random used
        for useable in self._useables:
            if self._rng.uniform() < 0.25:
                state.add(self._used(useable))

        return state

class EasyInversePlanningKitchenPDDLEnv(InversePlanningKitchenPDDLEnv):
    dir_path = InversePlanningKitchenPDDLEnv.dir_path
    problem_dir = os.path.join(dir_path, "easy-kitchen")

    def __init__(self, seed=0):
        super().__init__(seed=seed)
        self._state_predicates = [p for p in self._state_predicates \
            if p.name in ["breakfast", "lecture-1-taken"]]

        self._static_state = { self.domain.predicates["dummy"] }
        self._objects = ["water-jug", "keetle", "cloth", "tea-bag", "cup", 
            "sugar", "bowl", "milk", "cereal", "creamer", "coffee", "cheese", 
            "plate", "bread", "butter", "knife", "peanut-butter", "spoon", 
            "pill-box", "juice", "popcorn", "dressing", "salad-tosser", "lunch-bag"]
        for c in self._objects:
            self._static_state.add(Predicate("is-{}".format(c), 1, [Type("object")]))
        self._useables = ["microwave", "phone", "toaster", "plants"]
        for c in self._useables:
            self._static_state.add(Predicate("is-{}".format(c), 1, [Type("useable")]))


if __name__ == "__main__":
    import time
    env = InversePlanningKitchenPDDLEnv()
    env.reset()
    start_time = time.time()
    sampled_states = [env.sample_state() for _ in range(1000)]
    import ipdb; ipdb.set_trace()
    print("Sampling time: {}".format(time.time() - start_time))

