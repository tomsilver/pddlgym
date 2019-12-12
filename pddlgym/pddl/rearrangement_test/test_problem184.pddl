(define (problem rearrangement) 
    (:domain rearrangement)

    (:objects
    
	pawn-0 - moveable
	bear-1 - moveable
	pawn-2 - moveable
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
    )

    (:init
    
	(IsPawn pawn-0)
	(IsBear bear-1)
	(IsPawn pawn-2)
	(IsRobot robot)
	(At pawn-0 loc-1-2)
	(At bear-1 loc-0-4)
	(At pawn-2 loc-1-0)
	(At robot loc-0-3)
	(Handsfree robot)

    ; Action literals
    
	(Pick pawn-0)
	(Place pawn-0)
	(Pick bear-1)
	(Place bear-1)
	(Pick pawn-2)
	(Place pawn-2)
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
    )

    (:goal (and  (Holding bear-1)  (At pawn-0 loc-1-4) ))
)
    