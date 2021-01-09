
(define (problem generatedblocks) (:domain blocks)
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
	(clear b15)
	(clear b3)
	(clear b8)
	(handempty)
	(on b0 b1)
	(on b11 b12)
	(on b12 b13)
	(on b13 b14)
	(on b15 b16)
	(on b16 b17)
	(on b1 b2)
	(on b3 b4)
	(on b4 b5)
	(on b5 b6)
	(on b6 b7)
	(on b8 b9)
	(on b9 b10)
	(ontable b10)
	(ontable b14)
	(ontable b17)
	(ontable b2)
	(ontable b7)
  )
  (:goal (and
	(on b13 b1)
	(on b1 b3)
	(on b3 b0)
	(on b0 b15)
	(ontable b15)
	(on b6 b9)
	(on b9 b10)
	(on b10 b2)
	(ontable b2)
	(on b16 b11)
	(on b11 b5)
	(on b5 b12)
	(on b12 b17)
	(ontable b17)
	(on b14 b7)
	(on b7 b8)
	(on b8 b4)
	(ontable b4)))
)
