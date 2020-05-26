(define (problem rearrangement-notyping) 
    (:domain rearrangement-notyping)

    (:objects
    
	monkey-0
	pawn-1
	monkey-2
	bear-3
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
	loc-4-0
	loc-4-1
	loc-4-2
    )

    (:init
    
	(ismonkey monkey-0)
	(ispawn pawn-1)
	(ismonkey monkey-2)
	(isbear bear-3)
	(isrobot robot)
	(at monkey-0 loc-2-0)
	(at pawn-1 loc-1-0)
	(at monkey-2 loc-4-0)
	(at bear-3 loc-0-1)
	(at robot loc-2-2)
	(handsfree robot)

    ; action literals
    
	(pick monkey-0)
	(place monkey-0)
	(pick pawn-1)
	(place pawn-1)
	(pick monkey-2)
	(place monkey-2)
	(pick bear-3)
	(place bear-3)
	(moveto loc-0-0)
	(moveto loc-0-1)
	(moveto loc-0-2)
	(moveto loc-1-0)
	(moveto loc-1-1)
	(moveto loc-1-2)
	(moveto loc-2-0)
	(moveto loc-2-1)
	(moveto loc-2-2)
	(moveto loc-3-0)
	(moveto loc-3-1)
	(moveto loc-3-2)
	(moveto loc-4-0)
	(moveto loc-4-1)
	(moveto loc-4-2)
    )

    (:goal (and  (at pawn-1 loc-4-2)  (at monkey-0 loc-2-1) ))
)
    