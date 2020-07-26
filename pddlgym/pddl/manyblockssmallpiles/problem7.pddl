
(define (problem manyblockssmallpiles) (:domain blocks)
  (:objects
        b0 - block
	b1 - block
	b10 - block
	b11 - block
	b12 - block
	b13 - block
	b14 - block
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
	(clear b1)
	(clear b3)
	(clear b6)
	(clear b8)
	(clear b9)
	(handempty )
	(on b13 b14)
	(on b1 b2)
	(on b3 b4)
	(on b4 b5)
	(on b6 b7)
	(ontable b0)
	(ontable b10)
	(ontable b11)
	(ontable b12)
	(ontable b14)
	(ontable b2)
	(ontable b5)
	(ontable b7)
	(ontable b8)
	(ontable b9)
  )
  (:goal (and
	(on b4 b3)
	(on b3 b13)
	(on b13 b1)
	(on b1 b0)
	(ontable b0)))
)
