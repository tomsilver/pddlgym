
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
	b32 - block
	b33 - block
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
	(clear b14)
	(clear b16)
	(clear b18)
	(clear b1)
	(clear b20)
	(clear b22)
	(clear b24)
	(clear b25)
	(clear b26)
	(clear b28)
	(clear b30)
	(clear b32)
	(clear b3)
	(clear b5)
	(clear b7)
	(clear b8)
	(handempty )
	(on b12 b13)
	(on b14 b15)
	(on b16 b17)
	(on b18 b19)
	(on b1 b2)
	(on b20 b21)
	(on b22 b23)
	(on b26 b27)
	(on b28 b29)
	(on b30 b31)
	(on b32 b33)
	(on b3 b4)
	(on b5 b6)
	(on b8 b9)
	(ontable b0)
	(ontable b10)
	(ontable b11)
	(ontable b13)
	(ontable b15)
	(ontable b17)
	(ontable b19)
	(ontable b21)
	(ontable b23)
	(ontable b24)
	(ontable b25)
	(ontable b27)
	(ontable b29)
	(ontable b2)
	(ontable b31)
	(ontable b33)
	(ontable b4)
	(ontable b6)
	(ontable b7)
	(ontable b9)
  )
  (:goal (and
	(on b31 b33)
	(on b33 b7)
	(ontable b7)
	(on b14 b4)
	(on b4 b17)
	(ontable b17)))
)
