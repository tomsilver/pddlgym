
(define (problem generatedblocks) (:domain blocks)
  (:objects
        b0 - block
	b1 - block
	b2 - block
	b3 - block
	b4 - block
  )
  (:init 
	(clear b0)
	(clear b1)
	(clear b2)
	(clear b4)
	(handempty )
	(on b2 b3)
	(ontable b0)
	(ontable b1)
	(ontable b3)
	(ontable b4)
  )
  (:goal (and
	(on b4 b0)
	(ontable b0)
	(on b1 b3)
	(on b3 b2)
	(ontable b2)))
)
