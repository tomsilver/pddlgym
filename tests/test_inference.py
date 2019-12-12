from pddlgym.inference import find_satisfying_assignments
from pddlgym.structs import Predicate, Type


def test_prover():
    TType = Type('t')
    atom0, atom1, atom2 = TType('atom0'), TType('atom1'), TType('atom2')
    var0, var1, var2, var3 = TType('Var0'), TType('Var1'), TType('Var2'), TType('Var3')

    # Single predicate single arity test
    predicate0 = Predicate('Predicate0', 1, [TType])
    predicate1 = Predicate('Predicate1', 2, [TType, TType])
    predicate2 = Predicate('Predicate2', 1, [TType])

    kb0 = [predicate0(atom0)]
    assignments = find_satisfying_assignments(kb0, [predicate0(var0)])
    assert len(assignments) == 1
    assert len(assignments[0]) == 1
    assert assignments[0][var0] == atom0

    assignments = find_satisfying_assignments(kb0, [predicate0(var0), predicate0(var1)])
    assert len(assignments) == 1

    kb1 = [predicate0(atom0), predicate0(atom1)]

    assignments = find_satisfying_assignments(kb1, [predicate0(var0)])
    assert len(assignments) == 2

    assignments = find_satisfying_assignments(kb1, [predicate0(var0), predicate0(var1)])
    assert len(assignments) == 2

    assignments = find_satisfying_assignments(kb1, [predicate0(var0), predicate0(var1), predicate0(var2)])
    assert len(assignments) == 2

    kb2 = [predicate0(atom0), predicate0(atom1), predicate0(atom2)]

    assignments = find_satisfying_assignments(kb2, [predicate0(var0)])
    assert len(assignments) == 2

    assignments = find_satisfying_assignments(kb2, [predicate0(var0), predicate0(var1)])
    assert len(assignments) == 2

    assignments = find_satisfying_assignments(kb2, [predicate0(var0), predicate0(var1), predicate0(var2)])
    assert len(assignments) == 2

    # Single predicate multiple arity test
    kb3 = [predicate1(atom0, atom1), predicate1(atom1, atom2)]

    assignments = find_satisfying_assignments(kb3, [predicate1(var0, var1)])
    assert len(assignments) == 2

    assignments = find_satisfying_assignments(kb3, [predicate1(var0, var1), predicate1(var1, var2)])
    assert len(assignments) == 1

    assignments = find_satisfying_assignments(kb3, [predicate1(var0, var1), predicate1(var1, var0)])
    assert len(assignments) == 0

    assignments = find_satisfying_assignments(kb3, [predicate1(var0, var1), predicate1(var2, var3)])
    assert len(assignments) == 2

    ## Multiple predicate multiple arity test
    kb4 = [predicate0(atom2), predicate1(atom0, atom1), predicate1(atom1, atom2)]

    assignments = find_satisfying_assignments(kb4, [predicate1(var0, var1), predicate0(var1), predicate0(var0)])
    assert len(assignments) == 0

    ## Tricky case!
    kb6 = [predicate0(atom0), predicate2(atom1), predicate1(atom0, atom2), predicate1(atom2, atom1)]

    assignments = find_satisfying_assignments(kb6, [predicate0(var0), predicate2(var1), predicate1(var0, var1)])
    assert len(assignments) == 0

    print("Pass.")

if __name__ == "__main__":
    test_prover()
