(define (problem easyblocks)
    (:domain easyblocks)
    (:objects 
        a - block
        robot - robot
    )
    (:init 
        (clear a) 
        (ontable a)
        (handempty robot)

        ; action literals
        (pickup a)
        (putdown a)
        (unstack a)

    )
    (:goal (and (handfull robot)))
)
