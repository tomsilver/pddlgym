from pddlgym.core import PDDLEnv
import os
import pickle


class InversePlanningIntrusionDetectionPDDLEnv(PDDLEnv):
    """Intrusion detection domain and problems from Ramirez & Geffner, 2010.
    """
    burn_in = 100
    interval = 10

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

    def reset(self):
        self._burned_in = False
        return super().reset()

    def sample_state(self):
        if not self._burned_in:
            for _ in range(self.burn_in):
                act = self.action_space.sample()
                self.step(act)
                self._burned_in = True
        for _ in range(self.interval):
            act = self.action_space.sample()
            self.step(act)
        return self.get_state()


if __name__ == "__main__":
    import imageio
    import time
    env = InversePlanningIntrusionDetectionPDDLEnv()
    env.reset()
    start_time = time.time()
    sampled_states = [env.sample_state() for _ in range(100)]
    print("Sampling time: {}".format(time.time() - start_time))
