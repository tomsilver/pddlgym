;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; 4 op-blocks world
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define (domain blocks)
    (:requirements :strips :typing)
    (:types block)
    (:predicates 
        (on ?x - block ?y - block)
        (ontable ?x - block)
        (clear ?x - block)
        (handempty)
        (handfull)
        (holding ?x - block)
    )

    (:action put-down
        :parameters (?x - block)
        :precondition (and 
            (holding ?x)
            (handfull)
        )
        :effect (and 
            (not (holding ?x))
            (clear ?x)
            (handempty)
            (not (handfull))
            (ontable ?x))
        )

    (:action unstack
        :parameters (?x - block ?y - block)
        :precondition (and
            (on ?x ?y)
            (clear ?x)
            (handempty)
        )
        :effect (and 
            (holding ?x)
            (clear ?y)
            (not (clear ?x))
            (not (handempty))
            (handfull)
            (not (on ?x ?y))
        )
    )
)
