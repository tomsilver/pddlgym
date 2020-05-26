(define (problem blocks)
    (:domain conditionalblocks)
    (:objects 
        d - block
        b - block
        a - block
        c - block
        robot - robot
    )
    (:init 
        (clear c) 
        (clear a) 
        (clear b) 
        (clear d) 
        (ontable c) 
        (ontable a)
        (ontable b) 
        (ontable d) 
        (handempty robot)

        ; action literals
        (pickup a)
        (putdown a)
        (stack a b)
        (stack a c)
        (stack a d)
        (pickup b)
        (putdown b)
        (stack b a)
        (stack b c)
        (stack b d)
        (pickup c)
        (putdown c)
        (stack c b)
        (stack c a)
        (stack c d)
        (pickup d)
        (putdown d)
        (stack d b)
        (stack d c)
        (stack d a)

    )
    (:goal (and (on d c) (on c b) (on b a)))
)
