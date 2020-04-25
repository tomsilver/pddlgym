from pddlgym.core import PDDLEnv
import os
import numpy as np
from collections import defaultdict


class InversePlanningCampusPDDLEnv(PDDLEnv):
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


# class EasyInversePlanningCampusPDDLEnv(InversePlanningCampusPDDLEnv):
#     dir_path = InversePlanningCampusPDDLEnv.dir_path
#     problem_dir = os.path.join(dir_path, "easy-campus")


# if __name__ == "__main__":
#     import time
#     env = InversePlanningCampusPDDLEnv()
#     env.reset()
#     start_time = time.time()
#     sampled_states = [env.sample_state() for _ in range(1000)]
#     print("Sampling time: {}".format(time.time() - start_time))

