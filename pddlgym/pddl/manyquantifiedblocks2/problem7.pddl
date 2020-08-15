
(define (problem manyquantifiedblocks) (:domain blocks)
  (:objects
        b0 - block
	b1 - block
	b2 - block
  )
  (:init 
	(on b0 b1)
	(ontable b1)
	(ontable b2)
  )
  (:goal (and
	(on b1 b2)
	(ontable b2)))
)
