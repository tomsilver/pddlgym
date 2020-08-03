
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
	b18 - block
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
	(clear b15)
	(clear b16)
	(clear b18)
	(clear b2)
	(clear b4)
	(clear b6)
	(clear b7)
	(clear b8)
	(handempty )
	(on b0 b1)
	(on b13 b14)
	(on b16 b17)
	(on b2 b3)
	(on b4 b5)
	(on b8 b9)
	(ontable b10)
	(ontable b11)
	(ontable b12)
	(ontable b14)
	(ontable b15)
	(ontable b17)
	(ontable b18)
	(ontable b1)
	(ontable b3)
	(ontable b5)
	(ontable b6)
	(ontable b7)
	(ontable b9)
  )
  (:goal (and
	(on b16 b7)
	(ontable b7)
	(on b13 b0)
	(on b0 b3)
	(ontable b3)))
)
