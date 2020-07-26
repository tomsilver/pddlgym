
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
	(clear b11)
	(clear b13)
	(clear b16)
	(clear b17)
	(clear b19)
	(clear b20)
	(clear b23)
	(clear b25)
	(clear b26)
	(clear b28)
	(clear b3)
	(clear b4)
	(clear b6)
	(clear b8)
	(clear b9)
	(handempty )
	(on b0 b1)
	(on b11 b12)
	(on b13 b14)
	(on b14 b15)
	(on b17 b18)
	(on b1 b2)
	(on b20 b21)
	(on b21 b22)
	(on b23 b24)
	(on b26 b27)
	(on b4 b5)
	(on b6 b7)
	(on b9 b10)
	(ontable b10)
	(ontable b12)
	(ontable b15)
	(ontable b16)
	(ontable b18)
	(ontable b19)
	(ontable b22)
	(ontable b24)
	(ontable b25)
	(ontable b27)
	(ontable b28)
	(ontable b2)
	(ontable b3)
	(ontable b5)
	(ontable b7)
	(ontable b8)
  )
  (:goal (and
	(on b25 b16)
	(on b16 b2)
	(on b2 b5)
	(on b5 b0)
	(ontable b0)))
)
