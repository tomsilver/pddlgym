(define (problem blocks)
    (:domain blocks)
    (:objects 
        A - block
        B - block
        C - block
        D - block
        robot - robot
    )
    (:init
        (clear A)
        (on A B)
        (on B C)
        (on C D)
        (ontable D)
        (handempty robot)

        ; Action literals
        (PickUp A)
        (PutDown A)
        (Unstack A)
        (Stack A B)
        (Stack A C)
        (Stack A D)
        (PickUp B)
        (PutDown B)
        (Unstack B)
        (Stack B A)
        (Stack B C)
        (Stack B D)
        (PickUp C)
        (PutDown C)
        (Unstack C)
        (Stack C B)
        (Stack C A)
        (Stack C D)
        (PickUp D)
        (PutDown D)
        (Unstack D)
        (Stack D B)
        (Stack D C)
        (Stack D A)
    )
    (:goal (and (on B A) (on D C)))
)
