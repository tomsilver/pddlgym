from pddlgym.core import PDDLEnv, InvalidAction
from pddlgym.structs import Predicate, Type, LiteralConjunction

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

    assert obs.literals == frozenset({ pred1('b2'), pred2('c1'), pred3('a1', 'c1', 'd1'), 
        pred3('a2', 'c2', 'd2') })

    operator = env.domain.operators[operator_name]

    # Invalid action
    action = action_pred('b1')

    try:
        env.step(action)
        assert False, "Action was supposed to be invalid"
    except InvalidAction:
        pass

    assert action not in env.action_space.all_ground_literals(obs), "Dynamic action space not working"
    env2.reset()
    assert action in env2.action_space.all_ground_literals(obs), "Dynamic action space not working"

    # Valid args
    action = action_pred('b2')

    obs, _, _, _ = env.step(action)

    assert obs.literals == frozenset({ pred1('b2'), pred3('b2', 'd1', 'c1'), 
        pred3('a1', 'c1', 'd1'), pred3('a2', 'c2', 'd2') })

    assert isinstance(obs.goal, LiteralConjunction)
    assert set(obs.goal.literals) == {pred2('c2'), pred3('b1', 'c1', 'd1')}

    print("Test passed.")


def test_pddlenv_hierarchical_types():
    dir_path = os.path.dirname(os.path.realpath(__file__))
    domain_file = os.path.join(dir_path, 'pddl', 'hierarchical_type_test_domain.pddl')
    problem_dir = os.path.join(dir_path, 'pddl', 'hierarchical_type_test_domain')

    env = PDDLEnv(domain_file, problem_dir)
    obs, _ = env.reset()

    ispresent = Predicate("ispresent", 1, [Type("entity")])
    islight = Predicate("islight", 1, [Type("object")])
    isfurry = Predicate("isfurry", 1, [Type("animal")])
    ishappy = Predicate("ishappy", 1, [Type("animal")])
    pet = Predicate("pet", 1, [Type("animal")])
    throw = Predicate("throw", 1, [Type("object")])

    nomsy = Type("jindo")("nomsy")
    rover = Type("corgi")("rover")
    rene = Type("cat")("rene")
    block1 = Type("block")("block1")
    block2 = Type("block")("block2")
    cylinder1 = Type("cylinder")("cylinder1")

    assert obs.literals == frozenset({
        ispresent(nomsy),
        ispresent(rover),
        ispresent(rene),
        ispresent(block1),
        ispresent(block2),
        ispresent(cylinder1),
        islight(block1),
        islight(cylinder1),
        isfurry(nomsy),
    })

    obs, _, _, _ = env.step(pet('block1'))

    assert obs.literals == frozenset({
        ispresent(nomsy),
        ispresent(rover),
        ispresent(rene),
        ispresent(block1),
        ispresent(block2),
        ispresent(cylinder1),
        islight(block1),
        islight(cylinder1),
        isfurry(nomsy),
    })

    obs, _, _, _ = env.step(pet(nomsy))

    assert obs.literals == frozenset({
        ispresent(nomsy),
        ispresent(rover),
        ispresent(rene),
        ispresent(block1),
        ispresent(block2),
        ispresent(cylinder1),
        islight(block1),
        islight(cylinder1),
        isfurry(nomsy),
        ishappy(nomsy)
    })

    print("Test passed.")



if __name__ == "__main__":
    test_pddlenv()
    test_pddlenv_hierarchical_types()
