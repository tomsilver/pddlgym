(define (domain taxi)
    (:requirements :strips :typing :action-costs)
    (:types 
        loc dir pasloc
    )
    (:constants
        red green yellow blue intaxi - pasloc
    )
    (:predicates
        (move-dir ?from - loc ?to - loc ?dir - dir)
        (taxi-at ?l - loc)
        (passenger-at ?pl - pasloc)
        (pasloc-at-loc ?pl - pasloc ?l - loc)
    )
    (:functions
        (total-cost) - number
    )
    (:action move
        :parameters (?from - loc ?to - loc ?dir - dir)
        :precondition (and
            (taxi-at ?from)
            (move-dir ?from ?to ?dir)
        )
        :effect (and
            (taxi-at ?to)
            (not (taxi-at ?from))
            (increase (total-cost) 19)
        )
    )
    (:action pickup
        :parameters (?loc - loc ?pasloc - pasloc)
        :precondition (and
            (taxi-at ?loc)
            (passenger-at ?pasloc)
            (pasloc-at-loc ?pasloc ?loc)
        )
        :effect (and
            (not (passenger-at ?pasloc))
            (passenger-at intaxi)
            (increase (total-cost) 19)
        )
    )
    (:action dropoff
        :parameters (?loc - loc ?pasloc - pasloc)
        :precondition (and
            (taxi-at ?loc)
            (passenger-at intaxi)
            (pasloc-at-loc ?pasloc ?loc)
        )
        :effect (and
            (not (passenger-at intaxi))
            (passenger-at ?pasloc)
            (increase (total-cost) 1)
        )
    )
)
