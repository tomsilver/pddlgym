
(define (problem manyquantifiedblocks) (:domain blocks)
  (:objects
        b0 - block
	b1 - block
	b2 - block
	b3 - block
	b4 - block
	b5 - block
	b6 - block
  )
  (:init 
	(on b0 b1)
	(on b4 b5)
	(ontable b1)
	(ontable b2)
	(ontable b3)
	(ontable b5)
	(ontable b6)
  )
  (:goal (and
	(on b1 b4)
	(ontable b4)))
)
