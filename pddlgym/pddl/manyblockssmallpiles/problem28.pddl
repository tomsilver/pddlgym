
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
	b4 - block
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
	(clear b15)
	(clear b18)
	(clear b21)
	(clear b23)
	(clear b24)
	(clear b25)
	(clear b28)
	(clear b29)
	(clear b2)
	(clear b30)
	(clear b5)
	(clear b6)
	(clear b7)
	(clear b9)
	(handempty )
	(on b0 b1)
	(on b11 b12)
	(on b12 b13)
	(on b15 b16)
	(on b16 b17)
	(on b18 b19)
	(on b19 b20)
	(on b21 b22)
	(on b25 b26)
	(on b26 b27)
	(on b2 b3)
	(on b30 b31)
	(on b31 b32)
	(on b3 b4)
	(on b7 b8)
	(on b9 b10)
	(ontable b10)
	(ontable b13)
	(ontable b14)
	(ontable b17)
	(ontable b1)
	(ontable b20)
	(ontable b22)
	(ontable b23)
	(ontable b24)
	(ontable b27)
	(ontable b28)
	(ontable b29)
	(ontable b32)
	(ontable b4)
	(ontable b5)
	(ontable b6)
	(ontable b8)
  )
  (:goal (and
	(on b24 b21)
	(on b21 b30)
	(on b30 b26)
	(on b26 b19)
	(on b19 b31)
	(ontable b31)
	(on b25 b17)
	(on b17 b7)
	(on b7 b27)
	(ontable b27)))
)
