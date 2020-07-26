
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
	(clear b18)
	(clear b1)
	(clear b20)
	(clear b3)
	(clear b5)
	(clear b8)
	(clear b9)
	(handempty )
	(on b10 b11)
	(on b12 b13)
	(on b13 b14)
	(on b15 b16)
	(on b16 b17)
	(on b18 b19)
	(on b1 b2)
	(on b3 b4)
	(on b5 b6)
	(on b6 b7)
	(on b9 b10)
	(ontable b0)
	(ontable b11)
	(ontable b14)
	(ontable b17)
	(ontable b19)
	(ontable b20)
	(ontable b2)
	(ontable b4)
	(ontable b7)
	(ontable b8)
  )
  (:goal (and
	(on b13 b2)
	(on b2 b10)
	(on b10 b20)
	(on b20 b16)
	(on b16 b6)
	(ontable b6)
	(on b4 b19)
	(on b19 b18)
	(on b18 b11)
	(on b11 b1)
	(ontable b1)))
)
