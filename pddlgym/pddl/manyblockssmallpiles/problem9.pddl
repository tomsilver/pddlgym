
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
	(clear b12)
	(clear b15)
	(clear b18)
	(clear b20)
	(clear b21)
	(clear b22)
	(clear b24)
	(clear b25)
	(clear b26)
	(clear b29)
	(clear b2)
	(clear b30)
	(clear b31)
	(clear b33)
	(clear b4)
	(clear b5)
	(clear b6)
	(clear b9)
	(handempty )
	(on b0 b1)
	(on b10 b11)
	(on b12 b13)
	(on b13 b14)
	(on b15 b16)
	(on b16 b17)
	(on b18 b19)
	(on b22 b23)
	(on b26 b27)
	(on b27 b28)
	(on b2 b3)
	(on b31 b32)
	(on b33 b34)
	(on b6 b7)
	(on b7 b8)
	(ontable b11)
	(ontable b14)
	(ontable b17)
	(ontable b19)
	(ontable b1)
	(ontable b20)
	(ontable b21)
	(ontable b23)
	(ontable b24)
	(ontable b25)
	(ontable b28)
	(ontable b29)
	(ontable b30)
	(ontable b32)
	(ontable b34)
	(ontable b3)
	(ontable b4)
	(ontable b5)
	(ontable b8)
	(ontable b9)
  )
  (:goal (and
	(on b12 b23)
	(on b23 b18)
	(on b18 b21)
	(ontable b21)
	(on b14 b7)
	(on b7 b20)
	(on b20 b9)
	(ontable b9)))
)
