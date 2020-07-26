
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
	b5 - block
	b6 - block
	b7 - block
	b8 - block
	b9 - block
  )
  (:init 
	(clear b0)
	(clear b11)
	(clear b12)
	(clear b14)
	(clear b15)
	(clear b16)
	(clear b18)
	(clear b19)
	(clear b1)
	(clear b21)
	(clear b22)
	(clear b23)
	(clear b25)
	(clear b27)
	(clear b29)
	(clear b31)
	(clear b33)
	(clear b35)
	(clear b37)
	(clear b38)
	(clear b3)
	(clear b40)
	(clear b41)
	(clear b42)
	(clear b44)
	(clear b45)
	(clear b5)
	(clear b6)
	(clear b7)
	(clear b8)
	(clear b9)
	(handempty )
	(on b12 b13)
	(on b16 b17)
	(on b19 b20)
	(on b1 b2)
	(on b23 b24)
	(on b25 b26)
	(on b27 b28)
	(on b29 b30)
	(on b31 b32)
	(on b33 b34)
	(on b35 b36)
	(on b38 b39)
	(on b3 b4)
	(on b42 b43)
	(on b9 b10)
	(ontable b0)
	(ontable b10)
	(ontable b11)
	(ontable b13)
	(ontable b14)
	(ontable b15)
	(ontable b17)
	(ontable b18)
	(ontable b20)
	(ontable b21)
	(ontable b22)
	(ontable b24)
	(ontable b26)
	(ontable b28)
	(ontable b2)
	(ontable b30)
	(ontable b32)
	(ontable b34)
	(ontable b36)
	(ontable b37)
	(ontable b39)
	(ontable b40)
	(ontable b41)
	(ontable b43)
	(ontable b44)
	(ontable b45)
	(ontable b4)
	(ontable b5)
	(ontable b6)
	(ontable b7)
	(ontable b8)
  )
  (:goal (and
	(on b9 b13)
	(ontable b13)
	(on b33 b31)
	(on b31 b20)
	(ontable b20)))
)
