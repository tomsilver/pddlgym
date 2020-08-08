from collections import defaultdict
import sys
import os
import numpy as np
import re
import subprocess
import pyperplan
import time
import random

class PlanningException(Exception):
    pass

def run_planner(env, domain_file, problem_file, planner_name, **kwargs):
    if planner_name == 'ff':
        return run_ff(domain_file, problem_file, **kwargs)
    if planner_name == 'fd':
        return run_fd(domain_file, problem_file, **kwargs)
    if planner_name == "vi":
        return run_value_iteration(env, **kwargs)
    if planner_name == "avi":
        return run_async_value_iteration(env, **kwargs)
    raise Exception("Unknown planner `{}`".format(planner_name))

def run_ff(domain_file, problem_file, horizon=np.inf, timeout=10):
    if 'FF_PATH' not in os.environ:
        raise Exception("Environment variable `FF_PATH` not found. " + \
            "Make sure ff is installed and FF_PATH is set to the ff executable.")

    FF_PATH = os.environ['FF_PATH']
    timeout_cmd = "gtimeout" if sys.platform == "darwin" else "timeout"
    cmd_str = "{} {} {} -o {} -f {}".format(timeout_cmd, timeout, FF_PATH, domain_file, problem_file)
    output = subprocess.getoutput(cmd_str)

    if "goal can be simplified to FALSE" in output:
        return []
    if "unsolvable" in output:
        raise PlanningException("Plan not found with FF! Error: {}".format(output))
    plan = re.findall(r"\d+?: (.+)", output.lower())
    if not plan:
        raise PlanningException("Plan not found with FF! Error: {}".format(output))
    if len(plan) > horizon:
        return []
    return plan

def run_fd(domain_file, problem_file, horizon=np.inf, timeout=10):
    if 'FD_PATH' not in os.environ:
        raise Exception("Environment variable `FD_PATH` not found. " + \
            "Make sure fd is installed and FD_PATH is set to the directory containing the fast-downward.py executable.")

    FD_PATH = os.environ['FD_PATH']
    rand_num = random.randint(0, 10e8)
    tmp_plan_file = "plan_{}.dat".format(rand_num)
    search_method = "astar(lmcut(transform=no_transform(), cache_estimates=true))"
    timeout_cmd = "gtimeout" if sys.platform == "darwin" else "timeout"
    cmd_str = "{} {} {}/fast-downward.py --plan-file {} {} {} --search '{}'".format(timeout_cmd, 
        timeout if timeout is not None else 0, FD_PATH, tmp_plan_file, domain_file, problem_file, search_method)
    output = subprocess.getoutput(cmd_str)
    if "no solution" in output:
        # No solution found, just act randomly and hope for the best.
        import ipdb; ipdb.set_trace()
    if "Solution found." not in output:
        print(output)
        import ipdb; ipdb.set_trace()

    if "no solution" in output:
        # No solution found
        import ipdb; ipdb.set_trace()
    if "Solution found." not in output:
        print(output)
        import ipdb; ipdb.set_trace()

    with open(tmp_plan_file, 'r') as f:
        plan_str = f.read()
    plan_str = "\n".join(plan_str.rstrip().split("\n")[:-1])
    plan = []
    for action_str in plan_str.split("\n"):
        # Remove parens
        action_str = action_str.strip().rstrip()[1:-1]
        plan.append(action_str)
    os.remove(tmp_plan_file)
    print("FD solver generated length-{} plan".format(len(plan)))
    if len(plan) > horizon:
        return []
    return plan


def get_fd_optimal_plan_cost(domain_file, problem_file, timeout=10):
    if 'FD_PATH' not in os.environ:
        raise Exception("Environment variable `FD_PATH` not found. " + \
            "Make sure fd is installed and FD_PATH is set to the directory containing the fast-downward.py executable.")

    FD_PATH = os.environ['FD_PATH']
    timeout_cmd = "gtimeout" if sys.platform == "darwin" else "timeout"
    cmd_str = "{} {} {}/fast-downward.py --alias seq-opt-lmcut {} {}".format(timeout_cmd, timeout, FD_PATH, domain_file, problem_file)
    output = subprocess.getoutput(cmd_str)

    if "Solution found!" not in output:
        raise PlanningException("Plan not found with FD! Error: {}".format(output))
    os.remove("sas_plan")
    cost = float(re.search(r"Plan cost: (.+)", output).groups()[0])
    return cost

def run_value_iteration(env, timeout=np.inf, gamma=0.99, epsilon=1e-3, vi_maxiters=1000, horizon=100):
    # Ugly hack to deal with rendering...
    try:
        env = env.env
    except AttributeError:
        pass
    print("Initializing value iteration...")
    # Record initial state
    initial_state = env.get_state()
    # Get all states
    all_states = list(env.get_all_states())
    num_states = len(all_states)
    # For each state, find valid actions and initialize qvals
    qvals = {}
    actions_for_state = {}
    total_action_count = 0
    for state in all_states:
        frozen_state = frozenset(state)
        env.set_state(state)
        valid_actions = list(env.get_valid_actions())
        actions_for_state[frozen_state] = valid_actions
        total_action_count += len(valid_actions)
        for a in valid_actions:
            qvals[(frozen_state, a)] = 0.
    avg_num_actions = total_action_count / float(num_states)
    print("Running VI with {} states and avg. {} actions per state".format(num_states, avg_num_actions))
    itr = 0
    start = time.time()
    while True:
        new_qvals = qvals.copy()
        delta = 0
        for state in all_states:
            frozen_state = frozenset(state)
            for act in actions_for_state[frozen_state]:
                env.set_state(state)
                _, rew, done, _ = env.step(act)
                next_state = env.get_state()
                frozen_next_state = frozenset(next_state)
                if done:
                    expec = 0
                else:
                    expec = max(qvals[(frozen_next_state, na)] \
                                for na in actions_for_state[frozen_next_state])
                new_qvals[(frozen_state, act)] = rew+gamma*expec
                delta = max(delta, abs(new_qvals[(frozen_state, act)]- qvals[(frozen_state, act)]))
                if timeout is not None and time.time()-start > timeout:
                    return vi_finish_helper(env, initial_state, qvals, actions_for_state, 
                        horizon=horizon)
        qvals = new_qvals
        if delta < epsilon or itr == vi_maxiters:
            return vi_finish_helper(env, initial_state, qvals, actions_for_state, 
                horizon=horizon)
        itr += 1

