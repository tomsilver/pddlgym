"""Gym environment registration"""

from . import tests

import matplotlib
# matplotlib.use("Agg")
from pddlgym.rendering import *
from gym.envs.registration import register

import os

def register_pddl_env(name, is_test_env, other_args):
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
                     **other_args}),
    )

for env_name, kwargs in [
        ("gripper", {'operators_as_actions' : True,
                     'dynamic_action_space' : True}),
        ("easygripper", {'operators_as_actions' : True,
                         'dynamic_action_space' : False}),
        ("onearmedgripper", {'operators_as_actions' : True,
                             'dynamic_action_space' : False}),
        ("tinyonearmedgripper", {'operators_as_actions' : True,
                                 'dynamic_action_space' : False}),
        ("lifelong_tiny_gripper", {'operators_as_actions' : True,
                                   'dynamic_action_space' : False}),
        ("rearrangement", {'render' : rearrangement_render}),
        ("sokoban", {'render' : sokoban_render}),
        ("minecraft", {'render' : minecraft_render}),
        ("depot", {'operators_as_actions' : True,
                   'dynamic_action_space' : True}),
        ("baking", {}),
        ("blocks", {'render' : blocks_render}),
        ("toomanyblocks", {'render' : blocks_render}),
        ("lifelong_blocks6", {'render' : blocks_render}),
        ("travel", {}),
        ("doors", {'render' : doors_render}),
        ("casino", {}),
        ("hanoi", {'render' : hanoi_render}),
        ("hanoi_operator_actions", {'render' : hanoi_render,
                                    'operators_as_actions' : True,
                                    'dynamic_action_space' : True}),
        ("tsp", {'render' : tsp_render}),
        ("tsp_operator_actions", {'render' : tsp_render,
                                  'operators_as_actions' : True,
                                  'dynamic_action_space' : True}),
        ("slidetile", {'render' : slidetile_render}),
        ("elevator", {}),
        ("ferry", {}),
        ("meetpass", {}),
        ("footwear", {'operators_as_actions' : True,
                      'dynamic_action_space' : True}),
        ("easyblocks", {'render' : blocks_render}),
        ("conditionalblocks", {'render' : blocks_render}),
        ("conditionalferry", {}),
        ("blocks_operator_actions", {'render' : blocks_render, 
                                     'operators_as_actions' : True,
                                     'dynamic_action_space' : True}),
        ("generated_blocks", {'render' : blocks_render, 
                              'operators_as_actions' : True,
                              'dynamic_action_space' : True}),
        ("manyblocksnopiles", {'render' : blocks_render, 
                               'operators_as_actions' : True,
                               'dynamic_action_space' : True}),
        ("manyexplodingblockssmallpiles", {'render' : blocks_render,
                                           'operators_as_actions' : True,
                                           'dynamic_action_space' : True}),
        ("manyblockssmallpiles", {'render' : blocks_render, 
                                  'operators_as_actions' : True,
                                  'dynamic_action_space' : True}),
        ("quantifiedblocks", {'render' : blocks_render, 
                              'operators_as_actions' : True,
                              'dynamic_action_space' : True}),
        ("quantifiedblocks2", {'render' : blocks_render, 
                               'operators_as_actions' : True,
                               'dynamic_action_space' : True}),
        ("quantifiedblocks3", {'render' : blocks_render, 
                               'operators_as_actions' : True,
                               'dynamic_action_space' : True}),
        ("manygrid", {'operators_as_actions' : True,
                      'dynamic_action_space' : True}),
        ("manylogistics", {'operators_as_actions' : True,
                           'dynamic_action_space' : True}),
        ("manymiconic", {'operators_as_actions' : True,
                         'dynamic_action_space' : True}),
        ("manygripper", {'operators_as_actions' : True,
                         'dynamic_action_space' : True}),
        ("manyferry", {'operators_as_actions' : True,
                       'dynamic_action_space' : True}),
        ("glibblocks", {'render' : blocks_render}),
        ("glibrearrangement", {'render' : rearrangement_render}),
        ("glibdoors", {'render' : doors_render}),
        ("tireworld", {'render' : tireworld_render}),
        ("manytireworld", {'render' : tireworld_render,
                           'operators_as_actions' : True,
                           'dynamic_action_space' : True}),
        ("river", {}),
        ("explodingblocks", {}),
]:
    other_args = {
        "raise_error_on_invalid_action": False,
        "shape_reward_mode": None,
    }
    kwargs.update(other_args)
    for is_test in [False, True]:
        register_pddl_env(env_name, is_test, kwargs)
