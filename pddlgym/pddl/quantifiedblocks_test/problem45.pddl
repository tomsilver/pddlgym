
(define (problem manyquantifiedblocks) (:domain blocks)
  (:objects
        b0 - block
	b1 - block
	b10 - block
	b11 - block
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
	(on b10 b11)
	(on b7 b8)
	(ontable b11)
	(ontable b1)
	(ontable b2)
	(ontable b3)
	(ontable b4)
	(ontable b5)
	(ontable b6)
	(ontable b8)
	(ontable b9)
  )
  (:goal (and
	(on b10 b2)
	(ontable b2)))
)
