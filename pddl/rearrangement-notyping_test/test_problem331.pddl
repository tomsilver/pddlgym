(define (problem rearrangement-notyping) 
    (:domain rearrangement-notyping)

    (:objects
    
	bear-0
	monkey-1
	monkey-2
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
    )

    (:init
    
	(isbear bear-0)
	(ismonkey monkey-1)
	(ismonkey monkey-2)
	(ispawn pawn-3)
	(isrobot robot)
	(at bear-0 loc-0-1)
	(at monkey-1 loc-1-1)
	(at monkey-2 loc-1-0)
	(at pawn-3 loc-1-1)
	(at robot loc-0-1)
	(handsfree robot)

    ; action literals
    
	(pick bear-0)
	(place bear-0)
	(pick monkey-1)
	(place monkey-1)
	(pick monkey-2)
	(place monkey-2)
	(pick pawn-3)
	(place pawn-3)
	(moveto loc-0-0)
	(moveto loc-0-1)
	(moveto loc-0-2)
	(moveto loc-1-0)
	(moveto loc-1-1)
	(moveto loc-1-2)
	(moveto loc-2-0)
	(moveto loc-2-1)
	(moveto loc-2-2)
    )

    (:goal (and  (at pawn-3 loc-0-0)  (holding bear-0) ))
)
    