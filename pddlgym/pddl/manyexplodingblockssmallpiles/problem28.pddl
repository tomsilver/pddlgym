
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
	b6 - block
	b7 - block
	b8 - block
	b9 - block
  )
  (:init 
	(clear b0)
	(clear b10)
	(clear b11)
	(clear b13)
	(clear b15)
	(clear b16)
	(clear b18)
	(clear b20)
	(clear b21)
	(clear b22)
	(clear b24)
	(clear b26)
	(clear b28)
	(clear b29)
	(clear b2)
	(clear b31)
	(clear b33)
	(clear b34)
	(clear b35)
	(clear b36)
	(clear b37)
	(clear b38)
	(clear b3)
	(clear b40)
	(clear b42)
	(clear b44)
	(clear b45)
	(clear b47)
	(clear b48)
	(clear b50)
	(clear b52)
	(clear b53)
	(clear b55)
	(clear b5)
	(clear b7)
	(clear b8)
	(handempty )
	(on b0 b1)
	(on b11 b12)
	(on b13 b14)
	(on b16 b17)
	(on b18 b19)
	(on b22 b23)
	(on b24 b25)
	(on b26 b27)
	(on b29 b30)
	(on b31 b32)
	(on b38 b39)
	(on b3 b4)
	(on b40 b41)
	(on b42 b43)
	(on b45 b46)
	(on b48 b49)
	(on b50 b51)
	(on b53 b54)
	(on b5 b6)
	(on b8 b9)
	(ontable b10)
	(ontable b12)
	(ontable b14)
	(ontable b15)
	(ontable b17)
	(ontable b19)
	(ontable b1)
	(ontable b20)
	(ontable b21)
	(ontable b23)
	(ontable b25)
	(ontable b27)
	(ontable b28)
	(ontable b2)
	(ontable b30)
	(ontable b32)
	(ontable b33)
	(ontable b34)
	(ontable b35)
	(ontable b36)
	(ontable b37)
	(ontable b39)
	(ontable b41)
	(ontable b43)
	(ontable b44)
	(ontable b46)
	(ontable b47)
	(ontable b49)
	(ontable b4)
	(ontable b51)
	(ontable b52)
	(ontable b54)
	(ontable b55)
	(ontable b6)
	(ontable b7)
	(ontable b9)
  )
  (:goal (and
	(on b28 b50)
	(on b50 b17)
	(ontable b17)))
)
