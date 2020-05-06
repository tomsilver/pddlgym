from pddlgym.planning import run_async_value_iteration, get_actions_for_state
from collections import OrderedDict, defaultdict
import gym
import time
import pddlgym
import pickle
import os
import numpy as np

# Hyperparameters
outdir = 'results'
do_precomputation = True
do_goal_inference = True
vi_maxiters = { True : 1000, False : 1000} # biased? : max_iters
horizon = 100
env_names = [
    "InversePlanningBlocks-v0",
    "InversePlanningIntrusionDetection-v0",
    "InversePlanningGrid-v0",
    "InversePlanningLogistics-v0",
    "InversePlanningCampus-v0",
    "InversePlanningKitchen-v0",
]

def create_headers():
    """headers[env_name][initial_state] -> [goals]"""
    headers = OrderedDict()
    for env_name in env_names:
        headers[env_name] = OrderedDict()
        env = gym.make(env_name)
        # Group the problems that have the same initial state but different goals
        problem_prefix_to_group = defaultdict(list)
        for problem in env.problems:
            split = problem.problem_fname.split("_")
            prefix = "_".join(split[:-1])
            goal = split[-1][:-len(".pddl")]
            problem_prefix_to_group[prefix].append(goal)
        problem_prefixes = sorted(problem_prefix_to_group)

        for initial_state in problem_prefixes:
            headers[env_name][initial_state] = problem_prefix_to_group[initial_state]

    print("All headers:")
    for env_name in headers:
        print(env_name)
        for initial_state in headers[env_name]:
            print("  {}".format(initial_state))
            print("    {}".format(headers[env_name][initial_state]))

    return headers

def get_qval_run_id(env_name, initial_state, goal, biased):
    return "qval_run_{}_{}_{}_{}".format(env_name, initial_state, goal, biased)

def get_goal_inference_run_id(env_name, initial_state, goal, biased):
    return "goal_inference_run_{}_{}_{}_{}".format(env_name, initial_state, goal, biased)

def save_results(run_id, results):
    outfile = os.path.join(outdir, run_id + '.pkl')
    with open(outfile, 'wb') as f:
        pickle.dump(results, outfile)
    print("Dumped results to {}.",format(outfile))

def load_results(run_id):
    outfile = os.path.join(outdir, run_id + '.pkl')
    with open(outfile, 'rb') as f:
        results = pickle.load(outfile)
    print("Loaded results from {}.",format(outfile))
    return results

def create_env(env_name, initial_state, goal):
    env = gym.make(env_name)
    problem_fname = initial_state + '_' + goal + '.pddl'
    found_problems = [p.problem_fname == problem_fname for p in env.problems]
    assert sum(found_problems) == 1
    problem_index = np.argwhere(found_problems)[0,0]
    env.fix_problem_index(problem_index)
    env.reset()
    return env

def compute_qvals(env_name, initial_state, goal, biased):
    env = create_env(env_name, initial_state, goal)
    qvals = next(run_async_value_iteration(env, iter_plans=False, use_cache=False,
                epsilon=0., vi_maxiters=vi_maxiters[biased], biased=biased, ret_qvals=True))
    import ipdb; ipdb.set_trace()
    return qvals

def compute_goal_inference_posteriors(qvals, env_name, initial_state, goal):
    raise NotImplementedError()

def report_results():
    raise NotImplementedError()    

def run_pipeline(biased):
    """
    Precomputation phase:
    Environments x Initial States x Goals --> { 'qvals' : Value function, 'time' : s }

    Goal inference phase:
    Environments x Initial States x Goals  --> { 'posteriors' : Trajectory Length x Goals --> Float, 'time'  : s }
    """
    headers = create_headers()

    # Value function precomputation
    if do_precomputation:
        for env_name in env_names:
            for initial_state in headers[env_name]:
                for goal in headers[env_name][initial_state]:
                    run_id = get_qval_run_id(env_name, initial_state, goal, biased=biased)
                    start_time = time.time()
                    qvals = compute_qvals(env_name, initial_state, goal, biased=biased)
                    time_elapsed = time.time() - start_time
                    results = {"qvals" : qvals, "time_elapsed" : time_elapsed}
                    save_results(run_id, results)

    # Goal inference
    if do_goal_inference:
        for env_name in env_names:
            for initial_state in headers[env_name]:
                for goal in headers[env_name][initial_state]:
                    qval_run_id = get_qval_run_id(env_name, initial_state, goal, biased=biased)
                    qval_results = load_results(qval_run_id)
                    qvals = qval_results["qvals"]
                    
                    run_id = get_goal_inference_run_id(env_name, initial_state, goal, biased=biased)
                    start_time = time.time()
                    posteriors = compute_goal_inference_posteriors(qvals, env_name, initial_state, goal)
                    time_elapsed = time.time() - start_time
                    results = {"posteriors" : posteriors, "time_elapsed" : time_elapsed}
                    save_results(run_id, results)

    # Results summary
    report_results()


def main():
    run_pipeline(biased=True)
    run_pipeline(biased=False)

if __name__ == "__main__":
    main()
