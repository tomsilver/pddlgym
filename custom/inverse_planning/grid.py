from pddlgym.core import PDDLEnv
import os


class InversePlanningGridPDDLEnv(PDDLEnv):
    """Grid domain and problems from Ramirez & Geffner, 2010.
    """
    def __init__(self, seed=0):
        dir_path = os.path.join(os.path.dirname(os.path.realpath(__file__)), "pddl")
        domain_file = os.path.join(dir_path, "grid.pddl")
        problem_dir = os.path.join(dir_path, "grid")
        super().__init__(domain_file, problem_dir, render=None, seed=seed,
                 raise_error_on_invalid_action=True,
                 operators_as_actions=True,
                 dynamic_action_space=True,
                 compute_approx_reachable_set=False,
                 shape_reward_mode=None)
