
(define (problem blocks_words) (:domain blocks)
  (:objects
    a - block
	b - block
    c - block
    d - block
  )
  (:goal (and
	(on a b)
	(on b c)
    (on c d)
    ))
  (:init 
	(clear a)
	(clear b)
	(clear c)
    (clear d)
	(eq a a)
    (eq b b)
    (eq c c)
    (eq d d)
	(handempty )
	(ontable a)
    (ontable b)
    (ontable c)
    (ontable d)
))
        