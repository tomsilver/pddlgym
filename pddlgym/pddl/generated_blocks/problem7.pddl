
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
	(clear b3)
	(handempty )
	(on b1 b2)
	(on b3 b4)
	(ontable b0)
	(ontable b2)
	(ontable b4)
  )
  (:goal (and
	(on b3 b4)
	(on b4 b2)
	(ontable b2)
	(on b1 b0)
	(ontable b0)))
)
