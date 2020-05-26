(define (problem easyblocks)
    (:domain easyblocks)
    (:objects 
        a - block
        b - block
        robot - robot
    )
    (:init 
        (clear a) 
        (clear b) 
        (ontable a)
        (ontable b) 
        (handempty robot)

        ; action literals
        (pickup a)
        (putdown a)
        (unstack a)
        (stack a b)
        (pickup b)
        (putdown b)
        (unstack b)
        (stack b a)

    )
    (:goal (and (on b a)))
)
