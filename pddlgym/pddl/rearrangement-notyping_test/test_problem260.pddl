(define (problem rearrangement-notyping) 
    (:domain rearrangement-notyping)

    (:objects
    
	bear-0
	monkey-1
	monkey-2
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
    
	(IsBear bear-0)
	(IsMonkey monkey-1)
	(IsMonkey monkey-2)
	(IsMonkey monkey-3)
	(IsRobot robot)
	(At bear-0 loc-2-1)
	(At monkey-1 loc-0-2)
	(At monkey-2 loc-2-0)
	(At monkey-3 loc-1-2)
	(At robot loc-0-1)
	(Handsfree robot)

    ; Action literals
    
	(Pick bear-0)
	(Place bear-0)
	(Pick monkey-1)
	(Place monkey-1)
	(Pick monkey-2)
	(Place monkey-2)
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

    (:goal (and  (At monkey-2 loc-0-2)  (At monkey-1 loc-2-1) ))
)
    