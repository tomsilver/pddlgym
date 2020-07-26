
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
	b24 - block
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
	(clear b14)
	(clear b15)
	(clear b16)
	(clear b18)
	(clear b21)
	(clear b22)
	(clear b24)
	(clear b2)
	(clear b3)
	(clear b6)
	(clear b7)
	(handempty )
	(on b0 b1)
	(on b11 b12)
	(on b12 b13)
	(on b16 b17)
	(on b18 b19)
	(on b19 b20)
	(on b22 b23)
	(on b3 b4)
	(on b4 b5)
	(on b7 b8)
	(on b8 b9)
	(ontable b10)
	(ontable b13)
	(ontable b14)
	(ontable b15)
	(ontable b17)
	(ontable b1)
	(ontable b20)
	(ontable b21)
	(ontable b23)
	(ontable b24)
	(ontable b2)
	(ontable b5)
	(ontable b6)
	(ontable b9)
  )
  (:goal (and
	(on b23 b12)
	(on b12 b9)
	(on b9 b10)
	(ontable b10)
	(on b24 b13)
	(on b13 b21)
	(ontable b21)))
)
