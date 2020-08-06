
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
	(clear b3)
	(clear b5)
	(handempty )
	(on b0 b1)
	(on b3 b4)
	(ontable b1)
	(ontable b2)
	(ontable b4)
	(ontable b5)
  )
  (:goal (and
	(on b5 b4)
	(on b4 b1)
	(ontable b1)
	(on b2 b3)
	(ontable b3)))
)
