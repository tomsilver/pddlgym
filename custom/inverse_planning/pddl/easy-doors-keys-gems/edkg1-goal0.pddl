(define (problem doors-keys-gems-problem-2)
  (:domain doors-keys-gems)
  (:objects up - dir
            down - dir
            left - dir
            right - dir
            x1y1 - loc
            x2y1 - loc
            x3y1 - loc
            x4y1 - loc
            x5y1 - loc
            x1y2 - loc
            x2y2 - loc
            x3y2 - loc
            x4y2 - loc
            x5y2 - loc
            x1y3 - loc
            x2y3 - loc
            x3y3 - loc
            x4y3 - loc
            x5y3 - loc
            x1y4 - loc
            x2y4 - loc
            x3y4 - loc
            x4y4 - loc
            x5y4 - loc
            x1y5 - loc
            x2y5 - loc
            x3y5 - loc
            x4y5 - loc
            x5y5 - loc
            key1 - key
            gem1 - gem
            gem2 - gem
  )
  (:init (conn right x1y1 x2y1)
         (conn up x1y1 x1y2)
         (conn left x2y1 x1y1)
         (conn right x2y1 x3y1)
         (conn up x2y1 x2y2)
         (conn left x3y1 x2y1)
         (conn right x3y1 x4y1)
         (conn up x3y1 x3y2)
         (conn left x4y1 x3y1)
         (conn right x4y1 x5y1)
         (conn up x4y1 x4y2)
         (door x4y1)
         (conn left x5y1 x4y1)
         (conn up x5y1 x5y2)
         (conn right x1y2 x2y2)
         (conn down x1y2 x1y1)
         (conn up x1y2 x1y3)
         (conn left x2y2 x1y2)
         (conn right x2y2 x3y2)
         (conn down x2y2 x2y1)
         (conn up x2y2 x2y3)
         (wall x2y2)
         (conn left x3y2 x2y2)
         (conn right x3y2 x4y2)
         (conn down x3y2 x3y1)
         (conn up x3y2 x3y3)
         (conn left x4y2 x3y2)
         (conn right x4y2 x5y2)
         (conn down x4y2 x4y1)
         (conn up x4y2 x4y3)
         (wall x4y2)
         (conn left x5y2 x4y2)
         (conn down x5y2 x5y1)
         (conn up x5y2 x5y3)
         (at gem1 x5y2)
         (conn right x1y3 x2y3)
         (conn down x1y3 x1y2)
         (conn up x1y3 x1y4)
         (pos x1y3)
         (conn left x2y3 x1y3)
         (conn right x2y3 x3y3)
         (conn down x2y3 x2y2)
         (conn up x2y3 x2y4)
         (wall x2y3)
         (conn left x3y3 x2y3)
         (conn right x3y3 x4y3)
         (conn down x3y3 x3y2)
         (conn up x3y3 x3y4)
         (at key1 x3y3)
         (conn left x4y3 x3y3)
         (conn right x4y3 x5y3)
         (conn down x4y3 x4y2)
         (conn up x4y3 x4y4)
         (wall x4y3)
         (conn left x5y3 x4y3)
         (conn down x5y3 x5y2)
         (conn up x5y3 x5y4)
         (conn right x1y4 x2y4)
         (conn down x1y4 x1y3)
         (conn up x1y4 x1y5)
         (conn left x2y4 x1y4)
         (conn right x2y4 x3y4)
         (conn down x2y4 x2y3)
         (conn up x2y4 x2y5)
         (wall x2y4)
         (conn left x3y4 x2y4)
         (conn right x3y4 x4y4)
         (conn down x3y4 x3y3)
         (conn up x3y4 x3y5)
         (conn left x4y4 x3y4)
         (conn right x4y4 x5y4)
         (conn down x4y4 x4y3)
         (conn up x4y4 x4y5)
         (wall x4y4)
         (conn left x5y4 x4y4)
         (conn down x5y4 x5y3)
         (conn up x5y4 x5y5)
         (at gem2 x5y4)
         (conn right x1y5 x2y5)
         (conn down x1y5 x1y4)
         (conn left x2y5 x1y5)
         (conn right x2y5 x3y5)
         (conn down x2y5 x2y4)
         (conn left x3y5 x2y5)
         (conn right x3y5 x4y5)
         (conn down x3y5 x3y4)
         (conn left x4y5 x3y5)
         (conn right x4y5 x5y5)
         (conn down x4y5 x4y4)
         (door x4y5)
         (conn left x5y5 x4y5)
         (conn down x5y5 x5y4))
  (:goal (and (has gem1)))
)