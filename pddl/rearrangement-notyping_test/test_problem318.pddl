(define (problem rearrangement-notyping) 
    (:domain rearrangement-notyping)

    (:objects
    
	pawn-0
	monkey-1
	pawn-2
	bear-3
	robot
	loc-0-0
	loc-0-1
	loc-0-2
	loc-0-3
	loc-0-4
	loc-1-0
	loc-1-1
	loc-1-2
	loc-1-3
	loc-1-4
	loc-2-0
	loc-2-1
	loc-2-2
	loc-2-3
	loc-2-4
	loc-3-0
	loc-3-1
	loc-3-2
	loc-3-3
	loc-3-4
	loc-4-0
	loc-4-1
	loc-4-2
	loc-4-3
	loc-4-4
    )

    (:init
    
	(IsPawn pawn-0)
	(IsMonkey monkey-1)
	(IsPawn pawn-2)
	(IsBear bear-3)
	(IsRobot robot)
	(At pawn-0 loc-3-0)
	(At monkey-1 loc-4-4)
	(At pawn-2 loc-3-4)
	(At bear-3 loc-3-0)
	(At robot loc-2-4)
	(Handsfree robot)

    ; Action literals
    
	(Pick pawn-0)
	(Place pawn-0)
	(Pick monkey-1)
	(Place monkey-1)
	(Pick pawn-2)
	(Place pawn-2)
	(Pick bear-3)
	(Place bear-3)
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

    (:goal (and  (At monkey-1 loc-1-2)  (Holding pawn-0) ))
)
    