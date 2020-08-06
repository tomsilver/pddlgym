
(define (problem generatedblocks) (:domain blocks)
  (:objects
        b0 - block
	b1 - block
	b2 - block
	b3 - block
  )
  (:init 
	(clear b0)
	(clear b2)
	(handempty )
	(on b0 b1)
	(on b2 b3)
	(ontable b1)
	(ontable b3)
  )
  (:goal (and
	(on b2 b0)
	(ontable b0)
	(on b1 b3)
	(ontable b3)))
)
