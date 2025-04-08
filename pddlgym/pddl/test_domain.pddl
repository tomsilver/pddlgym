(define (domain test-domain)
    (:requirements :typing :probabilistic-effects)
    (:types location)

    (:constants de - location)

    (:predicates
        (robot-at ?v0 - location)
        (is-goal ?v0 - location)
        (conn1 ?v0 - location ?v1 - location)
        (conn2 ?v0 - location ?v1 - location)
        (move1)
        (move2)
    )

    ; (:actions move1 move2)

    (:action move1
        :parameters (?from - location ?to - location)
        :precondition (and (not (robot-at de)) (robot-at ?from) (not (is-goal ?from)) (conn1 ?from ?to) (move1))
        :effect (and
            (not (robot-at ?from))
            (robot-at ?to))
    )

    (:action move2
        :parameters (?from - location ?to - location)
        :precondition (and (not (robot-at de)) (robot-at ?from) (not (is-goal ?from)) (conn2 ?from ?to) (move2))
        :effect (and
            (not (robot-at ?from))
            (probabilistic
                0.95 (robot-at ?to)
                0.05 (robot-at de)
            ))
    )
)

