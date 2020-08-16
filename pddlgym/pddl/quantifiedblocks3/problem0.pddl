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
    (:goal (or (and (on c b) (on b a)) (and (on d c) (on c b))))
)
