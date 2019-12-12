(define (problem rearrangement-notyping) 
    (:domain rearrangement-notyping)

    (:objects
    
	pawn-0
	bear-1
	bear-2
	pawn-3
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
	loc-3-0
	loc-3-1
	loc-3-2
    )

    (:init
    
	(IsPawn pawn-0)
	(IsBear bear-1)
	(IsBear bear-2)
	(IsPawn pawn-3)
	(IsRobot robot)
	(At pawn-0 loc-3-2)
	(At bear-1 loc-2-2)
	(At bear-2 loc-1-2)
	(At pawn-3 loc-1-1)
	(At robot loc-2-2)
	(Handsfree robot)

    ; Action literals
    
	(Pick pawn-0)
	(Place pawn-0)
	(Pick bear-1)
	(Place bear-1)
	(Pick bear-2)
	(Place bear-2)
	(Pick pawn-3)
	(Place pawn-3)
	(MoveTo loc-0-0)
	(MoveTo loc-0-1)
	(MoveTo loc-0-2)
	(MoveTo loc-1-0)
	(MoveTo loc-1-1)
	(MoveTo loc-1-2)
	(MoveTo loc-2-0)
	(MoveTo loc-2-1)
	(MoveTo loc-2-2)
	(MoveTo loc-3-0)
	(MoveTo loc-3-1)
	(MoveTo loc-3-2)
    )

    (:goal (and  (At pawn-3 loc-1-0) ))
)
    