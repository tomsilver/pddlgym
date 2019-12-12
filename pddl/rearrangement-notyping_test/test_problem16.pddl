(define (problem rearrangement-notyping) 
    (:domain rearrangement-notyping)

    (:objects
    
	pawn-0
	bear-1
	pawn-2
	bear-3
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
    )

    (:init
    
	(IsPawn pawn-0)
	(IsBear bear-1)
	(IsPawn pawn-2)
	(IsBear bear-3)
	(IsRobot robot)
	(At pawn-0 loc-2-0)
	(At bear-1 loc-1-3)
	(At pawn-2 loc-1-3)
	(At bear-3 loc-2-1)
	(At robot loc-1-1)
	(Handsfree robot)

    ; Action literals
    
	(Pick pawn-0)
	(Place pawn-0)
	(Pick bear-1)
	(Place bear-1)
	(Pick pawn-2)
	(Place pawn-2)
	(Pick bear-3)
	(Place bear-3)
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

    (:goal (and  (At pawn-2 loc-2-1) ))
)
    