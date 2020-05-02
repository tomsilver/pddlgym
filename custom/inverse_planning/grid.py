# from pddlgym.core import PDDLEnv
from .inverse_planning_env import InversePlanningPDDLEnv
import os
import numpy as np
from collections import defaultdict


class InversePlanningGridPDDLEnv(InversePlanningPDDLEnv):
    """Grid domain and problems from Ramirez & Geffner, 2010.
    """
    dir_path = os.path.join(os.path.dirname(os.path.realpath(__file__)), "pddl")
    domain_file = os.path.join(dir_path, "grid.pddl")
    problem_dir = os.path.join(dir_path, "grid")

    def __init__(self, seed=0):
        super().__init__(self.domain_file, self.problem_dir, render=None, seed=seed,
                 raise_error_on_invalid_action=True,
                 operators_as_actions=True,
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

    def _parse_state(self):
        robot_pos = None
        open_next_positions = []
        carried_keys = []
        adjacent_locks = []
        keys_at_robot_pos = []

        # First get the robot position
        for lit in self._state:
            if lit.predicate == self._at_robot:
                robot_pos = lit.variables[0]
                break
        assert robot_pos is not None

        adjacent_positions = []
        open_positions = []
        carried_key_ids = []
        locked_locks = []
        key_to_shape = {}
        lock_to_shape = {}
        pos_to_keys = defaultdict(list)
        # Get everything else
        for lit in self._state:
            # Don't care about non-adjacent things
            if lit.predicate == self._conn:
                if lit.variables[0] != robot_pos:
                    continue
                adjacent_pos = lit.variables[1]
                adjacent_positions.append(adjacent_pos)

            if lit.predicate == self._key_shape:
                key, shape = lit.variables
                key_to_shape[key] = shape

            if lit.predicate == self._lock_shape:
                lock, shape = lit.variables
                lock_to_shape[lock] = shape

            if lit.predicate == self._at:
                key, pos = lit.variables
                pos_to_keys[pos].append(key)

            if lit.predicate == self._locked:
                lock, = lit.variables
                locked_locks.append(lock)

            if lit.predicate == self._carrying:
                key, = lit.variables
                carried_key_ids.append(key)

            if lit.predicate == self._open:
                pos, = lit.variables
                open_positions.append(pos)

        # Get open next positions
        open_next_positions = sorted(set(adjacent_positions) & set(open_positions))

        # Get carried keys (key name, key shape)
        carried_keys = [(key, key_to_shape[key]) for key in carried_key_ids]

        # Get adjacent locked locks (lock pos, lock shape)
        adjacent_locks = []
        for lock in locked_locks:
            if lock in adjacent_positions:
                try:
                    adjacent_locks.append((lock, lock_to_shape[lock]))
                except:
                    import ipdb; ipdb.set_trace()

        # Get keys at robot position
        keys_at_robot_pos = pos_to_keys[robot_pos]

        return robot_pos, open_next_positions, carried_keys, adjacent_locks, keys_at_robot_pos

    def get_valid_actions(self):
        valid_actions = []

        robot_pos, next_positions, carried_keys, adjacent_locks, keys_at_robot_pos = \
            self._parse_state()

        """ 
        (:action move
            :parameters (?curpos ?nextpos - place)
            :precondition (and (at-robot ?curpos) (conn ?curpos ?nextpos) (open ?nextpos))
        )
        """
        for next_pos in next_positions:
            valid_actions.append(self._move(robot_pos, next_pos))
        
        """
        (:action unlock
            :parameters (?curpos ?lockpos - place ?key - key ?shape - shape)
            :precondition (and (conn ?curpos ?lockpos) (key-shape ?key ?shape)
                           (lock-shape ?lockpos ?shape) (at-robot ?curpos) 
                           (locked ?lockpos) (carrying ?key))
        )
        """
        for key, key_shape in carried_keys:
            for lock_pos, lock_shape in adjacent_locks:
                if key_shape == lock_shape:
                    valid_actions.append(self._unlock(robot_pos, lock_pos, key, key_shape))
        
        """
        (:action pickup
            :parameters (?curpos - place ?key - key)
            :precondition (and (at-robot ?curpos) (at ?key ?curpos))
        )
        """
        for key in keys_at_robot_pos:
            valid_actions.append(self._pickup(robot_pos, key))

        return valid_actions

    def reset(self):
        out = super().reset()
        self._possible_locked_places = set()
        for lit in self.get_state():
            if lit.predicate == self._locked:
                self._possible_locked_places.add(lit.variables[0])
        return out

    def _sample_state(self):
        # Extract the static components of the state and the objects
        state = set()
        places = set()
        keys = set()
        shapes = set()
        for lit in self.get_state():
            if lit.predicate in self._static_predicates:
                state.add(lit)
            for v in lit.variables:
                if v.var_type == "place":
                    places.add(v)
                elif v.var_type == "key":
                    keys.add(v)
                elif v.var_type == "shape":
                    shapes.add(v)
        places = sorted(places)
        keys = sorted(keys)
        shapes = sorted(shapes)
        
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
        open_places = []
        for place in places:
            if place in self._possible_locked_places and self._rng.choice(2):
                state.add(self._locked(place))
            else:
                state.add(self._open(place))
                open_places.append(place)

        # Sample a place for the robot
        robot_place = open_places[self._rng.choice(len(open_places))]
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
