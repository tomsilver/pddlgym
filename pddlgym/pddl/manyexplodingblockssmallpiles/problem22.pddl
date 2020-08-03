
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
	(clear b17)
	(clear b18)
	(clear b1)
	(clear b20)
	(clear b21)
	(clear b2)
	(clear b4)
	(clear b6)
	(clear b7)
	(clear b8)
	(clear b9)
	(handempty )
	(on b10 b11)
	(on b12 b13)
	(on b18 b19)
	(on b2 b3)
	(on b4 b5)
	(ontable b0)
	(ontable b11)
	(ontable b13)
	(ontable b14)
	(ontable b15)
	(ontable b16)
	(ontable b17)
	(ontable b19)
	(ontable b1)
	(ontable b20)
	(ontable b21)
	(ontable b3)
	(ontable b5)
	(ontable b6)
	(ontable b7)
	(ontable b8)
	(ontable b9)
  )
  (:goal (and
	(on b18 b6)
	(on b6 b3)
	(ontable b3)))
)
