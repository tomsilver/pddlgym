(define (problem explodingblocks)
    (:domain explodingblocks)
    (:objects 
        b1 - block
        b2 - block
        b3 - block
        b4 - block
        b5 - block
        robot - robot
    )
    (:init 
(handempty robot) (on b1 b3) (on b2 b1) (on b3 b5) (ontable b4) (on b5 b4) (clear b2)

        ; action literals
        (pickup b1)
        (putdown b1)
        (unstack b1)
        (stack b1 b2)
        (stack b1 b3)
        (stack b1 b4)
        (stack b1 b5)
        (pickup b2)
        (putdown b2)
        (unstack b2)
        (stack b2 b1)
        (stack b2 b3)
        (stack b2 b4)
        (stack b2 b5)
        (pickup b3)
        (putdown b3)
        (unstack b3)
        (stack b3 b2)
        (stack b3 b1)
        (stack b3 b4)
        (stack b3 b5)
        (pickup b4)
        (putdown b4)
        (unstack b4)
        (stack b4 b2)
        (stack b4 b3)
        (stack b4 b1)
        (stack b4 b5)
        (pickup b5)
        (putdown b5)
        (unstack b5)
        (stack b5 b2)
        (stack b5 b3)
        (stack b5 b1)
        (stack b5 b4)

    )
  (:goal (and (on b2 b5) (on b4 b2) (ontable b5)  )
)
