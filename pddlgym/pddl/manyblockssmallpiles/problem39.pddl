
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
	b42 - block
	b43 - block
	b44 - block
	b45 - block
	b46 - block
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
	(clear b16)
	(clear b18)
	(clear b1)
	(clear b20)
	(clear b22)
	(clear b23)
	(clear b24)
	(clear b26)
	(clear b28)
	(clear b30)
	(clear b31)
	(clear b32)
	(clear b34)
	(clear b36)
	(clear b37)
	(clear b39)
	(clear b3)
	(clear b40)
	(clear b41)
	(clear b43)
	(clear b44)
	(clear b45)
	(clear b46)
	(clear b4)
	(clear b6)
	(clear b8)
	(handempty )
	(on b10 b11)
	(on b12 b13)
	(on b14 b15)
	(on b16 b17)
	(on b18 b19)
	(on b1 b2)
	(on b20 b21)
	(on b24 b25)
	(on b26 b27)
	(on b28 b29)
	(on b32 b33)
	(on b34 b35)
	(on b37 b38)
	(on b41 b42)
	(on b4 b5)
	(on b6 b7)
	(on b8 b9)
	(ontable b0)
	(ontable b11)
	(ontable b13)
	(ontable b15)
	(ontable b17)
	(ontable b19)
	(ontable b21)
	(ontable b22)
	(ontable b23)
	(ontable b25)
	(ontable b27)
	(ontable b29)
	(ontable b2)
	(ontable b30)
	(ontable b31)
	(ontable b33)
	(ontable b35)
	(ontable b36)
	(ontable b38)
	(ontable b39)
	(ontable b3)
	(ontable b40)
	(ontable b42)
	(ontable b43)
	(ontable b44)
	(ontable b45)
	(ontable b46)
	(ontable b5)
	(ontable b7)
	(ontable b9)
  )
  (:goal (and
	(on b22 b24)
	(ontable b24)
	(on b18 b3)
	(on b3 b46)
	(ontable b46)))
)
