(define (domain hiking)
  (:requirements :strips :typing)
  (:types loc)

(:predicates
  (at ?loc - loc)
  (isWater ?loc - loc)
  (isHill ?loc - loc)
  (isGoal ?loc - loc)
  (adjacent ?loc1 - loc ?loc2 - loc)
  (onTrail ?from - loc ?to - loc)
)

(:action walk
  :parameters (?from - loc ?to - loc)
  :precondition (and
    (not (isHill ?to))
    (at ?from)
    (adjacent ?from ?to)
    (not (isWater ?from)))
  :effect (and (at ?to) (not (at ?from)))
)

(:action climb
  :parameters (?from - loc ?to - loc)
  :precondition (and
    (isHill ?to)
    (at ?from)
    (adjacent ?from ?to)
    (not (isWater ?from)))
  :effect (and (at ?to) (not (at ?from)))
)


)
