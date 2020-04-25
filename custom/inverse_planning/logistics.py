from pddlgym.core import PDDLEnv
import os
import numpy as np
from collections import defaultdict


class InversePlanningLogisticsPDDLEnv(PDDLEnv):
    """Logistics domain and problems from Ramirez & Geffner, 2010.
    """
    dir_path = os.path.join(os.path.dirname(os.path.realpath(__file__)), "pddl")
    domain_file = os.path.join(dir_path, "logistics.pddl")
    problem_dir = os.path.join(dir_path, "logistics")

    def __init__(self, seed=0):
        super().__init__(self.domain_file, self.problem_dir, render=None, seed=seed,
                 raise_error_on_invalid_action=True,
                 operators_as_actions=True,
                 dynamic_action_space=True,
                 compute_approx_reachable_set=False,
                 shape_reward_mode=None)

        self._at = self.domain.predicates['at']   # (at ?v0 - thing ?v1 - location)
        self._in_city = self.domain.predicates['in-city']   # (in-city ?v0 - location ?v1 - location)
        self._in = self.domain.predicates['in']   # (in ?v0 - thing ?v1 - thing)
        self._eq = self.domain.predicates['eq']   # (eq ?v0 - location ?v1 - location)
        self._ispackage = self.domain.predicates['ispackage']   # (ispackage ?v0 - thing)
        self._iscity = self.domain.predicates['iscity']   # (iscity ?v0 - location)
        self._istruck = self.domain.predicates['istruck']   # (istruck ?v0 - thing)
        self._isplace = self.domain.predicates['isplace']   # (isplace ?v0 - location)
        self._islocation = self.domain.predicates['islocation']   # (islocation ?v0 - location)
        self._isairplane = self.domain.predicates['isairplane']   # (isairplane ?v0 - thing)
        self._isairport = self.domain.predicates['isairport']   # (isairport ?v0 - location)
        self._flyairplane = self.domain.predicates['fly-airplane']   # (flyairplane ?v0 - thing ?v1 - location)
        self._unloadtruck = self.domain.predicates['unload-truck']   # (unloadtruck ?v0 - thing)
        self._unloadairplane = self.domain.predicates['unload-airplane']   # (unloadairplane ?v0 - thing)
        self._loadtruck = self.domain.predicates['load-truck']   # (loadtruck ?v0 - thing ?v1 - thing)
        self._loadairplane = self.domain.predicates['load-airplane']   # (loadairplane ?v0 - thing ?v1 - thing)
        self._drivetruck = self.domain.predicates['drive-truck']   # (drivetruck ?v0 - thing ?v1 - location)
        self._dynamic_predicates = { self._at, self._in }
        self._rng = np.random.RandomState(seed=seed)
        self._static_state = None

    def _parse_state(self):
        trucks, planes, airports, packages, places, vehicles = self._organized_objects

        truck_to_loc = {}
        loc_to_city = {}
        airplane_to_loc = {}
        truck_to_pkgs = defaultdict(list)
        airplane_to_pkgs = defaultdict(list)
        loc_to_pkgs = defaultdict(list)
        city_to_locs = defaultdict(list)
        airport_locs = airports

        for lit in self._state:
            if lit.predicate == self._at:
                thing, loc = lit.variables
                if thing in trucks:
                    truck_to_loc[thing] = loc
                elif thing in planes:
                    airplane_to_loc[thing] = loc
                else:
                    assert thing in packages
                    loc_to_pkgs[loc].append(thing)

            elif lit.predicate == self._in_city:
                loc, city = lit.variables
                city_to_locs[city].append(loc)
                loc_to_city[loc] = city

            elif lit.predicate == self._in:
                pkg, vehicle = lit.variables
                if vehicle in trucks:
                    truck_to_pkgs[vehicle].append(pkg)
                else:
                    assert vehicle in planes
                    airplane_to_pkgs[vehicle].append(pkg)

        return airplane_to_loc, loc_to_pkgs, airport_locs, truck_to_loc, truck_to_pkgs, \
            loc_to_city, city_to_locs, airplane_to_pkgs

    def get_valid_actions(self):
        valid_actions = []

        airplane_to_loc, loc_to_pkgs, airport_locs, truck_to_loc, truck_to_pkgs, \
            loc_to_city, city_to_locs, airplane_to_pkgs = self._parse_state()

        """
        (:action load-airplane
            :parameters (?pkg - thing ?airplane - thing ?loc - location)
            :precondition (and (at ?airplane ?loc)
                (at ?pkg ?loc)
                (isairplane ?airplane)
                (ispackage ?pkg)
                (isplace ?loc))
        )
        """
        for airplane, airplane_loc in airplane_to_loc.items():
            for pkg in loc_to_pkgs[airplane_loc]:
                valid_actions.append(self._loadairplane(pkg, airplane, airplane_loc))    

        """
        (:action fly-airplane
            :parameters (?airplane - thing ?loc_from - location ?loc_to - location)
            :precondition (and (not (eq ?loc_from ?loc_to))
                (at ?airplane ?loc_from)
                (isairplane ?airplane)
                (isairport ?loc_from)
                (isairport ?loc_to))
        )
        """
        for airplane, airplane_loc in airplane_to_loc.items():
            for airport_loc in airport_locs:
                if airport_loc != airplane_loc:
                    valid_actions.append(self._flyairplane(airplane, airplane_loc, airport_loc))
        
        """
        (:action unload-truck
            :parameters (?pkg - thing ?truck - thing ?loc - location)
            :precondition (and (at ?truck ?loc)
                (in ?pkg ?truck)
                (ispackage ?pkg)
                (isplace ?loc)
                (istruck ?truck))
        )
        """
        for truck, truck_loc in truck_to_loc.items():
            for pkg in truck_to_pkgs[truck]:
                valid_actions.append(self._unloadtruck(pkg, truck, truck_loc))

        """
        (:action drive-truck
            :parameters (?truck - thing ?loc_from - location ?loc_to - location ?city - location)
            :precondition (and (not (eq ?loc_from ?loc_to))
                (at ?truck ?loc_from)
                (in-city ?loc_from ?city)
                (in-city ?loc_to ?city)
                (iscity ?city)
                (isplace ?loc_from)
                (isplace ?loc_to)
                (istruck ?truck))
        )
        """
        for truck, truck_loc in truck_to_loc.items():
            if truck_loc not in loc_to_city:
                continue
            truck_city = loc_to_city[truck_loc]
            for loc in city_to_locs[truck_city]:
                if loc != truck_loc:
                    valid_actions.append(self._drivetruck(truck, truck_loc, loc, truck_city))

        """
        (:action unload-airplane
            :parameters (?pkg - thing ?airplane - thing ?loc - location)
            :precondition (and (at ?airplane ?loc)
                (in ?pkg ?airplane)
                (isairplane ?airplane)
                (ispackage ?pkg)
                (isplace ?loc))
        )
        """
        for airplane, airplane_loc in airplane_to_loc.items():
            for pkg in airplane_to_pkgs[airplane]:
                valid_actions.append(self._unloadairplane(pkg, airplane, airplane_loc))
 
        """
        (:action load-truck
            :parameters (?pkg - thing ?truck - thing ?loc - location)
            :precondition (and (at ?pkg ?loc)
                (at ?truck ?loc)
                (ispackage ?pkg)
                (isplace ?loc)
                (istruck ?truck))
            :effect (and
                (not (at ?pkg ?loc))
                (in ?pkg ?truck))
        )
        """
        for truck, truck_loc in truck_to_loc.items():
            for pkg in loc_to_pkgs[truck_loc]:
                valid_actions.append(self._loadtruck(pkg, truck, truck_loc))

        return valid_actions

    def reset(self):
        out = super().reset()
        # Extract the static components of the state and the objects
        state = set()
        trucks = set()
        planes = set()
        airports = set()
        packages = set()
        places = set()
        for lit in self.get_state():
            if lit.predicate not in self._dynamic_predicates:
                state.add(lit)
            if lit.predicate == self._istruck:
                trucks.add(lit.variables[0])
            if lit.predicate == self._isairplane:
                planes.add(lit.variables[0])
            if lit.predicate == self._isairport:
                airports.add(lit.variables[0])
            if lit.predicate == self._ispackage:
                packages.add(lit.variables[0])
            if lit.predicate == self._isplace:
                places.add(lit.variables[0])
        trucks = sorted(trucks)
        planes = sorted(planes)
        airports = sorted(airports)
        packages = sorted(packages)
        places = sorted(places)
        vehicles = trucks + planes
        self._static_state = state
        self._organized_objects = (trucks, planes, airports, packages, places, vehicles)

        return out

    def sample_state(self):
        # Sample for each package, whether it's at a place or in a thing
        # and then for each thing, sample a location. but note that airplanes can only
        # be at airports.

        state = self._static_state.copy()
        trucks, planes, airports, packages, places, vehicles = self._organized_objects

        for package in packages:
            # package at a place
            if self._rng.choice(2):
                place = places[self._rng.choice(len(places))]
                state.add(self._at(package, place))

            # package in a vehicle
            else:
                vehicle = vehicles[self._rng.choice(len(vehicles))]
                state.add(self._in(package, vehicle))

        for plane in planes:
            # sample an airport
            airport = airports[self._rng.choice(len(airports))]
            state.add(self._at(plane, airport))

        for truck in trucks:
            # sample a place
            place = places[self._rng.choice(len(places))]
            state.add(self._at(truck, place))

        return state


class EasyInversePlanningLogisticsPDDLEnv(InversePlanningLogisticsPDDLEnv):
    dir_path = InversePlanningLogisticsPDDLEnv.dir_path
    problem_dir = os.path.join(dir_path, "easy-logistics")



if __name__ == "__main__":
    import time
    env = InversePlanningLogisticsPDDLEnv()
    env.reset()
    start_time = time.time()
    sampled_states = [env.sample_state() for _ in range(1000)]
    print("Sampling time: {}".format(time.time() - start_time))