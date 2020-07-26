
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
	(clear b11)
	(clear b13)
	(clear b15)
	(clear b16)
	(clear b3)
	(clear b5)
	(clear b8)
	(handempty )
	(on b0 b1)
	(on b11 b12)
	(on b13 b14)
	(on b1 b2)
	(on b3 b4)
	(on b5 b6)
	(on b6 b7)
	(on b8 b9)
	(on b9 b10)
	(ontable b10)
	(ontable b12)
	(ontable b14)
	(ontable b15)
	(ontable b16)
	(ontable b2)
	(ontable b4)
	(ontable b7)
  )
  (:goal (and
	(on b0 b11)
	(on b11 b4)
	(on b4 b5)
	(ontable b5)))
)
