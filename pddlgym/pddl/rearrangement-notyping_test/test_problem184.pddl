(define (problem rearrangement-notyping) 
    (:domain rearrangement-notyping)

    (:objects
    
	pawn-0
	bear-1
	pawn-2
	robot
	loc-0-0
	loc-0-1
	loc-0-2
	loc-0-3
	loc-0-4
	loc-1-0
	loc-1-1
	loc-1-2
	loc-1-3
	loc-1-4
	loc-2-0
	loc-2-1
	loc-2-2
	loc-2-3
	loc-2-4
    )

    (:init
    
	(ispawn pawn-0)
	(isbear bear-1)
	(ispawn pawn-2)
	(isrobot robot)
	(at pawn-0 loc-1-2)
	(at bear-1 loc-0-4)
	(at pawn-2 loc-1-0)
	(at robot loc-0-3)
	(handsfree robot)

    ; action literals
    
	(pick pawn-0)
	(place pawn-0)
	(pick bear-1)
	(place bear-1)
	(pick pawn-2)
	(place pawn-2)
	(moveto loc-0-0)
	(moveto loc-0-1)
	(moveto loc-0-2)
	(moveto loc-0-3)
	(moveto loc-0-4)
	(moveto loc-1-0)
	(moveto loc-1-1)
	(moveto loc-1-2)
	(moveto loc-1-3)
	(moveto loc-1-4)
	(moveto loc-2-0)
	(moveto loc-2-1)
	(moveto loc-2-2)
	(moveto loc-2-3)
	(moveto loc-2-4)
    )

    (:goal (and  (holding bear-1)  (at pawn-0 loc-1-4) ))
)
    