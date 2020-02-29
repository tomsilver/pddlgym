
(define (domain conditionalferry)
  (:requirements :typing )
  (:types obj ferry)
  (:predicates (board ?v0 - obj)
	(not-eq ?v0 - obj ?v1 - obj)
	(car ?v0 - obj)
	(full-ferry ?v0 - ferry)
	(at-ferry ?v0 - obj)
	(empty-ferry ?v0 - ferry)
	(location ?v0 - obj)
	(on ?v0 - obj)
	(sail ?v0 - obj)
	(at ?v0 - obj ?v1 - obj)
  )

  ; (:actions board sail)

  

	(:action board
		:parameters (?car - obj ?loc - obj ?ferry - ferry)
		:precondition (and (at ?car ?loc)
			(at-ferry ?loc)
			(board ?car)
			(car ?car)
			(empty-ferry ?ferry)
			(location ?loc))
		:effect (and
			(on ?car)
			(not (at ?car ?loc))
			(not (empty-ferry ?ferry))
			(full-ferry ?ferry))
	)
	

	(:action sail
		:parameters (?from - obj ?to - obj)
		:precondition (and (at-ferry ?from)
			(location ?from)
			(location ?to)
			(not-eq ?from ?to)
			(sail ?to))
		:effect (and
			(at-ferry ?to)
			(not (at-ferry ?from)))
	)
	

	(:action debark
		:parameters (?car - obj ?loc - obj ?ferry - ferry)
		:precondition (and (at-ferry ?loc)
			(car ?car)
			(board ?car)
			(full-ferry ?ferry)
			(location ?loc)
			(on ?car))
		:effect (and
			(at ?car ?loc)
			(empty-ferry ?ferry)
			(not (full-ferry ?ferry))
			(not (on ?car)))
	)

)
        