
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
	(clear b10)
	(clear b13)
	(clear b16)
	(clear b19)
	(clear b21)
	(clear b24)
	(clear b25)
	(clear b27)
	(clear b28)
	(clear b2)
	(clear b5)
	(clear b6)
	(clear b7)
	(handempty )
	(on b0 b1)
	(on b10 b11)
	(on b11 b12)
	(on b13 b14)
	(on b14 b15)
	(on b16 b17)
	(on b17 b18)
	(on b19 b20)
	(on b21 b22)
	(on b22 b23)
	(on b25 b26)
	(on b2 b3)
	(on b3 b4)
	(on b7 b8)
	(on b8 b9)
	(ontable b12)
	(ontable b15)
	(ontable b18)
	(ontable b1)
	(ontable b20)
	(ontable b23)
	(ontable b24)
	(ontable b26)
	(ontable b27)
	(ontable b28)
	(ontable b4)
	(ontable b5)
	(ontable b6)
	(ontable b9)
  )
  (:goal (and
	(on b26 b23)
	(on b23 b9)
	(on b9 b15)
	(ontable b15)))
)
