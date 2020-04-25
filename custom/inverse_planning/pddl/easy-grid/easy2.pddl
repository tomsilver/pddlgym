(define (problem ipc-grid-5-5-5)

(:domain grid)
(:objects
  place_0_0 - place
  place_0_1 - place
  place_0_2 - place
  place_0_3 - place
  place_0_4 - place
  key_0 - key
  shape_0 - shape
  key_1 - key
  shape_1 - shape
)









(:init
(at-robot place_0_0)
(conn place_0_0 place_0_1)
(conn place_0_1 place_0_0) (conn place_0_1 place_0_2)
(conn place_0_2 place_0_1) (conn place_0_2 place_0_3)
(conn place_0_3 place_0_2) (conn place_0_3 place_0_4)
(conn place_0_4 place_0_3)
(open place_0_0)
(locked place_0_1) (lock-shape place_0_1 shape_0)
(locked place_0_4) (lock-shape place_0_4 shape_1)
(open place_0_2)
(open place_0_3)
(at key_0 place_0_0)
(key-shape key_0 shape_0)
(at key_1 place_0_0)
(key-shape key_1 shape_1)


)
(:goal
(and
(at-robot place_0_4)

)
)
)
