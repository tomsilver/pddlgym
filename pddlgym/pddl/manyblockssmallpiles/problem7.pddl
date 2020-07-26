
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
	b39 - block
	b4 - block
	b40 - block
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
	(clear b18)
	(clear b1)
	(clear b21)
	(clear b22)
	(clear b25)
	(clear b26)
	(clear b29)
	(clear b2)
	(clear b31)
	(clear b34)
	(clear b36)
	(clear b37)
	(clear b39)
	(clear b5)
	(clear b7)
	(clear b9)
	(handempty )
	(on b10 b11)
	(on b12 b13)
	(on b13 b14)
	(on b15 b16)
	(on b18 b19)
	(on b19 b20)
	(on b22 b23)
	(on b23 b24)
	(on b26 b27)
	(on b27 b28)
	(on b29 b30)
	(on b2 b3)
	(on b31 b32)
	(on b32 b33)
	(on b34 b35)
	(on b37 b38)
	(on b39 b40)
	(on b3 b4)
	(on b5 b6)
	(on b7 b8)
	(on b9 b10)
	(ontable b0)
	(ontable b11)
	(ontable b14)
	(ontable b16)
	(ontable b17)
	(ontable b1)
	(ontable b20)
	(ontable b21)
	(ontable b24)
	(ontable b25)
	(ontable b28)
	(ontable b30)
	(ontable b33)
	(ontable b35)
	(ontable b36)
	(ontable b38)
	(ontable b40)
	(ontable b4)
	(ontable b6)
	(ontable b8)
  )
  (:goal (and
	(on b38 b0)
	(on b0 b32)
	(on b32 b33)
	(on b33 b18)
	(ontable b18)))
)
