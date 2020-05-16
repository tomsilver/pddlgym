from gym.envs.toy_text.taxi import TaxiEnv
import numpy as np
import os


class InversePlanningTaxiPDDLEnv(TaxiEnv):
    """Taxi domain from Dietterich 2000 / OpenAI Gym
    """
    dir_path = os.path.join(os.path.dirname(os.path.realpath(__file__)), "pddl")
    domain_file = os.path.join(dir_path, "taxi.pddl")

    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)
        if not os.path.exists(self.domain_file):
            self._create_domain_file()
        self._problem_index = None

    def reset(self):
        obs = super().reset()
        if self._problem_index is not None:
            self.s = self._problem_index
            obs = self.s

        return obs, {
            'domain_file' : self.domain_file,
            'problem_file' : self._get_problem_file()
        }

    def fix_problem_index(self, idx):
        self._problem_index = idx

    def parse_action_str(self, action_str):
        action_str = action_str.strip()
        assert action_str.startswith("transition")
        action = int(action_str.split("-")[-1])
        return action

    def _get_problem_file(self):
        problem_file = os.path.join(self.dir_path, "problem{}.pddl".format(self.s))
        if not os.path.exists(problem_file):
            self._create_problem_file(problem_file)
        return problem_file

    def _create_domain_file(self):
        constants_str = " ".join(["s{}".format(i) for i in range(len(self.P))]) + " - state\n"

        max_r = -np.inf
        operators_str = ""
        for s in self.P:
            for a in self.P[s]:
                assert len(self.P[s][a]) == 1
                p, ns, r, done = self.P[s][a][0]
                assert p == 1.
                assert isinstance(r, int) or r.is_integer()
                r = int(r)
                max_r = max(r, max_r)
                if done:
                    done_str = "\n\t\t (done)"
                else:
                    done_str = ""
                operator_str = """
    (:action transition{0}-{1}
     :parameters ()
     :precondition (and
         (in s{0})
     )
     :effect (and
         (not (in s{0}))
         (in s{2}){3}
         (increase (total-cost) {4})
     )
    )
""".format(s, a, ns, done_str, max_r - r)
                operators_str += operator_str

        domain_str = """(define (domain taxi)
    (:requirements :strips :typing :action-costs)
    (:types 
        state
    )
    (:constants
        {}
    )
    (:predicates
        (in ?s - state)
        (done)
    )
    (:functions
        (total-cost) - number
    )
    {}
)
""".format(constants_str, operators_str)
        with open(self.domain_file, "w") as f:
            f.write(domain_str)

    def _create_problem_file(self, problem_file):
        problem_str = """
(define (problem taxiproblem)
(:domain taxi)
(:objects
)
(:init
(= (total-cost) 0)
(in s{})
)
(:goal
(and
(done)
)
)
(:metric minimize (total-cost))
)
""".format(self.s)
        with open(problem_file, "w") as f:
            f.write(problem_str)



