
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
	(clear b12)
	(clear b14)
	(clear b16)
	(clear b18)
	(clear b19)
	(clear b20)
	(clear b22)
	(clear b24)
	(clear b25)
	(clear b26)
	(clear b2)
	(clear b4)
	(clear b5)
	(clear b7)
	(clear b8)
	(handempty )
	(on b0 b1)
	(on b10 b11)
	(on b12 b13)
	(on b14 b15)
	(on b16 b17)
	(on b20 b21)
	(on b22 b23)
	(on b26 b27)
	(on b2 b3)
	(on b5 b6)
	(on b8 b9)
	(ontable b11)
	(ontable b13)
	(ontable b15)
	(ontable b17)
	(ontable b18)
	(ontable b19)
	(ontable b1)
	(ontable b21)
	(ontable b23)
	(ontable b24)
	(ontable b25)
	(ontable b27)
	(ontable b3)
	(ontable b4)
	(ontable b6)
	(ontable b7)
	(ontable b9)
  )
  (:goal (and
	(on b10 b22)
	(on b22 b21)
	(ontable b21)
	(on b20 b11)
	(on b11 b24)
	(ontable b24)))
)
