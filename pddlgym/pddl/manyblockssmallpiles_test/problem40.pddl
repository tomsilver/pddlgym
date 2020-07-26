
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
	b21 - block
	b22 - block
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
	(clear b12)
	(clear b14)
	(clear b17)
	(clear b20)
	(clear b3)
	(clear b5)
	(clear b7)
	(clear b9)
	(handempty )
	(on b0 b1)
	(on b12 b13)
	(on b14 b15)
	(on b15 b16)
	(on b17 b18)
	(on b18 b19)
	(on b1 b2)
	(on b20 b21)
	(on b21 b22)
	(on b3 b4)
	(on b5 b6)
	(on b7 b8)
	(on b9 b10)
	(ontable b10)
	(ontable b11)
	(ontable b13)
	(ontable b16)
	(ontable b19)
	(ontable b22)
	(ontable b2)
	(ontable b4)
	(ontable b6)
	(ontable b8)
  )
  (:goal (and
	(on b11 b15)
	(on b15 b14)
	(on b14 b4)
	(on b4 b0)
	(ontable b0)
	(on b18 b6)
	(on b6 b2)
	(on b2 b5)
	(ontable b5)))
)
