
(define (problem manyblockssmallpiles) (:domain blocks)
  (:objects
        b0 - block
	b1 - block
	b10 - block
	b11 - block
	b12 - block
	b13 - block
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
	(clear b1)
	(clear b4)
	(clear b5)
	(clear b6)
	(clear b9)
	(handempty )
	(on b11 b12)
	(on b12 b13)
	(on b1 b2)
	(on b2 b3)
	(on b6 b7)
	(on b7 b8)
	(ontable b0)
	(ontable b10)
	(ontable b13)
	(ontable b3)
	(ontable b4)
	(ontable b5)
	(ontable b8)
	(ontable b9)
  )
  (:goal (and
	(on b8 b9)
	(on b9 b2)
	(ontable b2)))
)
