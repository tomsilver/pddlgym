(define (problem blocks)
    (:domain blocks)
    (:objects 
        d - block
        b - block
        a - block
        c - block
        e - block
    )
    (:init
        (clear a)
        (on a b)
        (on b c)
        (on c d)
        (on d e)
        (ontable e)
        (handempty)

    )
    (:goal (and (on e d) (on d c) (on c b) (on b a)))
)
