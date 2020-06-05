from pddlgym.parser import PDDLDomainParser, PDDLProblemParser
from pddlgym.structs import Predicate, Literal, Type, Not, Anti, LiteralConjunction, State
from pddlgym.spaces import LiteralSpace

import os


def test_hierarchical_spaces():
    dir_path = os.path.dirname(os.path.realpath(__file__))
    domain_file = os.path.join(dir_path, 'pddl', 'hierarchical_type_test_domain.pddl')
    problem_file = os.path.join(dir_path, 'pddl', 'hierarchical_type_test_domain', 
        'hierarchical_type_test_problem.pddl')
    domain = PDDLDomainParser(domain_file)
    problem = PDDLProblemParser(problem_file, domain.domain_name, domain.types,
        domain.predicates, domain.actions)
    actions = list(domain.actions)
    action_predicates = [domain.predicates[a] for a in actions]

    space = LiteralSpace(set(domain.predicates.values()) - set(action_predicates),
        type_to_parent_types=domain.type_to_parent_types)
    all_ground_literals = space.all_ground_literals(State(problem.initial_state, 
        problem.objects, problem.goal))

    ispresent = Predicate("ispresent", 1, [Type("entity")])
    islight = Predicate("islight", 1, [Type("object")])
    isfurry = Predicate("isfurry", 1, [Type("animal")])
    ishappy = Predicate("ishappy", 1, [Type("animal")])
    attending = Predicate("attending", 2, [Type("animal"), Type("object")])

    nomsy = Type("jindo")("nomsy")
    rover = Type("corgi")("rover")
    rene = Type("cat")("rene")
    block1 = Type("block")("block1")
    block2 = Type("block")("block2")
    cylinder1 = Type("cylinder")("cylinder1")

    assert all_ground_literals == {
        ispresent(nomsy),
        ispresent(rover),
        ispresent(rene),
        ispresent(block1),
        ispresent(block2),
        ispresent(cylinder1),
        islight(block1),
        islight(block2),
        islight(cylinder1),
        isfurry(nomsy),
        isfurry(rover),
        isfurry(rene),
        ishappy(nomsy),
        ishappy(rover),
        ishappy(rene),
        attending(nomsy, block1),
        attending(nomsy, block2),
        attending(nomsy, cylinder1),
        attending(rover, block1),
        attending(rover, block2),
        attending(rover, cylinder1),
        attending(rene, block1),
        attending(rene, block2),
        attending(rene, cylinder1),
    }

    print("Test passed.")

if __name__ == "__main__":
    test_hierarchical_spaces()
