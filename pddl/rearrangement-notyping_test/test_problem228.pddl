(define (problem rearrangement-notyping) 
    (:domain rearrangement-notyping)

    (:objects
    
	monkey-0
	bear-1
	bear-2
	monkey-3
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
    
	(IsMonkey monkey-0)
	(IsBear bear-1)
	(IsBear bear-2)
	(IsMonkey monkey-3)
	(IsRobot robot)
	(At monkey-0 loc-1-1)
	(At bear-1 loc-2-2)
	(At bear-2 loc-1-0)
	(At monkey-3 loc-1-1)
	(At robot loc-0-1)
	(Handsfree robot)

    ; Action literals
    
	(Pick monkey-0)
	(Place monkey-0)
	(Pick bear-1)
	(Place bear-1)
	(Pick bear-2)
	(Place bear-2)
	(Pick monkey-3)
	(Place monkey-3)
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

    (:goal (and  (Holding monkey-3) ))
)
    