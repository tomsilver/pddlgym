from pddlgym.planning import get_actions_for_state
from scipy.special import logsumexp
import numpy as np
import time
import pickle

def infer_goal(demonstration, problem_qvals, env, beta=1.):
    goal_distribution = []
    start_time = time.time()
    time_to_ignore = 0
    for i, qvals in enumerate(problem_qvals):
        # if i > 1:
            # break
        # print("Running goal inference: considering possible goal {}/{}".format(i, len(problem_qvals)), end='\r')
        # for enormous qvals
        if isinstance(qvals, str):
            load_time_start = time.time()
            enormous_qvals = True
            with open(qvals, 'rb') as f:
                qvals = pickle.load(f)
            time_to_ignore += time.time() - load_time_start
        else:
            enormous_qvals = False

        total_log_prob = 0.
        # print("i:", i)
        for obs, gold_action in demonstration:
            before_time = time.time()
            actions_for_state = get_actions_for_state(obs, None, env, use_cache=False)
            time_to_ignore += time.time() - before_time
            qvals_s = []
            gold_action_idx = None
            # print("check 0")
            for idx, action in enumerate(actions_for_state):
                if isinstance(obs, set):
                    frozen_obs = frozenset(obs)
                else:
                    frozen_obs = frozenset({obs})
    
                # bleebs = [frozenset(s) for s in env._state_buffer]
                # if frozen_obs not in bleebs:
                    # import ipdb; ipdb.set_trace()

                key = (hash(frozen_obs), hash(action))

                # print("check 1")

                # all_state_keys = [k for k,_ in qvals]
                # if key not in qvals:
                    # import ipdb; ipdb.set_trace()

                qval_sa = qvals.get(key, 0.0)
                qvals_s.append(qval_sa)

                # print("check 2")

                if action == gold_action:
                    gold_action_idx = idx
            if gold_action_idx is None:
                qvals_s.append(0.0)
                gold_action_idx = len(qvals_s) - 1
            # print("check 3")
            # print("i={}, qvals_s_a*:".format(i), qvals_s[gold_action_idx])
            action_unnormed_log_distribution = beta*np.array(qvals_s)
            z = logsumexp(action_unnormed_log_distribution)
            action_log_distribution = action_unnormed_log_distribution - z
            gold_action_log_prob = action_log_distribution[gold_action_idx]
            total_log_prob += gold_action_log_prob
            # print("check 4")
        goal_distribution.append(total_log_prob)

        # print("check 5")
        if enormous_qvals:
            before_time = time.time()
            del qvals
            time_to_ignore += time.time() - before_time
        # print("check 6")
    # print()
    # import ipdb; ipdb.set_trace()
    # print("Total time 0:", time.time() - start_time)
    goal_distribution = np.array(goal_distribution)
    z_goal = logsumexp(goal_distribution)
    goal_distribution = np.exp(goal_distribution - z_goal)
    # print("Total elapsed:", time.time() - start_time - time_to_ignore)
    # print("Time to ignore:", time_to_ignore)
    # import sys; sys.exit(0)
    return goal_distribution, time_to_ignore
