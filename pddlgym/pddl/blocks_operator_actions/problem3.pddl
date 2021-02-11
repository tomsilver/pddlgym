(define (problem blocks)
    (:domain blocks)
    (:objects 
        d - block
        b - block
        a - block
        c - block
        e - block
    )
    (:init 
        (clear c) 
        (clear a) 
        (clear b) 
        (clear d) 
        (ontable c) 
        (ontable a)
        (ontable b) 
        (ontable e)
        (on d e)
        (handempty)

    )
    (:goal (and (on a b) (on b c) (on e d) (clear e) (clear a)))
)
