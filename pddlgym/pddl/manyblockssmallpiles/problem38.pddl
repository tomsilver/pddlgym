
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
	b34 - block
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
	(clear b15)
	(clear b16)
	(clear b19)
	(clear b21)
	(clear b24)
	(clear b27)
	(clear b28)
	(clear b31)
	(clear b32)
	(clear b34)
	(clear b3)
	(clear b5)
	(clear b6)
	(clear b8)
	(clear b9)
	(handempty )
	(on b0 b1)
	(on b10 b11)
	(on b16 b17)
	(on b17 b18)
	(on b19 b20)
	(on b1 b2)
	(on b21 b22)
	(on b22 b23)
	(on b24 b25)
	(on b25 b26)
	(on b28 b29)
	(on b29 b30)
	(on b32 b33)
	(on b3 b4)
	(on b6 b7)
	(on b9 b10)
	(ontable b11)
	(ontable b12)
	(ontable b13)
	(ontable b14)
	(ontable b15)
	(ontable b18)
	(ontable b20)
	(ontable b23)
	(ontable b26)
	(ontable b27)
	(ontable b2)
	(ontable b30)
	(ontable b31)
	(ontable b33)
	(ontable b34)
	(ontable b4)
	(ontable b5)
	(ontable b7)
	(ontable b8)
  )
  (:goal (and
	(on b22 b18)
	(on b18 b1)
	(on b1 b27)
	(on b27 b5)
	(ontable b5)
	(on b25 b20)
	(on b20 b2)
	(ontable b2)))
)
