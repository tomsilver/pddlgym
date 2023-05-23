(define (domain visit_all)
    (:requirements :typing)
    (:types        place - object)
    (:predicates
        (connected ?x - place ?y - place)
	    (at-robot ?x - place)
	    (visited ?x - place)
    )

    (:action move
        :parameters (?curpos - place ?nextpos - place)
        :precondition (and
            (at-robot ?curpos)
            (connected ?curpos ?nextpos)
        )
        :effect (and
            (at-robot ?nextpos)
            (not (at-robot ?curpos))
            (visited ?nextpos)
        )
    )
)
