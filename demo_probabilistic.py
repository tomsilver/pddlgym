from pddlgym.utils import run_planning_demo
from pddlgym.wrappers import ProbabilisticWrapper

import gym
import pddlgym


def demo_ff_planning(env_name, wrapper_args, num_problems, render=True, test=False, verbose=True):
    gym_name = env_name.capitalize()
    if test:
        gym_name += "Test"
    env = gym.make("PDDLEnv{}-v0".format(gym_name))
    if not render: env._render = None

    env = ProbabilisticWrapper(env, *wrapper_args)
    for problem_index in range(num_problems):
        env.fix_problem_index(problem_index)
        run_planning_demo(env, 'ff', verbose=verbose, check_reward=False)

def run_all(render=True, verbose=True):
    wrapper_args = (0.5, 0.5)
    demo_ff_planning("rearrangement", wrapper_args, 3, render=render, verbose=verbose)

if __name__ == '__main__':
    run_all()
