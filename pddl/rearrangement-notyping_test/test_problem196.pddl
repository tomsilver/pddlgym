(define (problem rearrangement-notyping) 
    (:domain rearrangement-notyping)

    (:objects
    
	monkey-0
	bear-1
	pawn-2
	monkey-3
	robot
	loc-0-0
	loc-0-1
	loc-0-2
	loc-0-3
	loc-1-0
	loc-1-1
	loc-1-2
	loc-1-3
	loc-2-0
	loc-2-1
	loc-2-2
	loc-2-3
	loc-3-0
	loc-3-1
	loc-3-2
	loc-3-3
    )

    (:init
    
	(IsMonkey monkey-0)
	(IsBear bear-1)
	(IsPawn pawn-2)
	(IsMonkey monkey-3)
	(IsRobot robot)
	(At monkey-0 loc-0-0)
	(At bear-1 loc-3-1)
	(At pawn-2 loc-3-1)
	(At monkey-3 loc-0-2)
	(At robot loc-1-0)
	(Handsfree robot)

    ; Action literals
    
	(Pick monkey-0)
	(Place monkey-0)
	(Pick bear-1)
	(Place bear-1)
	(Pick pawn-2)
	(Place pawn-2)
	(Pick monkey-3)
	(Place monkey-3)
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
	(MoveTo loc-3-0)
	(MoveTo loc-3-1)
	(MoveTo loc-3-2)
	(MoveTo loc-3-3)
    )

    (:goal (and  (At monkey-0 loc-0-0)  (At bear-1 loc-1-3) ))
)
    