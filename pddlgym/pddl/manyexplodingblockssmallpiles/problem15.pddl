
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
	b29 - block
	b3 - block
	b30 - block
	b31 - block
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
	(clear b15)
	(clear b17)
	(clear b18)
	(clear b1)
	(clear b20)
	(clear b21)
	(clear b22)
	(clear b24)
	(clear b26)
	(clear b28)
	(clear b30)
	(clear b3)
	(clear b4)
	(clear b5)
	(clear b6)
	(clear b7)
	(clear b9)
	(handempty )
	(on b11 b12)
	(on b13 b14)
	(on b15 b16)
	(on b18 b19)
	(on b1 b2)
	(on b22 b23)
	(on b24 b25)
	(on b26 b27)
	(on b28 b29)
	(on b30 b31)
	(on b7 b8)
	(on b9 b10)
	(ontable b0)
	(ontable b10)
	(ontable b12)
	(ontable b14)
	(ontable b16)
	(ontable b17)
	(ontable b19)
	(ontable b20)
	(ontable b21)
	(ontable b23)
	(ontable b25)
	(ontable b27)
	(ontable b29)
	(ontable b2)
	(ontable b31)
	(ontable b3)
	(ontable b4)
	(ontable b5)
	(ontable b6)
	(ontable b8)
  )
  (:goal (and
	(on b22 b23)
	(ontable b23)))
)
