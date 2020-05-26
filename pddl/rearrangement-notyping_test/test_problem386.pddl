(define (problem rearrangement-notyping) 
    (:domain rearrangement-notyping)

    (:objects
    
	pawn-0
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
    
	(ispawn pawn-0)
	(isrobot robot)
	(at pawn-0 loc-3-0)
	(at robot loc-2-1)
	(handsfree robot)

    ; action literals
    
	(pick pawn-0)
	(place pawn-0)
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
    )

    (:goal (and  (at pawn-0 loc-1-2)  (holding pawn-0) ))
)
    