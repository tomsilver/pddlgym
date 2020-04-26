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
        self._static_state = { self.domain.predicates["dummy"]() }
        self._objects = ["water-jug", "keetle", "cloth", "tea-bag", "cup", 
            "sugar", "bowl", "milk", "cereal", "creamer", "coffee", "cheese", 
            "plate", "bread", "butter", "knife", "peanut-butter", "spoon", 
            "pill-box", "juice", "popcorn", "dressing", "salad-tosser", "lunch-bag"]
        for c in self._objects:
            self._static_state.add(Predicate("is-{}".format(c), 1, [Type("object")])(c))
        self._useables = ["microwave", "phone", "toaster", "plants"]
        for c in self._useables:
            self._static_state.add(Predicate("is-{}".format(c), 1, [Type("useable")])(c))

        self._taken = self.domain.predicates['taken']
        self._used = self.domain.predicates['used']
        self._activity_boil_water = self.domain.predicates['activity-boil-water']
        self._activity_make_tea_1 = self.domain.predicates['activity-make-tea-1']
        self._activity_make_tea_2 = self.domain.predicates['activity-make-tea-2']
        self._activity_make_tea_3 = self.domain.predicates['activity-make-tea-3']
        self._activity_make_cereals = self.domain.predicates['activity-make-cereals']
        self._activity_make_coffee_1 = self.domain.predicates['activity-make-coffee-1']
        self._activity_make_coffee_2 = self.domain.predicates['activity-make-coffee-2']
        self._activity_make_cheese_sandwich = self.domain.predicates['activity-make-cheese-sandwich']
        self._activity_make_toast = self.domain.predicates['activity-make-toast']
        self._activity_make_buttered_toast = self.domain.predicates['activity-make-buttered-toast']
        self._activity_make_peanut_butter_sandwich = self.domain.predicates['activity-make-peanut-butter-sandwich']
        self._activity_pack_lunch_1 = self.domain.predicates['activity-pack-lunch-1']
        self._activity_pack_lunch_2 = self.domain.predicates['activity-pack-lunch-2']
        self._activity_make_breakfast_1 = self.domain.predicates['activity-make-breakfast-1']
        self._activity_make_breakfast_2 = self.domain.predicates['activity-make-breakfast-2']
        self._activity_make_salad_1 = self.domain.predicates['activity-make-salad-1']
        self._activity_make_salad_2 = self.domain.predicates['activity-make-salad-2']
        self._activity_make_dinner_1 = self.domain.predicates['activity-make-dinner-1']
        self._activity_make_dinner_2 = self.domain.predicates['activity-make-dinner-2']
        self._activity_make_dinner_3 = self.domain.predicates['activity-make-dinner-3']
        self._activity_take_medicine = self.domain.predicates['activity-take-medicine']
        self._activity_watch_movie = self.domain.predicates['activity-watch-movie']
        self._activity_wipe_counter = self.domain.predicates['activity-wipe-counter']
        self._activity_tend_plants = self.domain.predicates["activity-tend-plants"]
        self._activity_drink_juice = self.domain.predicates["activity-drink-juice"]
        self._activity_leave_for_work = self.domain.predicates["activity-leave-for-work"]
        self._activity_go_to_bed = self.domain.predicates["activity-go-to-bed"]

        self._state_predicates = [p for _, p in self.domain.predicates.items() \
            if p not in { self._taken, self._used } | set(self._static_state)\
                 | set(self.action_predicates)]

        self._take = self.domain.predicates["take"]
        self._use = self.domain.predicates["use"]

        self._rng = np.random.RandomState(seed=seed)

    def get_valid_actions(self):
        valid_actions = []

        taken_objects = set()
        used_objects = set()
        state_names = []
        for lit in self._state:
            if lit.predicate == self._taken:
                taken_objects.add(lit.variables[0].name)
            elif lit.predicate == self._used:
                used_objects.add(lit.variables[0].name)
            elif lit.predicate in self._state_predicates:
                state_names.append(lit.predicate.name)

        # print("taken:", taken_objects)
        # print("used:", used_objects)
        # print("state names:", state_names)

        """
        (:action ACTIVITY-Boil-Water
            :parameters (?x - object ?y - object ?z - object)
            :precondition   (and
                        (taken ?x) (is-water-jug ?x)
                        (taken ?y) (is-keetle ?y)
                        (taken ?z) (is-cloth ?z)
                    )
                                        )
        )
        """
        if "water-jug" in taken_objects and \
           "keetle" in taken_objects and \
           "cloth" in taken_objects:
            valid_actions.append(self._activity_boil_water("water-jug", "keetle", "cloth"))

        """
        (:action ACTIVITY-Make-Tea-1
            :parameters (?x - object ?y - object ?z - object)
            :precondition   (and
                        (taken ?x) (is-tea-bag ?x)
                        (taken ?y) (is-cup ?y)
                        (taken ?z) (is-sugar ?z)
                        (water_boiled)
                    )
        )
        """
        if "tea-bag" in taken_objects and \
           "cup" in taken_objects and \
           "sugar" in taken_objects and \
           "water_boiled" in state_names:
           valid_actions.append(self._activity_make_tea_1("tea-bag", "cup", "sugar"))

        """
        (:action ACTIVITY-Make-Tea-2
            :parameters (?w - object ?x - object ?y - object ?z - object)
            :precondition   (and
                        (taken ?w) (is-tea-bag ?w)
                        (taken ?x) (is-cup ?x)
                        (taken ?y) (is-sugar ?y)
                        (taken ?z) (is-milk ?z)
                        (water_boiled)
                    )
        )
        """
        if "tea-bag" in taken_objects and \
           "cup" in taken_objects and \
           "sugar" in taken_objects and \
           "milk" in taken_objects and \
           "water_boiled" in state_names:
           valid_actions.append(self._activity_make_tea_2("tea-bag", "cup", "sugar", "milk"))


        """
        (:action ACTIVITY-Make-Tea-3
            :parameters (?x - object ?y - object)
            :precondition   (and
                        (taken ?x) (is-tea-bag ?x)
                        (taken ?y) (is-cup ?y)
                        (water_boiled)
                    )
        )
        """
        if "tea-bag" in taken_objects and \
           "cup" in taken_objects and \
           "water_boiled" in state_names:
           valid_actions.append(self._activity_make_tea_3("tea-bag", "cup"))

        """
        (:action ACTIVITY-Make-Cereals
            :parameters (?x - object ?y - object ?z - object)
            :precondition   (and
                        (taken ?x) (is-bowl ?x)
                        (taken ?y) (is-cereal ?y)
                        (taken ?z) (is-milk ?z)
                    )
            :effect     (and
                        (made_cereals)
                                        )
        )
        """
        if "bowl" in taken_objects and \
           "cereal" in taken_objects and \
           "milk" in taken_objects:
           valid_actions.append(self._activity_make_cereals("bowl", "cereal", "milk"))

        """
        (:action ACTIVITY-Make-Coffee-1
            :parameters (?w - object ?x - object ?y - object ?z - object)
            :precondition   (and
                        (taken ?x) (is-cup ?x)
                        (taken ?y) (is-coffee ?y)
                        (taken ?z) (is-creamer ?z)
                        (taken ?w) (is-sugar ?w)
                        (water_boiled)
                    )
            :effect     (and
                        (made_coffee)
                                        )
        )
        """
        if "cup" in taken_objects and \
           "coffee" in taken_objects and \
           "creamer" in taken_objects and \
           "sugar" in taken_objects and \
           "water_boiled" in state_names:
           valid_actions.append(self._activity_make_coffee_1("cup", "coffee", "creamer", "sugar"))

        """
        (:action ACTIVITY-Make-Coffee-2
            :parameters (?w - object ?x - object ?y - object ?z - object)
            :precondition   (and
                        (taken ?x) (is-cup ?x)
                        (taken ?y) (is-coffee ?y)
                        (taken ?z) (is-milk ?z)
                        (taken ?w) (is-sugar ?w)
                        (water_boiled)
                    )
            :effect     (and
                        (made_coffee)
                                        )
        )
        """
        if "cup" in taken_objects and \
           "coffee" in taken_objects and \
           "milk" in taken_objects and \
           "sugar" in taken_objects and \
           "water_boiled" in state_names:
           valid_actions.append(self._activity_make_coffee_2("cup", "coffee", "milk", "sugar"))

        """
        (:action ACTIVITY-Make-Cheese-Sandwich
            :parameters (?x - object ?y - object ?z - object)
            :precondition   (and
                        (taken ?x) (is-bread ?x)
                        (taken ?y) (is-cheese ?y)
                        (taken ?z) (is-plate ?z)
                    )
            :effect     (and
                        (made_cheese_sandwich)
                                        )
        )
        """
        if "bread" in taken_objects and \
           "cheese" in taken_objects and \
           "plate" in taken_objects:
           valid_actions.append(self._activity_make_cheese_sandwich("bread", "cheese", "plate"))

        """
        (:action ACTIVITY-Make-Toast
            :parameters (?x - object ?y - useable)
            :precondition   (and
                        (taken ?x) (is-bread ?x)
                        (used ?y) (is-toaster ?y)
                    )
        )
        """
        if "bread" in taken_objects and \
           "toaster" in used_objects:
           valid_actions.append(self._activity_make_toast("bread", "toaster"))

        """
        (:action ACTIVITY-Make-Buttered-Toast
            :parameters (?x - object ?y - object)
            :precondition   (and
                        (made_toast)
                        (taken ?x) (is-butter ?x)
                        (taken ?y) (is-knife ?y)
                    )
        )
        """
        if "butter" in taken_objects and \
           "knife" in taken_objects:
           valid_actions.append(self._activity_make_buttered_toast("butter", "knife"))

        """
        (:action ACTIVITY-Make-Peanut-Butter-Sandwich
            :parameters (?w - object ?x - object ?y - object ?z - object)
            :precondition   (and
                        (taken ?w) (is-plate ?w)
                        (taken ?x) (is-bread ?x)
                        (taken ?y) (is-peanut-butter ?y)
                        (taken ?z) (is-knife ?z)
                    )
        )
        """
        if "bread" in taken_objects and \
           "peanut-butter" in taken_objects and \
           "knife" in taken_objects and \
           "plate" in taken_objects:
           valid_actions.append(self._activity_make_peanut_butter_sandwich("plate", "bread", "peanut-butter", "knife"))

        """
        (:action ACTIVITY-Pack-Lunch-1
            :parameters (?x - object)
            :precondition   (and
                        (taken ?x) (is-lunch-bag ?x)
                        (made_cheese_sandwich)
                    )
            :effect     (and
                        (lunch_packed)
                                        )
        )
        """
        if "lunch-bag" in taken_objects and \
            "made_cheese_sandwich" in state_names:
           valid_actions.append(self._activity_pack_lunch_1("lunch-bag"))

        """
        (:action ACTIVITY-Pack-Lunch-2
            :parameters (?x - object)
            :precondition   (and
                        (taken ?x) (is-lunch-bag ?x)
                        (made_peanut_butter_sandwich)
                    )
            :effect     (and
                        (lunch_packed)
                                        )
        )
        """
        if "lunch-bag" in taken_objects and \
           "made_peanut_butter_sandwich" in state_names:
           valid_actions.append(self._activity_pack_lunch_2("lunch-bag"))

        """
        (:action ACTIVITY-Make-Breakfast-1
            :parameters (?x - object)
            :precondition   (and
                        (made_tea)
                        (taken ?x) (is-spoon ?x)
                        (made_cereals)
                        (made_buttered_toast)
                    )
            :effect     (and
                        (made_breakfast)
                                        )
        )
        """
        if "spoon" in taken_objects and \
            "made_tea" in state_names and \
            "made_cereals" in state_names and \
            "made_buttered_toast" in state_names:
           valid_actions.append(self._activity_make_breakfast_1("spoon"))

        """
        (:action ACTIVITY-Make-Breakfast-2
            :parameters (?x - object)
            :precondition   (and
                        (made_coffee)
                        (taken ?x) (is-spoon ?x)
                        (made_cereals)
                        (made_buttered_toast)
                    )
            :effect     (and
                        (made_breakfast)
                                        )
        )
        """
        if "spoon" in taken_objects and \
            "made_coffee" in state_names and \
            "made_cereals" in state_names and \
            "made_buttered_toast" in state_names:
           valid_actions.append(self._activity_make_breakfast_2("spoon"))

        """
        (:action ACTIVITY-Make-Salad-1
            :parameters (?w - object ?x - object ?y - object ?z - object)
            :precondition   (and
                        (taken ?w) (is-salad-tosser ?w)
                        (taken ?x) (is-bowl ?x)
                        (taken ?y) (is-plate ?y)
                        (taken ?z) (is-dressing ?z)
                    )
            :effect     (and
                        (made_salad)
                                        )
        )
        """
        if "bowl" in taken_objects and \
           "plate" in taken_objects and \
           "dressing" in taken_objects and \
           "salad-tosser" in taken_objects:
           valid_actions.append(self._activity_make_salad_1("salad-tosser", "bowl", "plate", "dressing"))

        """
        (:action ACTIVITY-Make-Salad-2
            :parameters (?x - object ?y - object ?z - object)
            :precondition   (and
                        (taken ?x) (is-bowl ?x)
                        (taken ?y) (is-plate ?y)
                        (taken ?z) (is-salad-tosser ?z)
                    )
            :effect     (and
                        (made_salad)
                                        )
        )
        """
        if "bowl" in taken_objects and \
           "plate" in taken_objects and \
           "salad-tosser" in taken_objects:
           valid_actions.append(self._activity_make_salad_2("bowl", "plate", "salad-tosser"))

        """
        (:action ACTIVITY-Make-Dinner-1
            :parameters ()
            :precondition   (and
                        (made_salad)
                    )
            :effect     (and
                        (made_dinner)
                                        )
        )
        """
        if "made_salad" in state_names:
           valid_actions.append(self._activity_make_dinner_1())

        """
        (:action ACTIVITY-Make-Dinner-2
            :parameters ()
            :precondition   (and
                        (made_cheese_sandwich)
                    )
            :effect     (and
                        (made_dinner)
                                        )
        )
        """
        if "made_cheese_sandwich" in state_names:
           valid_actions.append(self._activity_make_dinner_2())

        """
        (:action ACTIVITY-Make-Dinner-3
            :parameters ()
            :precondition   (and
                        (made_salad)
                        (made_cheese_sandwich)
                    )
            :effect     (and
                        (made_dinner)
                                        )
        )
        """
        if "made_salad" in state_names and\
           "made_cheese_sandwich" in state_names:
           valid_actions.append(self._activity_make_dinner_3())

        """
        (:action ACTIVITY-Take-Medicine
            :parameters (?x - object)
            :precondition   (and
                        (taken ?x) (is-pill-box ?x)
                    )
            :effect     (and
                        (taken_medicine)
                                        )
        )
        """
        if "pill-box" in taken_objects:
            valid_actions.append(self._activity_take_medicine("pill-box"))

        """
        (:action ACTIVITY-Watch-Movie
            :parameters (?x - object ?y - useable)
            :precondition   (and
                        (taken ?x) (is-popcorn ?x)
                        (used ?y) (is-microwave ?y)
                    )
            :effect     (and
                        (watching_movie)
                                        )
        )
        """
        if "popcorn" in taken_objects and \
           "microwave" in used_objects:
            valid_actions.append(self._activity_watch_movie("popcorn", "microwave"))

        """
        (:action ACTIVITY-Wipe-Counter
            :parameters (?x - object)
            :precondition   (and
                        (taken ?x) (is-cloth ?x)
                    )
            :effect     (and
                        (counter_wiped)
                                        )
        )
        """
        if "cloth" in taken_objects:
            valid_actions.append(self._activity_wipe_counter("cloth"))

        """
        (:action ACTIVITY-Tend-Plants
            :parameters (?x - object ?y - useable)
            :precondition   (and
                        (taken ?x) (is-water-jug ?x)
                        (used ?y) (is-plants ?y)
                    )
            :effect     (and
                        (plants_tended)
                                        )
        )
        """
        if "water-jug" in taken_objects and \
           "plants" in used_objects:
            valid_actions.append(self._activity_tend_plants("water-jug", "plants"))

        """
        (:action ACTIVITY-Drink-Juice
            :parameters (?x - object ?y - object)
            :precondition   (and
                        (taken ?x) (is-juice ?x)
                        (taken ?y) (is-cup ?y)
                    )
            :effect     (and
                        (drank_juice)
                                        )
        )
        """
        if "juice" in taken_objects and \
           "cup" in used_objects:
            valid_actions.append(self._activity_drink_juice("juice", "cup"))

        """
        (:action ACTIVITY-Leave-For-Work
            :parameters ()
            :precondition   (and
                        (made_breakfast)
                        (lunch_packed)
                        (plants_tended)
                    )
            :effect     (and
                        (leaving_for_work)
                                        )
        )
        """
        if "made_breakfast" in state_names and \
           "lunch_packed" in state_names and \
           "plants_tended" in state_names:
            valid_actions.append(self._activity_leave_for_work())

        """
        (:action ACTIVITY-Go-To-Bed
            :parameters ()
            :precondition   (and
                        (made_dinner)
                        (taken_medicine)
                    )
            :effect     (and
                        (going_to_bed)
                                        )
        )
        """
        if "made_dinner" in state_names and \
           "taken_medicine" in state_names:
           valid_actions.append(self._activity_go_to_bed())

        # print("valid activities:", valid_actions)

        """
        (:action TAKE
            :parameters (?obj - object )
            :precondition (and (dummy) )
        )
        """
        for obj in self._objects:
            valid_actions.append(self._take(obj))

        """
        (:action USE
            :parameters (?obj - useable )
            :precondition (and (dummy) )
        )
        """
        for useable in self._useables:
            valid_actions.append(self._use(useable))

        return valid_actions

    def sample_state(self):
        state = self._static_state.copy()

        for pred in self._state_predicates:
            if self._rng.uniform() < 0.5:
                state.add(pred())

        # Random taken
        for obj in self._objects:
            if self._rng.uniform() < 0.5:
                state.add(self._taken(obj))

        # Random used
        for useable in self._useables:
            if self._rng.uniform() < 0.5:
                state.add(self._used(useable))

        return state

class EasyInversePlanningKitchenPDDLEnv(InversePlanningKitchenPDDLEnv):
    dir_path = InversePlanningKitchenPDDLEnv.dir_path
    problem_dir = os.path.join(dir_path, "easy-kitchen")

    def __init__(self, seed=0):
        super().__init__(seed=seed)
        self._state_predicates = [p for p in self._state_predicates \
            if p.name in ["water_boiled", "made_tea"]]

        self._static_state = { self.domain.predicates["dummy"]() }
        self._objects = ["water-jug", "keetle", "cloth", "tea-bag", "cup", "sugar", "spoon"]
        for c in self._objects:
            self._static_state.add(Predicate("is-{}".format(c), 1, [Type("object")])(c))
        self._useables = ["microwave"]
        for c in self._useables:
            self._static_state.add(Predicate("is-{}".format(c), 1, [Type("useable")])(c))


if __name__ == "__main__":
    import time
    env = InversePlanningKitchenPDDLEnv()
    env.reset()
    start_time = time.time()
    sampled_states = [env.sample_state() for _ in range(1000)]
    import ipdb; ipdb.set_trace()
    print("Sampling time: {}".format(time.time() - start_time))

