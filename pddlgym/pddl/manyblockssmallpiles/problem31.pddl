
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
	b52 - block
	b53 - block
	b54 - block
	b55 - block
	b56 - block
	b57 - block
	b58 - block
	b59 - block
	b6 - block
	b60 - block
	b7 - block
	b8 - block
	b9 - block
  )
  (:init 
	(clear b0)
	(clear b10)
	(clear b11)
	(clear b13)
	(clear b14)
	(clear b16)
	(clear b18)
	(clear b20)
	(clear b22)
	(clear b23)
	(clear b24)
	(clear b26)
	(clear b27)
	(clear b29)
	(clear b2)
	(clear b30)
	(clear b32)
	(clear b33)
	(clear b35)
	(clear b37)
	(clear b39)
	(clear b41)
	(clear b43)
	(clear b44)
	(clear b45)
	(clear b47)
	(clear b49)
	(clear b4)
	(clear b50)
	(clear b52)
	(clear b54)
	(clear b56)
	(clear b58)
	(clear b60)
	(clear b6)
	(clear b7)
	(clear b8)
	(handempty )
	(on b0 b1)
	(on b11 b12)
	(on b14 b15)
	(on b16 b17)
	(on b18 b19)
	(on b20 b21)
	(on b24 b25)
	(on b27 b28)
	(on b2 b3)
	(on b30 b31)
	(on b33 b34)
	(on b35 b36)
	(on b37 b38)
	(on b39 b40)
	(on b41 b42)
	(on b45 b46)
	(on b47 b48)
	(on b4 b5)
	(on b50 b51)
	(on b52 b53)
	(on b54 b55)
	(on b56 b57)
	(on b58 b59)
	(on b8 b9)
	(ontable b10)
	(ontable b12)
	(ontable b13)
	(ontable b15)
	(ontable b17)
	(ontable b19)
	(ontable b1)
	(ontable b21)
	(ontable b22)
	(ontable b23)
	(ontable b25)
	(ontable b26)
	(ontable b28)
	(ontable b29)
	(ontable b31)
	(ontable b32)
	(ontable b34)
	(ontable b36)
	(ontable b38)
	(ontable b3)
	(ontable b40)
	(ontable b42)
	(ontable b43)
	(ontable b44)
	(ontable b46)
	(ontable b48)
	(ontable b49)
	(ontable b51)
	(ontable b53)
	(ontable b55)
	(ontable b57)
	(ontable b59)
	(ontable b5)
	(ontable b60)
	(ontable b6)
	(ontable b7)
	(ontable b9)
  )
  (:goal (and
	(on b58 b53)
	(ontable b53)
	(on b41 b14)
	(on b14 b40)
	(ontable b40)))
)
