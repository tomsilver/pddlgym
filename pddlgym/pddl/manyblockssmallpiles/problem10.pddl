
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
	(clear b10)
	(clear b13)
	(clear b14)
	(clear b16)
	(clear b17)
	(clear b1)
	(clear b20)
	(clear b21)
	(clear b22)
	(clear b25)
	(clear b27)
	(clear b30)
	(clear b33)
	(clear b4)
	(clear b7)
	(handempty )
	(on b10 b11)
	(on b11 b12)
	(on b14 b15)
	(on b17 b18)
	(on b18 b19)
	(on b1 b2)
	(on b22 b23)
	(on b23 b24)
	(on b25 b26)
	(on b27 b28)
	(on b28 b29)
	(on b2 b3)
	(on b30 b31)
	(on b31 b32)
	(on b33 b34)
	(on b4 b5)
	(on b5 b6)
	(on b7 b8)
	(on b8 b9)
	(ontable b0)
	(ontable b12)
	(ontable b13)
	(ontable b15)
	(ontable b16)
	(ontable b19)
	(ontable b20)
	(ontable b21)
	(ontable b24)
	(ontable b26)
	(ontable b29)
	(ontable b32)
	(ontable b34)
	(ontable b3)
	(ontable b6)
	(ontable b9)
  )
  (:goal (and
	(on b8 b20)
	(on b20 b30)
	(on b30 b22)
	(on b22 b14)
	(ontable b14)
	(on b24 b17)
	(on b17 b16)
	(on b16 b21)
	(on b21 b26)
	(on b26 b19)
	(ontable b19)))
)
