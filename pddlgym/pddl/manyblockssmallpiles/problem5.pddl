
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
	b25 - block
	b26 - block
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
	(clear b14)
	(clear b16)
	(clear b17)
	(clear b20)
	(clear b23)
	(clear b24)
	(clear b3)
	(clear b5)
	(clear b7)
	(clear b9)
	(handempty )
	(on b0 b1)
	(on b10 b11)
	(on b14 b15)
	(on b17 b18)
	(on b18 b19)
	(on b1 b2)
	(on b20 b21)
	(on b21 b22)
	(on b24 b25)
	(on b25 b26)
	(on b3 b4)
	(on b5 b6)
	(on b7 b8)
	(on b9 b10)
	(ontable b11)
	(ontable b12)
	(ontable b13)
	(ontable b15)
	(ontable b16)
	(ontable b19)
	(ontable b22)
	(ontable b23)
	(ontable b26)
	(ontable b2)
	(ontable b4)
	(ontable b6)
	(ontable b8)
  )
  (:goal (and
	(on b8 b21)
	(on b21 b1)
	(on b1 b26)
	(on b26 b23)
	(ontable b23)
	(on b6 b22)
	(on b22 b3)
	(on b3 b17)
	(on b17 b0)
	(ontable b0)))
)
