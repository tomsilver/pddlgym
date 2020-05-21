from .inverse_planning_env import InversePlanningPDDLEnv
from pddlgym.structs import Predicate, Type
import os
import numpy as np
from collections import defaultdict


class InversePlanningDoorsKeysGemsPDDLEnv(InversePlanningPDDLEnv):
    """Doors Keys Gems domain and problems from Tan Zhi Xuan
    """
    dir_path = os.path.join(os.path.dirname(os.path.realpath(__file__)), "pddl")
    domain_file = os.path.join(dir_path, "doors-keys-gems.pddl")
    problem_dir = os.path.join(dir_path, "doors-keys-gems")

    def __init__(self, seed=0):
        super().__init__(self.domain_file, self.problem_dir, render=None, seed=seed,
                 raise_error_on_invalid_action=True,
                 operators_as_actions=True,
                 dynamic_action_space=True,
                 compute_approx_reachable_set=False,
                 shape_reward_mode=None)
        self._conn = self.domain.predicates['conn']
        self._pos = self.domain.predicates['pos']
        self._door = self.domain.predicates['door']
        self._wall = self.domain.predicates['wall']
        self._has = self.domain.predicates['has']
        self._at = self.domain.predicates['at']
        self._move = self.domain.predicates['move']
        self._unlock = self.domain.predicates['unlock']
        self._pickup = self.domain.predicates['pickup']
        self._static_predicates = { self._conn, self._wall, self._move, 
            self._unlock, self._pickup }

        self._rng = np.random.RandomState(seed=seed)

    def reset(self):
        out = super().reset()
        self._possible_doors = set()
        self._possible_places = set()
        walls = set()
        for lit in self.get_state():
            if lit.predicate == self._door:
                self._possible_doors.add(lit.variables[0])
            elif lit.predicate == self._conn:
                self._possible_places.add(lit.variables[1])
                self._possible_places.add(lit.variables[2])
            elif lit.predicate == self._wall:
                walls.add(lit.variables[0])
        self._possible_places = sorted(self._possible_places - walls)
        self._possible_doors = sorted(self._possible_doors)
        return out

    def get_valid_actions(self):
        valid_actions = []

        # Current position
        position = None
        for lit in self._state:
            if lit.predicate == self._pos:
                position = lit.variables[0]
                break
        assert position is not None

        walls = set()
        doors = set()
        has_keys = set()
        adjacent_positions = {} # direction : position
        coincident_items = set()
        for lit in self._state:
            if lit.predicate == self._wall:
                walls.add(lit.variables[0])
            elif lit.predicate == self._door:
                doors.add(lit.variables[0])
            elif lit.predicate == self._has and str(lit.variables[0].var_type) == "key":
                has_keys.add(lit.variables[0])
            elif lit.predicate == self._conn and lit.variables[1] == position:
                adjacent_positions[lit.variables[0]] = lit.variables[2]
            elif lit.predicate == self._at and lit.variables[1] == position:
                coincident_items.add(lit.variables[0])

        # Get valid move actions
        """
        (:action move
         :parameters (?from - loc ?to - loc ?dir - dir)
         :precondition (and (pos ?from) (conn ?dir ?from ?to)
                            (not (wall ?to)) (not (door ?to)))
         :effect (and (pos ?to) (not (pos ?from)))
        )
        """
        for direction, to in adjacent_positions.items():
            # Only valid if `to` is not a door or wall
            if to in walls or to in doors:
                continue
            valid_actions.append(self._move(position, to, direction))

        # Get valid unlock actions
        """
        (:action unlock
         :parameters (?k - key ?from - loc ?to - loc ?dir - dir)
         :precondition (and (has ?k) (pos ?from) (door ?to) (conn ?dir ?from ?to))
         :effect (and (not (has ?k)) (not (door ?to)))
        )
        """
        for key in has_keys:
            for direction, to in adjacent_positions.items():
                if to not in doors:
                    continue
                valid_actions.append(self._unlock(key, position, to, direction))

        # Get valid pickup actions
        """
        (:action pickup
         :parameters (?i - item ?l - loc)
         :precondition (and (pos ?l) (at ?i ?l))
         :effect (and (not (at ?i ?l)) (has ?i))
        )
        """
        for item in coincident_items:
            valid_actions.append(self._pickup(item, position))

        return valid_actions

    def _sample_state(self):
        # Extract the static components of the state and the objects
        state = set()
        items = set()
        for lit in self.get_state():
            if lit.predicate in self._static_predicates:
                state.add(lit)
            elif lit.predicate == self._has or lit.predicate == self._at:
                items.add(lit.variables[0])

        # For each item, sample whether we're carrying it or a location that it's at
        for item in items:
            if self._rng.choice(2):
                # Carrying the item
                state.add(self._has(item))
            else:
                # The item is at somewhere
                place = self._possible_places[self._rng.choice(len(self._possible_places))]
                state.add(self._at(item, place))

        # For each possible place, sample whether it's currently a door
        open_places = []
        for place in self._possible_places:
            if place in self._possible_doors and self._rng.choice(2):
                state.add(self._door(place))
            else:
                open_places.append(place)

        # Sample a place for the robot
        agent_place = open_places[self._rng.choice(len(open_places))]
        state.add(self._pos(agent_place))

        return state


class EasyInversePlanningDoorsKeysGemsPDDLEnv(InversePlanningDoorsKeysGemsPDDLEnv):
    dir_path = InversePlanningDoorsKeysGemsPDDLEnv.dir_path
    problem_dir = os.path.join(dir_path, "easy-doors-keys-gems")

    def load_demonstration_for_problem(self, problem_fname):
        # TODO
        return []

