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
        (clear b)
        (clear d)
        (on c a)
        (on d c)
        (ontable a)
        (ontable b) 
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
    (:goal (and (on b a) (on a c) (on c d)))
)
