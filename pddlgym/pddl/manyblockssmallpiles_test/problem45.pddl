
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
	b61 - block
	b62 - block
	b63 - block
	b64 - block
	b65 - block
	b66 - block
	b7 - block
	b8 - block
	b9 - block
  )
  (:init 
	(clear b0)
	(clear b10)
	(clear b11)
	(clear b12)
	(clear b14)
	(clear b16)
	(clear b18)
	(clear b20)
	(clear b22)
	(clear b23)
	(clear b25)
	(clear b27)
	(clear b28)
	(clear b29)
	(clear b2)
	(clear b31)
	(clear b33)
	(clear b34)
	(clear b36)
	(clear b38)
	(clear b3)
	(clear b40)
	(clear b41)
	(clear b42)
	(clear b44)
	(clear b45)
	(clear b47)
	(clear b49)
	(clear b4)
	(clear b51)
	(clear b52)
	(clear b54)
	(clear b55)
	(clear b56)
	(clear b58)
	(clear b59)
	(clear b60)
	(clear b62)
	(clear b63)
	(clear b65)
	(clear b66)
	(clear b6)
	(clear b8)
	(handempty )
	(on b0 b1)
	(on b12 b13)
	(on b14 b15)
	(on b16 b17)
	(on b18 b19)
	(on b20 b21)
	(on b23 b24)
	(on b25 b26)
	(on b29 b30)
	(on b31 b32)
	(on b34 b35)
	(on b36 b37)
	(on b38 b39)
	(on b42 b43)
	(on b45 b46)
	(on b47 b48)
	(on b49 b50)
	(on b4 b5)
	(on b52 b53)
	(on b56 b57)
	(on b60 b61)
	(on b63 b64)
	(on b6 b7)
	(on b8 b9)
	(ontable b10)
	(ontable b11)
	(ontable b13)
	(ontable b15)
	(ontable b17)
	(ontable b19)
	(ontable b1)
	(ontable b21)
	(ontable b22)
	(ontable b24)
	(ontable b26)
	(ontable b27)
	(ontable b28)
	(ontable b2)
	(ontable b30)
	(ontable b32)
	(ontable b33)
	(ontable b35)
	(ontable b37)
	(ontable b39)
	(ontable b3)
	(ontable b40)
	(ontable b41)
	(ontable b43)
	(ontable b44)
	(ontable b46)
	(ontable b48)
	(ontable b50)
	(ontable b51)
	(ontable b53)
	(ontable b54)
	(ontable b55)
	(ontable b57)
	(ontable b58)
	(ontable b59)
	(ontable b5)
	(ontable b61)
	(ontable b62)
	(ontable b64)
	(ontable b65)
	(ontable b66)
	(ontable b7)
	(ontable b9)
  )
  (:goal (and
	(on b6 b18)
	(on b18 b60)
	(ontable b60)
	(on b57 b7)
	(ontable b7)))
)
