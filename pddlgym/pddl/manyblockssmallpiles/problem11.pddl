
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
	b20 - block
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
	(clear b12)
	(clear b15)
	(clear b17)
	(clear b18)
	(clear b1)
	(clear b2)
	(clear b5)
	(clear b7)
	(clear b9)
	(handempty )
	(on b10 b11)
	(on b12 b13)
	(on b13 b14)
	(on b15 b16)
	(on b18 b19)
	(on b19 b20)
	(on b2 b3)
	(on b3 b4)
	(on b5 b6)
	(on b7 b8)
	(on b9 b10)
	(ontable b0)
	(ontable b11)
	(ontable b14)
	(ontable b16)
	(ontable b17)
	(ontable b1)
	(ontable b20)
	(ontable b4)
	(ontable b6)
	(ontable b8)
  )
  (:goal (and
	(on b9 b12)
	(on b12 b10)
	(ontable b10)
	(on b5 b6)
	(on b6 b13)
	(on b13 b15)
	(on b15 b20)
	(ontable b20)))
)
