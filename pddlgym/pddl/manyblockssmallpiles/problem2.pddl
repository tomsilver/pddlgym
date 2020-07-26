
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
	(clear b14)
	(clear b17)
	(clear b19)
	(clear b1)
	(clear b4)
	(clear b5)
	(clear b6)
	(clear b7)
	(clear b8)
	(clear b9)
	(handempty )
	(on b10 b11)
	(on b11 b12)
	(on b14 b15)
	(on b15 b16)
	(on b17 b18)
	(on b19 b20)
	(on b1 b2)
	(on b2 b3)
	(ontable b0)
	(ontable b12)
	(ontable b13)
	(ontable b16)
	(ontable b18)
	(ontable b20)
	(ontable b3)
	(ontable b4)
	(ontable b5)
	(ontable b6)
	(ontable b7)
	(ontable b8)
	(ontable b9)
  )
  (:goal (and
	(on b19 b14)
	(on b14 b20)
	(ontable b20)
	(on b9 b1)
	(on b1 b12)
	(on b12 b17)
	(ontable b17)))
)
