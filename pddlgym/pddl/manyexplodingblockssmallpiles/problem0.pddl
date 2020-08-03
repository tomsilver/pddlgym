
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
	(clear b13)
	(clear b15)
	(clear b16)
	(clear b17)
	(clear b19)
	(clear b1)
	(clear b20)
	(clear b21)
	(clear b22)
	(clear b3)
	(clear b5)
	(clear b7)
	(clear b9)
	(handempty )
	(on b11 b12)
	(on b13 b14)
	(on b17 b18)
	(on b1 b2)
	(on b3 b4)
	(on b5 b6)
	(on b7 b8)
	(on b9 b10)
	(ontable b0)
	(ontable b10)
	(ontable b12)
	(ontable b14)
	(ontable b15)
	(ontable b16)
	(ontable b18)
	(ontable b19)
	(ontable b20)
	(ontable b21)
	(ontable b22)
	(ontable b2)
	(ontable b4)
	(ontable b6)
	(ontable b8)
  )
  (:goal (and
	(on b9 b7)
	(on b7 b3)
	(ontable b3)))
)
