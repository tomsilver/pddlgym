
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
	(clear b3)
	(clear b5)
	(handempty )
	(on b1 b2)
	(on b3 b4)
	(on b5 b6)
	(ontable b0)
	(ontable b2)
	(ontable b4)
	(ontable b6)
  )
  (:goal (and
	(on b5 b4)
	(ontable b4)
	(on b3 b1)
	(on b1 b6)
	(ontable b6)
	(on b0 b2)
	(ontable b2)))
)
