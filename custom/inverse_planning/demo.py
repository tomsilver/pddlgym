from pddlgym.utils import run_random_agent_demo, run_planning_demo

import gym
import pddlgym

def demo_random(gym_name, render=True, problem_index=0, verbose=True):
    env = gym.make(gym_name)
    if not render: env._render = None
    env.fix_problem_index(problem_index)
    run_random_agent_demo(env, verbose=verbose, seed=0)

def demo_ff_planning(gym_name, num_problems, render=True, test=False, verbose=True):
    env = gym.make(gym_name)
    if not render: env._render = None
    for problem_index in range(num_problems):
        env.fix_problem_index(problem_index)
        run_planning_demo(env, 'ff', verbose=verbose)

def run_all(render=True, verbose=True):
    # demo_ff_planning("InversePlanningBlocks-v0", 75, render=render, verbose=verbose)
    demo_random("InversePlanningBlocks-v0", render=render, verbose=verbose)

if __name__ == '__main__':
    run_all(render=False)
