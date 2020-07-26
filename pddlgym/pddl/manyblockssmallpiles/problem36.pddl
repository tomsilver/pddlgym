
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
	(clear b15)
	(clear b18)
	(clear b19)
	(clear b3)
	(clear b5)
	(clear b7)
	(clear b9)
	(handempty )
	(on b0 b1)
	(on b11 b12)
	(on b12 b13)
	(on b15 b16)
	(on b16 b17)
	(on b1 b2)
	(on b3 b4)
	(on b5 b6)
	(on b7 b8)
	(on b9 b10)
	(ontable b10)
	(ontable b13)
	(ontable b14)
	(ontable b17)
	(ontable b18)
	(ontable b19)
	(ontable b2)
	(ontable b4)
	(ontable b6)
	(ontable b8)
  )
  (:goal (and
	(on b19 b16)
	(on b16 b6)
	(on b6 b9)
	(on b9 b14)
	(ontable b14)))
)
