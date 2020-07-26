
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
	b67 - block
	b7 - block
	b8 - block
	b9 - block
  )
  (:init 
	(clear b0)
	(clear b11)
	(clear b12)
	(clear b13)
	(clear b15)
	(clear b16)
	(clear b17)
	(clear b19)
	(clear b21)
	(clear b22)
	(clear b23)
	(clear b24)
	(clear b26)
	(clear b28)
	(clear b29)
	(clear b2)
	(clear b30)
	(clear b31)
	(clear b32)
	(clear b34)
	(clear b35)
	(clear b36)
	(clear b38)
	(clear b3)
	(clear b40)
	(clear b42)
	(clear b44)
	(clear b45)
	(clear b46)
	(clear b48)
	(clear b50)
	(clear b51)
	(clear b52)
	(clear b53)
	(clear b55)
	(clear b57)
	(clear b59)
	(clear b5)
	(clear b60)
	(clear b61)
	(clear b62)
	(clear b64)
	(clear b66)
	(clear b67)
	(clear b6)
	(clear b8)
	(clear b9)
	(handempty )
	(on b0 b1)
	(on b13 b14)
	(on b17 b18)
	(on b19 b20)
	(on b24 b25)
	(on b26 b27)
	(on b32 b33)
	(on b36 b37)
	(on b38 b39)
	(on b3 b4)
	(on b40 b41)
	(on b42 b43)
	(on b46 b47)
	(on b48 b49)
	(on b53 b54)
	(on b55 b56)
	(on b57 b58)
	(on b62 b63)
	(on b64 b65)
	(on b6 b7)
	(on b9 b10)
	(ontable b10)
	(ontable b11)
	(ontable b12)
	(ontable b14)
	(ontable b15)
	(ontable b16)
	(ontable b18)
	(ontable b1)
	(ontable b20)
	(ontable b21)
	(ontable b22)
	(ontable b23)
	(ontable b25)
	(ontable b27)
	(ontable b28)
	(ontable b29)
	(ontable b2)
	(ontable b30)
	(ontable b31)
	(ontable b33)
	(ontable b34)
	(ontable b35)
	(ontable b37)
	(ontable b39)
	(ontable b41)
	(ontable b43)
	(ontable b44)
	(ontable b45)
	(ontable b47)
	(ontable b49)
	(ontable b4)
	(ontable b50)
	(ontable b51)
	(ontable b52)
	(ontable b54)
	(ontable b56)
	(ontable b58)
	(ontable b59)
	(ontable b5)
	(ontable b60)
	(ontable b61)
	(ontable b63)
	(ontable b65)
	(ontable b66)
	(ontable b67)
	(ontable b7)
	(ontable b8)
  )
  (:goal (and
	(on b63 b17)
	(on b17 b32)
	(ontable b32)
	(on b44 b66)
	(on b66 b15)
	(ontable b15)))
)
