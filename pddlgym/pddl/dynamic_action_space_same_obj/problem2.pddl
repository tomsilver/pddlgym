(define (problem blocks)
    (:domain blocks)
    (:objects 
        d - block
        b - block
        a - block
        c - block
    )
    (:init 
        (clear d) 
        (on d c) 
        (on c b)
        (on b a)
        (ontable a) 
        (handempty)

    )
    (:goal (and (on a b) (on b c) (on c d)))
)
