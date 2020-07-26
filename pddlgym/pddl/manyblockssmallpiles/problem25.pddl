
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
	(clear b11)
	(clear b13)
	(clear b14)
	(clear b15)
	(clear b17)
	(clear b3)
	(clear b4)
	(clear b6)
	(clear b9)
	(handempty )
	(on b0 b1)
	(on b11 b12)
	(on b15 b16)
	(on b1 b2)
	(on b4 b5)
	(on b6 b7)
	(on b7 b8)
	(on b9 b10)
	(ontable b10)
	(ontable b12)
	(ontable b13)
	(ontable b14)
	(ontable b16)
	(ontable b17)
	(ontable b2)
	(ontable b3)
	(ontable b5)
	(ontable b8)
  )
  (:goal (and
	(on b12 b14)
	(on b14 b3)
	(on b3 b17)
	(on b17 b10)
	(ontable b10)
	(on b2 b9)
	(on b9 b11)
	(on b11 b15)
	(on b15 b7)
	(ontable b7)))
)
