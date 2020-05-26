(define (problem easyblocks)
    (:domain easyblocks)
    (:objects 
        a - block
        b - block
        c - block
        robot - robot
    )
    (:init 
        (clear b) 
        (ontable b) 
        (clear c)
        (ontable a)
        (on c a)
        (handempty robot)

        ; action literals
        (pickup a)
        (putdown a)
        (unstack a)
        (stack a b)
        (stack a c)
        (pickup b)
        (putdown b)
        (unstack b)
        (stack b a)
        (stack b c)
        (pickup c)
        (putdown c)
        (unstack c)
        (stack c b)
        (stack c a)

    )
    (:goal (and (on b a) (on a c)))
)
