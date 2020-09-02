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
        (holding ?x - block)
    )

    (:action pick-up
        :parameters (?x - block)
        :precondition (and
            (clear ?x) 
            (ontable ?x) 
            (forall (?y - block) (not (holding ?y))) ; (handempty)
        )
        :effect (and
            (not (ontable ?x))
            (not (clear ?x))
            (holding ?x)
        )
    )

    (:action put-down
        :parameters (?x - block)
        :precondition (and 
            (holding ?x)
        )
        :effect (and 
            (not (holding ?x))
            (clear ?x)
            (ontable ?x))
        )

    (:action stack
        :parameters (?x - block ?y - block)
        :precondition (and
            (holding ?x) 
            (clear ?y)
        )
        :effect (and 
            (not (holding ?x))
            (not (clear ?y))
            (clear ?x)
            (on ?x ?y)
        )
    )

    (:action unstack
        :parameters (?x - block ?y - block)
        :precondition (and
            (on ?x ?y)
            (clear ?x)
            (forall (?z - block) (not (holding ?z))) ; (handempty)
        )
        :effect (and 
            (holding ?x)
            (clear ?y)
            (not (clear ?x))
            (not (on ?x ?y))
        )
    )
)
