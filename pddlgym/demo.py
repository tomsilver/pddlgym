from pddlgym.utils import run_random_agent_demo, run_planning_demo, \
    run_probabilistic_planning_demo

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

def demo_prob_planning(env_name, num_problems, render=True, test=False, verbose=True):
    gym_name = env_name.capitalize()
    if test:
        gym_name += "Test"
    env = gym.make("PDDLEnv{}-v0".format(gym_name))
    if not render: env._render = None
    for problem_index in range(num_problems):
        env.fix_problem_index(problem_index)
        run_probabilistic_planning_demo(env, 'ff', verbose=verbose)

def run_all(render=True, verbose=True):
    ## Probabilistic environments
    # demo_prob_planning("explodingblocks", 5, render=render, verbose=verbose, test=True)
    # demo_prob_planning("explodingblocks", 5, render=render, verbose=verbose)
    # demo_random("explodingblocks", render=render, verbose=verbose)
    # demo_prob_planning("tireworld", 3, render=render, verbose=verbose, test=True)
    # demo_prob_planning("tireworld", 3, render=render, verbose=verbose)
    # demo_random("tireworld", render=render, verbose=verbose)
    # demo_prob_planning("river", 1, render=render, verbose=verbose, test=True)
    # demo_prob_planning("river", 1, render=render, verbose=verbose)
    # demo_random("river", render=render, verbose=verbose)

    ## Deterministic environments
    # demo_random("sokoban", render=render, verbose=verbose)
    # demo_random("gripper", render=render, verbose=verbose)
    # demo_random("rearrangement", render=render, problem_index=6, verbose=verbose)
    # demo_random("minecraft", render=render, verbose=verbose)
    # demo_ff_planning("rearrangement", 1, render=render, verbose=verbose)
    # demo_ff_planning("sokoban", 5, render=render, verbose=verbose)
    # demo_ff_planning("minecraft", 5, render=render, verbose=verbose)
    # demo_ff_planning("minecraft", 5, render=render, test=True, verbose=verbose)
    # demo_ff_planning("depot", 10, render=render, verbose=verbose)
    # demo_ff_planning("depot", 12, render=render, test=True, verbose=verbose)
    # demo_ff_planning("baking", 4, render=render, verbose=verbose)
    # demo_ff_planning("baking", 4, render=render, test=True, verbose=verbose)
    demo_ff_planning("blocks", 5, render=render, verbose=verbose)
    # demo_ff_planning("gripper", 5, render=render, verbose=verbose)
    # demo_ff_planning("gripper", 5, render=render, verbose=verbose, test=True)
    # demo_ff_planning("easygripper", 1, render=render, verbose=verbose)
    # demo_ff_planning("easygripper", 4, render=render, verbose=verbose, test=True)
    # demo_ff_planning("onearmedgripper", 5, render=render, verbose=verbose)
    # demo_ff_planning("onearmedgripper", 6, render=render, verbose=verbose, test=True)
    # demo_ff_planning("tinyonearmedgripper", 4, render=render, verbose=verbose)
    # demo_ff_planning("tinyonearmedgripper", 4, render=render, verbose=verbose, test=True)
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
    # demo_ff_planning("conditionalferry", 4, render=render, verbose=verbose)
    # demo_ff_planning("conditionalferry", 4, render=render, test=True, verbose=verbose)
    demo_ff_planning("blocks_operator_actions", 1, render=render, verbose=verbose)
    demo_ff_planning("blocks_operator_actions", 6, render=render, test=True, verbose=verbose)
    demo_random("blocks_operator_actions", render=render, verbose=verbose)
    # demo_ff_planning("glibblocks", 5, render=render, verbose=verbose, test=True)
    # demo_ff_planning("glibrearrangement", 20, render=render, verbose=verbose)
    # demo_ff_planning("glibrearrangement", 100, render=render, verbose=verbose, test=True)
    # demo_ff_planning("glibdoors", 5, render=render, verbose=verbose)
    # demo_ff_planning("glibdoors", 10, render=render, verbose=verbose, test=True)


if __name__ == '__main__':
    run_all()
