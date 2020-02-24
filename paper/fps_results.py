import gym
import pddlgym
import time
import numpy as np


def measure_fps(env_name, num_episodes=1000, horizon=10):
    gym_name = env_name.capitalize()
    env = gym.make("PDDLEnv{}-v0".format(gym_name))

    start = time.time()

    for _ in range(num_episodes):
        env.reset()
        for _ in range(horizon):
            env.step(env.action_space.sample())

    tot = time.time() - start
    fps = (num_episodes * horizon) / tot 

    return fps


def main():
    env_names = [
        "sokoban",
        "rearrangement",
        "minecraft",
        "depot",
        "baking",
        "blocks",
        "travel",
        "doors",
        "casino",
        "hanoi",
        "tsp",
        "slidetile",
        "elevator",
        "ferry",
        "meetpass",
    ]

    for env_name in env_names:
        avg_fps = measure_fps(env_name)
        print(env_name, ": ", avg_fps)

if __name__ == "__main__":
    main()
