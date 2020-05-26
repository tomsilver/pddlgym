
(define (domain travel)
  (:requirements :typing )
  (:types car plane state)
  (:predicates (isredplane ?v0 - plane)
	(caravailable ?v0 - car)
	(planeavailable ?v0 - plane)
	(fly ?v0 - state ?v1 - plane)
	(visited ?v0 - state)
	(adjacent ?v0 - state ?v1 - state)
	(isblueplane ?v0 - plane)
	(isbluestate ?v0 - state)
	(isredstate ?v0 - state)
	(at ?v0 - state)
	(drive ?v0 - state ?v1 - state ?v2 - car)
	(walk ?v0 - state)
  )

  ; (:actions fly drive walk)
	

	(:action fly-red
		:parameters (?from - state ?to - state ?plane - plane)
		:precondition (and (at ?from)
			(isredstate ?from)
			(isredstate ?to)
			(isredplane ?plane)
			(planeavailable ?plane)
			(fly ?to ?plane))
		:effect (and
			(not (at ?from))
			(at ?to)
			(not (planeavailable ?plane))
			(visited ?to))
	)
	

	(:action drive
		:parameters (?from - state ?to - state ?thru - state ?car - car)
		:precondition (and (at ?from)
			(caravailable ?car)
			(adjacent ?from ?thru)
			(adjacent ?thru ?to)
			(not (at ?to))
			(drive ?to ?thru ?car))
		:effect (and
			(not (at ?from))
			(at ?to)
			(not (caravailable ?car))
			(visited ?to))
	)
	

	(:action fly-blue
		:parameters (?from - state ?to - state ?plane - plane)
		:precondition (and (at ?from)
			(isbluestate ?from)
			(isbluestate ?to)
			(isblueplane ?plane)
			(planeavailable ?plane)
			(fly ?to ?plane))
		:effect (and
			(not (at ?from))
			(at ?to)
			(not (planeavailable ?plane))
			(visited ?to))
	)
	

	(:action walk
		:parameters (?from - state ?to - state)
		:precondition (and (at ?from)
			(adjacent ?from ?to)
			(walk ?to))
		:effect (and
			(not (at ?from))
			(at ?to)
			(visited ?to))
	)

)
        