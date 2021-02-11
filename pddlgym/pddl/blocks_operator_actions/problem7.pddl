(define (problem blocks)
    (:domain blocks)
    (:objects 
        d - block
        b - block
        a - block
        c - block
        e - block
        f - block
    )
    (:init
        (clear a)
        (on a b)
        (on b c)
        (ontable c)
        (ontable e)
        (clear e)
        (holding d)
        (ontable f)
        (clear f)
        (handfull)

    )
    (:goal (and (on a b) (on b c) (on c d) (on d e) (on e f)))
)
