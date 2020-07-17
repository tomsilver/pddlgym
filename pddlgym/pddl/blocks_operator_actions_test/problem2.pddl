(define (problem blocks)
    (:domain blocks)
    (:objects 
        d - block
        b - block
        a - block
        c - block
    )
    (:init 
        (clear c) 
        (clear b) 
        (clear d) 
        (ontable c) 
        (ontable a)
        (ontable d)
        (on b a)
        (handempty)

    )
    (:goal (and (holding a)))
)
