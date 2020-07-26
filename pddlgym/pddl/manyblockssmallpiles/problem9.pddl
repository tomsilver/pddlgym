
(define (problem manyblockssmallpiles) (:domain blocks)
  (:objects
        b0 - block
	b1 - block
	b10 - block
	b11 - block
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
	(clear b1)
	(clear b2)
	(clear b3)
	(clear b5)
	(clear b8)
	(clear b9)
	(handempty )
	(on b10 b11)
	(on b3 b4)
	(on b5 b6)
	(on b6 b7)
	(ontable b0)
	(ontable b11)
	(ontable b1)
	(ontable b2)
	(ontable b4)
	(ontable b7)
	(ontable b8)
	(ontable b9)
  )
  (:goal (and
	(on b3 b7)
	(on b7 b10)
	(on b10 b9)
	(ontable b9)))
)
