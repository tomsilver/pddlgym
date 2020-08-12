from .utils import get_asset_path, render_from_layout

import matplotlib.pyplot as plt
import numpy as np

# 6 different colors + empty squares for rendering grid
NUM_OBJECTS = 7
EMPTY, WHITE, YELLOW, GREEN, BLUE, RED, ORANGE = range(NUM_OBJECTS)

def generate_tile_token(tile_num):
    if tile_num is None:
        return plt.imread(get_asset_path('rubiks_empty.png'))
    return plt.imread(get_asset_path('rubiks_{}.png'.format(tile_num)))

TOKEN_IMAGES = {
    EMPTY : generate_tile_token(None),
    YELLOW : generate_tile_token(1),
    GREEN : generate_tile_token(2),
    BLUE : generate_tile_token(3),
    RED : generate_tile_token(4),
    ORANGE : generate_tile_token(5),
    WHITE : generate_tile_token(6),
}

CORRESPONDING_COORDS = {
    37 : (0, 3),
    38 : (0, 4),
    39 : (0, 5),
    40 : (1, 3),
    41 : (1, 4),
    42 : (1, 5),
    43 : (2, 3),
    44 : (2, 4),
    45 : (2, 5),
    1 : (3, 0),
    2 : (3, 1),
    3 : (3, 2),
    4 : (4, 0),
    5 : (4, 1),
    6 : (4, 2),
    7 : (5, 0),
    8 : (5, 1),
    9 : (5, 2),
    10 : (3, 3),
    11 : (3, 4),
    12 : (3, 5),
    13 : (4, 3),
    14 : (4, 4),
    15 : (4, 5),
    16 : (5, 3),
    17 : (5, 4),
    18 : (5, 5),
    19 : (3, 6),
    20 : (3, 7),
    21 : (3, 8),
    22 : (4, 6),
    23 : (4, 7),
    24 : (4, 8),
    25 : (5, 6),
    26 : (5, 7),
    27 : (5, 8),
    28 : (3, 9),
    29 : (3, 10),
    30 : (3, 11),
    31 : (4, 9),
    32 : (4, 10),
    33 : (4, 11),
    34 : (5, 9),
    35 : (5, 10),
    36 : (5, 11),
    46 : (6, 3),
    47 : (6, 4),
    48 : (6, 5),
    49 : (7, 3),
    50 : (7, 4),
    51 : (7, 5),
    52 : (8, 3),
    53 : (8, 4),
    54 : (8, 5),
}

def parse_color(variable_name):
    if variable_name.startswith("white"):
        return WHITE
    if variable_name.startswith("yellow"):
        return YELLOW
    if variable_name.startswith("green"):
        return GREEN
    if variable_name.startswith("blue"):
        return BLUE
    if variable_name.startswith("red"):
        return RED
    if variable_name.startswith("orange"):
        return ORANGE
    return EMPTY

def build_layout(obs):
    layout = EMPTY * np.ones((9, 12), dtype=int)

    for lit in obs:
        if (lit.predicate.name.startswith("pos")):
            r, c = CORRESPONDING_COORDS[int(lit.predicate.name[3:])]
            layout[r, c] = parse_color(lit.variables[0])

    return layout

def get_token_images(obs_cell):
    return [TOKEN_IMAGES[obs_cell]]

def render(obs, mode='human', close=False):
    layout = build_layout(obs)
    return render_from_layout(layout, get_token_images)
