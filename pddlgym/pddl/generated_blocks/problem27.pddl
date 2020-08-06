
(define (problem generatedblocks) (:domain blocks)
  (:objects
        b0 - block
	b1 - block
	b2 - block
	b3 - block
  )
  (:init 
	(clear b0)
	(clear b1)
	(clear b2)
	(clear b3)
	(handempty )
	(ontable b0)
	(ontable b1)
	(ontable b2)
	(ontable b3)
  )
  (:goal (and
	(on b3 b2)
	(on b2 b1)
	(ontable b1)
	(ontable b0)))
)
