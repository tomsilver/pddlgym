(define (problem rearrangement-notyping) 
    (:domain rearrangement-notyping)

    (:objects
    
	bear-0
	pawn-1
	monkey-2
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
	loc-4-0
	loc-4-1
	loc-4-2
	loc-4-3
    )

    (:init
    
	(IsBear bear-0)
	(IsPawn pawn-1)
	(IsMonkey monkey-2)
	(IsRobot robot)
	(At bear-0 loc-2-2)
	(At pawn-1 loc-1-2)
	(At monkey-2 loc-4-3)
	(At robot loc-0-3)
	(Handsfree robot)

    ; Action literals
    
	(Pick bear-0)
	(Place bear-0)
	(Pick pawn-1)
	(Place pawn-1)
	(Pick monkey-2)
	(Place monkey-2)
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
	(MoveTo loc-4-0)
	(MoveTo loc-4-1)
	(MoveTo loc-4-2)
	(MoveTo loc-4-3)
    )

    (:goal (and  (At bear-0 loc-0-2) ))
)
    