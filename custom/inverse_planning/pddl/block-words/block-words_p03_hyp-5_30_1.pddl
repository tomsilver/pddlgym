
(define (problem blocks_words) (:domain blocks)
  (:objects
        a - block
	e - block
	h - block
	m - block
	o - block
	r - block
	t - block
	w - block
  )
  (:goal (and
	(clear h)
	(ontable o)
	(on h e)
	(on e r)
	(on r o)))
  (:init 
	(clear e)
	(clear h)
	(clear m)
	(clear r)
	(clear t)
	(eq a a)
	(eq e e)
	(eq h h)
	(eq m m)
	(eq o o)
	(eq r r)
	(eq t t)
	(eq w w)
	(handempty )
	(on m o)
	(on r a)
	(on t w)
	(ontable a)
	(ontable e)
	(ontable h)
	(ontable o)
	(ontable w)
))
        