;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; 4 op-blocks world
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define (domain blocks)
    (:requirements :strips :typing)
    (:types block)
    (:predicates 
        (on ?x - block ?y - block)
        (ontable ?x - block)
        (holding ?x - block)
    )

    (:action pick-up
        :parameters (?x - block)
        :precondition (and
            (forall (?y - block) (not (on ?y ?x))) ; (clear ?x)
            (ontable ?x) 
            (forall (?y - block) (not (holding ?y))) ; (handempty)
        )
        :effect (and
            (not (ontable ?x))
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
            (ontable ?x))
        )

    (:action stack
        :parameters (?x - block ?y - block)
        :precondition (and
            (holding ?x) 
            (forall (?z - block) (not (on ?z ?y))) ; (clear ?y)
        )
        :effect (and 
            (not (holding ?x))
            (on ?x ?y)
        )
    )

    (:action unstack
        :parameters (?x - block ?y - block)
        :precondition (and
            (on ?x ?y)
            (forall (?z - block) (not (on ?z ?x))) ; (clear ?x)
            (forall (?z - block) (not (holding ?z))) ; (handempty)
        )
        :effect (and 
            (holding ?x)
            (not (on ?x ?y))
        )
    )
)
