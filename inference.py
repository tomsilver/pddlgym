"""Search for assignments of vars to objects to satisfy a conjunction of Literals
"""
from pddlgym.prolog_interface import PrologInterface

from collections import defaultdict
from copy import deepcopy


def find_satisfying_assignments(kb, conds, verbose=False, max_assignment_count=2,
                                allow_redundant_variables=True):
    prolog_interface = PrologInterface(kb, conds, max_assignment_count=max_assignment_count,
        allow_redundant_variables=allow_redundant_variables)
    return prolog_interface.run()


class CommitGoalError(Exception):
    pass



from pddlgym.structs import *
def test1():
    # Temporary test included for development

    MoveableType = Type('moveable')
    StaticType = Type('static')
    At = Predicate('at', 2, var_types=[MoveableType, StaticType])
    Holding = Predicate('holding', 1, var_types=[MoveableType])
    IsRobot = Predicate('isrobot', 1, var_types=[MoveableType])

    robot = MoveableType("robot")
    pawn = MoveableType("pawn")
    bear = MoveableType("bear")
    loc2 = StaticType("loc2")
    loc3 = StaticType("loc3")
    loc4 = StaticType("loc4")

    var1 = MoveableType("Var1")
    var2 = MoveableType("Var2")
    var3 = StaticType("Var3")
    var4 = StaticType("Var4")

    # I would expect this to return unsat because robot and pawn are at different locs...
    kb = [Holding(pawn), At(robot, loc2), At(pawn, loc3),
          At(bear, loc4), IsRobot(robot)]
    conds = [Holding(var1), At(var1, var3), At(var2, var4), IsRobot(var2)]
    print(find_satisfying_assignments(kb, conds,
        allow_redundant_variables=False))

def test2():
    # Temporary test included for development

    MoveableType = Type('moveable')
    StaticType = Type('static')
    At = Predicate('at', 2, var_types=[MoveableType, StaticType])
    Holding = Predicate('holding', 1, var_types=[MoveableType])
    IsRobot = Predicate('isrobot', 1, var_types=[MoveableType])

    robot = MoveableType("robot")
    pawn = MoveableType("pawn")
    bear = MoveableType("bear")
    loc2 = StaticType("loc2")
    loc3 = StaticType("loc3")
    loc4 = StaticType("loc4")

    var1 = MoveableType("Var1")
    var2 = MoveableType("Var2")
    var3 = StaticType("Var3")

    # I would expect this to return unsat because robot and pawn are at different locs...
    kb = [Holding(pawn), At(robot, loc2), At(pawn, loc3),
          At(bear, loc4), IsRobot(robot)]
    conds = [Holding(var1), At(var1, var3), At(var2, var3), IsRobot(var2)]
    print(find_satisfying_assignments(kb, conds,
        allow_redundant_variables=False))

def test3():
    # Temporary test included for development

    MoveableType = Type('moveable')
    StaticType = Type('static')
    At = Predicate('at', 2, var_types=[MoveableType, StaticType])
    Holding = Predicate('holding', 1, var_types=[MoveableType])
    IsRobot = Predicate('isrobot', 1, var_types=[MoveableType])

    robot = MoveableType("robot")
    pawn = MoveableType("pawn")
    bear = MoveableType("bear")
    loc2 = StaticType("loc2")
    loc3 = StaticType("loc3")
    loc4 = StaticType("loc4")

    var1 = MoveableType("Var1")
    var2 = MoveableType("Var2")
    var3 = StaticType("Var3")
    var4 = StaticType("Var4")

    kb = [Holding(pawn), At(robot, loc2), At(pawn, loc3),
          At(bear, loc4), IsRobot(robot)]
    conds = [At(var1, var3), At(var2, var4), IsRobot(var2)]
    print(find_satisfying_assignments(kb, conds,
        allow_redundant_variables=False))

if __name__ == "__main__":
    test1()
    test2()
    test3()

