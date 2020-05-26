(define (problem rearrangement-notyping) 
    (:domain rearrangement-notyping)

    (:objects
    
	bear-0
	bear-1
	bear-2
	monkey-3
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
    
	(isbear bear-0)
	(isbear bear-1)
	(isbear bear-2)
	(ismonkey monkey-3)
	(isrobot robot)
	(at bear-0 loc-0-0)
	(at bear-1 loc-1-2)
	(at bear-2 loc-0-0)
	(at monkey-3 loc-1-0)
	(at robot loc-2-0)
	(handsfree robot)

    ; action literals
    
	(pick bear-0)
	(place bear-0)
	(pick bear-1)
	(place bear-1)
	(pick bear-2)
	(place bear-2)
	(pick monkey-3)
	(place monkey-3)
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
    )

    (:goal (and  (at bear-2 loc-1-2) ))
)
    