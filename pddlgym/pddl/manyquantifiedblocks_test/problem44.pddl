
(define (problem manyquantifiedblocks) (:domain blocks)
  (:objects
        b0 - block
	b1 - block
	b2 - block
	b3 - block
	b4 - block
	b5 - block
	b6 - block
	b7 - block
  )
  (:init 
	(on b1 b2)
	(on b3 b4)
	(on b6 b7)
	(ontable b0)
	(ontable b2)
	(ontable b4)
	(ontable b5)
	(ontable b7)
  )
  (:goal (and
	(on b5 b1)
	(ontable b1)))
)
