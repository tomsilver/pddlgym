from pddlgym.planning import run_async_value_iteration, get_actions_for_state
from pddlgym.utils import run_random_agent_demo, run_planning_demo, run_plan

from collections import defaultdict
from scipy.special import logsumexp
import gym
import matplotlib.pyplot as plt
import matplotlib.animation as animation
import pddlgym
import numpy as np
import time
import os


def demo_random(gym_name, render=True, problem_index=0, verbose=True):
    env = gym.make(gym_name)
    if not render: env._render = None
    env.fix_problem_index(problem_index)
    run_random_agent_demo(env, verbose=verbose, seed=0)

def demo_planning(planner_name, gym_name, num_problems, render=True, verbose=True):
    env = gym.make(gym_name)
    if not render: env._render = None
    for problem_index in range(num_problems):
        env.fix_problem_index(problem_index)
        run_planning_demo(env, planner_name, verbose=verbose)

def plot_helper(all_results, iter_plan_interval, gym_name, verbose=False):
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
    if verbose:
        print("Wrote out to {}".format(outfile))

# from memory_profiler import profile
# @profile
def run_async_vi_experiment(gym_name, problems, vi_maxiters=2500, iter_plan_interval=100,
                            first_plot_interval=1000, use_cache=False, biased=False):
    start_time = time.time()
    all_results = []
    env = gym.make(gym_name)
    test_env = gym.make(gym_name)
    env._render = None
    test_env._render = None
    if isinstance(problems, int):
        problems = list(range(problems))
    num_problems = len(problems)
    for j, problem_index in enumerate(problems):
        print("\nRunning problem {}/{}".format(j, num_problems))
        results_for_problem = []
        all_results.append(results_for_problem)
        env.fix_problem_index(problem_index)
        env.reset()
        runner = run_async_value_iteration(env, iter_plans=True, use_cache=use_cache,
            iter_plan_interval=iter_plan_interval, epsilon=0., vi_maxiters=vi_maxiters,
            biased=biased)
        for i, plan in enumerate(runner):
            test_env.fix_problem_index(problem_index)
            test_env.reset()
            result = run_plan(test_env, plan, check_reward=False)
            results_for_problem.append(result)
            if problem_index == 0 and (i*iter_plan_interval) % first_plot_interval == 0:
                plot_helper(all_results, iter_plan_interval, gym_name)
        plot_helper(all_results, iter_plan_interval, gym_name)
    plot_helper(all_results, iter_plan_interval, gym_name, verbose=True)
    print("\nExperiment time:", time.time() - start_time)


def infer_goal(demonstration, problem_qvals, env, beta=10.):
    goal_distribution = []
    for qvals in problem_qvals:
        total_log_prob = 0.
        for obs, gold_action in demonstration:
            actions_for_state = get_actions_for_state(obs, None, env, use_cache=False)
            qvals_s = []
            gold_action_idx = None
            for idx, action in enumerate(actions_for_state):
                key = (hash(frozenset(obs)), hash(action))
                qval_sa = qvals.get(key, 0.0)
                qvals_s.append(qval_sa)
                if action == gold_action:
                    gold_action_idx = idx
            assert gold_action_idx is not None
            action_unnormed_log_distribution = beta*np.array(qvals_s)
            z = logsumexp(action_unnormed_log_distribution)
            action_log_distribution = action_unnormed_log_distribution - z
            gold_action_log_prob = action_log_distribution[gold_action_idx]
            total_log_prob += gold_action_log_prob
        goal_distribution.append(total_log_prob)
    goal_distribution = np.array(goal_distribution)
    z_goal = logsumexp(goal_distribution)
    goal_distribution = np.exp(goal_distribution - z_goal)
    return goal_distribution

