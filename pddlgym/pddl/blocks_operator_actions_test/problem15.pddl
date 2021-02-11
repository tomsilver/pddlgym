(define (problem blocks)
    (:domain blocks)
    (:objects 
        d - block
        b - block
        a - block
        c - block
        e - block
        f - block
        g - block
    )
    (:init
        (clear b)
        (on b d)
        (on d c)
        (on c e)
        (ontable e)
        (ontable g)
        (clear g)
        (holding f)
        (ontable a)
        (clear a)
        (handfull)

    )
    (:goal (and (on g b) (on b c) (on c d) (on d e) (on e a) (on a f)))
)
