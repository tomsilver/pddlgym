
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
	b41 - block
	b5 - block
	b6 - block
	b7 - block
	b8 - block
	b9 - block
  )
  (:init 
	(clear b0)
	(clear b11)
	(clear b14)
	(clear b16)
	(clear b18)
	(clear b19)
	(clear b20)
	(clear b21)
	(clear b24)
	(clear b27)
	(clear b2)
	(clear b30)
	(clear b33)
	(clear b34)
	(clear b35)
	(clear b36)
	(clear b39)
	(clear b4)
	(clear b7)
	(clear b8)
	(handempty )
	(on b0 b1)
	(on b11 b12)
	(on b12 b13)
	(on b14 b15)
	(on b16 b17)
	(on b21 b22)
	(on b22 b23)
	(on b24 b25)
	(on b25 b26)
	(on b27 b28)
	(on b28 b29)
	(on b2 b3)
	(on b30 b31)
	(on b31 b32)
	(on b36 b37)
	(on b37 b38)
	(on b39 b40)
	(on b40 b41)
	(on b4 b5)
	(on b5 b6)
	(on b8 b9)
	(on b9 b10)
	(ontable b10)
	(ontable b13)
	(ontable b15)
	(ontable b17)
	(ontable b18)
	(ontable b19)
	(ontable b1)
	(ontable b20)
	(ontable b23)
	(ontable b26)
	(ontable b29)
	(ontable b32)
	(ontable b33)
	(ontable b34)
	(ontable b35)
	(ontable b38)
	(ontable b3)
	(ontable b41)
	(ontable b6)
	(ontable b7)
  )
  (:goal (and
	(on b6 b11)
	(on b11 b12)
	(on b12 b4)
	(ontable b4)))
)
