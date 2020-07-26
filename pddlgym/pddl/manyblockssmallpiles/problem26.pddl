
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
	b27 - block
	b28 - block
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
	(clear b13)
	(clear b16)
	(clear b17)
	(clear b18)
	(clear b1)
	(clear b20)
	(clear b22)
	(clear b24)
	(clear b26)
	(clear b27)
	(clear b3)
	(clear b5)
	(clear b8)
	(handempty )
	(on b10 b11)
	(on b11 b12)
	(on b13 b14)
	(on b14 b15)
	(on b18 b19)
	(on b1 b2)
	(on b20 b21)
	(on b22 b23)
	(on b24 b25)
	(on b27 b28)
	(on b3 b4)
	(on b5 b6)
	(on b6 b7)
	(on b8 b9)
	(ontable b0)
	(ontable b12)
	(ontable b15)
	(ontable b16)
	(ontable b17)
	(ontable b19)
	(ontable b21)
	(ontable b23)
	(ontable b25)
	(ontable b26)
	(ontable b28)
	(ontable b2)
	(ontable b4)
	(ontable b7)
	(ontable b9)
  )
  (:goal (and
	(on b6 b12)
	(on b12 b1)
	(ontable b1)))
)
