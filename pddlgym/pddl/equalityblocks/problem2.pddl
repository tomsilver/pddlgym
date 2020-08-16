(define (problem blocks)
    (:domain blocks)
    (:objects 
        d - block
        b - block
        a - block
        c - block
    )
    (:init 
        (ontable a)
        (ontable b) 
        (ontable c)
        (ontable d)

    )
    (:goal (exists (?w - block) 
             (exists (?x - block) 
               (exists (?y - block) 
                 (exists (?z - block) 
                    (and (on ?w ?x) (on ?x ?y) (on ?y ?z)))))))
)
