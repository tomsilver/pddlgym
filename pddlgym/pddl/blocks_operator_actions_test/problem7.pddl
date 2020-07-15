(define (problem blocks)
    (:domain blocks)
    (:objects
        e - block
        d - block
        b - block
        a - block
        c - block
    )
    (:init 
        (clear c) 
        (clear d)
        (clear e)
        (ontable a) 
        (ontable d)
        (ontable e)
        (on b a)
        (on c b)
        (handempty)

    )
    (:goal (and (on a b) (on b c) (on c d) (on d e)))
)
