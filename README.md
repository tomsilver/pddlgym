# PDDLGym: PDDL &rarr; OpenAI Gym

![Sokoban example](images/sokoban_example.gif?raw=true "Sokoban example")

**This library is under development by [Tom Silver](http://web.mit.edu/tslvr/www/) and [Rohan Chitnis](https://rohanchitnis.com/).**

## Paper

Please see [our paper](https://arxiv.org/abs/2002.06432) describing the design decisions and implementation details behind PDDLGym.

## Status

**The following PDDL features are not yet supported:**
- Equality (blocked by: parsing and inference)
- Quantifiers (forall, exists) and disjunctions (ors) (blocked by: inference)

Several PDDL environments are included, including
- Sokoban
- Depot
- Blocks
- Keys and Doors
- Towers of Hanoi
- "Minecraft"
- "Rearrangement"
- "Travel"
- "Baking"

(Environments in quotes indicate ones that we made up ourselves. Unquoted environments are standard ones whose PDDL files are available online, with light modifications to support our interface.)

Please get in touch if you are interested in contributing! Correspondence: <tslvr@mit.edu> and <ronuchit@mit.edu>.

## Installation

First, set up a virtual environment with Python 3. For instance, if you use [virtualenvwrapper](https://virtualenvwrapper.readthedocs.io/en/latest/), you can simply run `mkvirtualenv --python=<path to Python 3> pddlgymenv`. Next, run `pip install -r requirements.txt` to install dependencies. Now you should able to run the random agent demos in `demo.py`.

### (Optional) Planner Dependencies
To be able to run the planning demos in `demo.py`, install [Fast-Forward](https://fai.cs.uni-saarland.de/hoffmann/ff.html). Set environment variable `FF_PATH` to the `ff` executable, wherever you install it.

## Usage examples

### Hello, PDDLGym
```
import gym
import pddlgym
import imageio

env = gym.make("PDDLEnvSokoban-v0")
obs, debug_info = env.reset()
action = env.action_space.sample()
obs, reward, done, debug_info = env.step(action)
img = env.render()
imageio.imsave("frame1.png", img)
```

### Plan with FastForward
```
from utils import run_planning_demo

import gym
import pddlgym

# See `pddl/sokoban.pddl` and `pddl/sokoban/problem3.pddl`.
env = gym.make("PDDLEnvSokoban-v0")
env.fix_problem_index(2)
run_planning_demo(env, 'ff', verbose=True)
```

## Adding a new domain

### Step 1: Adding PDDL files
Create a domain PDDL file and one or more problem PDDL files. (See important notes below.) Put the domain file in `pddl/` and the problem files in `pddl/<domain name>`. Make sure that the name of your new domain is consistent and is used for the domain pddl filename and the problem directory.

**Note 1:** Only a certain subset of PDDL is supported right now -- see "Status" above.

**Note 2:** PDDLGym requires that certain predicates are special "predicate actions". For example, in Sokoban, we add a `(Move ?dir - direction)` predicate. Action predicates must be incorporated in four places:
1. Alongside the typical predicate declarations in the domain file.
2. In a space-separated list of format `; (:actions <action predicate name 1> <action predicate name 2> ...)` in the domain file. (Note the semicolon at the beginning!)
3. One variable-grounded action predicate should appear in the preconditions of every operator in the domain file.
4. In each problem file, all possible ground actions should be listed alongside the other :init declarations.
See `pddl/sokoban.pddl` and `pddl/sokoban/problem1.pddl` for an example to follow.

The rationale for distinguishing actions from operators is related to the boundary between agent and environment. This project views PDDL operators as collectively implementing a transition model, which is part of the environment and unknown to the agent. Actions are the things passed from the agent to the environment, like motor commands on a robot. Operators describe the environmental consequences of the agent's actions. For instance, a `moveto` command may only be parameterized by a target pose from the perspective of the agent, but internally to the environment, it must also be parameterized by the current pose because a literal must be created specifying that the agent is no longer at this current pose.

### Step 2 (optional): Implement rendering
* Implement a render function in a new file in `rendering/`. For example, in `rendering/rearrangement.py`, implement `render(obs, *args, **kwargs)`, where `obs` is a set of literals. Update `rendering/__init__.py` to import your new function.

### Step 3: Register Gym environment
* Update `__init__.py` to register your new environment. For example, `register_pddl_env("rearrangement", rearrangement_render)`.

## Citation

Please use this bibtex if you want to cite this repository in your publications:
```
@misc{silver2020pddlgym,
    title={PDDLGym: Gym Environments from PDDL Problems},
    author={Tom Silver and Rohan Chitnis},
    year={2020},
    eprint={2002.06432},
    archivePrefix={arXiv},
    primaryClass={cs.AI}
}
```
