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
        (on b c)
        (on c d)
        (on d e)
        (on e f)
        (ontable f)
        (holding a)
        (handfull)

    )
    (:goal (and (on b c) (on c d) (on d e) (on e f) (on f a)))
)
