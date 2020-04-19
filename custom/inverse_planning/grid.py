from pddlgym.core import PDDLEnv
import os
import numpy as np


class InversePlanningGridPDDLEnv(PDDLEnv):
    """Grid domain and problems from Ramirez & Geffner, 2010.
    """
    dir_path = os.path.join(os.path.dirname(os.path.realpath(__file__)), "pddl")
    domain_file = os.path.join(dir_path, "grid.pddl")
    problem_dir = os.path.join(dir_path, "grid")

    def __init__(self, seed=0):
        super().__init__(self.domain_file, self.problem_dir, render=None, seed=seed,
                 raise_error_on_invalid_action=True,
                 operators_as_actions=False,
                 dynamic_action_space=True,
                 compute_approx_reachable_set=False,
                 shape_reward_mode=None)
        self._conn = self.domain.predicates['conn'] # (conn ?x - place ?y - place)
        self._key_shape = self.domain.predicates['key-shape'] # (key-shape ?k - key ?s - shape)
        self._lock_shape = self.domain.predicates['lock-shape'] # (lock-shape ?x - place ?s - shape)
        self._at = self.domain.predicates['at'] # (at ?r - key ?x - place)
        self._at_robot = self.domain.predicates['at-robot'] # (at-robot ?x - place)
        self._locked = self.domain.predicates['locked'] # (locked ?x - place)
        self._carrying = self.domain.predicates['carrying'] # (carrying ?k - key)
        self._open = self.domain.predicates['open'] # (open ?x - place)
        self._move = self.domain.predicates['move']
        self._unlock = self.domain.predicates['unlock']
        self._pickup = self.domain.predicates['pickup']
        self._static_predicates = { self._conn, self._key_shape, self._lock_shape, 
            self._move, self._unlock, self._pickup }
        self._rng = np.random.RandomState(seed=seed)

    def sample_state(self):
        # Extract the static components of the state and the objects
        state = set()
        places = set()
        keys = set()
        for lit in self.get_state():
            if lit.predicate in self._static_predicates:
                state.add(lit)
            for v in lit.variables:
                if v.var_type == "place":
                    places.add(v)
                elif v.var_type == "key":
                    keys.add(v)
        places = sorted(places)
        keys = sorted(keys)
        
        # For each key, sample whether we're carrying it or a location that it's at
        for key in keys:
            if self._rng.choice(2):
                # Carrying the key
                state.add(self._carrying(key))
            else:
                # The key is at somewhere
                place = places[self._rng.choice(len(places))]
                state.add(self._at(key, place))

        # For each place, sample whether it's open or locked
        for place in places:
            if self._rng.choice(2):
                state.add(self._open(place))
            else:
                state.add(self._locked(place))

        # Sample a place for the robot
        robot_place = places[self._rng.choice(len(places))]
        state.add(self._at_robot(robot_place))

        return state

class EasyInversePlanningGridPDDLEnv(InversePlanningGridPDDLEnv):
    dir_path = InversePlanningGridPDDLEnv.dir_path
    problem_dir = os.path.join(dir_path, "easy-grid")


if __name__ == "__main__":
    import imageio
    import time
    env = EasyInversePlanningGridPDDLEnv()
    env.reset()
    start_time = time.time()
    sampled_states = [env.sample_state() for _ in range(100)]
    print("Sampling time: {}".format(time.time() - start_time))
    import ipdb; ipdb.set_trace()
