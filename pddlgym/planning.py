import sys
import os
import numpy as np
import re
import subprocess
import pyperplan


class PlanningException(Exception):
    pass


def run_planner(domain_file, problem_file, planner_name, **kwargs):
    if planner_name == 'ff':
        return run_ff(domain_file, problem_file, **kwargs)
    raise Exception("Unknown planner `{}`".format(planner_name))


def run_ff(domain_file, problem_file, horizon=np.inf, timeout=10):
    if 'FF_PATH' not in os.environ:
        raise Exception((
            "Environment variable `FF_PATH` not found. Make sure ff is installed "
            "and FF_PATH is set to the ff executable."
        ))

    FF_PATH = os.environ['FF_PATH']
    timeout_cmd = "gtimeout" if sys.platform == "darwin" else "timeout"
    cmd_str = "{} {} {} -o {} -f {}".format(timeout_cmd, timeout, FF_PATH,
                                            domain_file, problem_file)
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
        raise Exception((
            "Environment variable `FD_PATH` not found. Make sure fd is installed "
            "and FD_PATH is set to the directory containing the fast-downward.py "
            "executable."
        ))

    FD_PATH = os.environ['FD_PATH']
    timeout_cmd = "gtimeout" if sys.platform == "darwin" else "timeout"
    cmd_str = "{} {} {}/fast-downward.py --alias seq-opt-lmcut {} {}".format(
        timeout_cmd, timeout, FD_PATH, domain_file, problem_file)
    output = subprocess.getoutput(cmd_str)

    if "Solution found!" not in output:
        raise PlanningException("Plan not found with FD! Error: {}".format(output))
    os.remove("sas_plan")
    cost = float(re.search(r"Plan cost: (.+)", output).groups()[0])
    return cost


def get_pyperplan_heuristic(mode, domain_str, problem_str):
    assert mode in pyperplan.HEURISTICS, "Invalid shape_reward_mode: {}".format(mode)
    if mode == "landmark":
        raise Exception("Cannot use landmark shape_reward_mode as landmark heuristic is path-dependent")
    parser = pyperplan.Parser(None, None)
    parser.domInput = domain_str
    parser.probInput = problem_str

    domain = parser.parse_domain(read_from_file=False)
    problem = parser.parse_problem(domain, read_from_file=False)
    task = pyperplan.grounding.ground(problem)
    heuristic = pyperplan.HEURISTICS[mode](task)
    root = pyperplan.search.searchspace.make_root_node(task.initial_state)
    return heuristic(root)
