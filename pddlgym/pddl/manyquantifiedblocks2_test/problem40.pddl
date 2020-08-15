
(define (problem manyquantifiedblocks) (:domain blocks)
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
	(on b0 b1)
	(on b11 b12)
	(on b13 b14)
	(on b15 b16)
	(on b2 b3)
	(on b5 b6)
	(on b7 b8)
	(on b9 b10)
	(ontable b10)
	(ontable b12)
	(ontable b14)
	(ontable b16)
	(ontable b1)
	(ontable b3)
	(ontable b4)
	(ontable b6)
	(ontable b8)
  )
  (:goal (and
	(on b13 b10)
	(ontable b10)))
)
