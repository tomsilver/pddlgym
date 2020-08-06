
(define (problem generatedblocks) (:domain blocks)
  (:objects
        b0 - block
	b1 - block
	b2 - block
	b3 - block
	b4 - block
	b5 - block
  )
  (:init 
	(clear b0)
	(clear b2)
	(clear b4)
	(handempty )
	(on b0 b1)
	(on b2 b3)
	(on b4 b5)
	(ontable b1)
	(ontable b3)
	(ontable b5)
  )
  (:goal (and
	(on b3 b4)
	(on b4 b0)
	(ontable b0)
	(on b2 b5)
	(ontable b5)
	(ontable b1)))
)
