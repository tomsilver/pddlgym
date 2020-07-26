
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
	(clear b15)
	(clear b16)
	(clear b17)
	(clear b18)
	(clear b20)
	(clear b21)
	(clear b23)
	(clear b3)
	(clear b6)
	(clear b8)
	(handempty )
	(on b0 b1)
	(on b10 b11)
	(on b12 b13)
	(on b13 b14)
	(on b18 b19)
	(on b1 b2)
	(on b21 b22)
	(on b3 b4)
	(on b4 b5)
	(on b6 b7)
	(on b8 b9)
	(ontable b11)
	(ontable b14)
	(ontable b15)
	(ontable b16)
	(ontable b17)
	(ontable b19)
	(ontable b20)
	(ontable b22)
	(ontable b23)
	(ontable b2)
	(ontable b5)
	(ontable b7)
	(ontable b9)
  )
  (:goal (and
	(on b0 b4)
	(on b4 b15)
	(on b15 b13)
	(on b13 b9)
	(ontable b9)
	(on b17 b2)
	(on b2 b8)
	(on b8 b6)
	(on b6 b11)
	(ontable b11)))
)
