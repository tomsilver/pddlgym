
(define (problem generatedblocks) (:domain blocks)
  (:objects
        b0 - block
	b1 - block
  )
  (:init 
	(clear b0)
	(clear b1)
	(handempty )
	(ontable b0)
	(ontable b1)
  )
  (:goal (and
	(on b1 b0)
	(ontable b0)))
)
