
(define (problem manyblockssmallpiles) (:domain blocks)
  (:objects
        b0 - block
	b1 - block
	b10 - block
	b11 - block
	b12 - block
	b13 - block
	b14 - block
	b15 - block
	b16 - block
	b17 - block
	b18 - block
	b19 - block
	b2 - block
	b20 - block
	b21 - block
	b22 - block
	b23 - block
	b3 - block
	b4 - block
	b5 - block
	b6 - block
	b7 - block
	b8 - block
	b9 - block
  )
  (:init 
	(clear b0)
	(clear b11)
	(clear b13)
	(clear b15)
	(clear b17)
	(clear b20)
	(clear b21)
	(clear b23)
	(clear b3)
	(clear b4)
	(clear b7)
	(clear b8)
	(handempty )
	(on b0 b1)
	(on b11 b12)
	(on b13 b14)
	(on b15 b16)
	(on b17 b18)
	(on b18 b19)
	(on b1 b2)
	(on b21 b22)
	(on b4 b5)
	(on b5 b6)
	(on b8 b9)
	(on b9 b10)
	(ontable b10)
	(ontable b12)
	(ontable b14)
	(ontable b16)
	(ontable b19)
	(ontable b20)
	(ontable b22)
	(ontable b23)
	(ontable b2)
	(ontable b3)
	(ontable b6)
	(ontable b7)
  )
  (:goal (and
	(on b16 b5)
	(on b5 b23)
	(ontable b23)
	(on b3 b18)
	(on b18 b0)
	(on b0 b6)
	(on b6 b15)
	(ontable b15)))
)
