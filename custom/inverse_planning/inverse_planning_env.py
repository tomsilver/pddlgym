"""Envs for inverse planning project that require some custom methods 
for value iteration and variations
"""
from pddlgym.core import PDDLEnv
from pddlgym.parser import parse_plan_step
import glob
import os
from collections import defaultdict

DEMOS = "nonoptimal"

class InversePlanningMixIn:

    sep = "_"

    def get_problem_groups(self):
        problem_prefix_to_group = defaultdict(list)
        for problem_idx, problem in enumerate(self.problems):
            prefix = self.sep.join(problem.problem_fname.split(self.sep)[:-1])
            problem_prefix_to_group[prefix].append(problem_idx)
        problem_prefixes = sorted(problem_prefix_to_group)
        problem_groups = [problem_prefix_to_group[p] for p in problem_prefixes]
        return problem_groups

    def reset(self):
        out = super().reset()
        self._state_buffer = []
        problems = self._get_problems_with_current_initial_state()
        for problem_fname in problems:
            for plan in self.load_demonstrations_for_problem(problem_fname):
                states = self.run_demo(plan)
                self._state_buffer.extend(states)
        return out

    def _get_problems_with_current_initial_state(self):
        prefix = self.sep.join(self._problem.problem_fname.split(self.sep)[:-1])
        return self._problem_prefix_to_group[prefix]

    def load_demonstrations_for_problem(self, problem_fname=None):
        if problem_fname is None:
            problem_fname = self._problem.problem_fname
        demo_fname_split = list(os.path.normpath(problem_fname).split(os.path.sep))
        demo_fname_split.insert(-2, "demos" + "_" + DEMOS)
        demo_fname = os.path.join(os.path.sep, os.path.join(*demo_fname_split))
        if DEMOS == "optimal":
            demo_fname = demo_fname.replace(".pddl", ".dat")
        else:
            demo_fname = demo_fname.replace(".pddl", "_*.dat")
        matches = glob.glob(demo_fname)
        # if not (len(matches) == 1 if DEMOS == "optimal" else len(matches) == 2):
            # import ipdb; ipdb.set_trace()
        plans = []
        for filename in matches:
            with open(filename, 'r') as f:
                plan_str = f.read()
            action_strs = [s.lower().replace("(", "").replace(")", "") \
                for s in plan_str.split("\n") if len(s) > 0]
            plan = []
            for plan_step in action_strs:
                action = self.parse_action_str(plan_step)
                plan.append(action)
            plans.append(plan)
        return plans

    def parse_action_str(self, plan_step):
        problem_objects = self._problem.objects
        return parse_plan_step(plan_step, self.domain.operators, self.action_predicates, 
            problem_objects, operators_as_actions=self.operators_as_actions)

    def step(self, action, update_state_buffer=True):
        out = super().step(action)
        # if update_state_buffer:
            # if self._state not in self._state_buffer:
                # self._state_buffer.append(self._state.copy())
        return out 

    def run_demo(self, plan):
        initial_state = self.get_state()
        state_trajectory = [initial_state]
        for action in plan:
            self.step(action, update_state_buffer=False)
            state_trajectory.append(self.get_state())
        self.set_state(initial_state)
        return state_trajectory

    def sample_state(self, biased=False):
        if biased:
            return self._sample_biased_state()
        return self._sample_state()

    def _sample_biased_state(self):
        state_buffer_size = len(self._state_buffer)
        idx = self._rng.choice(state_buffer_size)
        state = self._state_buffer[idx]
        return state


class InversePlanningPDDLEnv(InversePlanningMixIn, PDDLEnv):
    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)

        # Group the problems that have the same initial state but different goals
        self._problem_prefix_to_group = defaultdict(list)
        for problem in self.problems:
            prefix = self.sep.join(problem.problem_fname.split(self.sep)[:-1])
            self._problem_prefix_to_group[prefix].append(problem.problem_fname)



