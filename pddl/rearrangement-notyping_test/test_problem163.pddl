(define (problem rearrangement-notyping) 
    (:domain rearrangement-notyping)

    (:objects
    
	bear-0
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
	loc-3-0
	loc-3-1
	loc-3-2
	loc-3-3
	loc-3-4
	loc-4-0
	loc-4-1
	loc-4-2
	loc-4-3
	loc-4-4
    )

    (:init
    
	(isbear bear-0)
	(isrobot robot)
	(at bear-0 loc-4-2)
	(at robot loc-3-2)
	(handsfree robot)

    ; action literals
    
	(pick bear-0)
	(place bear-0)
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
	(moveto loc-3-0)
	(moveto loc-3-1)
	(moveto loc-3-2)
	(moveto loc-3-3)
	(moveto loc-3-4)
	(moveto loc-4-0)
	(moveto loc-4-1)
	(moveto loc-4-2)
	(moveto loc-4-3)
	(moveto loc-4-4)
    )

    (:goal (and  (at bear-0 loc-1-3) ))
)
    