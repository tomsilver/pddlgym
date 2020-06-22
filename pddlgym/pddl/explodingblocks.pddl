; Probabilistic version of blocksworld, with explosions

(define (domain explodingblocks)
    (:requirements :strips :typing)
    (:types block robot)
    (:predicates 
        (on ?x - block ?y - block)
        (ontable ?x - block)
        (clear ?x - block)
        (handempty ?x - robot)
        (handfull ?x - robot)
        (holding ?x - block)
        (pickup ?x - block)
        (putdown ?x - block)
        (stack ?x - block ?y - block)
        (unstack ?x - block)
        (destroyed ?x - block)
        (table-destroyed)
    )

    ; (:actions pickup putdown stack unstack)

    (:action pick-up
        :parameters (?x - block ?robot - robot)
        :precondition (and
            (pickup ?x) 
            (clear ?x) 
            (ontable ?x) 
            (handempty ?robot)
            (not (destroyed ?x))
            (not (table-destroyed))
        )
        :effect (and
            (not (ontable ?x))
            (not (clear ?x))
            (not (handempty ?robot))
            (handfull ?robot)
            (holding ?x)
        )
    )

    (:action put-down
        :parameters (?x - block ?robot - robot)
        :precondition (and 
            (putdown ?x)
            (holding ?x)
            (handfull ?robot)
            (not (table-destroyed))
        )
        :effect (and 
            (not (holding ?x))
            (clear ?x)
            (handempty ?robot)
            (not (handfull ?robot))
            (ontable ?x)
            (probabilistic 0.1 (and (table-destroyed)))
        )
    )

    (:action stack
        :parameters (?x - block ?y - block ?robot - robot)
        :precondition (and
            (stack ?x ?y)
            (holding ?x) 
            (clear ?y)
            (handfull ?robot)
            (not (destroyed ?y))
            (not (table-destroyed))
        )
        :effect (and 
            (not (holding ?x))
            (not (clear ?y))
            (clear ?x)
            (handempty ?robot)
            (not (handfull ?robot))
            (on ?x ?y)
            (probabilistic 0.1 (and (destroyed ?y)))
        )
    )

    (:action unstack
        :parameters (?x - block ?y - block ?robot - robot)
        :precondition (and
            (unstack ?x)
            (on ?x ?y)
            (clear ?x)
            (handempty ?robot)
            (not (destroyed ?x))
            (not (table-destroyed))
        )
        :effect (and 
            (holding ?x)
            (clear ?y)
            (not (clear ?x))
            (not (handempty ?robot))
            (handfull ?robot)
            (not (on ?x ?y))
        )
    )
)
