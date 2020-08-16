;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; 3 op-blocks world
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define (domain blocks)
    (:requirements :strips :typing :equality)
    (:types block)
    (:predicates 
        (on ?x - block ?y - block)
        (ontable ?x - block)
        (clear ?x - block)
    )

    (:action putontable
        :parameters (?x - block ?w - block)
        :precondition (and
            (on ?x ?w)
            (clear ?x)
        )
        :effect (and
            (not (on ?x ?w))
            (clear ?w)
            (ontable ?x)
        )
    )

    (:action stackfromtable
        :parameters (?x - block ?y - block)
        :precondition (and
            (ontable ?x)
            (clear ?x)
            (clear ?y)
            (not (= ?x ?y))
        )
        :effect (and 
            (on ?x ?y)
            (not (ontable ?x))
        )
    )

    (:action stackfrompile
        :parameters (?x - block ?y - block ?w - block)
        :precondition (and
            (on ?x ?w)
            (clear ?x)
            (clear ?y)
            (not (= ?x ?y))
        )
        :effect (and 
            (on ?x ?y)
            (not (clear ?w))
            (not (on ?x ?w))
        )
    )
)
