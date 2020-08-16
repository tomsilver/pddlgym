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
        (ontable a)
        (clear b)
        (ontable b) 
        (clear c)
        (ontable c)
        (clear d)
        (ontable d) 

    )
    (:goal (exists (?w - block) 
             (exists (?x - block) 
               (exists (?y - block) 
                 (exists (?z - block) 
                    (and (on ?w ?x) (on ?x ?y) (on ?y ?z)))))))
)
