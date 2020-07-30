
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
	b6 - block
	b7 - block
	b8 - block
	b9 - block
  )
  (:init 
	(clear b0)
	(clear b10)
	(clear b12)
	(clear b13)
	(clear b15)
	(clear b17)
	(clear b19)
	(clear b1)
	(clear b20)
	(clear b21)
	(clear b22)
	(clear b24)
	(clear b25)
	(clear b26)
	(clear b27)
	(clear b29)
	(clear b30)
	(clear b32)
	(clear b34)
	(clear b35)
	(clear b36)
	(clear b37)
	(clear b39)
	(clear b3)
	(clear b40)
	(clear b41)
	(clear b42)
	(clear b43)
	(clear b45)
	(clear b47)
	(clear b49)
	(clear b51)
	(clear b52)
	(clear b5)
	(clear b7)
	(clear b8)
	(handempty )
	(on b10 b11)
	(on b13 b14)
	(on b15 b16)
	(on b17 b18)
	(on b1 b2)
	(on b22 b23)
	(on b27 b28)
	(on b30 b31)
	(on b32 b33)
	(on b37 b38)
	(on b3 b4)
	(on b43 b44)
	(on b45 b46)
	(on b47 b48)
	(on b49 b50)
	(on b52 b53)
	(on b5 b6)
	(on b8 b9)
	(ontable b0)
	(ontable b11)
	(ontable b12)
	(ontable b14)
	(ontable b16)
	(ontable b18)
	(ontable b19)
	(ontable b20)
	(ontable b21)
	(ontable b23)
	(ontable b24)
	(ontable b25)
	(ontable b26)
	(ontable b28)
	(ontable b29)
	(ontable b2)
	(ontable b31)
	(ontable b33)
	(ontable b34)
	(ontable b35)
	(ontable b36)
	(ontable b38)
	(ontable b39)
	(ontable b40)
	(ontable b41)
	(ontable b42)
	(ontable b44)
	(ontable b46)
	(ontable b48)
	(ontable b4)
	(ontable b50)
	(ontable b51)
	(ontable b53)
	(ontable b6)
	(ontable b7)
	(ontable b9)
  )
  (:goal (and
	(on b37 b25)
	(on b25 b0)
	(ontable b0)
	(on b6 b40)
	(on b40 b22)
	(ontable b22)))
)
