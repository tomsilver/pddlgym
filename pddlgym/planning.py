import sys
import os
import numpy as np
import re
import subprocess


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
    if plan[-1] == "reach-goal":
        plan = plan[:-1]
    return plan
