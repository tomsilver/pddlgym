from pddlgym.utils import run_random_agent_demo, run_planning_demo

import gym
import pddlgym

def demo_random(env_name, render=True, problem_index=0, verbose=True):
    env = gym.make("PDDLEnv{}-v0".format(env_name.capitalize()))
    if not render: env._render = None
    env.fix_problem_index(problem_index)
    run_random_agent_demo(env, verbose=verbose, seed=0)

def demo_ff_planning(env_name, num_problems, render=True, test=False, verbose=True):
    gym_name = env_name.capitalize()
    if test:
        gym_name += "Test"
    env = gym.make("PDDLEnv{}-v0".format(gym_name))
    if not render: env._render = None
    for problem_index in range(num_problems):
        env.fix_problem_index(problem_index)
        run_planning_demo(env, 'ff', verbose=verbose)

def run_all(render=True, verbose=True):
    # demo_random("sokoban", render=render, verbose=verbose)
    # demo_random("rearrangement", render=render, problem_index=6, verbose=verbose)
    # demo_random("minecraft", render=render, verbose=verbose)
    # demo_ff_planning("rearrangement", 1, render=render, verbose=verbose)
    # demo_ff_planning("sokoban", 5, render=render, verbose=verbose)
    # demo_ff_planning("minecraft", 5, render=render, verbose=verbose)
    # demo_ff_planning("minecraft", 5, render=render, test=True, verbose=verbose)
    # demo_ff_planning("depot", 4, render=render, verbose=verbose)
    # demo_ff_planning("depot", 5, render=render, test=True, verbose=verbose)
    # demo_ff_planning("baking", 4, render=render, verbose=verbose)
    # demo_ff_planning("baking", 4, render=render, test=True, verbose=verbose)
    # demo_ff_planning("blocks", 5, render=render, verbose=verbose)
    # demo_ff_planning("blocks", 5, render=render, test=True, verbose=verbose)
    # demo_ff_planning("travel", 5, render=render, verbose=verbose)
    # demo_ff_planning("travel", 5, render=render, test=True, verbose=verbose)
    # demo_ff_planning("doors", 2, render=render, verbose=verbose)
    # demo_ff_planning("doors", 10, render=render, test=True, verbose=verbose)
    # demo_ff_planning("casino", 1, render=render, verbose=verbose)
    # demo_ff_planning("casino", 1, render=render, test=True, verbose=verbose)
    # demo_ff_planning("hanoi", 4, render=render, verbose=verbose)
    # demo_ff_planning("hanoi", 4, render=render, test=True, verbose=verbose)
    # demo_ff_planning("tsp", 2, render=render, verbose=verbose)
    # demo_ff_planning("tsp", 6, render=render, test=True, verbose=verbose)
    # demo_ff_planning("slidetile", 1, render=render, verbose=verbose)
    # demo_ff_planning("slidetile", 1, render=render, test=True, verbose=verbose)
    # demo_ff_planning("elevator", 5, render=render, verbose=verbose)
    # demo_ff_planning("elevator", 5, render=render, test=True, verbose=verbose)
    # demo_ff_planning("ferry", 4, render=render, verbose=verbose)
    # demo_ff_planning("ferry", 4, render=render, test=True, verbose=verbose)
    # demo_ff_planning("meetpass", 2, render=render, verbose=verbose)
    # demo_ff_planning("meetpass", 2, render=render, test=True, verbose=verbose)
    # demo_ff_planning("easyblocks", 3, render=render, verbose=verbose)
    # demo_ff_planning("easyblocks", 5, render=render, test=True, verbose=verbose)
    # demo_ff_planning("conditionalblocks", 5, render=render, verbose=verbose)
    # demo_ff_planning("conditionalblocks", 5, render=render, test=True, verbose=verbose)
    demo_ff_planning("conditionalferry", 4, render=render, verbose=verbose)
    demo_ff_planning("conditionalferry", 4, render=render, test=True, verbose=verbose)

if __name__ == '__main__':
    run_all()
