
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
	(clear b12)
	(clear b13)
	(clear b15)
	(clear b16)
	(clear b19)
	(clear b21)
	(clear b22)
	(clear b24)
	(clear b2)
	(clear b4)
	(clear b5)
	(clear b7)
	(clear b9)
	(handempty )
	(on b0 b1)
	(on b10 b11)
	(on b13 b14)
	(on b16 b17)
	(on b17 b18)
	(on b19 b20)
	(on b22 b23)
	(on b2 b3)
	(on b5 b6)
	(on b7 b8)
	(on b9 b10)
	(ontable b11)
	(ontable b12)
	(ontable b14)
	(ontable b15)
	(ontable b18)
	(ontable b1)
	(ontable b20)
	(ontable b21)
	(ontable b23)
	(ontable b24)
	(ontable b3)
	(ontable b4)
	(ontable b6)
	(ontable b8)
  )
  (:goal (and
	(on b8 b15)
	(on b15 b23)
	(on b23 b0)
	(on b0 b3)
	(ontable b3)))
)
