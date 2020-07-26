
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
	b35 - block
	b36 - block
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
	(clear b14)
	(clear b15)
	(clear b17)
	(clear b20)
	(clear b22)
	(clear b24)
	(clear b27)
	(clear b30)
	(clear b31)
	(clear b32)
	(clear b34)
	(clear b36)
	(clear b3)
	(clear b4)
	(clear b5)
	(clear b8)
	(handempty )
	(on b0 b1)
	(on b10 b11)
	(on b12 b13)
	(on b15 b16)
	(on b17 b18)
	(on b18 b19)
	(on b1 b2)
	(on b20 b21)
	(on b22 b23)
	(on b24 b25)
	(on b25 b26)
	(on b27 b28)
	(on b28 b29)
	(on b32 b33)
	(on b34 b35)
	(on b5 b6)
	(on b6 b7)
	(on b8 b9)
	(ontable b11)
	(ontable b13)
	(ontable b14)
	(ontable b16)
	(ontable b19)
	(ontable b21)
	(ontable b23)
	(ontable b26)
	(ontable b29)
	(ontable b2)
	(ontable b30)
	(ontable b31)
	(ontable b33)
	(ontable b35)
	(ontable b36)
	(ontable b3)
	(ontable b4)
	(ontable b7)
	(ontable b9)
  )
  (:goal (and
	(on b2 b24)
	(on b24 b13)
	(on b13 b36)
	(ontable b36)
	(on b7 b28)
	(on b28 b0)
	(on b0 b18)
	(on b18 b31)
	(ontable b31)))
)
