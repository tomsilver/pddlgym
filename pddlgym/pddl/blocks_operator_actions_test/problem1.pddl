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
        (clear a) 
        (clear b) 
        (clear d) 
        (ontable c) 
        (ontable a)
        (ontable b) 
        (ontable d) 
        (handempty)

    )
    (:goal (and (holding a)))
)
