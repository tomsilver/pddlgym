(define (problem rearrangement-notyping) 
    (:domain rearrangement-notyping)

    (:objects
    
	bear-0
	pawn-1
	bear-2
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
    
	(isbear bear-0)
	(ispawn pawn-1)
	(isbear bear-2)
	(isbear bear-3)
	(isrobot robot)
	(at bear-0 loc-1-1)
	(at pawn-1 loc-3-1)
	(at bear-2 loc-1-0)
	(at bear-3 loc-4-2)
	(at robot loc-1-1)
	(handsfree robot)

    ; action literals
    
	(pick bear-0)
	(place bear-0)
	(pick pawn-1)
	(place pawn-1)
	(pick bear-2)
	(place bear-2)
	(pick bear-3)
	(place bear-3)
	(moveto loc-0-0)
	(moveto loc-0-1)
	(moveto loc-0-2)
	(moveto loc-0-3)
	(moveto loc-1-0)
	(moveto loc-1-1)
	(moveto loc-1-2)
	(moveto loc-1-3)
	(moveto loc-2-0)
	(moveto loc-2-1)
	(moveto loc-2-2)
	(moveto loc-2-3)
	(moveto loc-3-0)
	(moveto loc-3-1)
	(moveto loc-3-2)
	(moveto loc-3-3)
	(moveto loc-4-0)
	(moveto loc-4-1)
	(moveto loc-4-2)
	(moveto loc-4-3)
    )

    (:goal (and  (at bear-0 loc-0-3)  (at pawn-1 loc-1-1) ))
)
    