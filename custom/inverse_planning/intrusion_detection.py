from pddlgym.core import PDDLEnv
import os
import pickle
import numpy as np


class InversePlanningIntrusionDetectionPDDLEnv(PDDLEnv):
    """Intrusion detection domain and problems from Ramirez & Geffner, 2010.
    """
    dir_path = os.path.join(os.path.dirname(os.path.realpath(__file__)), "pddl")
    domain_file = os.path.join(dir_path, "intrusion-detection.pddl")
    problem_dir = os.path.join(dir_path, "intrusion-detection")

    def __init__(self, seed=0):
        super().__init__(self.domain_file, self.problem_dir, render=None, seed=seed,
                 raise_error_on_invalid_action=True,
                 operators_as_actions=True,
                 dynamic_action_space=True,
                 compute_approx_reachable_set=False,
                 shape_reward_mode=None)
        self._recon_performed = self.domain.predicates['recon-performed'] # (recon-performed ?h - host)
        self._deleted_logs = self.domain.predicates['deleted-logs']# (deleted-logs ?h - host)
        self._modified_files = self.domain.predicates['modified-files']# (modified-files ?h - host)
        self._access_obtained = self.domain.predicates['access-obtained']# (access-obtained ?h - host)
        self._root_access_obtained = self.domain.predicates['root-access-obtained']# (root-access-obtained ?h - host)
        self._files_downloaded = self.domain.predicates['files-downloaded']# (files-downloaded ?h - host)
        self._information_gathered = self.domain.predicates['information-gathered']# (information-gathered ?h - host)
        self._vandalized = self.domain.predicates['vandalized']# (vandalized ?h - host)
        self._data_stolen_from = self.domain.predicates['data-stolen-from']# (data-stolen-from ?h - host)
        self._dummy = self.domain.predicates['dummy']# (dummy)

        self._rng = np.random.RandomState(seed=seed)

    def sample_state(self):
        state = { self._dummy() }

        # extract hosts from state
        hosts = set()
        for lit in self.get_state():
            hosts.update(lit.variables)

        for host in sorted(hosts):

            # coin flips
            perform_recon, gather_info, break_into, modify_files, clean, vandalize, \
                gain_root, download_files, steal_data = self._rng.binomial(1, 0.8, size=9)

            recon_performed, information_gathered, access_obtained, modified_files, deleted_logs, \
                vandalized, root_access_obtained, files_downloaded, data_stolen_from = [False] * 9

            if perform_recon:
                recon_performed = True
                state.add(self._recon_performed(host))

            if recon_performed and gather_info:
                information_gathered = True
                state.add(self._information_gathered(host))

            if recon_performed and break_into:
                access_obtained = True
                state.add(self._access_obtained(host))

            if access_obtained and modify_files:
                modified_files = True
                state.add(self._modified_files(host))

            if access_obtained and clean:
                deleted_logs = True
                state.add(self._deleted_logs(host))

            if modified_files and deleted_logs and vandalize:
                vandalized = True
                state.add(self._vandalized(host))

            if access_obtained and gain_root:
                root_access_obtained = True
                state.add(self._root_access_obtained(host))

            if root_access_obtained and download_files:
                files_downloaded = True
                state.add(self._files_downloaded(host))

            if files_downloaded and deleted_logs and steal_data:
                data_stolen_from = True
                state.add(self._data_stolen_from(host))

        return state


class EasyInversePlanningIntrusionDetectionPDDLEnv(InversePlanningIntrusionDetectionPDDLEnv):
    dir_path = InversePlanningIntrusionDetectionPDDLEnv.dir_path
    problem_dir = os.path.join(dir_path, "easy-intrusion-detection")


if __name__ == "__main__":
    import imageio
    import time
    env = InversePlanningIntrusionDetectionPDDLEnv()
    env.reset()
    start_time = time.time()
    sampled_states = [env.sample_state() for _ in range(100)]
    print("Sampling time: {}".format(time.time() - start_time))
