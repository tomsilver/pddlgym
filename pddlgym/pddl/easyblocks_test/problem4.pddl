(define (problem easyblocks)
    (:domain easyblocks)
    (:objects 
        A - block
        B - block
        C - block
        robot - robot
    )
    (:init 
        (clear B) 
        (ontable B) 
        (clear C)
        (ontable A)
        (on C A)
        (handempty robot)

        ; Action literals
        (PickUp A)
        (PutDown A)
        (Unstack A)
        (Stack A B)
        (Stack A C)
        (PickUp B)
        (PutDown B)
        (Unstack B)
        (Stack B A)
        (Stack B C)
        (PickUp C)
        (PutDown C)
        (Unstack C)
        (Stack C B)
        (Stack C A)

    )
    (:goal (and (on B A) (on A C)))
)
