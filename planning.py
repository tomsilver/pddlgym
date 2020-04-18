from collections import defaultdict
import sys
import os
import numpy as np
import re
import subprocess
import pyperplan
import time

class PlanningException(Exception):
    pass

def run_planner(env, domain_file, problem_file, planner_name, **kwargs):
    if planner_name == 'ff':
        return run_ff(domain_file, problem_file, **kwargs)
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
        valid_actions = list(env.action_space.all_ground_literals())
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

def run_async_value_iteration(env, timeout=np.inf, gamma=0.99, epsilon=1e-5, vi_maxiters=10000, horizon=100, 
                              avi_queue_size=1000, iter_plans=False, iter_plan_interval=100):
    # Ugly hack to deal with rendering...
    try:
        env = env.env
    except AttributeError:
        pass
    # Record initial state
    initial_state = env.get_state()
    # Get all states
    qvals = defaultdict(float)
    actions_for_state_cache = {}
    itr = 0
    start = time.time()
    deltas = []
    while True:
        print("Running async VI iteration {}/{}".format(itr, vi_maxiters), end='\r')
        if iter_plans and (itr % iter_plan_interval == 0):
            yield vi_finish_helper(env, initial_state, qvals, actions_for_state=actions_for_state_cache, horizon=horizon)
        state = env.sample_state()
        frozen_state = frozenset(state)
        env.set_state(state)
        actions_for_state = get_actions_for_state(state, actions_for_state_cache, env)
        for act in actions_for_state:
            env.set_state(state)
            _, rew, done, _ = env.step(act)
            next_state = env.get_state()
            frozen_next_state = frozenset(next_state)
            actions_for_next_state = get_actions_for_state(next_state, actions_for_state_cache, env)
            if done or len(actions_for_next_state) == 0:
                expec = 0
            else:
                expec = max(qvals[(frozen_next_state, na)] \
                            for na in actions_for_next_state)
            newval = rew + gamma*expec
            deltas.append(abs(newval-qvals[(frozen_state, act)]))
            deltas = deltas[-avi_queue_size:]
            qvals[(frozen_state, act)] = newval
        if len(deltas) == avi_queue_size and np.mean(deltas) < epsilon:
            return vi_finish_helper(env, initial_state, qvals, actions_for_state=actions_for_state_cache, horizon=horizon)
        if itr == vi_maxiters:
            return vi_finish_helper(env, initial_state, qvals, actions_for_state=actions_for_state_cache, horizon=horizon)
        itr += 1

def get_actions_for_state(state, cache, env):
    if not env.dynamic_action_space:
        if "all" not in cache:
            cache["all"] = list(env.action_space.all_ground_literals())
        return cache["all"]
    frozen_state = frozenset(state)
    if frozen_state not in cache:
        state_before = env.get_state()
        env.set_state(state)
        cache[frozen_state] = list(env.action_space.all_ground_literals())
        env.set_state(state_before)
    return cache[frozen_state]

def vi_finish_helper(env, initial_state, qvals, actions_for_state, horizon=100):
    env.set_state(initial_state)
    plan = []

    for _ in range(horizon):
        state = env.get_state()
        frozen_state = frozenset(state)
        best_act = None
        best_act_val = -np.inf
        actions_for_this_state = get_actions_for_state(state, actions_for_state, env)
        for a in actions_for_this_state:
            val = qvals[(frozen_state, a)]
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
