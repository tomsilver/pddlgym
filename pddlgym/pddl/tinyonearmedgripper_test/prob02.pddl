(define (problem strips-gripper-x-1)
   (:domain tinyonearmedgripper)
   (:objects 
        rooma - room 
        roomb - room 
        ball3 - ball 
        ball2 - ball 
        ball1 - ball 
        left - gripper 
    )
   (:init (room rooma)
          (room roomb)
          (ball ball3)
          (ball ball2)
          (ball ball1)
          (at-robby rooma)
          (free left)
          (at ball3 roomb)
          (at ball2 roomb)
          (at ball1 rooma)
          (gripper left))
   (:goal (and (at ball3 rooma)
               (at ball2 rooma)
               (at ball1 roomb))))