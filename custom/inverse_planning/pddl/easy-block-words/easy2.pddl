
(define (problem blocks_words) (:domain blocks)
  (:objects
    a - block
	b - block
    c - block
    d - block
  )
  (:goal (and
	(on b a)
	(on a c)
    (on c d)
    ))
  (:init 
	(clear a)
	(clear c)
    (clear d)
	(eq a a)
    (eq b b)
    (eq c c)
    (eq d d)
	(handempty )
	(on a b)
    (ontable b)
    (ontable c)
    (ontable d)
))
        