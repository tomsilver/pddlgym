
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
	(clear b12)
	(clear b14)
	(clear b15)
	(clear b16)
	(clear b17)
	(clear b19)
	(clear b1)
	(clear b22)
	(clear b23)
	(clear b25)
	(clear b26)
	(clear b28)
	(clear b4)
	(clear b6)
	(clear b9)
	(handempty )
	(on b12 b13)
	(on b17 b18)
	(on b19 b20)
	(on b1 b2)
	(on b20 b21)
	(on b23 b24)
	(on b26 b27)
	(on b28 b29)
	(on b29 b30)
	(on b2 b3)
	(on b4 b5)
	(on b6 b7)
	(on b7 b8)
	(on b9 b10)
	(ontable b0)
	(ontable b10)
	(ontable b11)
	(ontable b13)
	(ontable b14)
	(ontable b15)
	(ontable b16)
	(ontable b18)
	(ontable b21)
	(ontable b22)
	(ontable b24)
	(ontable b25)
	(ontable b27)
	(ontable b30)
	(ontable b3)
	(ontable b5)
	(ontable b8)
  )
  (:goal (and
	(on b15 b6)
	(on b6 b20)
	(ontable b20)))
)
