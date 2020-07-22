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
        (ontable b)
        (ontable c)
        (on d c)
        (clear d)
        (handempty)

    )
    (:goal (and (on a b) (on b c) (on c d))
)
