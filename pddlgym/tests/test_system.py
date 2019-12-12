from pddlgym.demo import run_all

import gym
import pddlgym


if __name__ == '__main__':
    print("WARNING: this test may take around a minute...")
    run_all(render=False, verbose=False)
    print("Test passed.")
