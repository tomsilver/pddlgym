(define (problem blocks)
    (:domain blocks)
    (:objects 
        D - block
        B - block
        A - block
        C - block
        robot - robot
    )
    (:init 
        (clear C) 
        (clear A) 
        (clear B) 
        (clear D) 
        (ontable C) 
        (ontable A)
        (ontable B) 
        (ontable D) 
        (handempty robot)

    )
    (:goal (and (on D C) (on C B) (on B A)))
)
