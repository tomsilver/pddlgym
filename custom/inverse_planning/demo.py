from pddlgym.planning import run_async_value_iteration
from pddlgym.utils import run_random_agent_demo, run_planning_demo, run_plan

import gym
import matplotlib.pyplot as plt
import pddlgym
import numpy as np


def demo_random(gym_name, render=True, problem_index=0, verbose=True):
    env = gym.make(gym_name)
    if not render: env._render = None
    env.fix_problem_index(problem_index)
    run_random_agent_demo(env, verbose=verbose, seed=0)

def demo_planning(planner_name, gym_name, num_problems, render=True, test=False, verbose=True):
    env = gym.make(gym_name)
    if not render: env._render = None
    for problem_index in range(num_problems):
        env.fix_problem_index(problem_index)
        run_planning_demo(env, planner_name, verbose=verbose)

def run_async_vi_experiment(gym_name, num_problems, vi_maxiters=2500):
    iter_plan_interval = 100
    all_results = []
    env = gym.make(gym_name)
    test_env = gym.make(gym_name)
    env._render = None
    test_env._render = None
    for problem_index in range(num_problems):
        results_for_problem = []
        env.fix_problem_index(problem_index)
        env.reset()
        for plan in run_async_value_iteration(env, iter_plans=True, iter_plan_interval=iter_plan_interval,
                epsilon=0., vi_maxiters=vi_maxiters):
            test_env.fix_problem_index(problem_index)
            test_env.reset()
            result = run_plan(test_env, plan, check_reward=False)
            results_for_problem.append(result)
        all_results.append(results_for_problem)
    xs = np.arange(0, iter_plan_interval*len(results_for_problem), iter_plan_interval)
    ys = np.mean(all_results, axis=0)
    outfile = "/tmp/{}_async_vi_experiment.png".format(gym_name)
    plt.figure()
    plt.plot(xs, ys)
    plt.title(gym_name)
    plt.xlabel("Num iters of async VI")
    plt.ylabel("Average plan success")
    plt.savefig(outfile)
    print("Wrote out to {}".format(outfile))


def run_all(render=True, verbose=True):
    # demo_planning("ff", "InversePlanningBlocks-v0", 1, render=render, verbose=verbose)
    # demo_planning("avi", InversePlanningBlocks-v0", 1, render=render, verbose=verbose)
    # demo_planning("avi", "EasyInversePlanningBlocks-v0", 1, render=render, verbose=verbose)
    # demo_planning("avi", "InversePlanningBlocks-v0", 1, render=render, verbose=verbose)
    # demo_random("InversePlanningBlocks-v0", render=render, verbose=verbose)
    # demo_ff_planning("InversePlanningGrid-v0", 5, render=render, verbose=verbose)
    # demo_random("InversePlanningGrid-v0", render=render, verbose=verbose)
    # demo_planning("avi", "InversePlanningIntrusionDetection-v0", 1, render=render, verbose=verbose)
    # demo_random("InversePlanningIntrusionDetection-v0", render=render, verbose=verbose)
    # demo_planning("avi", "InversePlanningGrid-v0", 1, render=render, verbose=verbose)
    # run_async_vi_experiment("EasyInversePlanningBlocks-v0", 1, vi_maxiters=2500)
    # run_async_vi_experiment("InversePlanningBlocks-v0", 3)
    run_async_vi_experiment("EasyInversePlanningIntrusionDetection-v0", 3, vi_maxiters=5000)

if __name__ == '__main__':
    run_all(render=True)
