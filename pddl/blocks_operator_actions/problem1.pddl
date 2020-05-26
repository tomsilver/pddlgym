(define (problem blocks)
    (:domain blocks)
    (:objects 
        d - block
        b - block
        a - block
        c - block
        robot - robot
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
        (handempty robot)

    )
    (:goal (and (on d c) (on c b) (on b a)))
)
