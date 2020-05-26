(define (problem blocks)
    (:domain conditionalblocks)
    (:objects 
        d - block
        b - block
        a - block
        c - block
        e - block
        robot - robot
    )
    (:init
        (clear a)
        (on a b)
        (on b c)
        (ontable c)
        (ontable e)
        (clear e)
        (holding d)
        (handfull robot)

        ; action literals
        (pickup a)
        (putdown a)
        (stack a b)
        (stack a c)
        (stack a d)
        (stack a e)
        (pickup b)
        (putdown b)
        (stack b a)
        (stack b c)
        (stack b d)
        (stack b e)
        (pickup c)
        (putdown c)
        (stack c b)
        (stack c a)
        (stack c d)
        (stack c e)
        (pickup d)
        (putdown d)
        (stack d b)
        (stack d c)
        (stack d a)
        (stack d e)
        (pickup e)
        (putdown e)
        (stack e b)
        (stack e c)
        (stack e a)
        (stack e d)

    )
    (:goal (and (on b a) (on c d)))
)
