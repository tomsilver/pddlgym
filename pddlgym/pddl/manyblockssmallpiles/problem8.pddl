
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
	b19 - block
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
	(clear b14)
	(clear b16)
	(clear b17)
	(clear b18)
	(clear b19)
	(clear b1)
	(clear b2)
	(clear b4)
	(clear b5)
	(clear b7)
	(clear b8)
	(handempty )
	(on b11 b12)
	(on b12 b13)
	(on b14 b15)
	(on b2 b3)
	(on b5 b6)
	(on b8 b9)
	(on b9 b10)
	(ontable b0)
	(ontable b10)
	(ontable b13)
	(ontable b15)
	(ontable b16)
	(ontable b17)
	(ontable b18)
	(ontable b19)
	(ontable b1)
	(ontable b3)
	(ontable b4)
	(ontable b6)
	(ontable b7)
  )
  (:goal (and
	(on b4 b13)
	(on b13 b0)
	(on b0 b2)
	(on b2 b15)
	(on b15 b8)
	(ontable b8)))
)
