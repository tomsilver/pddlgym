from pddlgym.core import PDDLEnv
from pddlgym.structs import Predicate, Type
import os
import numpy as np
from collections import defaultdict


class InversePlanningCampusPDDLEnv(PDDLEnv):
    """Campus domain and problems from Ramirez & Geffner, 2010.
    """
    dir_path = os.path.join(os.path.dirname(os.path.realpath(__file__)), "pddl")
    domain_file = os.path.join(dir_path, "campus.pddl")
    problem_dir = os.path.join(dir_path, "campus")

    def __init__(self, seed=0):
        super().__init__(self.domain_file, self.problem_dir, render=None, seed=seed,
                 raise_error_on_invalid_action=True,
                 operators_as_actions=True,
                 dynamic_action_space=True,
                 compute_approx_reachable_set=False,
                 shape_reward_mode=None)
        self._places = ["bank", "watson-theater", "hayman-theater", "davis-theater", 
            "jones-theater", "bookmark-cafe", "library", "cbs", "psychology-bldg", 
            "angazi-cafe", "tav"]
        self._static_state = {Predicate("is-{}".format(c), 1, [Type("place")])(c) \
            for c in self._places}
        self._at = self.domain.predicates['at']
        self._state_predicates = [p for _, p in self.domain.predicates.items() \
            if p != self._at and (not p.name.startswith("is-") or p.name[3:] not in self._places) \
                and p not in self.action_predicates]
        self._rng = np.random.RandomState(seed=seed)

    def sample_state(self):
        state = self._static_state.copy()

        # Random bit flips for the following
        # (banking)
        # (lecture-1-taken)
        # (lecture-2-taken)
        # (lecture-3-taken)
        # (lecture-4-taken)
        # (group-meeting-1)
        # (group-meeting-2)
        # (group-meeting-3)
        # (coffee)
        # (breakfast)
        # (lunch)
        for pred in self._state_predicates:
            if self._rng.uniform() < 0.25:
                state.add(pred())

        # Random at
        place = self._places[self._rng.choice(len(self._places))]
        state.add(self._at(place))

        return state


# class EasyInversePlanningCampusPDDLEnv(InversePlanningCampusPDDLEnv):
#     dir_path = InversePlanningCampusPDDLEnv.dir_path
#     problem_dir = os.path.join(dir_path, "easy-campus")


if __name__ == "__main__":
    import time
    env = InversePlanningCampusPDDLEnv()
    env.reset()
    start_time = time.time()
    sampled_states = [env.sample_state() for _ in range(1000)]
    import ipdb; ipdb.set_trace()
    print("Sampling time: {}".format(time.time() - start_time))

