from inverse_planning_env import DEMOS
from pddlgym.planning import run_async_value_iteration, vi_finish_helper, get_actions_for_state
from collections import OrderedDict, defaultdict
from scipy.special import logsumexp
import gym
import time
import pddlgym
import pickle
import os
import numpy as np
import sys
import imageio
np.random.seed(0)

# Hyperparameters
outdir = 'results'
do_precomputation = "if not exists"
test_qvals = True
vi_maxiters = { True : 10000, False : 250000 } # biased? : max_iters
horizon = 100
gamma = 0.9 # todo optimize
betas = [50., 10., 5., 1., 0.2]
num_demos_per = 3
env_names = [
    # "InversePlanningDoorsKeysGems-v0",
    # "InversePlanningBlocks-v0",
    "InversePlanningIntrusionDetection-v0",
    # "InversePlanningLogistics-v0",
    # "InversePlanningCampus-v0",
    # "InversePlanningTaxi-v0",
]


def create_headers(verbose=False):
    """headers[env_name][initial_state] -> [goals]"""
    headers = OrderedDict()
    for env_name in env_names:
        headers[env_name] = OrderedDict()
        env = gym.make(env_name)

        # desperate times
        if env_name == "InversePlanningTaxi-v0":
            problem_prefix_to_group = env.get_problem_groups()
            problem_prefixes = sorted(problem_prefix_to_group)

        else:
            # Group the problems that have the same initial state but different goals
            problem_prefix_to_group = defaultdict(list)
            for problem in env.problems:
                fname_alone = os.path.split(problem.problem_fname)[-1]
                split = fname_alone.split("_")
                prefix = "_".join(split[:-1])
                goal = split[-1][:-len(".pddl")]
                problem_prefix_to_group[prefix].append(goal)
            problem_prefixes = sorted(problem_prefix_to_group)

        env.close()

        for initial_state in problem_prefixes:
            headers[env_name][initial_state] = problem_prefix_to_group[initial_state]

    if verbose:
        print("All headers:")
        for env_name in headers:
            print(env_name)
            for initial_state in headers[env_name]:
                print("  {}".format(initial_state))
                print("    {}".format(headers[env_name][initial_state]))

    return headers

def get_qval_run_id(env_name, initial_state, goal, biased):
    return "qval_run_{}_{}_{}_{}".format(env_name, initial_state, goal, biased)

def save_results(run_id, results):
    outfile = os.path.join(outdir, run_id + '.pkl')
    with open(outfile, 'wb') as f:
        pickle.dump(results, f)
    print("Dumped results to {}.".format(outfile))

def load_results(run_id):
    outfile = os.path.join(outdir, run_id + '.pkl')
    with open(outfile, 'rb') as f:
        results = pickle.load(f)
    return results

def results_exist(run_id):
    outfile = os.path.join(outdir, run_id + '.pkl')
    return os.path.exists(outfile)

def get_demo_outfile(env_name, initial_state, goal, beta, demonstration_idx):
    domain_name = env_name[len("InversePlanning"):-len("-v0")].lower()
    os.makedirs(os.path.join(outdir, "noise-{}".format(beta)), exist_ok=True)
    os.makedirs(os.path.join(outdir, "noise-{}".format(beta), domain_name), exist_ok=True)
    return os.path.join(outdir, "noise-{}".format(beta), domain_name, 
        "{}_{}_{}.dat".format(initial_state, goal, demonstration_idx))

def create_env(env_name, initial_state, goal):
    env = gym.make(env_name)
    if hasattr(env, '_problem_index_to_problem_file'):
        problem_fname = initial_state + '-' + goal + '.pddl'
        found_problems = [os.path.split(p)[-1] == problem_fname for p in env._problem_index_to_problem_file]
    else:
        problem_fname = initial_state + '_' + goal + '.pddl'
        found_problems = [os.path.split(p.problem_fname)[-1] == problem_fname for p in env.problems]
    assert sum(found_problems) == 1
    problem_index = np.argwhere(found_problems)[0,0]
    env.fix_problem_index(problem_index)
    env.reset()
    return env

def compute_qvals(env_name, initial_state, goal, biased):
    env = create_env(env_name, initial_state, goal)
    if DEMOS == "nonoptimal" and len(env._state_buffer) == 0:
        print("Skipping env", env_name, initial_state, goal)
        return {}
    qvals = next(run_async_value_iteration(env, iter_plans=False, use_cache=False,
                gamma=gamma, epsilon=0., vi_maxiters=vi_maxiters[biased], biased=biased, ret_qvals=True))
    env.close()
    return qvals

