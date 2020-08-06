
(define (problem generatedblocks) (:domain blocks)
  (:objects
        b0 - block
	b1 - block
	b2 - block
	b3 - block
	b4 - block
	b5 - block
	b6 - block
	b7 - block
  )
  (:init 
	(clear b0)
	(clear b2)
	(clear b4)
	(clear b5)
	(clear b6)
	(handempty )
	(on b0 b1)
	(on b2 b3)
	(on b6 b7)
	(ontable b1)
	(ontable b3)
	(ontable b4)
	(ontable b5)
	(ontable b7)
  )
  (:goal (and
	(on b3 b0)
	(on b0 b5)
	(ontable b5)
	(on b7 b1)
	(on b1 b2)
	(ontable b2)
	(on b4 b6)
	(ontable b6)))
)
