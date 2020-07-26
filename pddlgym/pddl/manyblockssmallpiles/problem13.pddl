
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
	(clear b11)
	(clear b12)
	(clear b13)
	(clear b2)
	(clear b3)
	(clear b4)
	(clear b6)
	(clear b7)
	(clear b8)
	(handempty )
	(on b0 b1)
	(on b13 b14)
	(on b4 b5)
	(on b8 b9)
	(on b9 b10)
	(ontable b10)
	(ontable b11)
	(ontable b12)
	(ontable b14)
	(ontable b1)
	(ontable b2)
	(ontable b3)
	(ontable b5)
	(ontable b6)
	(ontable b7)
  )
  (:goal (and
	(on b8 b0)
	(on b0 b10)
	(on b10 b5)
	(ontable b5)
	(on b6 b12)
	(on b12 b14)
	(on b14 b9)
	(ontable b9)))
)
