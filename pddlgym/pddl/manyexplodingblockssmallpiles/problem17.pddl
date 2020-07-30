
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
	b47 - block
	b48 - block
	b49 - block
	b5 - block
	b50 - block
	b51 - block
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
	(clear b16)
	(clear b18)
	(clear b19)
	(clear b1)
	(clear b21)
	(clear b23)
	(clear b24)
	(clear b25)
	(clear b26)
	(clear b28)
	(clear b29)
	(clear b2)
	(clear b31)
	(clear b32)
	(clear b33)
	(clear b35)
	(clear b37)
	(clear b39)
	(clear b40)
	(clear b42)
	(clear b43)
	(clear b44)
	(clear b46)
	(clear b48)
	(clear b4)
	(clear b50)
	(clear b5)
	(clear b7)
	(clear b8)
	(clear b9)
	(handempty )
	(on b12 b13)
	(on b14 b15)
	(on b16 b17)
	(on b19 b20)
	(on b21 b22)
	(on b26 b27)
	(on b29 b30)
	(on b2 b3)
	(on b33 b34)
	(on b35 b36)
	(on b37 b38)
	(on b40 b41)
	(on b44 b45)
	(on b46 b47)
	(on b48 b49)
	(on b50 b51)
	(on b5 b6)
	(on b9 b10)
	(ontable b0)
	(ontable b10)
	(ontable b11)
	(ontable b13)
	(ontable b15)
	(ontable b17)
	(ontable b18)
	(ontable b1)
	(ontable b20)
	(ontable b22)
	(ontable b23)
	(ontable b24)
	(ontable b25)
	(ontable b27)
	(ontable b28)
	(ontable b30)
	(ontable b31)
	(ontable b32)
	(ontable b34)
	(ontable b36)
	(ontable b38)
	(ontable b39)
	(ontable b3)
	(ontable b41)
	(ontable b42)
	(ontable b43)
	(ontable b45)
	(ontable b47)
	(ontable b49)
	(ontable b4)
	(ontable b51)
	(ontable b6)
	(ontable b7)
	(ontable b8)
  )
  (:goal (and
	(on b15 b40)
	(ontable b40)))
)
