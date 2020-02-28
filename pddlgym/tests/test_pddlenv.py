from pddlgym.core import PDDLEnv, InvalidAction
from pddlgym.structs import Predicate, Type

import os

def test_pddlenv():
    dir_path = os.path.dirname(os.path.realpath(__file__))
    domain_file = os.path.join(dir_path, 'pddl', 'test_domain.pddl')
    problem_dir = os.path.join(dir_path, 'pddl', 'test_domain')

    env = PDDLEnv(domain_file, problem_dir, raise_error_on_invalid_action=True,
                  dynamic_action_space=True)
    env2 = PDDLEnv(domain_file, problem_dir, raise_error_on_invalid_action=True,
                   dynamic_action_space=False)

    type1 = Type('type1')
    type2 = Type('type2')
    pred1 = Predicate('pred1', 1, [type1])
    pred2 = Predicate('pred2', 1, [type2])
    pred3 = Predicate('pred3', 1, [type1, type2, type2])
    operator_name = 'action1'
    action_pred = Predicate('actionpred', 1, [type1])

    obs, _ = env.reset()

    assert obs == { pred1('b2'), pred2('c1'), pred3('a1', 'c1', 'd1'), 
        pred3('a2', 'c2', 'd2') }

    operator = env.domain.operators[operator_name]

    # Invalid action
    action = action_pred('b1')

    try:
        env.step(action)
        assert False, "Action was supposed to be invalid"
    except InvalidAction:
        pass

    assert action not in env.action_space.all_ground_literals(), "Dynamic action space not working"
    env2.reset()
    assert action in env2.action_space.all_ground_literals(), "Dynamic action space not working"

    # Valid args
    action = action_pred('b2')

    obs, _, _, _ = env.step(action)

    assert obs == { pred1('b2'), pred2('c1'), pred2('c2'), pred3('b2', 'd2', 'c2'), 
        pred3('a1', 'c1', 'd1'), pred3('a2', 'c2', 'd2') }

    print("Test passed.")

if __name__ == "__main__":
    test_pddlenv()
