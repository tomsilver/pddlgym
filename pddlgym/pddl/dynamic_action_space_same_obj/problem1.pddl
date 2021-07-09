(define (problem blocks)
    (:domain blocks)
    (:objects 
        d - block
        b - block
        a - block
        c - block
    )
    (:init 
        (clear a) 
        (on a b) 
        (on b c)
        (on c d)
        (ontable d) 
        (handempty)

    )
    (:goal (and (on d c) (on c b) (on b a)))
)
