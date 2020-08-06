
(define (problem generatedblocks) (:domain blocks)
  (:objects
        b0 - block
	b1 - block
	b2 - block
	b3 - block
	b4 - block
	b5 - block
	b6 - block
  )
  (:init 
	(clear b0)
	(clear b1)
	(clear b2)
	(clear b4)
	(clear b5)
	(handempty )
	(on b2 b3)
	(on b5 b6)
	(ontable b0)
	(ontable b1)
	(ontable b3)
	(ontable b4)
	(ontable b6)
  )
  (:goal (and
	(on b2 b3)
	(on b3 b6)
	(ontable b6)
	(on b1 b4)
	(ontable b4)
	(on b5 b0)
	(ontable b0)))
)
