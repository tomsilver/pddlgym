
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
	b2 - block
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
	(clear b11)
	(clear b12)
	(clear b13)
	(clear b15)
	(clear b17)
	(clear b1)
	(clear b3)
	(clear b5)
	(clear b6)
	(clear b8)
	(clear b9)
	(handempty )
	(on b13 b14)
	(on b15 b16)
	(on b1 b2)
	(on b3 b4)
	(on b6 b7)
	(ontable b0)
	(ontable b10)
	(ontable b11)
	(ontable b12)
	(ontable b14)
	(ontable b16)
	(ontable b17)
	(ontable b2)
	(ontable b4)
	(ontable b5)
	(ontable b7)
	(ontable b8)
	(ontable b9)
  )
  (:goal (and
	(on b16 b0)
	(ontable b0)))
)
