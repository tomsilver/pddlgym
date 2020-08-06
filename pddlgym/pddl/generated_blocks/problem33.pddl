
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
	(clear b3)
	(handempty )
	(on b1 b2)
	(ontable b0)
	(ontable b2)
	(ontable b3)
  )
  (:goal (and
	(on b1 b2)
	(ontable b2)
	(on b0 b3)
	(ontable b3)))
)
