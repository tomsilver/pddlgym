from pddlgym.core import PDDLEnv, InvalidAction
from pddlgym.structs import Predicate, Type

import os

def test_pddlenv():
    dir_path = os.path.dirname(os.path.realpath(__file__))
    domain_file = os.path.join(dir_path, 'pddl', 'test_domain.pddl')
    problem_dir = os.path.join(dir_path, 'pddl', 'test_domain')

    env = PDDLEnv(domain_file, problem_dir, raise_error_on_invalid_action=True)

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

    # Valid args
    action = action_pred('b2')

    obs, _, _, _ = env.step(action)

    assert obs == { pred1('b2'), pred2('c1'), pred2('c2'), pred3('b2', 'd2', 'c2'), 
        pred3('a1', 'c1', 'd1'), pred3('a2', 'c2', 'd2') }

    print("Test passed.")

if __name__ == "__main__":
    test_pddlenv()
