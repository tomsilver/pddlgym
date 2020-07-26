
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
	(clear b15)
	(clear b18)
	(clear b21)
	(clear b23)
	(clear b25)
	(clear b27)
	(clear b29)
	(clear b3)
	(clear b6)
	(clear b9)
	(handempty )
	(on b0 b1)
	(on b12 b13)
	(on b13 b14)
	(on b15 b16)
	(on b16 b17)
	(on b18 b19)
	(on b19 b20)
	(on b1 b2)
	(on b21 b22)
	(on b23 b24)
	(on b25 b26)
	(on b27 b28)
	(on b3 b4)
	(on b4 b5)
	(on b6 b7)
	(on b7 b8)
	(on b9 b10)
	(ontable b10)
	(ontable b11)
	(ontable b14)
	(ontable b17)
	(ontable b20)
	(ontable b22)
	(ontable b24)
	(ontable b26)
	(ontable b28)
	(ontable b29)
	(ontable b2)
	(ontable b5)
	(ontable b8)
  )
  (:goal (and
	(on b29 b4)
	(on b4 b15)
	(on b15 b24)
	(on b24 b23)
	(on b23 b25)
	(ontable b25)
	(on b18 b28)
	(on b28 b5)
	(on b5 b17)
	(on b17 b19)
	(on b19 b13)
	(ontable b13)))
)
