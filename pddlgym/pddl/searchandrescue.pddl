
(define (domain searchandrescue)
  (:requirements :typing)
  (:types robot person wall hospital location direction chicken)
  
  (:constants down - direction
    left - direction
    right - direction
    up - direction)

  (:predicates (conn ?v0 - location ?v1 - location ?v2 - direction)
    (clear ?v0 - location)
    (robot-at ?v0 - robot ?v1 - location)
    (person-at ?v0 - person ?v1 - location)
    (wall-at ?v0 - wall ?v1 - location)
    (hospital-at ?v0 - hospital ?v1 - location)
    (chicken-at ?v0 - chicken ?v1 - location)
    (carrying ?v0 - robot ?v1 - person)
    (handsfree ?v0 - robot)
    (move ?v0 - direction)
    (pickup ?v0 - person)
    (dropoff)
  )
  ; (:actions dropoff pickup move)

  

    (:action move-robot
        :parameters (?robot - robot ?from - location ?to - location ?dir - direction)
        :precondition (and (move ?dir)
            (conn ?from ?to ?dir)
            (robot-at ?robot ?from)
            (clear ?to))
        :effect (and
            (not (robot-at ?robot ?from))
            (robot-at ?robot ?to)
            (not (clear ?to))
            (clear ?from))
    )
    

    (:action pickup-person
        :parameters (?robot - robot ?person - person ?loc - location)
        :precondition (and (pickup ?person)
            (robot-at ?robot ?loc)
            (person-at ?person ?loc)
            (handsfree ?robot))
        :effect (and
            (not (person-at ?person ?loc))
            (not (handsfree ?robot))
            (carrying ?robot ?person))
    )
    

    (:action dropoff-person
        :parameters (?robot - robot ?person - person ?loc - location)
        :precondition (and (dropoff)
            (carrying ?robot ?person)
            (robot-at ?robot ?loc))
        :effect (and
            (person-at ?person ?loc)
            (handsfree ?robot)
            (not (carrying ?robot ?person)))
    )

  

)
        