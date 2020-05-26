(define (problem rearrangement) 
    (:domain rearrangement)

    (:objects
    
	pawn-0 - moveable
	pawn-1 - moveable
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
	(ispawn pawn-1)
	(isbear bear-2)
	(ispawn pawn-3)
	(isrobot robot)
	(at pawn-0 loc-0-2)
	(at pawn-1 loc-1-1)
	(at bear-2 loc-0-2)
	(at pawn-3 loc-2-2)
	(at robot loc-2-2)
	(handsfree robot)

    ; action literals
    
	(pick pawn-0)
	(place pawn-0)
	(pick pawn-1)
	(place pawn-1)
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

    (:goal (and  (at bear-2 loc-1-1) ))
)
    