
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
	(clear b10)
	(clear b12)
	(clear b14)
	(clear b16)
	(clear b19)
	(clear b1)
	(clear b22)
	(clear b23)
	(clear b4)
	(clear b7)
	(handempty )
	(on b10 b11)
	(on b12 b13)
	(on b14 b15)
	(on b16 b17)
	(on b17 b18)
	(on b19 b20)
	(on b1 b2)
	(on b20 b21)
	(on b2 b3)
	(on b4 b5)
	(on b5 b6)
	(on b7 b8)
	(on b8 b9)
	(ontable b0)
	(ontable b11)
	(ontable b13)
	(ontable b15)
	(ontable b18)
	(ontable b21)
	(ontable b22)
	(ontable b23)
	(ontable b3)
	(ontable b6)
	(ontable b9)
  )
  (:goal (and
	(on b10 b19)
	(on b19 b4)
	(on b4 b16)
	(on b16 b12)
	(on b12 b2)
	(ontable b2)
	(on b0 b1)
	(on b1 b6)
	(on b6 b13)
	(ontable b13)))
)
