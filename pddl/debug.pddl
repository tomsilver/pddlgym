(define (domain debug)
  (:requirements :strips :typing)
  (:types moveable static)
  (:predicates
     (IsRobot ?robot - moveable)
     (IsGoal ?goal - static)
     (At ?obj - moveable ?loc - static)
     (MoveRobot ?loc - static)
     (MoveGoal ?loc - static)
  )

  ; (:actions MoveRobot MoveGoal)

  (:action MoveRobotOperator
    :parameters (?robot - moveable ?start - static ?end - static)
    :precondition (and (MoveRobot ?end)
                       (IsRobot ?robot)
                       (At ?robot ?start)
                  )
    :effect (and (not (At ?robot ?start))
                 (At ?robot ?end)
            )
  )

  (:action MoveGoalOperator
    :parameters (?start - static ?end - static)
    :precondition (and (MoveGoal ?end)
                       (IsGoal ?start)
                  )
    :effect (and (not (IsGoal ?start))
                 (IsGoal ?end)
            )
  )
)
