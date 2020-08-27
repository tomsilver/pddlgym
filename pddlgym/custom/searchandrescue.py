from pddlgym.core import PDDLEnv
from pddlgym.rendering import sar_render, slow_sar_render
from pddlgym.structs import Type, Predicate, Not, State
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


class SearchAndRescueEnv(PDDLEnv):

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
        state = self.get_state()
        if not state:
            raise Exception("Must all reset() before get_possible_actions().")
        return sorted(self.action_space.all_ground_literals(state))

    def render_from_state(self, state):
        """Light wrapper around the render function, for convenience
        """
        return self._render(state.literals)

    def check_goal(self, state):
        """Allow for public access
        """
        return self._is_goal_reached(state)
