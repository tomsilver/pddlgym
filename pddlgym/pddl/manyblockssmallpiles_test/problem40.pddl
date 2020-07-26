
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
	(clear b16)
	(clear b19)
	(clear b22)
	(clear b23)
	(clear b24)
	(clear b26)
	(clear b27)
	(clear b29)
	(clear b2)
	(clear b30)
	(clear b33)
	(clear b35)
	(clear b4)
	(clear b7)
	(clear b9)
	(handempty )
	(on b0 b1)
	(on b10 b11)
	(on b13 b14)
	(on b14 b15)
	(on b16 b17)
	(on b17 b18)
	(on b19 b20)
	(on b20 b21)
	(on b24 b25)
	(on b27 b28)
	(on b2 b3)
	(on b30 b31)
	(on b31 b32)
	(on b33 b34)
	(on b4 b5)
	(on b5 b6)
	(on b7 b8)
	(on b9 b10)
	(ontable b11)
	(ontable b12)
	(ontable b15)
	(ontable b18)
	(ontable b1)
	(ontable b21)
	(ontable b22)
	(ontable b23)
	(ontable b25)
	(ontable b26)
	(ontable b28)
	(ontable b29)
	(ontable b32)
	(ontable b34)
	(ontable b35)
	(ontable b3)
	(ontable b6)
	(ontable b8)
  )
  (:goal (and
	(on b24 b33)
	(on b33 b14)
	(on b14 b15)
	(on b15 b9)
	(on b9 b11)
	(ontable b11)))
)
