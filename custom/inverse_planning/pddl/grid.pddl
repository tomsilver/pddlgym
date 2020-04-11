(define (domain grid)
(:requirements :strips :typing)
(:types place shape key)
(:predicates (conn ?x ?y - place)
             (key-shape ?k - key ?s - shape)
             (lock-shape ?x - place ?s - shape)
             (at ?r - key ?x - place )
	     (at-robot ?x - place)
             (locked ?x - place)
             (carrying ?k - key)
             (open ?x - place)
)


(:action unlock
:parameters (?curpos ?lockpos - place ?key - key ?shape - shape)
:precondition (and (conn ?curpos ?lockpos) (key-shape ?key ?shape)
                   (lock-shape ?lockpos ?shape) (at-robot ?curpos) 
                   (locked ?lockpos) (carrying ?key))
:effect (and  (open ?lockpos) (not (locked ?lockpos)))
)

(:action move
:parameters (?curpos ?nextpos - place)
:precondition (and (at-robot ?curpos) (conn ?curpos ?nextpos) (open ?nextpos))
:effect (and (at-robot ?nextpos) (not (at-robot ?curpos)))
)

(:action pickup
:parameters (?curpos - place ?key - key)
:precondition (and (at-robot ?curpos) (at ?key ?curpos))
:effect (and (carrying ?key)
   (not (at ?key ?curpos)))
)

)

	
