
(define (domain depot)
  (:requirements :typing )
  (:types thing)
  (:predicates (hoist ?v0 - thing)
	(in ?v0 - thing ?v1 - thing)
	(lifting ?v0 - thing ?v1 - thing)
	(on ?v0 - thing ?v1 - thing)
	(surface ?v0 - thing)
	(at ?v0 - thing ?v1 - thing)
	(loadact ?v0 - thing ?v1 - thing)
	(truck ?v0 - thing)
	(clear ?v0 - thing)
	(place ?v0 - thing)
	(liftact ?v0 - thing ?v1 - thing)
	(driveact ?v0 - thing ?v1 - thing)
	(distributor ?v0 - thing)
	(unloadact ?v0 - thing ?v1 - thing)
	(pallet ?v0 - thing)
	(available ?v0 - thing)
	(dropact ?v0 - thing ?v1 - thing)
	(crate ?v0 - thing)
	(depot ?v0 - thing)
	(locatable ?v0 - thing)
  )

  ; (:actions driveact loadact dropact liftact unloadact)

  

	(:action drop
		:parameters (?x - thing ?y - thing ?z - thing ?p - thing)
		:precondition (and (hoist ?x)
			(crate ?y)
			(surface ?z)
			(place ?p)
			(at ?x ?p)
			(at ?z ?p)
			(clear ?z)
			(lifting ?x ?y)
			(dropact ?x ?z))
		:effect (and
			(available ?x)
			(at ?y ?p)
			(clear ?y)
			(on ?y ?z)
			(not (lifting ?x ?y))
			(not (clear ?z)))
	)
	

	(:action load
		:parameters (?x - thing ?y - thing ?z - thing ?p - thing)
		:precondition (and (hoist ?x)
			(crate ?y)
			(truck ?z)
			(place ?p)
			(at ?x ?p)
			(at ?z ?p)
			(lifting ?x ?y)
			(loadact ?x ?z))
		:effect (and
			(in ?y ?z)
			(available ?x)
			(not (lifting ?x ?y)))
	)
	

	(:action drive
		:parameters (?x - thing ?y - thing ?z - thing)
		:precondition (and (truck ?x)
			(place ?y)
			(place ?z)
			(at ?x ?y)
			(driveact ?x ?z))
		:effect (and
			(at ?x ?z)
			(not (at ?x ?y)))
	)
	

	(:action unload
		:parameters (?x - thing ?y - thing ?z - thing ?p - thing)
		:precondition (and (hoist ?x)
			(crate ?y)
			(truck ?z)
			(place ?p)
			(at ?x ?p)
			(at ?z ?p)
			(available ?x)
			(in ?y ?z)
			(unloadact ?x ?y))
		:effect (and
			(lifting ?x ?y)
			(not (in ?y ?z))
			(not (available ?x)))
	)
	

	(:action lift
		:parameters (?x - thing ?y - thing ?z - thing ?p - thing)
		:precondition (and (hoist ?x)
			(crate ?y)
			(surface ?z)
			(place ?p)
			(at ?x ?p)
			(available ?x)
			(at ?y ?p)
			(on ?y ?z)
			(clear ?y)
			(liftact ?x ?y))
		:effect (and
			(lifting ?x ?y)
			(clear ?z)
			(not (at ?y ?p))
			(not (clear ?y))
			(not (available ?x))
			(not (on ?y ?z)))
	)

)
        