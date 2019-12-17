
(define (domain hanoi)
  (:requirements :typing )
  (:types default)
  (:predicates (movedisc ?v0 - default ?v1 - default)
	(clear ?v0 - default)
	(smaller ?v0 - default ?v1 - default)
	(on ?v0 - default ?v1 - default)
  )

  ; (:actions movedisc)

	(:action move
		:parameters (?disc - default ?from - default ?to - default)
		:precondition (and (smaller ?to ?disc)
			(on ?disc ?from)
			(clear ?disc)
			(clear ?to)
			(movedisc ?disc ?to))
		:effect (and
			(clear ?from)
			(on ?disc ?to)
			(not (on ?disc ?from))
			(not (clear ?to)))
	)

)
        