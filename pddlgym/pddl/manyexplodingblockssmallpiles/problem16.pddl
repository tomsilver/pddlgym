
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
	(clear b12)
	(clear b14)
	(clear b15)
	(clear b16)
	(clear b18)
	(clear b2)
	(clear b3)
	(clear b4)
	(clear b5)
	(clear b6)
	(clear b8)
	(clear b9)
	(handempty )
	(on b0 b1)
	(on b10 b11)
	(on b12 b13)
	(on b16 b17)
	(on b6 b7)
	(ontable b11)
	(ontable b13)
	(ontable b14)
	(ontable b15)
	(ontable b17)
	(ontable b18)
	(ontable b1)
	(ontable b2)
	(ontable b3)
	(ontable b4)
	(ontable b5)
	(ontable b7)
	(ontable b8)
	(ontable b9)
  )
  (:goal (and
	(on b3 b17)
	(ontable b17)
	(on b16 b11)
	(on b11 b0)
	(ontable b0)))
)
