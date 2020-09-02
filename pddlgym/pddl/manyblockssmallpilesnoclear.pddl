;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; 4 op-blocks world
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define (domain blocks)
    (:requirements :strips :typing)
    (:types block)
    (:predicates 
        (on ?x - block ?y - block)
        (ontable ?x - block)
        (handempty)
        (handfull)
        (holding ?x - block)
    )

    (:action pick-up
        :parameters (?x - block)
        :precondition (and
            (forall (?y - block) (not (on ?y ?x))) ; (clear ?x)
            (ontable ?x) 
            (handempty)
        )
        :effect (and
            (not (ontable ?x))
            (not (handempty))
            (handfull)
            (holding ?x)
        )
    )

    (:action put-down
        :parameters (?x - block)
        :precondition (and 
            (holding ?x)
            (handfull)
        )
        :effect (and 
            (not (holding ?x))
            (handempty)
            (not (handfull))
            (ontable ?x))
        )

    (:action stack
        :parameters (?x - block ?y - block)
        :precondition (and
            (holding ?x) 
            (forall (?z - block) (not (on ?z ?y))) ; (clear ?y)
            (handfull)
        )
        :effect (and 
            (not (holding ?x))
            (handempty)
            (not (handfull))
            (on ?x ?y)
        )
    )

    (:action unstack
        :parameters (?x - block ?y - block)
        :precondition (and
            (on ?x ?y)
            (forall (?z - block) (not (on ?z ?x))) ; (clear ?x)
            (handempty)
        )
        :effect (and 
            (holding ?x)
            (not (handempty))
            (handfull)
            (not (on ?x ?y))
        )
    )
)
