from gym.envs.toy_text.taxi import TaxiEnv
import numpy as np
import os


class InversePlanningTaxiPDDLEnv(TaxiEnv):
    """Taxi domain from Dietterich 2000 / OpenAI Gym
    """
    dir_path = os.path.join(os.path.dirname(os.path.realpath(__file__)), "pddl")
    domain_file = os.path.join(dir_path, "taxi.pddl")

    rng = np.random.RandomState(0)
    problem_index_to_state = list(range(500))
    rng.shuffle(problem_index_to_state)

    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)
        if not os.path.exists(self.domain_file):
            self._create_domain_file()
        self._problem_index = None
        self._render = super().render

    def reset(self):
        obs = super().reset()
        if self._problem_index is not None:
            self.s = self.problem_index_to_state[self._problem_index]
            obs = self.s

        return obs, {
            'domain_file' : self.domain_file,
            'problem_file' : self._get_problem_file()
        }

    def render(self, *args, **kwargs):
        if self._render:
            return self._render(*args, **kwargs)

    def fix_problem_index(self, idx):
        self._problem_index = idx

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

    def _get_problem_file(self):
        problem_file = os.path.join(self.dir_path, "taxi", "problem{}.pddl".format(self._problem_index))
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
        (destination ?pl - pasloc)
        (done)
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
            (destination ?pasloc)
        )
        :effect (and
            (not (passenger-at intaxi))
            (passenger-at ?pasloc)
            (increase (total-cost) 1)
            (done)
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
        destination_str = "(destination {})".format(pasloc_order[dest_idx])
        
        state_str = "\n".join([move_dir_str, pasloc_at_loc_str, taxi_at_str, passenger_at_str, destination_str])
        
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
(done)
)
)
(:metric minimize (total-cost))
)
""".format(state_str)
        with open(problem_file, "w") as f:
            f.write(problem_str)



