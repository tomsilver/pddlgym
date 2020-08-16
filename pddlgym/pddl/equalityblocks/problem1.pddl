(define (problem blocks)
    (:domain blocks)
    (:objects 
        d - block
        b - block
        a - block
        c - block
    )
    (:init 
        (ontable a)
        (ontable b) 
        (ontable c)
        (ontable d)

    )
    (:goal (and (on a b) (on b c) (on c d)))
)
