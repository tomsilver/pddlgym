
(define (problem blocks_words) (:domain blocks)
  (:objects
    a - block
	b - block
    c - block
    d - block
  )
  (:goal (and
    (ontable c)
    ))
  (:init 
	(clear a)
	(eq a a)
    (eq b b)
    (eq c c)
    (eq d d)
	(handempty )
	(on a b)
    (on b c)
    (on c d)
    (ontable d)
))
        