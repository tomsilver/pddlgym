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

def vi_finish_helper(env, initial_state, qvals, actions_for_state, horizon=100):
    env.set_state(initial_state)
    plan = []

    for _ in range(horizon):
        frozen_state = frozenset(env.get_state())
        best_act = None
        best_act_val = -np.inf
        for a in actions_for_state[frozen_state]:
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
