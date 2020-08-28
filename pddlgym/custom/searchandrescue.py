from pddlgym.core import PDDLEnv
from pddlgym.rendering import sar_render, slow_sar_render
from pddlgym.structs import Type, Predicate, Not, State, LiteralConjunction
import pddlgym
import os


def get_sar_successor_state(state, action):
    """Search and rescue specific successor generation

    Assumptions:
        - One robot called robot0
    """
    # Remake predicates to keep this function self-contained
    person_type = Type('person')
    robot_type = Type('robot')
    location_type = Type('location')
    direction_type = Type('direction')
    clear = Predicate('clear', 1, [location_type])
    conn = Predicate("conn", 3, [location_type, location_type, direction_type])
    robot_at = Predicate('robot-at', 2, [robot_type, location_type])
    carrying = Predicate('carrying', 2, [robot_type, person_type])
    person_at = Predicate('person-at', 2, [person_type, location_type])
    handsfree = Predicate('handsfree', 1, [robot_type])

    # Parse the state
    robot_location = None # location
    robot_carrying = None # person
    adjacency_map = {} # (location, direction) -> location
    people_locs = {} # person -> location
    clear_locs = set()

    for lit in state.literals:
        if lit.predicate.name == "robot-at":
            assert lit.variables[0] == "robot0"
            robot_location = lit.variables[1]
        elif lit.predicate.name == "conn":
            adjacency_map[(lit.variables[0], lit.variables[2])] = lit.variables[1]
        elif lit.predicate.name == "carrying":
            assert lit.variables[0] == "robot0"
            robot_carrying = lit.variables[1]
        elif lit.predicate.name == "person-at":
            people_locs[lit.variables[0]] = lit.variables[1]
        elif lit.predicate.name == "clear":
            clear_locs.add(lit.variables[0])

    assert robot_location is not None

    is_valid = False
    pos_preconds = set()
    neg_preconds = set()
    pos_effects = set()
    neg_effects = set()

    if action.predicate.name == "move":
        """
        (:action move-robot
        :parameters (?robot - robot ?from - location ?to - location ?dir - direction)
        :precondition (and (move ?dir)
            (conn ?from ?to ?dir)
            (robot-at ?robot ?from)
            (clear ?to))
        :effect (and
            (not (robot-at ?robot ?from))
            (robot-at ?robot ?to)
            (not (clear ?to))
            (clear ?from))
        )
        """
        direction = action.variables[0]
        if (robot_location, direction) in adjacency_map:
            next_robot_location = adjacency_map[(robot_location, direction)]
            if next_robot_location in clear_locs:
                is_valid = True
                pos_preconds = { 
                    conn(robot_location, next_robot_location, direction),
                    robot_at("robot0", robot_location),
                    clear(next_robot_location),
                }
                pos_effects = {
                    robot_at("robot0", next_robot_location),
                    clear(robot_location)
                }
                neg_effects = {
                    robot_at("robot0", robot_location),
                    clear(next_robot_location)
                }

    elif action.predicate.name == "pickup":
        """
        (:action pickup-person
            :parameters (?robot - robot ?person - person ?loc - location)
            :precondition (and (pickup ?person)
                (robot-at ?robot ?loc)
                (person-at ?person ?loc)
                (handsfree ?robot))
            :effect (and
                (not (person-at ?person ?loc))
                (not (handsfree ?robot))
                (carrying ?robot ?person))
        )
        """
        if robot_carrying is None:
            person = action.variables[0]
            person_loc = people_locs[person]
            if person_loc == robot_location:
                is_valid = True
                pos_preconds = { 
                    robot_at("robot0", robot_location),
                    person_at(person, person_loc),
                    handsfree("robot0"),
                }
                pos_effects = {
                    carrying("robot0", person),
                }
                neg_effects = {
                    person_at(person, person_loc),
                    handsfree("robot0"),
                }

    elif action.predicate.name == "dropoff":
        """
        (:action dropoff-person
        :parameters (?robot - robot ?person - person ?loc - location)
        :precondition (and (dropoff )
            (carrying ?robot ?person)
            (robot-at ?robot ?loc))
        :effect (and
            (person-at ?person ?loc)
            (handsfree ?robot)
            (not (carrying ?robot ?person)))
        )
        """
        if robot_carrying is not None:
            is_valid = True
            pos_preconds = { 
                robot_at("robot0", robot_location),
                carrying("robot0", robot_carrying),
            }
            pos_effects = {
                person_at(robot_carrying, robot_location),
                handsfree("robot0"),
            }
            neg_effects = {
                carrying("robot0", robot_carrying),
            }

    else:
        raise Exception(f"Unrecognized action {action}.")

    if not is_valid:
        return state

    assert state.literals.issuperset(pos_preconds)
    assert len(state.literals & {Not(p) for p in neg_preconds}) == 0
    new_state_literals = set(state.literals)
    new_state_literals -= neg_effects
    new_state_literals |= pos_effects
    return state.with_literals(frozenset(new_state_literals))


