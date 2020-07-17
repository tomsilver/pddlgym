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
        (ontable a) 
        (ontable d)
        (on b a)
        (on c b)
        (handempty)

    )
    (:goal (and (holding a)))
)
