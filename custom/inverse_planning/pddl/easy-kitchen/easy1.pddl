
(define (problem kitchen_generic_hyp-0_30_6) (:domain kitchen)
  (:objects
	cup - object
	keetle - object
	spoon - object
    cloth - object
	sugar - object
	tea-bag - object
	water-jug - object
    microwave - useable
  )
  (:goal (and
	(made_tea )))
  (:init 
	(dummy )
	(is-cup cup)
	(is-keetle keetle)
    (is-cloth cloth)
	(is-spoon spoon)
	(is-sugar sugar)
	(is-tea-bag tea-bag)
	(is-water-jug water-jug)
    (is-microwave microwave)
))
        