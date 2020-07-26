
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
	(clear b12)
	(clear b13)
	(clear b14)
	(clear b1)
	(clear b3)
	(clear b6)
	(clear b9)
	(handempty )
	(on b10 b11)
	(on b14 b15)
	(on b1 b2)
	(on b3 b4)
	(on b4 b5)
	(on b6 b7)
	(on b7 b8)
	(on b9 b10)
	(ontable b0)
	(ontable b11)
	(ontable b12)
	(ontable b13)
	(ontable b15)
	(ontable b2)
	(ontable b5)
	(ontable b8)
  )
  (:goal (and
	(on b9 b11)
	(on b11 b13)
	(ontable b13)
	(on b8 b12)
	(on b12 b3)
	(on b3 b5)
	(on b5 b15)
	(on b15 b10)
	(ontable b10)))
)
