
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
	(clear b4)
	(handempty )
	(on b0 b1)
	(on b2 b3)
	(ontable b1)
	(ontable b3)
	(ontable b4)
  )
  (:goal (and
	(on b1 b4)
	(ontable b4)
	(on b0 b2)
	(on b2 b3)
	(ontable b3)))
)
