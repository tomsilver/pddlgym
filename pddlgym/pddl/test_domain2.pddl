(define (domain test-domain2)
    (:requirements :typing :probabilistic-effects)
    (:types location)

    (:constants de - location)

    (:predicates
        (robot-at ?v0 - location)
        (is-goal ?v0 - location)
        (conn ?v0 - location ?v1 - location)
        (move)
    )

    ; (:actions move)

    (:action move
        :parameters (?from - location ?to - location)
        :precondition (and (not (robot-at de)) (robot-at ?from) (not (is-goal ?from)) (conn ?from ?to) (move))
        :effect (and
            (not (robot-at ?from))
            (probabilistic
                0.9 (robot-at ?to)
                0.1 (robot-at de)
            ))
    )
)

