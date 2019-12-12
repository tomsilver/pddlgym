(define (problem rearrangement-notyping) 
    (:domain rearrangement-notyping)

    (:objects
    
	bear-0
	monkey-1
	pawn-2
	robot
	loc-0-0
	loc-0-1
	loc-0-2
	loc-1-0
	loc-1-1
	loc-1-2
	loc-2-0
	loc-2-1
	loc-2-2
    )

    (:init
    
	(IsBear bear-0)
	(IsMonkey monkey-1)
	(IsPawn pawn-2)
	(IsRobot robot)
	(At bear-0 loc-2-0)
	(At monkey-1 loc-0-0)
	(At pawn-2 loc-1-1)
	(At robot loc-0-0)
	(Handsfree robot)

    ; Action literals
    
	(Pick bear-0)
	(Place bear-0)
	(Pick monkey-1)
	(Place monkey-1)
	(Pick pawn-2)
	(Place pawn-2)
	(MoveTo loc-0-0)
	(MoveTo loc-0-1)
	(MoveTo loc-0-2)
	(MoveTo loc-1-0)
	(MoveTo loc-1-1)
	(MoveTo loc-1-2)
	(MoveTo loc-2-0)
	(MoveTo loc-2-1)
	(MoveTo loc-2-2)
    )

    (:goal (and  (Holding monkey-1)  (At bear-0 loc-2-2) ))
)
    