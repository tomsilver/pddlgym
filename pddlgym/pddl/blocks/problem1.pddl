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
    (:goal (and (on D C) (on C B) (on B A)))
)
