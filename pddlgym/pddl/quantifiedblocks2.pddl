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
            (not (exists (?y - block) (on ?y ?x))) ; (clear ?x)
            (ontable ?x) 
            (not (exists (?y - block) (holding ?y))) ; (handempty)
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
            (not (exists (?z - block) (on ?z ?y))) ; (clear ?y)
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
            (not (exists (?z - block) (on ?z ?x))) ; (clear ?x)
            (not (exists (?z - block) (holding ?z))) ; (handempty)
        )
        :effect (and 
            (holding ?x)
            (not (on ?x ?y))
        )
    )
)
