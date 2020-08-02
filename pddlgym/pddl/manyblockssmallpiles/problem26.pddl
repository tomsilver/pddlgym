
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
	(clear b10)
	(clear b11)
	(clear b13)
	(clear b14)
	(clear b15)
	(clear b16)
	(clear b18)
	(clear b19)
	(clear b1)
	(clear b20)
	(clear b21)
	(clear b22)
	(clear b24)
	(clear b26)
	(clear b3)
	(clear b5)
	(clear b6)
	(clear b8)
	(handempty )
	(on b11 b12)
	(on b16 b17)
	(on b1 b2)
	(on b22 b23)
	(on b24 b25)
	(on b3 b4)
	(on b6 b7)
	(on b8 b9)
	(ontable b0)
	(ontable b10)
	(ontable b12)
	(ontable b13)
	(ontable b14)
	(ontable b15)
	(ontable b17)
	(ontable b18)
	(ontable b19)
	(ontable b20)
	(ontable b21)
	(ontable b23)
	(ontable b25)
	(ontable b26)
	(ontable b2)
	(ontable b4)
	(ontable b5)
	(ontable b7)
	(ontable b9)
  )
  (:goal (and
	(on b7 b11)
	(on b11 b15)
	(ontable b15)
	(on b3 b18)
	(on b18 b24)
	(ontable b24)))
)
