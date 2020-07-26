
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
	b38 - block
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
	(clear b17)
	(clear b20)
	(clear b21)
	(clear b22)
	(clear b24)
	(clear b26)
	(clear b27)
	(clear b29)
	(clear b30)
	(clear b33)
	(clear b34)
	(clear b36)
	(clear b3)
	(clear b4)
	(clear b7)
	(clear b8)
	(clear b9)
	(handempty )
	(on b0 b1)
	(on b10 b11)
	(on b12 b13)
	(on b13 b14)
	(on b15 b16)
	(on b17 b18)
	(on b18 b19)
	(on b1 b2)
	(on b22 b23)
	(on b24 b25)
	(on b27 b28)
	(on b30 b31)
	(on b31 b32)
	(on b34 b35)
	(on b36 b37)
	(on b37 b38)
	(on b4 b5)
	(on b5 b6)
	(on b9 b10)
	(ontable b11)
	(ontable b14)
	(ontable b16)
	(ontable b19)
	(ontable b20)
	(ontable b21)
	(ontable b23)
	(ontable b25)
	(ontable b26)
	(ontable b28)
	(ontable b29)
	(ontable b2)
	(ontable b32)
	(ontable b33)
	(ontable b35)
	(ontable b38)
	(ontable b3)
	(ontable b6)
	(ontable b7)
	(ontable b8)
  )
  (:goal (and
	(on b1 b13)
	(on b13 b24)
	(ontable b24)))
)
