(define (problem easyblocks)
    (:domain easyblocks)
    (:objects 
        A - block
        robot - robot
    )
    (:init 
        (clear A) 
        (ontable A)
        (handempty robot)

        ; Action literals
        (PickUp A)
        (PutDown A)
        (Unstack A)

    )
    (:goal (and (handfull robot)))
)
