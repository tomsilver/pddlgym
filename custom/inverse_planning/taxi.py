from gym.envs.toy_text.taxi import TaxiEnv
from .inverse_planning_env import InversePlanningMixIn
import numpy as np
import os


class InversePlanningTaxiPDDLEnv(InversePlanningMixIn, TaxiEnv):
    """Taxi domain from Dietterich 2000 / OpenAI Gym
    """
    dir_path = os.path.join(os.path.dirname(os.path.realpath(__file__)), "pddl")
    domain_file = os.path.join(dir_path, "taxi.pddl")

    def __init__(self, seed=0, *args, **kwargs):
        super().__init__(*args, **kwargs)
        if not os.path.exists(self.domain_file):
            self._create_domain_file()
        self._render = super().render
        self._problem_idx = None
        self._problem_index_fixed = False
        self._problem_index_to_state = self._create_problem_index_to_state()
        self._rng = np.random.RandomState(seed=seed)

    def reset(self):
        if self._problem_index_fixed:
            self.s = self._problem_index_to_state[self._problem_idx]
            obs = self.s
        else:
            import ipdb; ipdb.set_trace()
        
        self._state_buffer = []
        problems = self._get_problems_with_current_initial_state()
        for problem_fname in problems:
            plan = self.load_demonstration_for_problem(problem_fname)
            states = self.run_demo(plan)
            self._state_buffer.extend(states)
        
        return obs, {
            'domain_file' : self.domain_file,
            'problem_file' : self._get_problem_file()
        }

    def render(self, *args, **kwargs):
        if self._render:
            return self._render(*args, **kwargs)

    def fix_problem_index(self, idx):
        self._problem_index_fixed = True
        self._problem_idx = idx

    def get_state(self):
        return {self.s}

    def set_state(self, s_set):
        self.s = next(iter(s_set))

    def get_actions_for_state(self, state):
        return list(range(6))

    def _sample_state(self):
        return { self._rng.randint(500) }

    def parse_action_str(self, action_str):
        action_str = action_str.strip()
        if action_str.startswith("move"):
            dir_str = action_str.split()[-1]
            return ['south', 'north', 'east', 'west'].index(dir_str)
        if action_str.startswith("pickup"):
            return 4
        if action_str.startswith("dropoff"):
            return 5
        import ipdb; ipdb.set_trace()

    def _create_problem_index_to_state(self):
        out = []
        row = 1
        col = 1
        for pass_idx in range(4):
            for dest_idx in range(4):
                if pass_idx == dest_idx:
                    continue
                s = self.encode(row, col, pass_idx, dest_idx)
                out.append(s)
        assert len(out) == 12
        return out

    def _get_problems_with_current_initial_state(self):
        problem_indices = []
        current_row, current_col, current_pass_idx, _ = self.decode(self.s)
        for problem_index, state in enumerate(self._problem_index_to_state):
            row, col, pass_idx, _ = self.decode(state)
            if row == current_row and col == current_col and pass_idx == current_pass_idx:
                problem_indices.append(problem_index)
        assert len(problem_indices) == 3
        return [os.path.join(self.dir_path, "taxi", 'problem{}.pddl'.format(i)) for i in problem_indices]

    def _get_problem_file(self):
        problem_file = os.path.join(self.dir_path, "taxi", "problem{}.pddl".format(self._problem_idx))
        if not os.path.exists(problem_file):
            self._create_problem_file(problem_file)
        return problem_file

    def _create_domain_file(self):
        domain_str = """(define (domain taxi)
    (:requirements :strips :typing :action-costs)
    (:types 
        loc dir pasloc
    )
    (:constants
        red green yellow blue intaxi - pasloc
    )
    (:predicates
        (move-dir ?from - loc ?to - loc ?dir - dir)
        (taxi-at ?l - loc)
        (passenger-at ?pl - pasloc)
        (pasloc-at-loc ?pl - pasloc ?l - loc)
    )
    (:functions
        (total-cost) - number
    )
    (:action move
        :parameters (?from - loc ?to - loc ?dir - dir)
        :precondition (and
            (taxi-at ?from)
            (move-dir ?from ?to ?dir)
        )
        :effect (and
            (taxi-at ?to)
            (not (taxi-at ?from))
            (increase (total-cost) 19)
        )
    )
    (:action pickup
        :parameters (?loc - loc ?pasloc - pasloc)
        :precondition (and
            (taxi-at ?loc)
            (passenger-at ?pasloc)
            (pasloc-at-loc ?pasloc ?loc)
        )
        :effect (and
            (not (passenger-at ?pasloc))
            (passenger-at intaxi)
            (increase (total-cost) 19)
        )
    )
    (:action dropoff
        :parameters (?loc - loc ?pasloc - pasloc)
        :precondition (and
            (taxi-at ?loc)
            (passenger-at intaxi)
            (pasloc-at-loc ?pasloc ?loc)
        )
        :effect (and
            (not (passenger-at intaxi))
            (passenger-at ?pasloc)
            (increase (total-cost) 1)
        )
    )
)
"""
        with open(self.domain_file, "w") as f:
            f.write(domain_str)

    def _create_problem_file(self, problem_file):
        taxi_row, taxi_col, pass_idx, dest_idx = self.decode(self.s)
        taxi_loc = taxi_row*5 + taxi_col

        dir_order = ['south', 'north', 'east', 'west']
        pasloc_order = ['red', 'green', 'yellow', 'blue', 'intaxi']

        destination = pasloc_order[dest_idx]

        max_row = 4
        max_col = 4
        move_dir_str = ""
        for action in range(4):
            dir_for_action = dir_order[action]
            for row in range(max_row+1):
                for col in range(max_col+1):
                    new_row = row
                    new_col = col
                    if action == 0:
                        new_row = min(row + 1, max_row)
                    elif action == 1:
                        new_row = max(row - 1, 0)
                    if action == 2 and self.desc[1 + row, 2 * col + 2] == b":":
                        new_col = min(col + 1, max_col)
                    elif action == 3 and self.desc[1 + row, 2 * col] == b":":
                        new_col = max(col - 1, 0)
                    old_loc = row * 5 + col
                    new_loc = new_row * 5 + new_col
                    move_dir_str += "\n(move-dir loc{} loc{} {})".format(old_loc, new_loc, dir_for_action)
        
        pasloc_at_loc_str = ""
        for i, color in enumerate(pasloc_order[:-1]):
            row, col = self.locs[i]
            loc = row*5 + col
            pasloc_at_loc_str += "\n(pasloc-at-loc {} loc{})".format(color, loc)

        taxi_at_str = "(taxi-at loc{})".format(taxi_loc)
        passenger_at_str = "(passenger-at {})".format(pasloc_order[pass_idx])
        
        state_str = "\n".join([move_dir_str, pasloc_at_loc_str, taxi_at_str, passenger_at_str])
        
        problem_str = """
(define (problem taxiproblem)
(:domain taxi)
(:objects
    loc0 loc1 loc2 loc3 loc4 loc5 loc6 loc7 loc8 loc9 loc10 loc11 loc12 loc13 loc14 loc15 loc16 loc17 loc18 loc19 loc20 loc21 loc22 loc23 loc24 - loc
    north south east west - dir
)
(:init
(= (total-cost) 0)
{}
)
(:goal
(and
(passenger-at {})
)
)
(:metric minimize (total-cost))
)
""".format(state_str, destination)
        with open(problem_file, "w") as f:
            f.write(problem_str)