def run_test_qvals(env_name, initial_state, goal, qvals):
    env = create_env(env_name, initial_state, goal)
    env.reset()
    state = env.get_state()
    debug = False #(initial_state == "taxi1" and goal == "goal0")
    plan = vi_finish_helper(env, state, qvals, actions_for_state=None, horizon=horizon, debug=debug)
    total_reward = 0
    for action in plan:
        _, reward, _, _ = env.step(action)
        total_reward += reward
    print("Reward accrued following qvals:", total_reward)
    env.close()

def get_action(obs, env, qvals, beta):
    actions_for_state = list(get_actions_for_state(obs, None, env, use_cache=False, valid_only=True))
    qvals_s = []
    for action in actions_for_state:
        if isinstance(obs, set):
            frozen_obs = frozenset(obs)
        else:
            frozen_obs = frozenset({obs})
        key = (hash(frozen_obs), hash(action))
        qval_sa = qvals.get(key, 0.0)
        qvals_s.append(qval_sa)
    action_unnormed_log_distribution = beta*np.array(qvals_s)
    z = logsumexp(action_unnormed_log_distribution)
    action_log_distribution = action_unnormed_log_distribution - z
    action_distribution = np.exp(action_log_distribution)
    action = actions_for_state[np.random.choice(len(action_distribution), p=action_distribution)]
    return action

def get_demonstrations(qvals, env_name, initial_state, goal, beta, num_demos, max_steps=100, render=False):
    env = create_env(env_name, initial_state, goal)
    obs, _ = env.reset()
    demos = []
    for _ in range(num_demos):
        demo = []
        images = []
        env = create_env(env_name, initial_state, goal)
        obs, _ = env.reset()
        if render:
            images.append(env.render())
        for _ in range(max_steps):
            action = get_action(obs, env, qvals, beta)
            if hasattr(env, 'action_to_pddl'):
                demo_action = env.action_to_pddl(obs, action)
            else:
                demo_action = action
            demo.append(demo_action)
            obs, _, done, _ = env.step(action)
            if render:
                images.append(env.render())
            if done:
                break
        print("Collected demo of length {}".format(len(demo)))
        demos.append(demo)
        if render:
            imageio.mimsave("/tmp/debug.gif", images)
            import ipdb; ipdb.set_trace()
    return demos

def save_demo(demonstration, demo_outfile):
    demo_str = ""
    for action in demonstration:
        action_str = "({} {})\n".format(action.predicate, " ".join([v.name for v in action.variables]))
        demo_str += action_str
    with open(demo_outfile, "w") as f:
        f.write(demo_str)
    print("Wrote out to {}".format(demo_outfile))


def run_pipeline(indices, biased):
    """
    """
    headers = create_headers()

    index_counter = 0
    if do_precomputation:
        for env_name in env_names:
            for initial_state in headers[env_name]:
                # Value function precomputation
                for goal in headers[env_name][initial_state]:
                    qval_run_id = get_qval_run_id(env_name, initial_state, goal, biased=biased)
                    if do_precomputation:
                        index_counter += 1
                        if index_counter not in indices:
                            continue
                        if do_precomputation == "if not exists":
                            if results_exist(qval_run_id):
                                print("Found {}, skipping".format(qval_run_id))
                                continue
                        print("Doing index {}".format(index_counter))
                        start_time = time.time()
                        qvals = compute_qvals(env_name, initial_state, goal, biased=biased)
                        time_elapsed = time.time() - start_time
                        results = {"qvals" : qvals, "time_elapsed" : time_elapsed}
                        save_results(qval_run_id, results)
                        if test_qvals:
                            run_test_qvals(env_name, initial_state, goal, qvals)
                        del qvals

                # Goal inference
                for goal in headers[env_name][initial_state]:
                    index_counter += 1
                    if index_counter not in indices:
                        continue
                    print("Doing index {}".format(index_counter))

                    qval_q_run_id = get_qval_run_id(env_name, initial_state, goal, biased=biased)
                    results_g = load_results(qval_q_run_id)
                    qvals_g = results_g["qvals"]

                    # Get demonstrations
                    for beta in betas:
                        demonstrations = get_demonstrations(qvals_g, env_name, initial_state, goal, 
                            beta, num_demos_per)
                        for demonstration_idx, demonstration in enumerate(demonstrations):
                            demo_outfile = get_demo_outfile(env_name, initial_state, goal,
                                beta, demonstration_idx)
                            save_demo(demonstration, demo_outfile)

def count_indices():
    headers = create_headers(verbose=False)
    index = 0
    for env_name in env_names:
        for initial_state in headers[env_name]:
            for goal in headers[env_name][initial_state]:
                index += 1
    return index


def main():
    run_pipeline(range(10000), biased=True)

if __name__ == "__main__":
    main()
