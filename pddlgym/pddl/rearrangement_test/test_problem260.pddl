(define (problem rearrangement) 
    (:domain rearrangement)

    (:objects
    
	bear-0 - moveable
	monkey-1 - moveable
	monkey-2 - moveable
	monkey-3 - moveable
	robot - moveable
	loc-0-0 - static
	loc-0-1 - static
	loc-0-2 - static
	loc-1-0 - static
	loc-1-1 - static
	loc-1-2 - static
	loc-2-0 - static
	loc-2-1 - static
	loc-2-2 - static
    )

    (:init
    
	(isbear bear-0)
	(ismonkey monkey-1)
	(ismonkey monkey-2)
	(ismonkey monkey-3)
	(isrobot robot)
	(at bear-0 loc-2-1)
	(at monkey-1 loc-0-2)
	(at monkey-2 loc-2-0)
	(at monkey-3 loc-1-2)
	(at robot loc-0-1)
	(handsfree robot)

    ; action literals
    
	(pick bear-0)
	(place bear-0)
	(pick monkey-1)
	(place monkey-1)
	(pick monkey-2)
	(place monkey-2)
	(pick monkey-3)
	(place monkey-3)
	(moveto loc-0-0)
	(moveto loc-0-1)
	(moveto loc-0-2)
	(moveto loc-1-0)
	(moveto loc-1-1)
	(moveto loc-1-2)
	(moveto loc-2-0)
	(moveto loc-2-1)
	(moveto loc-2-2)
    )

    (:goal (and  (at monkey-2 loc-0-2)  (at monkey-1 loc-2-1) ))
)
    