class PDDLSearchAndRescueEnv(PDDLEnv):

    def __init__(self, level=1, test=False, render_version="fast"):
        dir_path = os.path.join(os.path.dirname(os.path.realpath(pddlgym.__file__)), "pddl")
        domain_file = os.path.join(dir_path, "searchandrescue.pddl")
        problem_dir = os.path.join(dir_path, f"searchandrescue_level{level}")
        if test:
            problem_dir += "_test"
        if render_version == "fast":
            render = sar_render
        else:
            assert render_version == "slow"
            render = slow_sar_render
        super().__init__(domain_file=domain_file, problem_dir=problem_dir, render=render)

    def _get_successor_state(self, state, action, domain, **kwargs):
        """Custom (faster than generic)
        """
        return get_sar_successor_state(state, action)

    def get_successor_state(self, state, action):
        """Allow for public access
        """
        return self._get_successor_state(state, action, self.domain)

    def get_possible_actions(self):
        """Light wrapper around the action space, for convenience.
        """
        assert not self._dynamic_action_space
        if not self._state:
            raise Exception("Must all reset() before get_possible_actions().")
        return sorted(self.action_space.all_ground_literals(self._state))

    def _action_valid_test(self, state, action):
        """
        """
        raise NotImplementedError("Should not be called.")

    def render_from_state(self, state):
        """Light wrapper around the render function, for convenience
        """
        return self._render(state.literals)

    def check_goal(self, state):
        """Allow for public access
        """
        return self._is_goal_reached(state)


