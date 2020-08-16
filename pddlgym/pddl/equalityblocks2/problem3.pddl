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
    )
    (:goal (forall (?x - block) (ontable ?x)))
)
