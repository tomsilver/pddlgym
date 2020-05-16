"""Gym environment registration"""
import matplotlib
matplotlib.use("Agg")
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
        ("rearrangement", {'render' : rearrangement_render}),
        ("sokoban", {'render' : sokoban_render}),
        ("minecraft", {'render' : minecraft_render}),
        ("depot", {}),
        ("baking", {}),
        ("blocks", {'render' : blocks_render}),
        ("travel", {}),
        ("doors", {'render' : doors_render}),
        ("casino", {}),
        ("hanoi", {'render' : hanoi_render}),
        ("tsp", {'render' : tsp_render}),
        ("slidetile", {'render' : slidetile_render}),
        ("elevator", {}),
        ("ferry", {}),
        ("meetpass", {}),
        ("easyblocks", {'render' : blocks_render}),
        ("conditionalblocks", {'render' : blocks_render}),
        ("conditionalferry", {}),
        ("blocks_operator_actions", {'render' : blocks_render, 
                                     'operators_as_actions' : True,
                                     'dynamic_action_space' : True}),
]:
    other_args = {
        "raise_error_on_invalid_action": False,
        "compute_approx_reachable_set": False,
        "shape_reward_mode": None,
    }
    kwargs.update(other_args)
    for is_test in [False, True]:
        register_pddl_env(env_name, is_test, kwargs)

## Register domains with custom classes
register(
    id='InversePlanningBlocks-v0',
    entry_point='pddlgym.custom.inverse_planning.blocks:InversePlanningBlocksPDDLEnv',
)

register(
    id='EasyInversePlanningBlocks-v0',
    entry_point='pddlgym.custom.inverse_planning.blocks:EasyInversePlanningBlocksPDDLEnv',
)

register(
    id='InversePlanningGrid-v0',
    entry_point='pddlgym.custom.inverse_planning.grid:InversePlanningGridPDDLEnv',
)

register(
    id='EasyInversePlanningGrid-v0',
    entry_point='pddlgym.custom.inverse_planning.grid:EasyInversePlanningGridPDDLEnv',
)

register(
    id='InversePlanningIntrusionDetection-v0',
    entry_point='pddlgym.custom.inverse_planning.intrusion_detection:InversePlanningIntrusionDetectionPDDLEnv',
)

register(
    id='EasyInversePlanningIntrusionDetection-v0',
    entry_point='pddlgym.custom.inverse_planning.intrusion_detection:EasyInversePlanningIntrusionDetectionPDDLEnv',
)

register(
    id='InversePlanningLogistics-v0',
    entry_point='pddlgym.custom.inverse_planning.logistics:InversePlanningLogisticsPDDLEnv',
)

register(
    id='EasyInversePlanningLogistics-v0',
    entry_point='pddlgym.custom.inverse_planning.logistics:EasyInversePlanningLogisticsPDDLEnv',
)

register(
    id='InversePlanningCampus-v0',
    entry_point='pddlgym.custom.inverse_planning.campus:InversePlanningCampusPDDLEnv',
)

register(
    id='EasyInversePlanningCampus-v0',
    entry_point='pddlgym.custom.inverse_planning.campus:EasyInversePlanningCampusPDDLEnv',
)

register(
    id='InversePlanningKitchen-v0',
    entry_point='pddlgym.custom.inverse_planning.kitchen:InversePlanningKitchenPDDLEnv',
)

register(
    id='EasyInversePlanningKitchen-v0',
    entry_point='pddlgym.custom.inverse_planning.kitchen:EasyInversePlanningKitchenPDDLEnv',
)

register(
    id='InversePlanningTaxi-v0',
    entry_point='pddlgym.custom.inverse_planning.taxi:InversePlanningTaxiPDDLEnv',
)

