;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; 3 op-blocks world
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define (domain blocks)
    (:requirements :strips :typing :equality)
    (:types block)
    (:predicates 
        (on ?x - block ?y - block)
        (ontable ?x - block)
    )

    (:action putontable
        :parameters (?x - block ?w - block)
        :precondition (and
            (on ?x ?w)
            (forall (?y - block) (not (on ?y ?x))) ; clear
        )
        :effect (and
            (not (on ?x ?w))
            (ontable ?x)
        )
    )

    (:action stackfromtable
        :parameters (?x - block ?y - block)
        :precondition (and
            (ontable ?x)
            (forall (?z - block) (not (on ?z ?x))) ; clear
            (forall (?z - block) (not (on ?z ?y))) ; clear
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
            (forall (?z - block) (not (on ?z ?x))) ; clear
            (forall (?z - block) (not (on ?z ?y))) ; clear
            (not (= ?x ?y))
        )
        :effect (and 
            (on ?x ?y)
            (not (on ?x ?w))
        )
    )
)
