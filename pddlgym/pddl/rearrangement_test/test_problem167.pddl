(define (problem rearrangement) 
    (:domain rearrangement)

    (:objects
    
	monkey-0 - moveable
	monkey-1 - moveable
	monkey-2 - moveable
	bear-3 - moveable
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
    
	(IsMonkey monkey-0)
	(IsMonkey monkey-1)
	(IsMonkey monkey-2)
	(IsBear bear-3)
	(IsRobot robot)
	(At monkey-0 loc-1-0)
	(At monkey-1 loc-2-0)
	(At monkey-2 loc-1-0)
	(At bear-3 loc-2-1)
	(At robot loc-2-1)
	(Handsfree robot)

    ; Action literals
    
	(Pick monkey-0)
	(Place monkey-0)
	(Pick monkey-1)
	(Place monkey-1)
	(Pick monkey-2)
	(Place monkey-2)
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

    (:goal (and  (At monkey-1 loc-1-0)  (At monkey-2 loc-0-1) ))
)
    