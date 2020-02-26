import gym
import numpy as np


class ProbabilisticWrapper(gym.Wrapper):
    """Turn a deterministic PDDLGym environment into one with probabilistic
    effects and observations. Only the following simple noise models are
    supported right now:

    Stochastic effects:
        For a given operator, with some probability, predict no change
        even when the preconditions are satisfied.

    Noisy observations:
        For each time step, with some probability, either randomly
        exclude a ground literal that should be included, or vice
        versa.

    Parameters
    ----------
    env : PDDLGymEnv
    stochastic_effects : float or { str : float }
        Probability for all operators, or { operator_name : probability },
        that the corresponding action will have no effect even when the
        preconditions hold.
    noise_prob : float
        Probability that some ground literal will be included or excluded
        at each time step from the observation.
    """

    def __init__(self, env, stochastic_effects, noise_prob, seed=0):
        super().__init__(env)

        if not isinstance(stochastic_effects, dict):
            operator_ses = {}
            for operator_name in env.domain.operators:
                operator_ses[operator_name] = stochastic_effects
        else:
            operator_ses = stochastic_effects

        self._render = env._render # hack
        self._problem_index_fixed = env._problem_index_fixed # hack

        self._stochastic_effects = operator_ses
        self._noise_prob = noise_prob
        self._rng = np.random.RandomState(seed)

    def reset(self):
        obs, debug_info = super().reset()

        # Handle problem-dependent action spaces
        self.action_space = self.env.action_space
        self.observation_space = self.env.observation_space

        return self._add_noise_to_obs(obs), debug_info

    def step(self, action):
        selected_operator, assignment = self.env._select_operator(action)

        if assignment is not None and self._rng.uniform() < \
            self._stochastic_effects[selected_operator.name]:
            obs, reward, done, debug_info = self.env._finish_step()
        else:
            obs, reward, done, debug_info = super().step(action)

        obs = self._add_noise_to_obs(obs)

        return obs, reward, done, debug_info

    def _add_noise_to_obs(self, obs):
        if self._rng.uniform() < self._noise_prob:

            # Exclude a ground literal
            if len(obs) > 0 and self._rng.uniform() < 0.5:
                choice = self._rng.choice(len(obs))
                obs_list = sorted(obs)
                obs_list.pop(choice)
                obs = set(obs_list)

            # Include a new ground literal
            else:
                new_lit = self.observation_space.sample_literal()
                obs = obs | { new_lit }

        self._last_observation = obs

        return obs

    def render(self, *args, **kwargs):
        if self._render:
            obs = self._last_observation
            return self._render(obs, *args, **kwargs)

    def fix_problem_index(self, problem_idx):
        self._problem_idx = problem_idx
        self._problem_index_fixed = True
