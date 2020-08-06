
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
	(clear b2)
	(clear b3)
	(handempty )
	(on b0 b1)
	(on b3 b4)
	(ontable b1)
	(ontable b2)
	(ontable b4)
  )
  (:goal (and
	(on b4 b2)
	(ontable b2)
	(on b3 b1)
	(on b1 b0)
	(ontable b0)))
)
