
(define (problem manyquantifiedblocks) (:domain blocks)
  (:objects
        b0 - block
	b1 - block
	b2 - block
	b3 - block
  )
  (:init 
	(on b2 b3)
	(ontable b0)
	(ontable b1)
	(ontable b3)
  )
  (:goal (and
	(on b1 b2)
	(ontable b2)))
)
