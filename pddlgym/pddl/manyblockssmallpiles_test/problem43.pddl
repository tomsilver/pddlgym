
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
	b37 - block
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
	(clear b15)
	(clear b18)
	(clear b20)
	(clear b22)
	(clear b23)
	(clear b24)
	(clear b27)
	(clear b28)
	(clear b31)
	(clear b32)
	(clear b33)
	(clear b36)
	(clear b3)
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
	(on b1 b2)
	(on b20 b21)
	(on b24 b25)
	(on b25 b26)
	(on b28 b29)
	(on b29 b30)
	(on b33 b34)
	(on b34 b35)
	(on b36 b37)
	(on b3 b4)
	(on b6 b7)
	(on b7 b8)
	(on b9 b10)
	(ontable b11)
	(ontable b14)
	(ontable b17)
	(ontable b19)
	(ontable b21)
	(ontable b22)
	(ontable b23)
	(ontable b26)
	(ontable b27)
	(ontable b2)
	(ontable b30)
	(ontable b31)
	(ontable b32)
	(ontable b35)
	(ontable b37)
	(ontable b4)
	(ontable b5)
	(ontable b8)
  )
  (:goal (and
	(on b31 b28)
	(on b28 b36)
	(on b36 b10)
	(ontable b10)))
)
