(define (problem doors-keys-gems-problem-5)
  (:domain doors-keys-gems)
  (:objects up - dir 
            down - dir 
            left - dir 
            right - dir
            x1y1 - loc 
            x2y1 - loc 
            x3y1  - loc
            x4y1  - loc
            x5y1  - loc
            x6y1  - loc
            x7y1  - loc
            x8y1  - loc
            x9y1  - loc
            x1y2  - loc
            x2y2  - loc
            x3y2  - loc
            x4y2  - loc
            x5y2  - loc
            x6y2  - loc
            x7y2  - loc
            x8y2  - loc
            x9y2  - loc
            x1y3  - loc
            x2y3  - loc
            x3y3  - loc
            x4y3  - loc
            x5y3  - loc
            x6y3  - loc
            x7y3  - loc
            x8y3  - loc
            x9y3  - loc
            x1y4  - loc
            x2y4  - loc
            x3y4  - loc
            x4y4  - loc
            x5y4  - loc
            x6y4  - loc
            x7y4  - loc
            x8y4  - loc
            x9y4  - loc
            x1y5  - loc
            x2y5  - loc
            x3y5  - loc
            x4y5  - loc
            x5y5  - loc
            x6y5  - loc
            x7y5  - loc
            x8y5  - loc
            x9y5  - loc
            x1y6  - loc
            x2y6  - loc
            x3y6  - loc
            x4y6  - loc
            x5y6  - loc
            x6y6  - loc
            x7y6  - loc
            x8y6 - loc
            x9y6  - loc
            x1y7  - loc
            x2y7  - loc
            x3y7  - loc
            x4y7  - loc
            x5y7  - loc
            x6y7  - loc
            x7y7  - loc
            x8y7  - loc
            x9y7  - loc
            x1y8  - loc
            x2y8  - loc
            x3y8  - loc
            x4y8  - loc
            x5y8  - loc
            x6y8  - loc
            x7y8  - loc
            x8y8  - loc
            x9y8  - loc
            x1y9  - loc
            x2y9  - loc
            x3y9  - loc
            x4y9  - loc
            x5y9  - loc
            x6y9 - loc 
            x7y9 - loc 
            x8y9 - loc 
            x9y9 - loc
            key1 - key 
            key2 - key 
            key3 - key
            gem1 - gem 
            gem2 - gem 
            gem3 - gem
  )
  (:init (conn right x1y1 x2y1)
         (conn up x1y1 x1y2)
         (at gem1 x1y1)
         (conn left x2y1 x1y1)
         (conn right x2y1 x3y1)
         (conn up x2y1 x2y2)
         (wall x2y1)
         (conn left x3y1 x2y1)
         (conn right x3y1 x4y1)
         (conn up x3y1 x3y2)
         (wall x3y1)
         (conn left x4y1 x3y1)
         (conn right x4y1 x5y1)
         (conn up x4y1 x4y2)
         (wall x4y1)
         (conn left x5y1 x4y1)
         (conn right x5y1 x6y1)
         (conn up x5y1 x5y2)
         (at gem2 x5y1)
         (conn left x6y1 x5y1)
         (conn right x6y1 x7y1)
         (conn up x6y1 x6y2)
         (wall x6y1)
         (conn left x7y1 x6y1)
         (conn right x7y1 x8y1)
         (conn up x7y1 x7y2)
         (wall x7y1)
         (conn left x8y1 x7y1)
         (conn right x8y1 x9y1)
         (conn up x8y1 x8y2)
         (wall x8y1)
         (conn left x9y1 x8y1)
         (conn up x9y1 x9y2)
         (at gem3 x9y1)
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
         (wall x3y2)
         (conn left x4y2 x3y2)
         (conn right x4y2 x5y2)
         (conn down x4y2 x4y1)
         (conn up x4y2 x4y3)
         (wall x4y2)
         (conn left x5y2 x4y2)
         (conn right x5y2 x6y2)
         (conn down x5y2 x5y1)
         (conn up x5y2 x5y3)
         (conn left x6y2 x5y2)
         (conn right x6y2 x7y2)
         (conn down x6y2 x6y1)
         (conn up x6y2 x6y3)
         (wall x6y2)
         (conn left x7y2 x6y2)
         (conn right x7y2 x8y2)
         (conn down x7y2 x7y1)
         (conn up x7y2 x7y3)
         (wall x7y2)
         (conn left x8y2 x7y2)
         (conn right x8y2 x9y2)
         (conn down x8y2 x8y1)
         (conn up x8y2 x8y3)
         (wall x8y2)
         (conn left x9y2 x8y2)
         (conn down x9y2 x9y1)
         (conn up x9y2 x9y3)
         (conn right x1y3 x2y3)
         (conn down x1y3 x1y2)
         (conn up x1y3 x1y4)
         (conn left x2y3 x1y3)
         (conn right x2y3 x3y3)
         (conn down x2y3 x2y2)
         (conn up x2y3 x2y4)
         (wall x2y3)
         (conn left x3y3 x2y3)
         (conn right x3y3 x4y3)
         (conn down x3y3 x3y2)
         (conn up x3y3 x3y4)
         (wall x3y3)
         (conn left x4y3 x3y3)
         (conn right x4y3 x5y3)
         (conn down x4y3 x4y2)
         (conn up x4y3 x4y4)
         (wall x4y3)
         (conn left x5y3 x4y3)
         (conn right x5y3 x6y3)
         (conn down x5y3 x5y2)
         (conn up x5y3 x5y4)
         (pos x5y3)
         (conn left x6y3 x5y3)
         (conn right x6y3 x7y3)
         (conn down x6y3 x6y2)
         (conn up x6y3 x6y4)
         (wall x6y3)
         (conn left x7y3 x6y3)
         (conn right x7y3 x8y3)
         (conn down x7y3 x7y2)
         (conn up x7y3 x7y4)
         (wall x7y3)
         (conn left x8y3 x7y3)
         (conn right x8y3 x9y3)
         (conn down x8y3 x8y2)
         (conn up x8y3 x8y4)
         (wall x8y3)
         (conn left x9y3 x8y3)
         (conn down x9y3 x9y2)
         (conn up x9y3 x9y4)
         (door x9y3)
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
         (wall x3y4)
         (conn left x4y4 x3y4)
         (conn right x4y4 x5y4)
         (conn down x4y4 x4y3)
         (conn up x4y4 x4y5)
         (wall x4y4)
         (conn left x5y4 x4y4)
         (conn right x5y4 x6y4)
         (conn down x5y4 x5y3)
         (conn up x5y4 x5y5)
         (conn left x6y4 x5y4)
         (conn right x6y4 x7y4)
         (conn down x6y4 x6y3)
         (conn up x6y4 x6y5)
         (wall x6y4)
         (conn left x7y4 x6y4)
         (conn right x7y4 x8y4)
         (conn down x7y4 x7y3)
         (conn up x7y4 x7y5)
         (wall x7y4)
         (conn left x8y4 x7y4)
         (conn right x8y4 x9y4)
         (conn down x8y4 x8y3)
         (conn up x8y4 x8y5)
         (wall x8y4)
         (conn left x9y4 x8y4)
         (conn down x9y4 x9y3)
         (conn up x9y4 x9y5)
         (conn right x1y5 x2y5)
         (conn down x1y5 x1y4)
         (conn up x1y5 x1y6)
         (conn left x2y5 x1y5)
         (conn right x2y5 x3y5)
         (conn down x2y5 x2y4)
         (conn up x2y5 x2y6)
         (door x2y5)
         (conn left x3y5 x2y5)
         (conn right x3y5 x4y5)
         (conn down x3y5 x3y4)
         (conn up x3y5 x3y6)
         (conn left x4y5 x3y5)
         (conn right x4y5 x5y5)
         (conn down x4y5 x4y4)
         (conn up x4y5 x4y6)
         (conn left x5y5 x4y5)
         (conn right x5y5 x6y5)
         (conn down x5y5 x5y4)
         (conn up x5y5 x5y6)
         (at key1 x5y5)
         (conn left x6y5 x5y5)
         (conn right x6y5 x7y5)
         (conn down x6y5 x6y4)
         (conn up x6y5 x6y6)
         (conn left x7y5 x6y5)
         (conn right x7y5 x8y5)
         (conn down x7y5 x7y4)
         (conn up x7y5 x7y6)
         (conn left x8y5 x7y5)
         (conn right x8y5 x9y5)
         (conn down x8y5 x8y4)
         (conn up x8y5 x8y6)
         (door x8y5)
         (conn left x9y5 x8y5)
         (conn down x9y5 x9y4)
         (conn up x9y5 x9y6)
         (conn right x1y6 x2y6)
         (conn down x1y6 x1y5)
         (conn up x1y6 x1y7)
         (wall x1y6)
         (conn left x2y6 x1y6)
         (conn right x2y6 x3y6)
         (conn down x2y6 x2y5)
         (conn up x2y6 x2y7)
         (wall x2y6)
         (conn left x3y6 x2y6)
         (conn right x3y6 x4y6)
         (conn down x3y6 x3y5)
         (conn up x3y6 x3y7)
         (wall x3y6)
         (conn left x4y6 x3y6)
         (conn right x4y6 x5y6)
         (conn down x4y6 x4y5)
         (conn up x4y6 x4y7)
         (wall x4y6)
         (conn left x5y6 x4y6)
         (conn right x5y6 x6y6)
         (conn down x5y6 x5y5)
         (conn up x5y6 x5y7)
         (conn left x6y6 x5y6)
         (conn right x6y6 x7y6)
         (conn down x6y6 x6y5)
         (conn up x6y6 x6y7)
         (wall x6y6)
         (conn left x7y6 x6y6)
         (conn right x7y6 x8y6)
         (conn down x7y6 x7y5)
         (conn up x7y6 x7y7)
         (wall x7y6)
         (conn left x8y6 x7y6)
         (conn right x8y6 x9y6)
         (conn down x8y6 x8y5)
         (conn up x8y6 x8y7)
         (wall x8y6)
         (conn left x9y6 x8y6)
         (conn down x9y6 x9y5)
         (conn up x9y6 x9y7)
         (wall x9y6)
         (conn right x1y7 x2y7)
         (conn down x1y7 x1y6)
         (conn up x1y7 x1y8)
         (wall x1y7)
         (conn left x2y7 x1y7)
         (conn right x2y7 x3y7)
         (conn down x2y7 x2y6)
         (conn up x2y7 x2y8)
         (wall x2y7)
         (conn left x3y7 x2y7)
         (conn right x3y7 x4y7)
         (conn down x3y7 x3y6)
         (conn up x3y7 x3y8)
         (wall x3y7)
         (conn left x4y7 x3y7)
         (conn right x4y7 x5y7)
         (conn down x4y7 x4y6)
         (conn up x4y7 x4y8)
         (wall x4y7)
         (conn left x5y7 x4y7)
         (conn right x5y7 x6y7)
         (conn down x5y7 x5y6)
         (conn up x5y7 x5y8)
         (conn left x6y7 x5y7)
         (conn right x6y7 x7y7)
         (conn down x6y7 x6y6)
         (conn up x6y7 x6y8)
         (wall x6y7)
         (conn left x7y7 x6y7)
         (conn right x7y7 x8y7)
         (conn down x7y7 x7y6)
         (conn up x7y7 x7y8)
         (wall x7y7)
         (conn left x8y7 x7y7)
         (conn right x8y7 x9y7)
         (conn down x8y7 x8y6)
         (conn up x8y7 x8y8)
         (wall x8y7)
         (conn left x9y7 x8y7)
         (conn down x9y7 x9y6)
         (conn up x9y7 x9y8)
         (wall x9y7)
         (conn right x1y8 x2y8)
         (conn down x1y8 x1y7)
         (conn up x1y8 x1y9)
         (wall x1y8)
         (conn left x2y8 x1y8)
         (conn right x2y8 x3y8)
         (conn down x2y8 x2y7)
         (conn up x2y8 x2y9)
         (wall x2y8)
         (conn left x3y8 x2y8)
         (conn right x3y8 x4y8)
         (conn down x3y8 x3y7)
         (conn up x3y8 x3y9)
         (wall x3y8)
         (conn left x4y8 x3y8)
         (conn right x4y8 x5y8)
         (conn down x4y8 x4y7)
         (conn up x4y8 x4y9)
         (wall x4y8)
         (conn left x5y8 x4y8)
         (conn right x5y8 x6y8)
         (conn down x5y8 x5y7)
         (conn up x5y8 x5y9)
         (door x5y8)
         (conn left x6y8 x5y8)
         (conn right x6y8 x7y8)
         (conn down x6y8 x6y7)
         (conn up x6y8 x6y9)
         (wall x6y8)
         (conn left x7y8 x6y8)
         (conn right x7y8 x8y8)
         (conn down x7y8 x7y7)
         (conn up x7y8 x7y9)
         (wall x7y8)
         (conn left x8y8 x7y8)
         (conn right x8y8 x9y8)
         (conn down x8y8 x8y7)
         (conn up x8y8 x8y9)
         (wall x8y8)
         (conn left x9y8 x8y8)
         (conn down x9y8 x9y7)
         (conn up x9y8 x9y9)
         (wall x9y8)
         (conn right x1y9 x2y9)
         (conn down x1y9 x1y8)
         (at key2 x1y9)
         (conn left x2y9 x1y9)
         (conn right x2y9 x3y9)
         (conn down x2y9 x2y8)
         (conn left x3y9 x2y9)
         (conn right x3y9 x4y9)
         (conn down x3y9 x3y8)
         (conn left x4y9 x3y9)
         (conn right x4y9 x5y9)
         (conn down x4y9 x4y8)
         (conn left x5y9 x4y9)
         (conn right x5y9 x6y9)
         (conn down x5y9 x5y8)
         (conn left x6y9 x5y9)
         (conn right x6y9 x7y9)
         (conn down x6y9 x6y8)
         (conn left x7y9 x6y9)
         (conn right x7y9 x8y9)
         (conn down x7y9 x7y8)
         (conn left x8y9 x7y9)
         (conn right x8y9 x9y9)
         (conn down x8y9 x8y8)
         (conn left x9y9 x8y9)
         (conn down x9y9 x9y8)
         (at key3 x9y9))
  (:goal (and (has gem3)))
)