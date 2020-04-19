from pddlgym.core import PDDLEnv
import os
import numpy as np


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
        self._flyairplane = self.domain.predicates['flyairplane']   # (flyairplane ?v0 - thing ?v1 - location)
        self._unloadtruck = self.domain.predicates['unloadtruck']   # (unloadtruck ?v0 - thing)
        self._unloadairplane = self.domain.predicates['unloadairplane']   # (unloadairplane ?v0 - thing)
        self._loadtruck = self.domain.predicates['loadtruck']   # (loadtruck ?v0 - thing ?v1 - thing)
        self._loadairplane = self.domain.predicates['loadairplane']   # (loadairplane ?v0 - thing ?v1 - thing)
        self._drivetruck = self.domain.predicates['drivetruck']   # (drivetruck ?v0 - thing ?v1 - location)
        self._dynamic_predicates = { self._at, self._in }
        self._rng = np.random.RandomState(seed=seed)
        self._static_state = None

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