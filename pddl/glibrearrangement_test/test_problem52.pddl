(define (problem glibrearrangement) 
    (:domain glibrearrangement)

    (:objects
    
	monkey-0 - moveable
	pawn-1 - moveable
	monkey-2 - moveable
	monkey-3 - moveable
	robot - moveable
	loc-0-0 - static
	loc-0-1 - static
	loc-0-2 - static
	loc-0-3 - static
	loc-0-4 - static
	loc-1-0 - static
	loc-1-1 - static
	loc-1-2 - static
	loc-1-3 - static
	loc-1-4 - static
	loc-2-0 - static
	loc-2-1 - static
	loc-2-2 - static
	loc-2-3 - static
	loc-2-4 - static
	loc-3-0 - static
	loc-3-1 - static
	loc-3-2 - static
	loc-3-3 - static
	loc-3-4 - static
	loc-4-0 - static
	loc-4-1 - static
	loc-4-2 - static
	loc-4-3 - static
	loc-4-4 - static
    )

    (:init
    
	(IsMonkey monkey-0)
	(IsPawn pawn-1)
	(IsMonkey monkey-2)
	(IsMonkey monkey-3)
	(IsRobot robot)
	(At monkey-0 loc-0-3)
	(At pawn-1 loc-3-4)
	(At monkey-2 loc-1-4)
	(At monkey-3 loc-4-2)
	(At robot loc-1-0)
	(Handsfree robot)

    ; Action literals
    
	(Pick monkey-0)
	(Place monkey-0)
	(Pick pawn-1)
	(Place pawn-1)
	(Pick monkey-2)
	(Place monkey-2)
	(Pick monkey-3)
	(Place monkey-3)
	(MoveTo loc-0-0)
	(MoveTo loc-0-1)
	(MoveTo loc-0-2)
	(MoveTo loc-0-3)
	(MoveTo loc-0-4)
	(MoveTo loc-1-0)
	(MoveTo loc-1-1)
	(MoveTo loc-1-2)
	(MoveTo loc-1-3)
	(MoveTo loc-1-4)
	(MoveTo loc-2-0)
	(MoveTo loc-2-1)
	(MoveTo loc-2-2)
	(MoveTo loc-2-3)
	(MoveTo loc-2-4)
	(MoveTo loc-3-0)
	(MoveTo loc-3-1)
	(MoveTo loc-3-2)
	(MoveTo loc-3-3)
	(MoveTo loc-3-4)
	(MoveTo loc-4-0)
	(MoveTo loc-4-1)
	(MoveTo loc-4-2)
	(MoveTo loc-4-3)
	(MoveTo loc-4-4)
    )

    (:goal (and  (At monkey-0 loc-0-0)  (At monkey-3 loc-4-1)  (At pawn-1 loc-2-0) ))
)
    