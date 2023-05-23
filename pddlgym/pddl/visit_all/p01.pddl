;; equivalent to:
;; https://github.com/aibasel/downward-benchmarks/blob/master/visitall-opt11-strips/problem03-half.pddl
;; only domain name change and object types were made explicit
(define (problem grid-3)
(:domain visit_all)
(:objects
	loc-x0-y0 - place
	loc-x0-y1 - place
	loc-x0-y2 - place
	loc-x1-y0 - place
	loc-x1-y1 - place
	loc-x1-y2 - place
	loc-x2-y0 - place
	loc-x2-y1 - place
	loc-x2-y2 - place

)
(:init
	(at-robot loc-x1-y1)
	(visited loc-x1-y1)
	(connected loc-x0-y0 loc-x1-y0)
 	(connected loc-x0-y0 loc-x0-y1)
 	(connected loc-x0-y1 loc-x1-y1)
 	(connected loc-x0-y1 loc-x0-y0)
 	(connected loc-x0-y1 loc-x0-y2)
 	(connected loc-x0-y2 loc-x1-y2)
 	(connected loc-x0-y2 loc-x0-y1)
 	(connected loc-x1-y0 loc-x0-y0)
 	(connected loc-x1-y0 loc-x2-y0)
 	(connected loc-x1-y0 loc-x1-y1)
 	(connected loc-x1-y1 loc-x0-y1)
 	(connected loc-x1-y1 loc-x2-y1)
 	(connected loc-x1-y1 loc-x1-y0)
 	(connected loc-x1-y1 loc-x1-y2)
 	(connected loc-x1-y2 loc-x0-y2)
 	(connected loc-x1-y2 loc-x2-y2)
 	(connected loc-x1-y2 loc-x1-y1)
 	(connected loc-x2-y0 loc-x1-y0)
 	(connected loc-x2-y0 loc-x2-y1)
 	(connected loc-x2-y1 loc-x1-y1)
 	(connected loc-x2-y1 loc-x2-y0)
 	(connected loc-x2-y1 loc-x2-y2)
 	(connected loc-x2-y2 loc-x1-y2)
 	(connected loc-x2-y2 loc-x2-y1)

)
(:goal
(and
	(visited loc-x0-y0)
	(visited loc-x0-y2)
	(visited loc-x1-y1)
	(visited loc-x2-y0)
	(visited loc-x2-y1)
)
)
)