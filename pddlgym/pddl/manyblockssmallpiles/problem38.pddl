
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
	(clear b11)
	(clear b13)
	(clear b15)
	(clear b16)
	(clear b18)
	(clear b1)
	(clear b20)
	(clear b21)
	(clear b22)
	(clear b23)
	(clear b3)
	(clear b4)
	(clear b6)
	(clear b8)
	(clear b9)
	(handempty )
	(on b11 b12)
	(on b13 b14)
	(on b16 b17)
	(on b18 b19)
	(on b1 b2)
	(on b4 b5)
	(on b6 b7)
	(ontable b0)
	(ontable b10)
	(ontable b12)
	(ontable b14)
	(ontable b15)
	(ontable b17)
	(ontable b19)
	(ontable b20)
	(ontable b21)
	(ontable b22)
	(ontable b23)
	(ontable b2)
	(ontable b3)
	(ontable b5)
	(ontable b7)
	(ontable b8)
	(ontable b9)
  )
  (:goal (and
	(on b9 b12)
	(on b12 b2)
	(ontable b2)
	(on b6 b11)
	(ontable b11)))
)
