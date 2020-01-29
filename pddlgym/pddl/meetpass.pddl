
(define (domain meet-pass)
  (:requirements :typing )
  (:types default)
  (:predicates (connected ?v0 - default ?v1 - default)
	(at ?v0 - default ?v1 - default)
	(move ?v0 - default ?v1 - default)
	(clear ?v0 - default)
  )

  ; (:actions move)

  

	(:action move-train
		:parameters (?x - default ?y - default ?z - default)
		:precondition (and (at ?x ?y)
			(clear ?z)
			(connected ?y ?z)
			(move ?x ?z))
		:effect (and
			(not (clear ?z))
			(clear ?y)
			(at ?x ?z)
			(not (at ?x ?y)))
	)

)
        