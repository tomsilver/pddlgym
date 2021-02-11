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
        (clear b)
        (on b d)
        (on d c)
        (on c e)
        (ontable e)
        (holding f)
        (ontable a)
        (clear a)
        (handfull)

    )
    (:goal (and (on b c) (on c d) (on d e) (on e a) (on a f)))
)