# from pympler import asizeof
# def format_bytes(size):
#     # 2**10 = 1024
#     power = 2**10
#     n = 0
#     power_labels = {0 : '', 1: 'kilo', 2: 'mega', 3: 'giga', 4: 'tera'}
#     while size > power:
#         size /= power
#         n += 1
#     return size, power_labels[n]+'bytes'

def run_async_value_iteration(env, timeout=np.inf, gamma=0.99, epsilon=1e-5, vi_maxiters=10000, horizon=100, 
                              avi_queue_size=1000, iter_plans=False, iter_plan_interval=100, use_cache=False,
                              biased=False, ret_qvals=False):
    # Ugly hack to deal with rendering...
    try:
        env = env.env
    except AttributeError:
        pass
    # Record initial state
    initial_state = env.get_state()
    # Get all states
    qvals = {}
    actions_for_state_cache = {}
    itr = 0
    start = time.time()
    deltas = []
    while True:
        print("Running async VI iteration {}/{}".format(itr, vi_maxiters), end='\r')
        if iter_plans and (itr % iter_plan_interval == 0):
            yield vi_finish_helper(env, initial_state, qvals, actions_for_state=actions_for_state_cache, horizon=horizon)
        state = env.sample_state(biased=biased)
        frozen_state = hash(frozenset(state))
        env.set_state(state)
        actions_for_state = get_actions_for_state(state, actions_for_state_cache, env, use_cache=use_cache)
        for act in actions_for_state:
            env.set_state(state)
            _, rew, done, _ = env.step(act, update_state_buffer=True)
            next_state = env.get_state()
            frozen_next_state = hash(frozenset(next_state))
            actions_for_next_state = get_actions_for_state(next_state, actions_for_state_cache, env, use_cache=use_cache)
            if done or len(actions_for_next_state) == 0:
                expec = 0
            else:
                expec = max(qvals.get((frozen_next_state, hash(na)), 0.) \
                            for na in actions_for_next_state)
            newval = rew + gamma*expec
            deltas.append(abs(newval-qvals.get((frozen_state, hash(act)), 0.)))
            deltas = deltas[-avi_queue_size:]
            qvals[(frozen_state, hash(act))] = newval
        # print("qvals size:", format_bytes(asizeof.asizeof(qvals)))
        # import ipdb; ipdb.set_trace()
        if (len(deltas) == avi_queue_size and np.mean(deltas) < epsilon) or (itr == vi_maxiters):
            if ret_qvals:
                yield qvals
            yield vi_finish_helper(env, initial_state, qvals, actions_for_state=actions_for_state_cache, horizon=horizon)
            return
        itr += 1

def get_actions_for_state(state, cache, env, use_cache=False, **kwargs):
    if hasattr(env, "get_actions_for_state"):
        return env.get_actions_for_state(state, **kwargs)
    assert env.dynamic_action_space
        # if "all" not in cache:
            # cache["all"] = list(env.action_space.all_ground_literals())
        # return cache["all"]
    frozen_state = frozenset(state)
    if not use_cache or frozen_state not in cache:
        state_before = env.get_state()
        env.set_state(state)
        result = list(env.get_valid_actions())
        if use_cache:
            cache[frozen_state] = result
        env.set_state(state_before)
    else:
        result = cache[frozen_state]
    return result

def vi_finish_helper(env, initial_state, qvals, actions_for_state, horizon=100, 
                     debug=False):
    env.set_state(initial_state)
    plan = []

    for _ in range(horizon):
        if debug:
            import ipdb; ipdb.set_trace()
        state = env.get_state()
        frozen_state = hash(frozenset(state))
        best_act = None
        best_act_val = -np.inf
        actions_for_this_state = get_actions_for_state(state, actions_for_state, env)
        for a in actions_for_this_state:
            val = qvals.get((frozen_state, hash(a)), 0.)
            if val > best_act_val:
                best_act = a
                best_act_val = val
        plan.append(best_act)
        _, _, done, _ = env.step(best_act)
        if done:
            break
        
    # Reset to initial state
    env.set_state(initial_state)
    return plan


def get_pyperplan_heuristic(mode, domain_file, problem_file):
    assert mode in pyperplan.HEURISTICS, "Invalid shape_reward_mode: {}".format(mode)
    if mode == "landmark":
        raise Exception("Cannot use landmark shape_reward_mode as landmark heuristic is path-dependent")
    parser = pyperplan.Parser(domain_file, problem_file)
    domain = parser.parse_domain()
    problem = parser.parse_problem(domain)
    task = pyperplan.grounding.ground(problem)
    heuristic = pyperplan.HEURISTICS[mode](task)
    root = pyperplan.search.searchspace.make_root_node(task.initial_state)
    return heuristic(root)
