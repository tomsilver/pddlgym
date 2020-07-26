
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
	(clear b13)
	(clear b15)
	(clear b3)
	(clear b4)
	(clear b7)
	(handempty )
	(on b0 b1)
	(on b11 b12)
	(on b13 b14)
	(on b15 b16)
	(on b1 b2)
	(on b4 b5)
	(on b5 b6)
	(on b7 b8)
	(on b8 b9)
	(ontable b10)
	(ontable b12)
	(ontable b14)
	(ontable b16)
	(ontable b2)
	(ontable b3)
	(ontable b6)
	(ontable b9)
  )
  (:goal (and
	(on b8 b16)
	(on b16 b12)
	(on b12 b5)
	(on b5 b9)
	(on b9 b15)
	(ontable b15)))
)
