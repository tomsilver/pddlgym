from pddlgym.planning import run_async_value_iteration
from pddlgym.utils import run_random_agent_demo, run_planning_demo, run_plan

import gym
import matplotlib.pyplot as plt
import pddlgym
import numpy as np
import time


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

def plot_helper(all_results, iter_plan_interval, gym_name):
    xs = np.arange(0, iter_plan_interval*len(all_results[0]), iter_plan_interval)
    ys = np.mean(all_results, axis=0)
    yerr = np.std(all_results, axis=0)
    outfile = "/tmp/{}_async_vi_experiment.png".format(gym_name)
    plt.figure()
    plt.plot(xs, ys)
    plt.fill_between(xs, ys - yerr, ys + yerr, color='gray', alpha=0.2)
    plt.title(gym_name)
    plt.xlabel("Num iters of async VI")
    plt.ylabel("Average plan success")
    plt.savefig(outfile)
    print("Wrote out to {}".format(outfile))

# from memory_profiler import profile
# @profile
def run_async_vi_experiment(gym_name, num_problems, vi_maxiters=2500, iter_plan_interval=100,
                            first_plot_interval=1000, use_cache=False):
    start_time = time.time()
    all_results = []
    env = gym.make(gym_name)
    test_env = gym.make(gym_name)
    env._render = None
    test_env._render = None
    for problem_index in range(num_problems):
        print("\nRunning problem {}/{}".format(problem_index, num_problems))
        results_for_problem = []
        all_results.append(results_for_problem)
        env.fix_problem_index(problem_index)
        env.reset()
        for i, plan in enumerate(run_async_value_iteration(env, iter_plans=True, use_cache=use_cache,
                iter_plan_interval=iter_plan_interval, epsilon=0., vi_maxiters=vi_maxiters)):
            test_env.fix_problem_index(problem_index)
            test_env.reset()
            result = run_plan(test_env, plan, check_reward=False)
            results_for_problem.append(result)
            if problem_index == 0 and (i*iter_plan_interval) % first_plot_interval == 0:
                plot_helper(all_results, iter_plan_interval, gym_name)
        plot_helper(all_results, iter_plan_interval, gym_name)
    plot_helper(all_results, iter_plan_interval, gym_name)
    print("\nExperiment time:", time.time() - start_time)


def run_all(render=True, verbose=True):
    # demo_planning("ff", "InversePlanningBlocks-v0", 1, render=render, verbose=verbose)
    # demo_planning("avi", InversePlanningBlocks-v0", 1, render=render, verbose=verbose)
    # demo_planning("avi", "EasyInversePlanningBlocks-v0", 1, render=render, verbose=verbose)
    # demo_planning("avi", "InversePlanningBlocks-v0", 1, render=render, verbose=verbose)
    # demo_random("InversePlanningGrid-v0", render=render, verbose=verbose)
    # demo_planning("ff", "EasyInversePlanningGrid-v0", 3, render=render, verbose=verbose)
    # demo_ff_planning("InversePlanningGrid-v0", 5, render=render, verbose=verbose)
    # demo_random("InversePlanningGrid-v0", render=render, verbose=verbose)
    # demo_planning("avi", "InversePlanningIntrusionDetection-v0", 1, render=render, verbose=verbose)
    # demo_random("InversePlanningIntrusionDetection-v0", render=render, verbose=verbose)
    # demo_planning("avi", "InversePlanningGrid-v0", 1, render=render, verbose=verbose)
    # demo_planning("ff", "InversePlanningCampus-v0", 75, render=render, verbose=verbose)
    # demo_planning("ff", "InversePlanningKitchen-v0", 75, render=render, verbose=verbose)
    # run_async_vi_experiment("EasyInversePlanningBlocks-v0", 3, vi_maxiters=2500)
    # run_async_vi_experiment("EasyInversePlanningIntrusionDetection-v0", 3, vi_maxiters=5000)
    # run_async_vi_experiment("EasyInversePlanningGrid-v0", 3, vi_maxiters=5000)
    # run_async_vi_experiment("EasyInversePlanningLogistics-v0", 3, vi_maxiters=1000)
    # run_async_vi_experiment("EasyInversePlanningCampus-v0", 1, vi_maxiters=1000, use_cache=True)
    run_async_vi_experiment("EasyInversePlanningKitchen-v0", 1, vi_maxiters=10000)
    # run_async_vi_experiment("InversePlanningBlocks-v0", 1, vi_maxiters=250000, iter_plan_interval=100)
    # run_async_vi_experiment("InversePlanningIntrusionDetection-v0", 1, vi_maxiters=1000, iter_plan_interval=100)
    # run_async_vi_experiment("InversePlanningGrid-v0", 1, vi_maxiters=250000, iter_plan_interval=100)
    # run_async_vi_experiment("InversePlanningLogistics-v0", 1, vi_maxiters=1000000, iter_plan_interval=100)
    # run_async_vi_experiment("InversePlanningCampus-v0", 1, vi_maxiters=1000, iter_plan_interval=100)

    # demo_planning("ff", "InversePlanningLogistics-v0", 75, render=render, verbose=verbose)
    # demo_random("EasyInversePlanningLogistics-v0", render=render, verbose=verbose)
    pass

if __name__ == '__main__':
    run_all(render=False)

