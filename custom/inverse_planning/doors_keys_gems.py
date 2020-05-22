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
        self._possible_key_places = set()
        self._possible_gem_places = set()
        self._walls = set()
        for lit in self.get_state():
            if lit.predicate == self._door:
                self._possible_doors.add(lit.variables[0])
            elif lit.predicate == self._conn:
                self._possible_places.add(lit.variables[1])
                self._possible_places.add(lit.variables[2])
            elif lit.predicate == self._wall:
                self._walls.add(lit.variables[0])
            elif lit.predicate == self._at:
                if str(lit.variables[0].var_type) == "key":
                    self._possible_key_places.add(lit.variables[1])
                else:
                    self._possible_gem_places.add(lit.variables[1])
        self._possible_places = sorted(self._possible_places - self._walls)
        self._possible_doors = sorted(self._possible_doors)
        self._possible_key_places = sorted(self._possible_key_places)
        self._possible_gem_places = sorted(self._possible_gem_places)
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

    def _state_to_string(self, state):
        walls = set()
        doors = set()
        key_places = set()
        gem_places = set()
        places = set()
        pos = None
        for lit in state:
            if lit.predicate == self._wall:
                walls.add(lit.variables[0])
            elif lit.predicate == self._pos:
                pos = lit.variables[0]
            elif lit.predicate == self._door:
                doors.add(lit.variables[0])
            elif lit.predicate == self._conn:
                places.update(lit.variables[1:])
            elif lit.predicate == self._at:
                if str(lit.variables[0].var_type) == "key":
                    key_places.add(lit.variables[1])
                else:
                    gem_places.add(lit.variables[1])

        def get_row_col(place):
            x_idx = place.index("x")
            y_idx = place.index("y")
            row = int(place[x_idx+1:y_idx])-1
            col = int(place[y_idx+1:])-1
            return row, col

        max_row = 0
        max_col = 0
        for place in places:
            row, col = get_row_col(place)
            max_row = max(row, max_row)
            max_col = max(col, max_col)
        values = [["O" for _ in range(max_col+1)] for _ in range(max_row+1)]
        for wall in walls:
            row, col = get_row_col(wall)
            values[row][col] = "#"
        for door in doors:
            row, col = get_row_col(door)
            values[row][col] = "D"
        for key in key_places:
            row, col = get_row_col(key)
            values[row][col] = "K"
        for gem in gem_places:
            row, col = get_row_col(gem)
            values[row][col] = "G"
        row, col = get_row_col(pos)
        values[row][col] = "@"

        return "\n".join(["".join(col_vals) for col_vals in values])

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
                if str(item.var_type) == "key":
                    possible_places = self._possible_key_places
                else:
                    assert str(item.var_type) == "gem"
                    possible_places = self._possible_gem_places
                place = possible_places[self._rng.choice(len(possible_places))]
                state.add(self._at(item, place))

                # place = self._possible_places[self._rng.choice(len(self._possible_places))]
                # state.add(self._at(item, place))

        # For each possible place, sample whether it's currently a door
        open_places = []
        for place in self._possible_places:
            if place in self._possible_doors and self._rng.choice(2):
                state.add(self._door(place))
            else:
                open_places.append(place)

        # Sample a place for the robot
        assert len(set(open_places) & self._walls) == 0
        agent_place = open_places[self._rng.choice(len(open_places))]
        state.add(self._pos(agent_place))

        # print("\n\n")
        # print(self._state_to_string(state))
        # import ipdb; ipdb.set_trace()

        return state


class EasyInversePlanningDoorsKeysGemsPDDLEnv(InversePlanningDoorsKeysGemsPDDLEnv):
    dir_path = InversePlanningDoorsKeysGemsPDDLEnv.dir_path
    problem_dir = os.path.join(dir_path, "easy-doors-keys-gems")

    def load_demonstration_for_problem(self, problem_fname):
        # TODO. Not required for unbiased value iteration
        return []

