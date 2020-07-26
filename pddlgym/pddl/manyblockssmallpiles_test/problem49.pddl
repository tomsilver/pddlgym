
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
	(clear b16)
	(clear b18)
	(clear b19)
	(clear b21)
	(clear b24)
	(clear b25)
	(clear b3)
	(clear b5)
	(clear b8)
	(handempty )
	(on b0 b1)
	(on b12 b13)
	(on b13 b14)
	(on b16 b17)
	(on b19 b20)
	(on b1 b2)
	(on b21 b22)
	(on b22 b23)
	(on b25 b26)
	(on b3 b4)
	(on b5 b6)
	(on b6 b7)
	(on b8 b9)
	(on b9 b10)
	(ontable b10)
	(ontable b11)
	(ontable b14)
	(ontable b15)
	(ontable b17)
	(ontable b18)
	(ontable b20)
	(ontable b23)
	(ontable b24)
	(ontable b26)
	(ontable b2)
	(ontable b4)
	(ontable b7)
  )
  (:goal (and
	(on b21 b10)
	(on b10 b0)
	(on b0 b4)
	(ontable b4)))
)
