# from pddlgym.core import PDDLEnv
from .inverse_planning_env import InversePlanningPDDLEnv
from pddlgym.structs import Predicate, Type
import os
import numpy as np
from collections import defaultdict


class InversePlanningCampusPDDLEnv(InversePlanningPDDLEnv):
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
        self._move = self.domain.predicates["move"]
        self._activity_banking = self.domain.predicates["activity-banking"]
        self._activity_take_lecture_1 = self.domain.predicates["activity-take-lecture-1"]
        self._activity_take_lecture_2 = self.domain.predicates["activity-take-lecture-2"]
        self._activity_take_lecture_3 = self.domain.predicates["activity-take-lecture-3"]
        self._activity_take_lecture_4 = self.domain.predicates["activity-take-lecture-4"]
        self._activity_group_meeting_1_1 = self.domain.predicates["activity-group-meeting-1-1"]
        self._activity_group_meeting_1_2 = self.domain.predicates["activity-group-meeting-1-2"]
        self._activity_group_meeting_1_3 = self.domain.predicates["activity-group-meeting-1-3"]
        self._activity_group_meeting_2_1 = self.domain.predicates["activity-group-meeting-2-1"]
        self._activity_group_meeting_2_2 = self.domain.predicates["activity-group-meeting-2-2"]
        self._activity_group_meeting_2_3 = self.domain.predicates["activity-group-meeting-2-3"]
        self._activity_group_meeting_3_1 = self.domain.predicates["activity-group-meeting-3-1"]
        self._activity_group_meeting_3_2 = self.domain.predicates["activity-group-meeting-3-2"]
        self._activity_coffee_1 = self.domain.predicates["activity-coffee-1"]
        self._activity_coffee_2 = self.domain.predicates["activity-coffee-2"]
        self._activity_coffee_3 = self.domain.predicates["activity-coffee-3"]
        self._activity_breakfast_1 = self.domain.predicates["activity-breakfast-1"]
        self._activity_breakfast_2 = self.domain.predicates["activity-breakfast-2"]
        self._activity_breakfast_3 = self.domain.predicates["activity-breakfast-3"]
        self._activity_lunch_1 = self.domain.predicates["activity-lunch-1"]
        self._activity_lunch_2 = self.domain.predicates["activity-lunch-2"]
        self._rng = np.random.RandomState(seed=seed)

    def get_valid_actions(self):
        valid_actions = []

        current_place = None
        state_names = []
        for lit in self._state:
            if lit.predicate == self._at:
                current_place = lit.variables[0]
            elif lit.predicate in self._state_predicates:
                state_names.append(lit.predicate.name)
        assert current_place is not None

        """
        (:action MOVE
            :parameters( ?src - place ?dst - place )
            :precondition (and (at ?src ) )
        )
        """
        for place in self._places:
            if place == current_place:
                continue
            valid_actions.append(self._move(current_place, place))

        """
        (:action ACTIVITY-BANKING
            :parameters (?p - place)
            :precondition (and (at ?p) (is-bank ?p))
        )
        """
        if current_place == "bank":
            valid_actions.append(self._activity_banking(current_place))

        """
        (:action ACTIVITY-TAKE-LECTURE-1
            :parameters (?p - place)
            :precondition (and (at ?p) (is-watson-theater ?p))
        )
        """
        if current_place == "watson-theater":
            valid_actions.append(self._activity_take_lecture_1(current_place))

        """
        (:action ACTIVITY-TAKE-LECTURE-2
            :parameters (?p - place)
            :precondition (and (at ?p) (is-hayman-theater ?p) (breakfast) (lecture-1-taken))

        )
        """
        if current_place == "hayman-theater" and \
            "breakfast" in state_names and "lecture-1-taken" in state_names:
            valid_actions.append(self._activity_take_lecture_2(current_place))
        
        """
        (:action ACTIVITY-TAKE-LECTURE-3
            :parameters (?p - place)
            :precondition (and (at ?p) (is-davis-theater ?p) (group-meeting-2) (banking))
        )
        """
        if current_place == "davis-theater" and \
            "group-meeting-2" in state_names and "banking" in state_names:
            valid_actions.append(self._activity_take_lecture_3(current_place))

        """
        (:action ACTIVITY-TAKE-LECTURE-4
            :parameters (?p - place)
            :precondition (and (at ?p) (is-jones-theater ?p) (lecture-3-taken))
        )
        """
        if current_place == "jones-theater" and \
            "lecture-3-taken" in state_names:
            valid_actions.append(self._activity_take_lecture_4(current_place))

        """
        (:action ACTIVITY-GROUP-MEETING-1-1
            :parameters (?p - place)
            :precondition (and (at ?p) (is-bookmark-cafe ?p) (lecture-1-taken) (breakfast))
        )
        """
        if current_place == "bookmark-cafe" and \
            "lecture-1-taken" in state_names and "breakfast" in state_names:
            valid_actions.append(self._activity_group_meeting_1_1(current_place))

        """
        (:action ACTIVITY-GROUP-MEETING-1-2
            :parameters (?p - place)
            :precondition (and (at ?p) (is-library ?p) (lecture-1-taken) (breakfast))
            :effect (and
                    (group-meeting-1)
                                ) 
        )
        """
        if current_place == "library" and \
            "lecture-1-taken" in state_names and "breakfast" in state_names:
            valid_actions.append(self._activity_group_meeting_1_2(current_place))

        """
        (:action ACTIVITY-GROUP-MEETING-1-3
            :parameters (?p - place)
            :precondition (and (at ?p) (is-cbs ?p) (lecture-1-taken) (breakfast))
            :effect (and
                    (group-meeting-1)
                                ) 
        )
        """
        if current_place == "cbs" and \
            "lecture-1-taken" in state_names and "breakfast" in state_names:
            valid_actions.append(self._activity_group_meeting_1_3(current_place))

        """
        (:action ACTIVITY-GROUP-MEETING-2-1
            :parameters (?p - place)
            :precondition (and (at ?p) (is-library ?p))
            :effect (and
                    (group-meeting-2)
                                )
        )
        """
        if current_place == "library":
            valid_actions.append(self._activity_group_meeting_2_1(current_place))

        """
        (:action ACTIVITY-GROUP-MEETING-2-2
            :parameters (?p - place)
            :precondition (and (at ?p) (is-cbs ?p))
            :effect (and
                    (group-meeting-2)
                                )
        )
        """
        if current_place == "cbs":
            valid_actions.append(self._activity_group_meeting_2_2(current_place))

        """
        (:action ACTIVITY-GROUP-MEETING-2-3
            :parameters (?p - place)
            :precondition (and (at ?p) (is-psychology-bldg ?p))
            :effect (and
                    (group-meeting-2)
                                )
        )
        """
        if current_place == "psychology-bldg":
            valid_actions.append(self._activity_group_meeting_2_3(current_place))

        """
        (:action ACTIVITY-GROUP-MEETING-3-1
            :parameters (?p - place)
            :precondition (and (at ?p) (is-angazi-cafe ?p) (lecture-4-taken))
            :effect (and
                    (group-meeting-3)
                                )
        )
        """
        if current_place == "angazi-cafe" and \
            "lecture-4-taken" in state_names:
            valid_actions.append(self._activity_group_meeting_3_1(current_place))

        """
        (:action ACTIVITY-GROUP-MEETING-3-2
            :parameters (?p - place)
            :precondition (and (at ?p) (is-psychology-bldg ?p) (lecture-4-taken))
            :effect (and
                    (group-meeting-3)
                                )
        )
        """
        if current_place == "psychology-bldg" and \
            "lecture-4-taken" in state_names:
            valid_actions.append(self._activity_group_meeting_3_2(current_place))

        """
        (:action ACTIVITY-COFFEE-1
            :parameters (?p - place)
            :precondition (and (at ?p) (is-tav ?p) (lecture-2-taken) (group-meeting-1))
            :effect (and
                    (coffee)
                                )
        )
        """
        if current_place == "tav" and \
            "lecture-2-taken" in state_names and "group-meeting-1" in state_names:
            valid_actions.append(self._activity_coffee_1(current_place))

        """
        (:action ACTIVITY-COFFEE-2
            :parameters (?p - place)
            :precondition (and (at ?p) (is-angazi-cafe ?p) (lecture-2-taken) (group-meeting-1))
            :effect (and
                    (coffee)
                                )
        )
        """
        if current_place == "angazi-cafe" and \
            "lecture-2-taken" in state_names and "group-meeting-1" in state_names:
            valid_actions.append(self._activity_coffee_2(current_place))

        """
        (:action ACTIVITY-COFFEE-3
            :parameters (?p - place)
            :precondition (and (at ?p) (is-bookmark-cafe ?p) (lecture-2-taken) (group-meeting-1))
            :effect (and
                    (coffee)
                                )
        )
        """
        if current_place == "bookmark-cafe" and \
            "lecture-2-taken" in state_names and "group-meeting-1" in state_names:
            valid_actions.append(self._activity_coffee_3(current_place))

        """
        (:action ACTIVITY-BREAKFAST-1
            :parameters (?p - place)
            :precondition (and (at ?p) (is-tav ?p))
            :effect (and
                    (breakfast)
                                )
        )
        """
        if current_place == "tav":
            valid_actions.append(self._activity_breakfast_1(current_place))

        """
        (:action ACTIVITY-BREAKFAST-2
            :parameters (?p - place)
            :precondition (and (at ?p) (is-angazi-cafe ?p))
            :effect (and
                    (breakfast)
                                )
        )
        """
        if current_place == "angazi-cafe":
            valid_actions.append(self._activity_breakfast_2(current_place))

        """
        (:action ACTIVITY-BREAKFAST-3
            :parameters (?p - place)
            :precondition (and (at ?p) (is-bookmark-cafe ?p))
            :effect (and
                    (breakfast)
                                )
        )
        """
        if current_place == "bookmark-cafe":
            valid_actions.append(self._activity_breakfast_3(current_place))

        """
        (:action ACTIVITY-LUNCH-1
            :parameters (?p - place)
            :precondition (and (at ?p) (is-tav ?p))
            :effect (and
                    (lunch)
                                )
        )
        """
        if current_place == "tav":
            valid_actions.append(self._activity_lunch_1(current_place))

        """
        (:action ACTIVITY-LUNCH-2
            :parameters (?p - place)
            :precondition (and (at ?p) (is-bookmark-cafe ?p))
            :effect (and
                    (lunch)
                                )
        )
        """
        if current_place == "bookmark-cafe":
            valid_actions.append(self._activity_lunch_2(current_place))

        return valid_actions

    def _sample_state(self):
        state = self._static_state.copy()

        for pred in self._state_predicates:
            if self._rng.uniform() < 0.25:
                state.add(pred())

        # Random at
        place = self._places[self._rng.choice(len(self._places))]
        state.add(self._at(place))

        return state


class EasyInversePlanningCampusPDDLEnv(InversePlanningCampusPDDLEnv):
    dir_path = InversePlanningCampusPDDLEnv.dir_path
    problem_dir = os.path.join(dir_path, "easy-campus")

    def __init__(self, seed=0):
        super().__init__(seed=seed)
        self._state_predicates = [p for p in self._state_predicates \
            if p.name in ["breakfast", "lecture-1-taken"]]
        self._places = ["watson-theater", "bookmark-cafe", "cbs", "angazi-cafe"]
        self._static_state = {Predicate("is-{}".format(c), 1, [Type("place")])(c) \
            for c in self._places}


if __name__ == "__main__":
    import time
    env = InversePlanningCampusPDDLEnv()
    env.reset()
    start_time = time.time()
    sampled_states = [env.sample_state() for _ in range(1000)]
    import ipdb; ipdb.set_trace()
    print("Sampling time: {}".format(time.time() - start_time))

