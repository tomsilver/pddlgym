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
        (on b a)
        (on a c)
        (ontable c)
        (on e f)
        (clear e)
        (holding d)
        (ontable f)
        (clear f)
        (handfull)

    )
    (:goal (and (on a b) (on b d) (on d c) (on c e) (on e f)))
)
