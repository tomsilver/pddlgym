
(define (problem manyquantifiedblocks) (:domain blocks)
  (:objects
        b0 - block
	b1 - block
  )
  (:init 
	(ontable b0)
	(ontable b1)
  )
  (:goal (and
	(on b1 b0)
	(ontable b0)))
)
