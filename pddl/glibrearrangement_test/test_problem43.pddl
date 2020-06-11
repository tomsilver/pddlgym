(define (problem glibrearrangement) 
    (:domain glibrearrangement)

    (:objects
    
	pawn-0 - moveable
	monkey-1 - moveable
	pawn-2 - moveable
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
    
	(IsPawn pawn-0)
	(IsMonkey monkey-1)
	(IsPawn pawn-2)
	(IsRobot robot)
	(At pawn-0 loc-0-1)
	(At monkey-1 loc-2-2)
	(At pawn-2 loc-0-1)
	(At robot loc-1-1)
	(Handsfree robot)

    ; Action literals
    
	(Pick pawn-0)
	(Place pawn-0)
	(Pick monkey-1)
	(Place monkey-1)
	(Pick pawn-2)
	(Place pawn-2)
	(MoveTo loc-0-0)
	(MoveTo loc-0-1)
	(MoveTo loc-0-2)
	(MoveTo loc-0-3)
	(MoveTo loc-1-0)
	(MoveTo loc-1-1)
	(MoveTo loc-1-2)
	(MoveTo loc-1-3)
	(MoveTo loc-2-0)
	(MoveTo loc-2-1)
	(MoveTo loc-2-2)
	(MoveTo loc-2-3)
    )

    (:goal (and  (At pawn-0 loc-1-3)  (At monkey-1 loc-0-1)  (At pawn-2 loc-2-3) ))
)
    