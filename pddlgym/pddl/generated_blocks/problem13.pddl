
(define (problem generatedblocks) (:domain blocks)
  (:objects
        b0 - block
	b1 - block
	b2 - block
  )
  (:init 
	(clear b0)
	(clear b2)
	(handempty )
	(on b0 b1)
	(ontable b1)
	(ontable b2)
  )
  (:goal (and
	(on b0 b2)
	(ontable b2)
	(ontable b1)))
)
