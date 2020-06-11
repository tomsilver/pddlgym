(define (problem glibrearrangement) 
    (:domain glibrearrangement)

    (:objects
    
	bear-0 - moveable
	bear-1 - moveable
	pawn-2 - moveable
	pawn-3 - moveable
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
    
	(IsBear bear-0)
	(IsBear bear-1)
	(IsPawn pawn-2)
	(IsPawn pawn-3)
	(IsRobot robot)
	(At bear-0 loc-0-0)
	(At bear-1 loc-2-0)
	(At pawn-2 loc-2-1)
	(At pawn-3 loc-0-0)
	(At robot loc-1-3)
	(Handsfree robot)

    ; Action literals
    
	(Pick bear-0)
	(Place bear-0)
	(Pick bear-1)
	(Place bear-1)
	(Pick pawn-2)
	(Place pawn-2)
	(Pick pawn-3)
	(Place pawn-3)
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

    (:goal (and  (At bear-0 loc-2-3)  (At pawn-2 loc-2-0)  (At pawn-3 loc-2-0) ))
)
    