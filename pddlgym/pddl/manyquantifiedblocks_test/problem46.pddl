
(define (problem manyquantifiedblocks) (:domain blocks)
  (:objects
        b0 - block
	b1 - block
	b10 - block
	b11 - block
	b12 - block
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
	(on b10 b11)
	(on b2 b3)
	(on b8 b9)
	(ontable b0)
	(ontable b11)
	(ontable b12)
	(ontable b1)
	(ontable b3)
	(ontable b4)
	(ontable b5)
	(ontable b6)
	(ontable b7)
	(ontable b9)
  )
  (:goal (and
	(on b5 b1)
	(ontable b1)))
)
