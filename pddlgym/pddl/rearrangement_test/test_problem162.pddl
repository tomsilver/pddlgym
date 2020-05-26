(define (problem rearrangement) 
    (:domain rearrangement)

    (:objects
    
	pawn-0 - moveable
	monkey-1 - moveable
	bear-2 - moveable
	pawn-3 - moveable
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
    
	(ispawn pawn-0)
	(ismonkey monkey-1)
	(isbear bear-2)
	(ispawn pawn-3)
	(isrobot robot)
	(at pawn-0 loc-2-1)
	(at monkey-1 loc-0-0)
	(at bear-2 loc-2-1)
	(at pawn-3 loc-0-1)
	(at robot loc-1-1)
	(handsfree robot)

    ; action literals
    
	(pick pawn-0)
	(place pawn-0)
	(pick monkey-1)
	(place monkey-1)
	(pick bear-2)
	(place bear-2)
	(pick pawn-3)
	(place pawn-3)
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

    (:goal (and  (at pawn-0 loc-1-2) ))
)
    