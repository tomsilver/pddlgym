(define (domain tsp)
  (:predicates
     (at ?x)
     (visited ?x))

  (:action move
	:parameters (?x ?y)
	:precondition (and (at ?x))
	:effect (and (at ?y) (visited ?y) (not (at ?x)))))
