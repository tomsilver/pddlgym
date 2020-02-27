"""Gym environment registration"""
import matplotlib
matplotlib.use("Agg")
from pddlgym.rendering import *
from gym.envs.registration import register

import os

def register_pddl_env(name, render=None, is_test_env=False):
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
        kwargs={'domain_file' : domain_file, 'problem_dir' : problem_dir,
            'render' : render},
    )

register_pddl_env("rearrangement", rearrangement_render)
register_pddl_env("rearrangement", rearrangement_render, is_test_env=True)
register_pddl_env("sokoban", sokoban_render)
register_pddl_env("sokoban", sokoban_render, is_test_env=True)
register_pddl_env("minecraft", minecraft_render)
register_pddl_env("minecraft", minecraft_render, is_test_env=True)
register_pddl_env("depot")
register_pddl_env("depot", is_test_env=True)
register_pddl_env("baking")
register_pddl_env("baking", is_test_env=True)
register_pddl_env("blocks", blocks_render)
register_pddl_env("blocks", blocks_render, is_test_env=True)
register_pddl_env("travel")
register_pddl_env("travel", is_test_env=True)
register_pddl_env("doors", doors_render)
register_pddl_env("doors", doors_render, is_test_env=True)
register_pddl_env("casino")
register_pddl_env("casino", is_test_env=True)
register_pddl_env("hanoi", hanoi_render)
register_pddl_env("hanoi", hanoi_render, is_test_env=True)
register_pddl_env("tsp", tsp_render)
register_pddl_env("tsp", tsp_render, is_test_env=True)
register_pddl_env("slidetile", slidetile_render)
register_pddl_env("slidetile", slidetile_render, is_test_env=True)
register_pddl_env("elevator")
register_pddl_env("elevator", is_test_env=True)
register_pddl_env("ferry")
register_pddl_env("ferry", is_test_env=True)
register_pddl_env("meetpass")
register_pddl_env("meetpass", is_test_env=True)
register_pddl_env("easyblocks", blocks_render)
register_pddl_env("easyblocks", blocks_render, is_test_env=True)
