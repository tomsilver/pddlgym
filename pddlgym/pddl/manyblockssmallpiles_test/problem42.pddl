
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
	b23 - block
	b24 - block
	b25 - block
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
	(clear b13)
	(clear b14)
	(clear b16)
	(clear b17)
	(clear b19)
	(clear b1)
	(clear b21)
	(clear b24)
	(clear b3)
	(clear b4)
	(clear b7)
	(handempty )
	(on b11 b12)
	(on b14 b15)
	(on b17 b18)
	(on b19 b20)
	(on b1 b2)
	(on b21 b22)
	(on b22 b23)
	(on b24 b25)
	(on b4 b5)
	(on b5 b6)
	(on b7 b8)
	(on b8 b9)
	(ontable b0)
	(ontable b10)
	(ontable b12)
	(ontable b13)
	(ontable b15)
	(ontable b16)
	(ontable b18)
	(ontable b20)
	(ontable b23)
	(ontable b25)
	(ontable b2)
	(ontable b3)
	(ontable b6)
	(ontable b9)
  )
  (:goal (and
	(on b16 b5)
	(on b5 b24)
	(ontable b24)))
)
