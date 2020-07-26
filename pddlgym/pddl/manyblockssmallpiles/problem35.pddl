
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
	(clear b13)
	(clear b14)
	(clear b15)
	(clear b3)
	(clear b5)
	(clear b8)
	(handempty )
	(on b0 b1)
	(on b10 b11)
	(on b11 b12)
	(on b15 b16)
	(on b1 b2)
	(on b3 b4)
	(on b5 b6)
	(on b6 b7)
	(on b8 b9)
	(ontable b12)
	(ontable b13)
	(ontable b14)
	(ontable b16)
	(ontable b2)
	(ontable b4)
	(ontable b7)
	(ontable b9)
  )
  (:goal (and
	(on b15 b7)
	(on b7 b8)
	(on b8 b13)
	(ontable b13)
	(on b10 b2)
	(on b2 b12)
	(on b12 b0)
	(on b0 b16)
	(ontable b16)))
)
