(define (problem rearrangement) 
    (:domain rearrangement)

    (:objects
    
	monkey-0 - moveable
	monkey-1 - moveable
	pawn-2 - moveable
	bear-3 - moveable
	robot - moveable
	loc-0-0 - static
	loc-0-1 - static
	loc-0-2 - static
	loc-0-3 - static
	loc-1-0 - static
	loc-1-1 - static
	loc-1-2 - static
	loc-1-3 - static
	loc-2-0 - static
	loc-2-1 - static
	loc-2-2 - static
	loc-2-3 - static
    )

    (:init
    
	(ismonkey monkey-0)
	(ismonkey monkey-1)
	(ispawn pawn-2)
	(isbear bear-3)
	(isrobot robot)
	(at monkey-0 loc-1-0)
	(at monkey-1 loc-0-2)
	(at pawn-2 loc-2-1)
	(at bear-3 loc-1-3)
	(at robot loc-2-2)
	(handsfree robot)

    ; action literals
    
	(pick monkey-0)
	(place monkey-0)
	(pick monkey-1)
	(place monkey-1)
	(pick pawn-2)
	(place pawn-2)
	(pick bear-3)
	(place bear-3)
	(moveto loc-0-0)
	(moveto loc-0-1)
	(moveto loc-0-2)
	(moveto loc-0-3)
	(moveto loc-1-0)
	(moveto loc-1-1)
	(moveto loc-1-2)
	(moveto loc-1-3)
	(moveto loc-2-0)
	(moveto loc-2-1)
	(moveto loc-2-2)
	(moveto loc-2-3)
    )

    (:goal (and  (holding monkey-0)  (at monkey-1 loc-2-2) ))
)
    