class SearchAndRescueEnv(PDDLSearchAndRescueEnv):
    """Changes the state space to just be positions of objects
    and the identity of the person being carried.
    """
    person_type = Type('person')
    robot_type = Type('robot')
    location_type = Type('location')
    direction_type = Type('direction')
    wall_type = Type('wall')
    hospital_type = Type('hospital')
    clear = Predicate('clear', 1, [location_type])
    conn = Predicate("conn", 3, [location_type, location_type, direction_type])
    robot_at = Predicate('robot-at', 2, [robot_type, location_type])
    person_at = Predicate('person-at', 2, [person_type, location_type])
    wall_at = Predicate('wall-at', 2, [wall_type, location_type])
    hospital_at = Predicate('hospital-at', 2, [hospital_type, location_type])
    carrying = Predicate('carrying', 2, [robot_type, person_type])
    handsfree = Predicate('handsfree', 1, [robot_type])

    @property
    def observation_space(self):
        raise NotImplementedError()

    def _state_to_internal(self, state):
        state = dict(state)
        new_state_literals = set()

        directions_to_deltas = {
            self.direction_type('up') : (-1, 0),
            self.direction_type('down') : (1, 0),
            self.direction_type('left') : (0, -1),
            self.direction_type('right') : (0, 1),
        }

        # conn
        height, width = 6, 6
        for r in range(height):
            for c in range(width):
                loc = self.location_type(f"f{r}-{c}f")
                for direction, (dr, dc) in directions_to_deltas.items():
                    next_r, next_c = r + dr, c + dc
                    if not (0 <= next_r < height and 0 <= next_c < width):
                        continue
                    next_loc = self.location_type(f"f{next_r}-{next_c}f")
                    conn_lit = self.conn(loc, next_loc, direction)
                    new_state_literals.add(conn_lit)

        # at
        occupied_locs = set()
        hospital_loc = None
        for obj_name, loc_tup in state.items():
            if obj_name in ["carrying", "rescue"]:
                continue
            r, c = loc_tup
            loc = self.location_type(f"f{r}-{c}f")
            if obj_name.startswith("person"):
                at_pred = self.person_at
            elif obj_name.startswith("robot"):
                at_pred = self.robot_at
                occupied_locs.add((r, c))
            elif obj_name.startswith("wall"):
                at_pred = self.wall_at
                occupied_locs.add((r, c))
            elif obj_name.startswith("hospital"):
                at_pred = self.hospital_at
                assert hospital_loc is None
                hospital_loc = loc
            else:
                raise Exception(f"Unrecognized object {obj_name}")
            new_state_literals.add(at_pred(obj_name, loc))
        assert hospital_loc is not None

        # carrying/handsfree
        if state["carrying"] is None:
            new_state_literals.add(self.handsfree("robot0"))
        else:
            new_state_literals.add(self.carrying("robot0", state["carrying"]))

        # clear
        for r in range(height):
            for c in range(width):
                if (r, c) not in occupied_locs:
                    loc = self.location_type(f"f{r}-{c}f")
                    clear_lit = self.clear(loc)
                    new_state_literals.add(clear_lit)

        # objects
        new_objects = frozenset({o for lit in new_state_literals for o in lit.variables })

        # goal
        new_goal = LiteralConjunction([self.person_at(person, hospital_loc) \
            for person in sorted(state["rescue"])])

        new_state = State(frozenset(new_state_literals), new_objects, new_goal)

        return new_state

    def _internal_to_state(self, internal_state):
        state = { "carrying" : None }
        state["rescue"] = set()
        for lit in internal_state.goal.literals:
            assert lit.predicate == self.person_at
            state["rescue"].add(lit.variables[0].name)
        state["rescue"] = frozenset(state["rescue"]) # make hashable
        for lit in internal_state.literals:
            if lit.predicate.name.endswith("at"):
                obj_name = lit.variables[0].name
                r, c = self._loc_to_rc(lit.variables[1])
                state[obj_name] = (r, c)
            if lit.predicate.name == "carrying":
                person_name = lit.variables[1].name
                state["carrying"] = person_name
        state = tuple(sorted(state.items())) # make hashable
        return state

    def _loc_to_rc(self, loc_str):
        assert loc_str.startswith("f") and loc_str.endswith("f")
        r, c = loc_str[1:-1].split('-')
        return (int(r), int(c))

    def set_state(self, state):
        assert isinstance(state, State), "Do not call set_state"
        self._state = state

    def get_state(self):
        assert isinstance(self._state, State), "Do not call get_state"
        return self._state

    def reset(self):
        internal_state, debug_info = super().reset()
        return self._internal_to_state(internal_state), debug_info

    def step(self, action):
        internal_state, reward, done, debug_info = super().step(action)
        state = self._internal_to_state(internal_state)
        return state, reward, done, debug_info

    def get_successor_state(self, state, action):
        internal_state = self._state_to_internal(state)
        next_internal_state = super().get_successor_state(internal_state, action)
        next_state = self._internal_to_state(next_internal_state)
        # Sanity checks
        assert state == self._internal_to_state(internal_state)
        assert next_internal_state == self._state_to_internal(next_state)
        return next_state

    def render_from_state(self, state):
        internal_state = self._state_to_internal(state)
        return super().render_from_state(internal_state)

    def check_goal(self, state):
        internal_state = self._state_to_internal(state)
        return super().check_goal(internal_state)
