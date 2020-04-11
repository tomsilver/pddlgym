(define (problem ipc-grid-5-10-5)

(:domain grid)
(:objects
  place_0_0 - place
  place_0_1 - place
  place_0_2 - place
  place_0_3 - place
  place_0_4 - place
  place_0_5 - place
  place_0_6 - place
  place_0_7 - place
  place_0_8 - place
  place_0_9 - place
  place_1_0 - place
  place_1_1 - place
  place_1_2 - place
  place_1_3 - place
  place_1_4 - place
  place_1_5 - place
  place_1_6 - place
  place_1_7 - place
  place_1_8 - place
  place_1_9 - place
  place_2_0 - place
  place_2_1 - place
  place_2_2 - place
  place_2_3 - place
  place_2_4 - place
  place_2_5 - place
  place_2_6 - place
  place_2_7 - place
  place_2_8 - place
  place_2_9 - place
  place_3_0 - place
  place_3_1 - place
  place_3_2 - place
  place_3_3 - place
  place_3_4 - place
  place_3_5 - place
  place_3_6 - place
  place_3_7 - place
  place_3_8 - place
  place_3_9 - place
  place_4_0 - place
  place_4_1 - place
  place_4_2 - place
  place_4_3 - place
  place_4_4 - place
  place_4_5 - place
  place_4_6 - place
  place_4_7 - place
  place_4_8 - place
  place_4_9 - place
  key_0 - key
  key_1 - key
  key_2 - key
  key_3 - key
  key_4 - key
  shape_0 - shape
  shape_1 - shape
  shape_2 - shape
  shape_3 - shape
  shape_4 - shape
)









(:init
(at-robot place_0_0)
(conn place_0_0 place_0_1) (conn place_0_0 place_1_0)
(conn place_0_1 place_0_0) (conn place_0_1 place_0_2)
(conn place_0_2 place_0_1) (conn place_0_2 place_0_3)
(conn place_0_3 place_0_2) (conn place_0_3 place_0_4)
(conn place_0_4 place_0_3) (conn place_0_4 place_0_5)
(conn place_0_5 place_0_4) (conn place_0_5 place_0_6)
(conn place_0_6 place_0_5) (conn place_0_6 place_0_7) (conn place_0_6 place_1_6)
(conn place_0_7 place_0_6) (conn place_0_7 place_0_8)
(conn place_0_8 place_0_7) (conn place_0_8 place_0_9) (conn place_0_8 place_1_8)
(conn place_0_9 place_0_8)
(conn place_1_0 place_1_1) (conn place_1_0 place_0_0) (conn place_1_0 place_2_0)
(conn place_1_1 place_1_0) (conn place_1_1 place_1_2)
(conn place_1_2 place_1_1) (conn place_1_2 place_1_3)
(conn place_1_3 place_1_2) (conn place_1_3 place_1_4)
(conn place_1_4 place_1_3) (conn place_1_4 place_1_5)
(conn place_1_5 place_1_4) (conn place_1_5 place_1_6)
(conn place_1_6 place_1_5) (conn place_1_6 place_1_7) (conn place_1_6 place_0_6)
(conn place_1_7 place_1_6) (conn place_1_7 place_1_8)
(conn place_1_8 place_1_7) (conn place_1_8 place_1_9) (conn place_1_8 place_0_8)
(conn place_1_9 place_1_8)
(conn place_2_0 place_2_1) (conn place_2_0 place_1_0) (conn place_2_0 place_3_0)
(conn place_2_1 place_2_0) (conn place_2_1 place_2_2) (conn place_2_1 place_3_1)
(conn place_2_2 place_2_1) (conn place_2_2 place_2_3)
(conn place_2_3 place_2_2) (conn place_2_3 place_2_4) (conn place_2_3 place_3_3)
(conn place_2_4 place_2_3) (conn place_2_4 place_2_5) (conn place_2_4 place_3_4)
(conn place_2_5 place_2_4) (conn place_2_5 place_2_6) (conn place_2_5 place_3_5)
(conn place_2_6 place_2_5) (conn place_2_6 place_2_7)
(conn place_2_7 place_2_6) (conn place_2_7 place_2_8) (conn place_2_7 place_3_7)
(conn place_2_8 place_2_7) (conn place_2_8 place_2_9)
(conn place_2_9 place_2_8)
(conn place_3_0 place_3_1) (conn place_3_0 place_2_0) (conn place_3_0 place_4_0)
(conn place_3_1 place_3_0) (conn place_3_1 place_3_2) (conn place_3_1 place_2_1)
(conn place_3_2 place_3_1) (conn place_3_2 place_3_3)
(conn place_3_3 place_3_2) (conn place_3_3 place_3_4) (conn place_3_3 place_2_3)
(conn place_3_4 place_3_3) (conn place_3_4 place_3_5) (conn place_3_4 place_2_4)
(conn place_3_5 place_3_4) (conn place_3_5 place_3_6) (conn place_3_5 place_2_5)
(conn place_3_6 place_3_5) (conn place_3_6 place_3_7)
(conn place_3_7 place_3_6) (conn place_3_7 place_3_8) (conn place_3_7 place_2_7)
(conn place_3_8 place_3_7) (conn place_3_8 place_3_9)
(conn place_3_9 place_3_8)
(conn place_4_0 place_4_1) (conn place_4_0 place_3_0)
(conn place_4_1 place_4_0) (conn place_4_1 place_4_2)
(conn place_4_2 place_4_1) (conn place_4_2 place_4_3)
(conn place_4_3 place_4_2) (conn place_4_3 place_4_4)
(conn place_4_4 place_4_3) (conn place_4_4 place_4_5)
(conn place_4_5 place_4_4) (conn place_4_5 place_4_6)
(conn place_4_6 place_4_5) (conn place_4_6 place_4_7)
(conn place_4_7 place_4_6) (conn place_4_7 place_4_8)
(conn place_4_8 place_4_7) (conn place_4_8 place_4_9)
(conn place_4_9 place_4_8)
(open place_0_0)
(open place_0_1)
(locked place_0_2) (lock-shape place_0_2 shape_1)
(open place_0_3)
(open place_0_4)
(open place_0_5)
(open place_0_6)
(open place_0_7)
(open place_0_8)
(open place_0_9)
(open place_1_0)
(open place_1_1)
(open place_1_2)
(locked place_1_3) (lock-shape place_1_3 shape_0)
(locked place_1_4) (lock-shape place_1_4 shape_3)
(locked place_1_5) (lock-shape place_1_5 shape_2)
(open place_1_6)
(open place_1_7)
(open place_1_8)
(open place_1_9)
(open place_2_0)
(open place_2_1)
(open place_2_2)
(open place_2_3)
(open place_2_4)
(open place_2_5)
(locked place_2_6) (lock-shape place_2_6 shape_4)
(open place_2_7)
(open place_2_8)
(open place_2_9)
(open place_3_0)
(open place_3_1)
(open place_3_2)
(open place_3_3)
(open place_3_4)
(open place_3_5)
(open place_3_6)
(open place_3_7)
(open place_3_8)
(open place_3_9)
(open place_4_0)
(open place_4_1)
(open place_4_2)
(open place_4_3)
(open place_4_4)
(open place_4_5)
(open place_4_6)
(open place_4_7)
(open place_4_8)
(open place_4_9)
(at key_0 place_1_0)
(key-shape key_0 shape_0)
(at key_1 place_1_0)
(key-shape key_1 shape_1)
(at key_2 place_0_0)
(key-shape key_2 shape_2)
(at key_3 place_1_0)
(key-shape key_3 shape_3)
(at key_4 place_1_0)
(key-shape key_4 shape_4)
)
(:goal
(and
(at-robot place_0_9)

)
)
)
