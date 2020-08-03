
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
	(clear b12)
	(clear b13)
	(clear b14)
	(clear b15)
	(clear b16)
	(clear b17)
	(clear b19)
	(clear b1)
	(clear b21)
	(clear b23)
	(clear b2)
	(clear b4)
	(clear b6)
	(clear b8)
	(handempty )
	(on b17 b18)
	(on b19 b20)
	(on b21 b22)
	(on b23 b24)
	(on b2 b3)
	(on b4 b5)
	(on b6 b7)
	(on b8 b9)
	(ontable b0)
	(ontable b10)
	(ontable b11)
	(ontable b12)
	(ontable b13)
	(ontable b14)
	(ontable b15)
	(ontable b16)
	(ontable b18)
	(ontable b1)
	(ontable b20)
	(ontable b22)
	(ontable b24)
	(ontable b3)
	(ontable b5)
	(ontable b7)
	(ontable b9)
  )
  (:goal (and
	(on b17 b19)
	(ontable b19)))
)
