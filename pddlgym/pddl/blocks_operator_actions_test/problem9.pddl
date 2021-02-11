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
        (on b d)
        (on d c)
        (ontable c) 
        (handempty)

    )
    (:goal (and (on d c) (on c b) (on b a)))
)
