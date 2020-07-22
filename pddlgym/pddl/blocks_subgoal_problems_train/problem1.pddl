(define (problem blocks)
    (:domain blocks)
    (:objects 
        d - block
        b - block
        a - block
        c - block
    )
    (:init 
        (clear c)
        (clear d)
        (on c b)
        (on b a)
        (ontable a)
        (ontable d)
        (handempty)

    )
    (:goal (and (on a b) (on b c)))
)
