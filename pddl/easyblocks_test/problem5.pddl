(define (problem easyblocks)
    (:domain easyblocks)
    (:objects 
        A - block
        B - block
        robot - robot
    )
    (:init 
        (clear B) 
        (ontable B) 
        (ontable A)
        (clear A)
        (handempty robot)

        ; Action literals
        (PickUp A)
        (PutDown A)
        (Unstack A)
        (Stack A B)
        (PickUp B)
        (PutDown B)
        (Unstack B)
        (Stack B A)

    )
    (:goal (and (on A B)))
)
