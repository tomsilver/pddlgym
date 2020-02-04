from pddlgym.planning import run_planner

import gym
import time
import numpy as np
import matplotlib.pyplot as plt


def measure_planning_time(env, problem_idx):
    env.fix_problem_index(problem_idx)
    obs, debug_info = env.reset()
    start_time = time.time()
    run_planner(debug_info['domain_file'], debug_info['problem_file'], "ff")
    return time.time() - start_time

def measure_environment_planning_times(env_name, num_problems, test=False, log=False):
    gym_name = env_name.capitalize()
    if test:
        gym_name += "Test"
    print(gym_name)
    times = []
    env = gym.make("PDDLEnv{}-v0".format(gym_name))
    for problem_idx in range(num_problems):
        time = measure_planning_time(env, problem_idx)
        if log:
            time = np.log(log)
        times.append(time)
    return times

def plot_results(results, env_name_to_label, outfile="planning_plot.png"):
    fig, ax = plt.subplots()

    name_order = sorted(results.keys(), key=lambda k : np.mean(results[k]))
    x_pos = range(len(results))
    means = [np.mean(results[name]) for name in name_order]
    errors = [np.std(results[name]) for name in name_order]
    labels = [env_name_to_label[name] for name in name_order]

    ax.barh(x_pos, means, 
        # xerr=errors, 
        align='center', alpha=0.5, ecolor='black', capsize=10)
    ax.set_xlabel('Average Planning Time (seconds)')
    ax.set_yticks(x_pos)
    ax.set_yticklabels(labels)
    ax.set_title('Variation in Planning Difficulty')
    ax.xaxis.grid(True)

    # Save the figure and show
    plt.tight_layout()
    plt.savefig(outfile, dpi=500)
    print("Wrote out to {}.".format(outfile))

def main():
    env_name_to_num_problems = {
        "sokoban" : 4,
        "rearrangement" : 20,
        "minecraft" : 5,
        # "depot" : 4,
        "baking" : 4,
        "blocks" : 5,
        "travel" : 5,
        "doors" : 2,
        "casino" : 1,
        "hanoi" : 4,
        "tsp" : 2,
        "slidetile" : 1,
        "elevator" : 5,
        "ferry" : 4,
        "meetpass" : 2,
    }

    env_name_to_label = {
        "sokoban" : "Sokoban",
        "rearrangement" : "Gripper",
        "minecraft" : "Crafting",
        "depot" : "Depot",
        "baking" : "Baking",
        "blocks" : "Blocks",
        "travel" : "USA Travel",
        "doors" : "Doors",
        "casino" : "Casino",
        "hanoi" : "Hanoi",
        "tsp" : "TSP",
        "slidetile" : "Slide Tile",
        "elevator" : "Elevator",
        "ferry" : "Ferry",
        "meetpass" : "Meet-Pass",
    }

    env_name_to_times = {}

    for env_name, num_problems in env_name_to_num_problems.items():
        train_times = measure_environment_planning_times(env_name, num_problems)
        test_times = measure_environment_planning_times(env_name, num_problems, test=True)
        env_name_to_times[env_name] = list(train_times) + list(test_times)

    plot_results(env_name_to_times, env_name_to_label)

if __name__ == "__main__":
    main()
