(define (problem debug1) 
    (:domain debug)
    (:objects
    loc00 - static 
    loc01 - static 
    loc02 - static
    loc10 - static 
    loc11 - static 
    loc12 - static
    loc20 - static 
    loc21 - static
    loc22 - static
    robot - moveable
    )

    (:init
    (IsRobot robot)
    (IsGoal loc21)
    (At robot loc00)

    ; Action literals
    (MoveRobot loc00)
    (MoveRobot loc01)
    (MoveRobot loc02)
    (MoveRobot loc10)
    (MoveRobot loc11)
    (MoveRobot loc12)
    (MoveRobot loc20)
    (MoveRobot loc21)
    (MoveRobot loc22)
    (MoveGoal loc00)
    (MoveGoal loc01)
    (MoveGoal loc02)
    (MoveGoal loc10)
    (MoveGoal loc11)
    (MoveGoal loc12)
    (MoveGoal loc20)
    (MoveGoal loc21)
    (MoveGoal loc22)

    )

    (:goal (and (At robot loc02))))
