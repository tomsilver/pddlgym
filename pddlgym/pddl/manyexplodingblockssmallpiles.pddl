;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; 4 op-blocks world, probabilistic
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
        (destroyed ?x - block)
        (table-destroyed)
    )

    (:action pick-up
        :parameters (?x - block)
        :precondition (and
            (clear ?x) 
            (ontable ?x) 
            (handempty)
            (not (destroyed ?x))
            (not (table-destroyed))
        )
        :effect (and
            (not (ontable ?x))
            (not (clear ?x))
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
            (not (table-destroyed))
        )
        :effect (and 
            (not (holding ?x))
            (clear ?x)
            (handempty)
            (not (handfull))
            (ontable ?x)
            (probabilistic 0.03 (and (table-destroyed)))
        )
    )

    (:action stack
        :parameters (?x - block ?y - block)
        :precondition (and
            (holding ?x) 
            (clear ?y)
            (handfull)
            (not (destroyed ?y))
            (not (table-destroyed))
        )
        :effect (and 
            (not (holding ?x))
            (not (clear ?y))
            (clear ?x)
            (handempty)
            (not (handfull))
            (on ?x ?y)
            (probabilistic 0.03 (and (destroyed ?y)))
        )
    )

    (:action unstack
        :parameters (?x - block ?y - block)
        :precondition (and
            (on ?x ?y)
            (clear ?x)
            (handempty)
            (not (destroyed ?x))
            (not (table-destroyed))
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
