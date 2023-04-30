from .utils import get_asset_path, render_from_layout, render_from_layout_crisp

import matplotlib.pyplot as plt
import numpy as np

NUM_OBJECTS = 6
ROBOT, RIVER, BANK, BRIDGE, WATERFALL, GOAL = range(NUM_OBJECTS)

RIVER_CELL = np.zeros((200, 200, 4), np.uint8)
RIVER_CELL[:] = [52, 189, 235, 255]

BANK_CELL = np.zeros((200, 200, 4), np.uint8)
BANK_CELL[:] = [204, 129, 31, 255]

BRIDGE_CELL = np.zeros((200, 200, 4), np.uint8)
BRIDGE_CELL[:] = [237, 237, 237, 255]

WATERFALL_CELL = np.zeros((200, 200, 4), np.uint8)
WATERFALL_CELL[:] = [42, 146, 181, 255]

GOAL_CELL = np.zeros((200, 200, 4), np.uint8)
GOAL_CELL[:] = [42, 255, 42, 255]

TOKEN_IMAGES = {
    ROBOT : plt.imread(get_asset_path('sokoban_player.png')),
    RIVER : RIVER_CELL,
    BANK : BANK_CELL,
    BRIDGE : BRIDGE_CELL,
    WATERFALL : WATERFALL_CELL,
    GOAL: GOAL_CELL
}

def loc_str_to_loc(loc_str):
    c, r = loc_str.split('-')
    return (int(r[:-1]), int(c[1:]))

def get_locations(obs, thing):
    locs = []
    for lit in obs:
        if lit.predicate.name != 'at':
            continue
        if thing in lit.variables[0]:
            locs.append(loc_str_to_loc(lit.variables[1]))
    return locs

def get_values(obs, name):
    values = []
    for lit in obs:
        if lit.predicate.name == name:
            values.append(lit.variables)
    return values

def build_layout(obs):
    # Get location boundaries
    max_r, max_c = -np.inf, -np.inf
    for lit in obs:
        for v in lit.variables:
            if v.startswith('f'):
                r, c = loc_str_to_loc(v)
                max_r = max(max_r, r)
                max_c = max(max_c, c)
    layout = RIVER * np.ones((max_r+1, max_c+1), dtype=np.uint8)

    # Put things in the layout
    # Also track seen locs and goal locs
    seen_locs = set()
    goal_locs = set()

    for v in get_values(obs, 'is-goal'):
        r, c = loc_str_to_loc(v[0])
        layout[r, c] = GOAL
        seen_locs.add((r, c))
        goal_locs.add((r, c))

    for r, c in get_locations(obs, 'robot'):
        layout[r, c] = ROBOT
        seen_locs.add((r, c))

    for v in get_values(obs, 'is-river'):
        r, c = loc_str_to_loc(v[0])
        if (r, c) in goal_locs:
            continue
        layout[r, c] = RIVER
        seen_locs.add((r, c))

    for v in get_values(obs, 'is-waterfall'):
        r, c = loc_str_to_loc(v[0])
        if (r, c) in goal_locs:
            continue
        layout[r, c] = WATERFALL
        seen_locs.add((r, c))

    for v in get_values(obs, 'is-bridge'):
        r, c = loc_str_to_loc(v[0])
        if (r, c) in goal_locs:
            continue
        layout[r, c] = BRIDGE
        seen_locs.add((r, c))

    for v in get_values(obs, 'is-bank'):
        r, c = loc_str_to_loc(v[0])
        if (r, c) in goal_locs:
            continue
        layout[r, c] = BANK
        seen_locs.add((r, c))

    for v in get_values(obs, 'robot-at'):
        r, c = loc_str_to_loc(v[1])
        layout[r, c] = ROBOT
        seen_locs.add((r, c))

    return layout

def get_token_images(obs_cell):
    return [TOKEN_IMAGES[obs_cell]]

def render(obs, close=False):
    layout = build_layout(obs)
    return render_from_layout(layout, get_token_images)
