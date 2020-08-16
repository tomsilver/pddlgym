
(define (problem manyquantifiedblocks) (:domain blocks)
  (:objects
        b0 - block
	b1 - block
	b2 - block
	b3 - block
  )
  (:init 
	(on b1 b2)
	(ontable b0)
	(ontable b2)
	(ontable b3)
  )
  (:goal (and
	(on b3 b0)
	(on b0 b1)
	(ontable b1)))
)
