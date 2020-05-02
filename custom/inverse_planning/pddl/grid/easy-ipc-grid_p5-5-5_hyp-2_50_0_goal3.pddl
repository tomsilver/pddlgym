
(define (problem ipc-grid-5-5-5) (:domain grid)
  (:objects
        key_0 - key
	key_1 - key
	key_2 - key
	key_3 - key
	key_4 - key
	place_0_0 - place
	place_0_1 - place
	place_0_2 - place
	place_0_3 - place
	place_0_4 - place
	place_1_0 - place
	place_1_1 - place
	place_1_2 - place
	place_1_3 - place
	place_1_4 - place
	place_2_0 - place
	place_2_1 - place
	place_2_2 - place
	place_2_3 - place
	place_2_4 - place
	place_3_0 - place
	place_3_1 - place
	place_3_2 - place
	place_3_3 - place
	place_3_4 - place
	place_4_0 - place
	place_4_1 - place
	place_4_2 - place
	place_4_3 - place
	place_4_4 - place
	shape_0 - shape
	shape_1 - shape
	shape_2 - shape
	shape_3 - shape
	shape_4 - shape
  )
  (:init 
	(at key_0 place_0_0)
	(at key_1 place_0_0)
	(at key_2 place_0_0)
	(at key_3 place_3_0)
	(at key_4 place_3_0)
	(at-robot place_0_0)
	(conn place_0_0 place_0_1)
	(conn place_0_0 place_1_0)
	(conn place_0_1 place_0_0)
	(conn place_0_1 place_0_2)
	(conn place_0_2 place_0_1)
	(conn place_0_2 place_0_3)
	(conn place_0_2 place_1_2)
	(conn place_0_3 place_0_2)
	(conn place_0_3 place_0_4)
	(conn place_0_4 place_0_3)
	(conn place_1_0 place_0_0)
	(conn place_1_0 place_1_1)
	(conn place_1_0 place_2_0)
	(conn place_1_1 place_1_0)
	(conn place_1_1 place_1_2)
	(conn place_1_2 place_0_2)
	(conn place_1_2 place_1_1)
	(conn place_1_2 place_1_3)
	(conn place_1_3 place_1_2)
	(conn place_1_3 place_1_4)
	(conn place_1_4 place_1_3)
	(conn place_2_0 place_1_0)
	(conn place_2_0 place_2_1)
	(conn place_2_0 place_3_0)
	(conn place_2_1 place_2_0)
	(conn place_2_1 place_2_2)
	(conn place_2_1 place_3_1)
	(conn place_2_2 place_2_1)
	(conn place_2_2 place_2_3)
	(conn place_2_2 place_3_2)
	(conn place_2_3 place_2_2)
	(conn place_2_3 place_2_4)
	(conn place_2_4 place_2_3)
	(conn place_3_0 place_2_0)
	(conn place_3_0 place_3_1)
	(conn place_3_0 place_4_0)
	(conn place_3_1 place_2_1)
	(conn place_3_1 place_3_0)
	(conn place_3_1 place_3_2)
	(conn place_3_2 place_2_2)
	(conn place_3_2 place_3_1)
	(conn place_3_2 place_3_3)
	(conn place_3_3 place_3_2)
	(conn place_3_3 place_3_4)
	(conn place_3_4 place_3_3)
	(conn place_4_0 place_3_0)
	(conn place_4_0 place_4_1)
	(conn place_4_1 place_4_0)
	(conn place_4_1 place_4_2)
	(conn place_4_2 place_4_1)
	(conn place_4_2 place_4_3)
	(conn place_4_3 place_4_2)
	(conn place_4_3 place_4_4)
	(conn place_4_4 place_4_3)
	(key-shape key_0 shape_0)
	(key-shape key_1 shape_1)
	(key-shape key_2 shape_2)
	(key-shape key_3 shape_3)
	(key-shape key_4 shape_4)
	(lock-shape place_0_1 shape_2)
	(lock-shape place_1_1 shape_0)
	(lock-shape place_2_2 shape_4)
	(lock-shape place_3_2 shape_1)
	(lock-shape place_4_1 shape_3)
	(locked place_0_1)
	(locked place_1_1)
	(locked place_2_2)
	(locked place_3_2)
	(locked place_4_1)
	(open place_0_0)
	(open place_0_2)
	(open place_0_3)
	(open place_0_4)
	(open place_1_0)
	(open place_1_2)
	(open place_1_3)
	(open place_1_4)
	(open place_2_0)
	(open place_2_1)
	(open place_2_3)
	(open place_2_4)
	(open place_3_0)
	(open place_3_1)
	(open place_3_3)
	(open place_3_4)
	(open place_4_0)
	(open place_4_2)
	(open place_4_3)
	(open place_4_4)
  )
  (:goal (and
	(at-robot place_3_4)))
)
        