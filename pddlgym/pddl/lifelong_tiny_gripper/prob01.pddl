(define (problem strips-gripper-x-2)
   (:domain lifelong-tiny-gripper)
   (:objects 
        rooma - room 
        roomb - room
        ball4 - ball 
        ball3 - ball 
        ball2 - ball 
        ball1 - ball 
        left - gripper 
    )
   (:init (room rooma)
          (room roomb)
          (ball ball4)
          (ball ball3)
          (ball ball2)
          (ball ball1)
          (at-robby roomb)
          (free left)
          (at ball4 rooma)
          (at ball3 rooma)
          (at ball2 rooma)
          (at ball1 rooma)
          (gripper left))
   (:goal (and (at ball4 rooma)
               (at ball3 rooma)
               (at ball2 rooma)
               (at ball1 roomb))))