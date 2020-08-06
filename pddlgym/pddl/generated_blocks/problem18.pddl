
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
	(clear b1)
	(clear b2)
	(clear b4)
	(clear b6)
	(handempty )
	(on b2 b3)
	(on b4 b5)
	(on b6 b7)
	(ontable b0)
	(ontable b1)
	(ontable b3)
	(ontable b5)
	(ontable b7)
  )
  (:goal (and
	(on b4 b7)
	(on b7 b1)
	(ontable b1)
	(on b0 b3)
	(on b3 b6)
	(ontable b6)
	(on b2 b5)
	(ontable b5)))
)