def animate_goal_distribution(goal_distribution_per_step, outfile='/tmp/out.gif'):
    fig, ax = plt.subplots(1, 1)

    n = len(goal_distribution_per_step) #Number of frames
    x = range(len(goal_distribution_per_step[0]))
    ax.set_title("Time 0")
    plt.xlabel("Possible Goals")
    plt.ylabel("Distribution")
    barcollection = plt.bar(x, goal_distribution_per_step[0], tick_label=x)

    def update(i):
        ax.set_title("Time {}".format(i))
        y = goal_distribution_per_step[i]
        for i, b in enumerate(barcollection):
            b.set_height(y[i])
        return barcollection

    ani = animation.FuncAnimation(fig, update, frames=n, interval=100, blit=True)
    ani.save(outfile, dpi=80, writer='imagemagick')
    print("Wrote out to {}".format(outfile))


def run_goal_inference_experiment(gym_name, num_problem_groups, vi_maxiters=2500, use_cache=False, biased=False,
                                  gold_problem_index=0, horizon=100):
    start_time = time.time()
    all_results = []
    env = gym.make(gym_name)
    env._render = None

    # Group the problems that have the same initial state but different goals
    problem_prefix_to_group = defaultdict(list)
    for problem_idx, problem in enumerate(env.problems):
        prefix = "_".join(problem.problem_fname.split("_")[:-1])
        problem_prefix_to_group[prefix].append(problem_idx)
    problem_prefixes = sorted(problem_prefix_to_group)
    problem_groups = [problem_prefix_to_group[p] for p in problem_prefixes]
    assert len(problem_groups) == 75
    assert num_problem_groups <= 75

    for group_idx in range(num_problem_groups):
        # Problems in the group
        problems = problem_groups[group_idx]

        # Get the qvals for all the goals
        problem_qvals = []
        for j, problem_index in enumerate(problems):
            print("\nLearning qvals for problem {}/{}".format(j, len(problems)))
            results_for_problem = []
            all_results.append(results_for_problem)
            env.fix_problem_index(problem_index)
            env.reset()
            qvals = next(run_async_value_iteration(env, iter_plans=False, use_cache=use_cache,
                epsilon=0., vi_maxiters=vi_maxiters, biased=biased, ret_qvals=True))
            problem_qvals.append(qvals)

        # Get the demo trajectory
        demonstration = []
        env.fix_problem_index(gold_problem_index)
        obs, _ = env.reset()
        plan = next(run_async_value_iteration(env, iter_plans=False, use_cache=use_cache,
            epsilon=0., vi_maxiters=vi_maxiters, biased=biased, ret_qvals=False, horizon=horizon))
        goal_distribution_per_step = []
        for action in plan:
            demonstration.append((obs, action))
            obs, _, _, _ = env.step(action)

            # Run goal inference
            goal_distribution = infer_goal(demonstration, problem_qvals, env)
            goal_distribution_per_step.append(goal_distribution)

        print("Final goal distribution:")
        print(goal_distribution_per_step[-1])
        assert np.argmax(goal_distribution_per_step[-1]) == gold_problem_index

        # Create an animation of the goal distribution evolving over time
        experiment_name = os.path.split(problem_prefixes[group_idx])[-1]
        outfile = os.path.join("/tmp", experiment_name + "goal_dists.gif")
        animate_goal_distribution(goal_distribution_per_step, outfile=outfile)


