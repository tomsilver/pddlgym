"""Gym environment registration"""
import matplotlib
matplotlib.use("Agg")
from pddlgym.rendering import *
from gym.envs.registration import register

import os

def register_pddl_env(name, render, is_test_env, other_args):
    dir_path = os.path.join(os.path.dirname(os.path.realpath(__file__)), "pddl")
    domain_file = os.path.join(dir_path, "{}.pddl".format(name.lower()))
    gym_name = name.capitalize()
    problem_dirname = name.lower()
    if is_test_env:
        gym_name += 'Test'
        problem_dirname += '_test'
    problem_dir = os.path.join(dir_path, problem_dirname)

    register(
        id='PDDLEnv{}-v0'.format(gym_name),
        entry_point='pddlgym.core:PDDLEnv',
        kwargs=dict({'domain_file' : domain_file, 'problem_dir' : problem_dir,
                     'render' : render}, **other_args),
    )

for env_name, render_fn in [
        ("rearrangement", rearrangement_render),
        ("sokoban", sokoban_render),
        ("minecraft", minecraft_render),
        ("depot", None),
        ("baking", None),
        ("blocks", blocks_render),
        ("travel", None),
        ("doors", doors_render),
        ("casino", None),
        ("hanoi", hanoi_render),
        ("tsp", tsp_render),
        ("slidetile", slidetile_render),
        ("elevator", None),
        ("ferry", None),
        ("meetpass", None),
        ("easyblocks", blocks_render),
        ("conditionalblocks", blocks_render),
        ("conditionalferry", None),
]:
    other_args = {
        "raise_error_on_invalid_action": False,
        "dynamic_action_space": False,
        "compute_approx_reachable_set": False,
        "shape_reward_mode": None,
    }
    for is_test in [False, True]:
        register_pddl_env(env_name, render_fn, is_test, other_args)
