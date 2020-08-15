
(define (problem manyquantifiedblocks) (:domain blocks)
  (:objects
        b0 - block
	b1 - block
	b2 - block
	b3 - block
	b4 - block
  )
  (:init 
	(on b1 b2)
	(on b3 b4)
	(ontable b0)
	(ontable b2)
	(ontable b4)
  )
  (:goal (and
	(on b4 b2)
	(on b2 b3)
	(ontable b3)))
)
