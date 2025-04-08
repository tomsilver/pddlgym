(define (domain test-domain3)
    (:requirements :typing :probabilistic-effects)
    (:types location)

    (:constants de - location de2 - location)

    (:predicates
        (robot-at ?v0 - location)
        (is-goal ?v0 - location)
        (conn ?v0 - location ?v1 - location)
        (move)
    )

    ; (:actions move)

    (:action move
        :parameters (?from - location ?to - location)
        ; :precondition (and (not (robot-at de)) (robot-at ?from) (not (is-goal ?from)) (conn ?from ?to) (move))
        :precondition (and (robot-at ?from) (not (is-goal ?from)) (conn ?from ?to) (move))
        :effect (and
            (not (robot-at ?from))
            (probabilistic
                0.9 (robot-at ?to)
                0.05 (robot-at ?from)
                0.05 (robot-at de)
            ))
    )
)

