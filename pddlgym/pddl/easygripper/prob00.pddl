(define (problem strips-gripper-x-1)
   (:domain easygripper)
   (:objects 
        rooma - room 
        roomb - room
        roomc - room
        roomd - room
        ball5 - ball
        ball4 - ball
        ball3 - ball 
        ball2 - ball 
        ball1 - ball 
        left - gripper 
        right - gripper
    )
   (:init (room rooma)
          (room roomb)
          (room roomc)
          (room roomd)
          (ball ball5)
          (ball ball4)
          (ball ball3)
          (ball ball2)
          (ball ball1)
          (at-robby rooma)
          (free left)
          (free right)
          (at ball5 roomc)
          (at ball4 roomc)
          (at ball3 roomb)
          (at ball2 roomb)
          (at ball1 roomb)
          (gripper left)
          (gripper right))
   (:goal (and (at ball4 rooma)
               (at ball3 roomc)
               (at ball2 roomc)
               (at ball1 roomc))))
