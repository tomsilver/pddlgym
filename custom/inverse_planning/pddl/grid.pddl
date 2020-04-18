
(define (domain grid)
  (:requirements :typing )
  (:types place key shape)
  (:predicates (locked ?v0 - place)
	(lock-shape ?v0 - place ?v1 - shape)
	(pickup ?v0 - key)
	(move ?v0 - place)
	(key-shape ?v0 - key ?v1 - shape)
	(unlock ?v0 - place ?v1 - key)
	(at ?v0 - key ?v1 - place)
	(conn ?v0 - place ?v1 - place)
	(carrying ?v0 - key)
	(open ?v0 - place)
	(at-robot ?v0 - place)
  )

  ; (:actions move unlock pickup)

  

	(:action move
		:parameters (?curpos - place ?nextpos - place)
		:precondition (and (at-robot ?curpos)
			(conn ?curpos ?nextpos)
			(move ?nextpos)
			(open ?nextpos))
		:effect (and
			(at-robot ?nextpos)
			(not (at-robot ?curpos)))
	)
	

	(:action unlock
		:parameters (?curpos - place ?lockpos - place ?key - key ?shape - shape)
		:precondition (and (at-robot ?curpos)
			(carrying ?key)
			(conn ?curpos ?lockpos)
			(key-shape ?key ?shape)
			(lock-shape ?lockpos ?shape)
			(locked ?lockpos)
			(unlock ?curpos ?key))
		:effect (and
			(open ?lockpos)
			(not (locked ?lockpos)))
	)
	

	(:action pickup
		:parameters (?curpos - place ?key - key)
		:precondition (and (at ?key ?curpos)
			(at-robot ?curpos)
			(pickup ?key))
		:effect (and
			(carrying ?key)
			(not (at ?key ?curpos)))
	)

)
        