def run_all(render=True, verbose=True):
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
    # demo_planning("ff", "InversePlanningBlocks-v0", 75, render=render, verbose=verbose)
    # demo_planning("ff", "InversePlanningIntrusionDetection-v0", 75, render=render, verbose=verbose)
    # demo_planning("ff", "InversePlanningGrid-v0", 75, render=render, verbose=verbose)
    # demo_planning("ff", "InversePlanningLogistics-v0", 75, render=render, verbose=verbose)
    # demo_planning("ff", "InversePlanningCampus-v0", 75, render=render, verbose=verbose)
    # demo_planning("ff", "InversePlanningKitchen-v0", 75, render=render, verbose=verbose)
    # run_async_vi_experiment("EasyInversePlanningBlocks-v0", 3, vi_maxiters=2500)
    # run_async_vi_experiment("EasyInversePlanningIntrusionDetection-v0", 3, vi_maxiters=5000)
    # run_async_vi_experiment("EasyInversePlanningGrid-v0", 3, vi_maxiters=5000)
    # run_async_vi_experiment("EasyInversePlanningLogistics-v0", 3, vi_maxiters=1000)
    # run_async_vi_experiment("EasyInversePlanningCampus-v0", 1, vi_maxiters=1000, use_cache=True)
    # run_async_vi_experiment("EasyInversePlanningKitchen-v0", 1, vi_maxiters=5000)
    # run_async_vi_experiment("InversePlanningBlocks-v0", [0, 10, 20, 30, 40], vi_maxiters=250000, iter_plan_interval=1000)
    # run_async_vi_experiment("InversePlanningIntrusionDetection-v0", [0, 10, 20, 30, 40], vi_maxiters=250000, iter_plan_interval=1000)
    # run_async_vi_experiment("InversePlanningGrid-v0", [0, 10, 20, 30, 40], vi_maxiters=250000, iter_plan_interval=1000)
    # run_async_vi_experiment("InversePlanningLogistics-v0", [0, 10, 20, 30, 40], vi_maxiters=250000, iter_plan_interval=1000)
    # run_async_vi_experiment("InversePlanningCampus-v0", [0, 10, 20, 30, 40], vi_maxiters=250000, iter_plan_interval=1000)
    # run_async_vi_experiment("InversePlanningKitchen-v0", [0, 10, 20, 30, 40], vi_maxiters=250000, iter_plan_interval=1000)
    # run_async_vi_experiment("EasyInversePlanningBlocks-v0", 3, vi_maxiters=2500, biased=True)
    # run_async_vi_experiment("EasyInversePlanningIntrusionDetection-v0", 3, vi_maxiters=5000, biased=True)
    # run_async_vi_experiment("EasyInversePlanningGrid-v0", 3, vi_maxiters=5000, biased=True)
    # run_async_vi_experiment("EasyInversePlanningLogistics-v0", 3, vi_maxiters=1000, biased=True)
    # run_async_vi_experiment("EasyInversePlanningCampus-v0", 1, vi_maxiters=1000, use_cache=True, biased=True)
    # run_async_vi_experiment("EasyInversePlanningKitchen-v0", 1, vi_maxiters=5000, biased=True)
    # run_async_vi_experiment("InversePlanningBlocks-v0", [0, 10, 20, 30, 40], vi_maxiters=1000, iter_plan_interval=100, biased=True)
    # run_async_vi_experiment("InversePlanningIntrusionDetection-v0", [0, 10, 20, 30, 40], vi_maxiters=1000, iter_plan_interval=100, biased=True)
    # run_async_vi_experiment("InversePlanningGrid-v0", [0, 10, 20, 30, 40], vi_maxiters=1000, iter_plan_interval=100, biased=True)
    # run_async_vi_experiment("InversePlanningLogistics-v0", [0, 10, 20, 30, 40], vi_maxiters=1000, iter_plan_interval=100, biased=True)
    # run_async_vi_experiment("InversePlanningCampus-v0", [0, 10, 20, 30, 40], vi_maxiters=1000, iter_plan_interval=100, biased=True)
    # run_async_vi_experiment("InversePlanningKitchen-v0", [0, 10, 20, 30, 40], vi_maxiters=1000, iter_plan_interval=100, biased=True)
    run_goal_inference_experiment("InversePlanningBlocks-v0", 1, vi_maxiters=1000, biased=True)
    # run_goal_inference_experiment("InversePlanningIntrusionDetection-v0", 3, vi_maxiters=1000, biased=True)
    # run_goal_inference_experiment("InversePlanningGrid-v0", 3, vi_maxiters=1000, biased=True)
    # run_goal_inference_experiment("InversePlanningLogistics-v0", 3, vi_maxiters=1000, biased=True)
    # run_goal_inference_experiment("InversePlanningCampus-v0", 3, vi_maxiters=1000, biased=True)
    # run_goal_inference_experiment("InversePlanningKitchen-v0", 3, vi_maxiters=1000, biased=True)

if __name__ == '__main__':
    run_all(render=False)

