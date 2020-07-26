
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
	(clear b2)
	(clear b3)
	(clear b4)
	(clear b5)
	(clear b7)
	(clear b9)
	(handempty )
	(on b0 b1)
	(on b10 b11)
	(on b5 b6)
	(on b7 b8)
	(ontable b11)
	(ontable b1)
	(ontable b2)
	(ontable b3)
	(ontable b4)
	(ontable b6)
	(ontable b8)
	(ontable b9)
  )
  (:goal (and
	(on b10 b9)
	(on b9 b1)
	(on b1 b2)
	(on b2 b5)
	(on b5 b6)
	(ontable b6)))
)
