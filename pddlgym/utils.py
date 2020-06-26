"""Utilities
"""
from pddlgym.planning import run_planner
from pddlgym.parser import parse_plan_step, PDDLDomainParser, PDDLProblemParser
from PIL import Image

from collections import defaultdict

import itertools
import numpy as np
import os
import gym
import imageio


def run_random_agent_demo(env, outdir='/tmp', max_num_steps=10, fps=3, 
                          verbose=False, seed=None):
    if outdir is None:
        outdir = "/tmp/{}".format(env_cls.__name__)
        if not os.path.exists(outdir):
            os.makedirs(outdir)

    if env._render:
        video_path = os.path.join(outdir, 'random_{}_demo.gif'.format(env.spec.id))
        env = VideoWrapper(env, video_path, fps=fps)

    if seed is not None:
        env.seed(seed)

    obs, _ = env.reset()

    if seed is not None:
        env.action_space.seed(seed)

    for t in range(max_num_steps):
        if verbose:
            print("Obs:", obs)
    
        action = env.action_space.sample(obs)
        if verbose:
            print("Act:", action)

        obs, reward, done, _ = env.step(action)
        env.render()
        if verbose:
            print("Rew:", reward)

        if done:
            break

    if verbose:
        print("Final obs:", obs)
        print()

    env.close()
    if verbose:
        input("press enter to continue to next problem")

def run_planning_demo(env, planner_name, outdir='/tmp', fps=3, verbose=False, seed=None, check_reward=True):
    if outdir is None:
        outdir = "/tmp/{}".format(env_cls.__name__)
        if not os.path.exists(outdir):
            os.makedirs(outdir)

    if env._render:
        if env._problem_index_fixed:
            problem_idx = env._problem_idx
            video_path = os.path.join(outdir, 'planning_{}_{}_{}_demo.gif'.format(
                planner_name, env.spec.id, problem_idx))
        else:
            video_path = os.path.join(outdir, 'planning_{}_{}_demo.gif'.format(
                planner_name, env.spec.id))
        env = VideoWrapper(env, video_path, fps=fps)

    if seed is not None:
        env.seed(seed)

    obs, debug_info = env.reset()
    plan = run_planner(debug_info['domain_file'], debug_info['problem_file'], planner_name)

    actions = []
    for s in plan:
        a = parse_plan_step(
                s, 
                env.domain.operators.values(), 
                env.action_predicates,
                obs.objects, 
                operators_as_actions=env.operators_as_actions
            )
        actions.append(a)
    
    tot_reward = 0.
    for action in actions:
        if verbose:
            print("Obs:", obs)
    
        if verbose:
            print("Act:", action)

        obs, reward, done, _ = env.step(action)
        env.render()
        tot_reward += reward
        if verbose:
            print("Rew:", reward)

        if done:
            break

    if verbose:
        print("Final obs:", obs)
        print()

    env.close()
    if check_reward:
        assert tot_reward > 0
    if verbose:
        input("press enter to continue to next problem")
    return tot_reward


def run_probabilistic_planning_demo(env, planner_name, verbose=False, num_epi=20, outdir='/tmp', fps=3):
    """Probabilistic planning via simple determinization.
    """
    if outdir is None:
        outdir = "/tmp/{}".format(env_cls.__name__)
        if not os.path.exists(outdir):
            os.makedirs(outdir)

    if env._render:
        if env._problem_index_fixed:
            problem_idx = env._problem_idx
            video_path = os.path.join(outdir, 'planning_{}_{}_{}_demo.gif'.format(
                planner_name, env.spec.id, problem_idx))
        else:
            video_path = os.path.join(outdir, 'planning_{}_{}_demo.gif'.format(
                planner_name, env.spec.id))
        env = VideoWrapper(env, video_path, fps=fps)

    avg_reward = 0
    for _ in range(num_epi):
        obs, debug_info = env.reset()
        domain = PDDLDomainParser(debug_info["domain_file"])
        domain.determinize()
        domain.write("/tmp/domain.pddl")

        plan = run_planner("/tmp/domain.pddl", debug_info['problem_file'], planner_name)

        actions = []
        for s in plan:
            a = parse_plan_step(
                    s, 
                    env.domain.operators.values(), 
                    env.action_predicates,
                    obs.objects, 
                    operators_as_actions=env.operators_as_actions
                )
            actions.append(a)

        tot_reward = 0.
        for action in actions:
            if verbose:
                print("Obs:", obs)

            if verbose:
                print("Act:", action)

            obs, reward, done, _ = env.step(action)
            env.render()
            tot_reward += reward
            if verbose:
                print("Rew:", reward)

            if done:
                break

        if verbose:
            print("Final obs:", obs)
            print("Got total reward:", tot_reward)
            print()

        avg_reward += tot_reward/num_epi

    print("Average reward over {} episodes was {}".format(num_epi, avg_reward))
    env.close()
    if verbose:
        input("press enter to continue to next problem")
    return tot_reward


class VideoWrapper(gym.Wrapper):
    def __init__(self, env, out_path, fps=30, size=None):
        super().__init__(env)
        self.out_path_prefix = '.'.join(out_path.split('.')[:-1])
        self.out_path_suffix = out_path.split('.')[-1]
        self.fps = fps
        self.size = size
        self.reset_count = 0
        self.images = []

    def reset(self):
        if len(self.images) > 0:
            self._finish_video()

        obs = super().reset()

        # Handle problem-dependent action spaces
        self.action_space = self.env.action_space
        self.observation_space = self.env.observation_space

        self.out_path = self.out_path_prefix + str(self.reset_count) + \
            '.' + self.out_path_suffix
        self.reset_count += 1

        self.images = []
        img = super().render()
        img = self.process_image(img)
        self.images.append(img)

        return obs

    def step(self, action):
        obs, reward, done, debug_info = super().step(action)

        img = super().render()
        img = self.process_image(img)
        self.images.append(img)

        return obs, reward, done, debug_info

    def close(self):
        if len(self.images) > 0:
            self._finish_video()
        return super().close()

    def process_image(self, img):
        if self.size is None:
            return img
        return np.array(Image.fromarray(img).resize(self.size), dtype=img.dtype)

    def _finish_video(self):
        imageio.mimsave(self.out_path, self.images, fps=self.fps)
        print("Wrote out video to {}".format(self.out_path))

