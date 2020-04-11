from pddlgym.core import PDDLEnv
import os


class InversePlanningIntrusionDetectionPDDLEnv(PDDLEnv):
    """Intrusion detection domain and problems from Ramirez & Geffner, 2010.
    """
    def __init__(self, seed=0):
        dir_path = os.path.join(os.path.dirname(os.path.realpath(__file__)), "pddl")
        domain_file = os.path.join(dir_path, "intrusion-detection.pddl")
        problem_dir = os.path.join(dir_path, "intrusion-detection")
        super().__init__(domain_file, problem_dir, render=None, seed=seed,
                 raise_error_on_invalid_action=True,
                 operators_as_actions=True,
                 dynamic_action_space=True,
                 compute_approx_reachable_set=False,
                 shape_reward_mode=None)
