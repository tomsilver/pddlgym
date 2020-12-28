[![Build Status](https://travis-ci.com/tomsilver/pddlgym.svg?branch=master)](https://travis-ci.com/tomsilver/pddlgym)

# PDDLGym: PDDL &rarr; OpenAI Gym

![Sokoban example](images/sokoban_example.gif?raw=true "Sokoban example")

**This library is under development by [Tom Silver](http://web.mit.edu/tslvr/www/) and [Rohan Chitnis](https://rohanchitnis.com/). Correspondence: <tslvr@mit.edu> and <ronuchit@mit.edu>.**

## Paper

Please see [our paper](https://arxiv.org/abs/2002.06432) describing the design decisions and implementation details behind PDDLGym.

## Status

**We support the following subset of PDDL1.2:**
- STRIPS
- Typing (including hierarchical)
- Quantifiers (forall, exists)
- Disjunctions (or)
- Equality
- Constants
- Derived predicates

Notable features that we do not currently support include conditional effects and action costs.

Several PDDL environments are included, such as:
- Sokoban
- Depot
- Blocks
- Keys and Doors
- Towers of Hanoi
- Snake
- Fridge
- Gripper
- Ferry
- Elevator
- TSP
- "Minecraft"
- "Rearrangement"
- "Travel"
- "Baking"

(Environments in quotes indicate ones that we made up ourselves. Unquoted environments are standard ones whose PDDL files are available online, with light modifications to support our interface.)

We also support probabilistic effects, specified in the PPDDL syntax. Several PPDDL environments are included, such as:
- River
- Triangle Tireworld
- Exploding Blocks

Please get in touch if you are interested in contributing!

Sister packages: [pyperplan](https://github.com/aibasel/pyperplan) and [rddlgym](https://github.com/thiagopbueno/rddlgym).

## Installation

### Python version

We require Python 3.6+.

### Installing via pip

`pip install pddlgym`

### Installing from source (if you want to make changes to PDDLGym)

First, set up a virtual environment with Python 3. For instance, if you use [virtualenvwrapper](https://virtualenvwrapper.readthedocs.io/en/latest/), you can simply run ``mkvirtualenv --python=`which python3` pddlgymenv``. Next, clone this repository, and from inside it run `pip install -e .`. Now you should able to run the random agent demos in `pddlgym/demo.py`. You should also be able to `import pddlgym` from any Python shell.

### Planner dependencies (optional)
To be able to run the planning demos in `pddlgym/demo_planning.py`, see our companion repository [pddlgym_planners](https://github.com/ronuchit/pddlgym_planners), which provides an interface to FastForward and FastDownward.

### Note on Rendering and Matplotlib
If you encounter an error message that seems related to rendering (e.g. https://github.com/tomsilver/pddlgym/issues/47), it's possible that your `matplotlib` backend needs to be reconfigured. Try to use the `agg` backend by adding this line to the top of your script, before anything else is imported: `import matplotlib; matplotlib.use('agg')`

## Usage examples

### Hello, PDDLGym
```
import pddlgym
import imageio

env = pddlgym.make("PDDLEnvSokoban-v0")
obs, debug_info = env.reset()
img = env.render()
imageio.imsave("frame1.png", img)
action = env.action_space.sample(obs)
obs, reward, done, debug_info = env.step(action)
img = env.render()
imageio.imsave("frame2.png", img)
```

See also `demo.py`.

### Plan with FastDownward
To run this example, make sure you install the optional companion repository [pddlgym_planners](https://github.com/ronuchit/pddlgym_planners).
```
import pddlgym
from pddlgym_planners.fd import FD

# See `pddl/sokoban.pddl` and `pddl/sokoban/problem3.pddl`.
env = pddlgym.make("PDDLEnvSokoban-v0")
env.fix_problem_index(2)
obs, debug_info = env.reset()
planner = FD()
plan = planner(env.domain, obs)
for act in plan:
    print("Obs:", obs)
    print("Act:", act)
    obs, reward, done, info = env.step(act)
print("Final obs, reward, done:", obs, reward, done)
```

## Observation representation

As in OpenAI Gym, calling `env.reset()` or `env.step()` will return an observation of the environment. This observation is a namedtuple with 3 fields: `obs.literals` gives a frozenset of literals that hold true in the state, `obs.objects` gives a frozenset of objects in the state, and `obs.goal` gives a pddlgym.structs.Literal object representing the goal of the current problem instance.

## Adding a new domain

### Step 1: Adding PDDL files
Create a domain PDDL file and one or more problem PDDL files. (Note: Only a certain subset of PDDL is supported right now -- see "Status" above.) Put the domain file in `pddl/` and the problem files in `pddl/<domain name>`. Make sure that the name of your new domain is consistent and is used for the domain pddl filename and the problem directory.

### Step 2 (optional): Implement rendering
* Implement a render function in a new file in `rendering/`. For an example, see `pddlgym/rendering/rearrangement.py`. See the Observation representation section for a description of the representation of the argument `obs` passed into the render function. Update `pddlgym/rendering/__init__.py` to import your new function.

### Step 3: Register Gym environment
* Update the list in `pddlgym/__init__.py` to register your new environment. There are several methods for doing so:

#### **Simple** (recommended if you want to spin up quickly with off-the-shelf PDDL files)
Let's say your domain name is "mypddlgymenv" and your render function is mypddlgymenv_render. Then you would add to the list the following entry: `('mypddlgymenv', {'render': mypddlgymenv_render, 'operators_as_actions': True, 'dynamic_action_space': True})`. You can leave out the "render" entry if you don't have a render function.
* What these arguments mean: by default, PDDLGym requires modifying the PDDL files to make a distinction between "actions" and "operators", related to the boundary between agent and environment. The rationale is described in Section 2.2 of [our paper](https://arxiv.org/abs/2002.06432). Setting "operators_as_actions" to True eliminates this distinction, and makes it so you can use off-the-shelf PDDL files without modification. Setting "dynamic_action_space" to True causes `env.action_space` to change on each iteration to include only valid actions (those that match the operator preconditions), which can be useful in, for example, policy learning.
#### **More complex** (recommended for more serious research)
If you plan to use PDDLGym for non-trivial domains, you will almost certainly need to make the distinction between operators and actions, by letting "operators_as_actions" be False (the default) for your new domain in `pddlgym/__init__.py`. Actions are the things passed from the agent to the environment, like motor commands on a robot. Operators describe the environmental consequences of the agent's actions. For instance, a `moveto` command may only be parameterized by a target pose from the perspective of the agent, but internally to the environment, it must also be parameterized by the current pose because a literal must be created specifying that the agent is no longer at this current pose. In order to handle this, you will need to update your PDDL files by including special predicates called "action predicate". Action predicates must be incorporated in four places:
1. Alongside the typical predicate declarations in the domain file.
2. In a space-separated list of format `; (:actions <action predicate name 1> <action predicate name 2> ...)` in the domain file. (Note the semicolon at the beginning!)
3. One variable-grounded action predicate should appear in the preconditions of every operator in the domain file.
4. In each problem file, all possible ground actions should be listed alongside the other :init declarations.

See `pddlgym/pddl/blocks.pddl` and `pddlgym/pddl/blocks/problem1.pddl` for an example to follow, where there are four action predicates: pickup, putdown, stack, and unstack.

## Citation

Please use this bibtex if you want to cite this repository in your publications:
```
@inproceedings{silver2020pddlgym,
  author    = {Tom Silver and Rohan Chitnis},
  title     = {PDDLGym: Gym Environments from PDDL Problems},
  booktitle = {International Conference on Automated Planning and Scheduling (ICAPS) PRL Workshop},
  year      = {2020},
  url       = {https://github.com/tomsilver/pddlgym},
}
```
