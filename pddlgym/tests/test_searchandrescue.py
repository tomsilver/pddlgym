import pddlgym
import numpy as np

def test_searchandrescue(num_actions_to_test=100, verbose=False):
    """Test state encoding and decoding
    """
    for level in range(1, 7):
        env = pddlgym.make(f"SearchAndRescueLevel{level}-v0")
        if level == 1:
            assert len(env.problems) == 20
        else:
            assert len(env.problems) == 50
        env.fix_problem_index(0)
        state, debug_info = env.reset()
        rng = np.random.RandomState(0)

        all_actions = env.get_possible_actions()
        actions = rng.choice(all_actions, size=num_actions_to_test)
        done = False
        for t, act in enumerate(actions):
            if verbose:
                print(f"Taking action {t}/{num_actions_to_test}", end='\r', flush=True)

            assert state == env._internal_to_state(env._state)
            assert env._state.literals == env._state_to_internal(state).literals
            assert env._state.objects == env._state_to_internal(state).objects
            assert set(env._state.goal.literals) == set(env._state_to_internal(state).goal.literals)
            assert env.check_goal(state) == done
            for a in all_actions:
                ns = env.get_successor_state(state, a)
                assert ns == env._internal_to_state(env._state_to_internal(ns))

            if done:
                break
            state, _, done, _ = env.step(act)
        if verbose:
            print()

    print("Test passed.")


if __name__ == "__main__":
    test_searchandrescue(verbose=True)
