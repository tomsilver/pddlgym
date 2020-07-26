
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
	(clear b10)
	(clear b13)
	(clear b16)
	(clear b18)
	(clear b20)
	(clear b3)
	(clear b6)
	(clear b7)
	(clear b9)
	(handempty )
	(on b0 b1)
	(on b10 b11)
	(on b11 b12)
	(on b13 b14)
	(on b14 b15)
	(on b16 b17)
	(on b18 b19)
	(on b1 b2)
	(on b3 b4)
	(on b4 b5)
	(on b7 b8)
	(ontable b12)
	(ontable b15)
	(ontable b17)
	(ontable b19)
	(ontable b20)
	(ontable b2)
	(ontable b5)
	(ontable b6)
	(ontable b8)
	(ontable b9)
  )
  (:goal (and
	(on b8 b1)
	(on b1 b19)
	(on b19 b2)
	(on b2 b7)
	(on b7 b16)
	(ontable b16)
	(on b13 b15)
	(on b15 b4)
	(on b4 b3)
	(on b3 b5)
	(ontable b5)))
)
