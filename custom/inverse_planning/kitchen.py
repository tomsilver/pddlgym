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


# class EasyInversePlanningKitchenPDDLEnv(InversePlanningKitchenPDDLEnv):
#     dir_path = InversePlanningKitchenPDDLEnv.dir_path
#     problem_dir = os.path.join(dir_path, "easy-kitchen")

#     def __init__(self, seed=0):
#         super().__init__(seed=seed)

# if __name__ == "__main__":
#     import time
#     env = InversePlanningKitchenPDDLEnv()
#     env.reset()
#     start_time = time.time()
#     sampled_states = [env.sample_state() for _ in range(1000)]
#     import ipdb; ipdb.set_trace()
#     print("Sampling time: {}".format(time.time() - start_time))

