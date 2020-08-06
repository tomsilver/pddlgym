
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
	b8 - block
  )
  (:init 
	(clear b0)
	(clear b2)
	(clear b3)
	(clear b5)
	(clear b7)
	(handempty )
	(on b0 b1)
	(on b3 b4)
	(on b5 b6)
	(on b7 b8)
	(ontable b1)
	(ontable b2)
	(ontable b4)
	(ontable b6)
	(ontable b8)
  )
  (:goal (and
	(on b7 b0)
	(ontable b0)
	(on b5 b2)
	(ontable b2)
	(on b3 b8)
	(on b8 b1)
	(ontable b1)
	(on b4 b6)
	(ontable b6)))
)
