
;; the sliding-tile puzzle (i.e. the eight/fifteen/twentyfour puzzle).
;; tile positions are encoded by the predicate (at <tile> <x> <y>), i.e.
;; using one object for horizontal position and one for vertical (there's
;; a separate predicate for the position of the blank). the predicates
;; "inc" and "dec" encode addition/subtraction of positions.

;; the instance files come in two flavors: the vanilla one uses the same
;; objects for both x and y coordinates, while the other (files that have
;; an "x" at the end of their name) uses different objects for x and y
;; coordinates; this is because some planners seem to require different
;; objects for each parameter of an operator.

(define (domain strips-sliding-tile)
  (:requirements :strips)
  (:predicates
   (tile ?x) (position ?x)
   (at ?t ?x ?y) (blank ?x ?y)
   (inc ?p ?pp) (dec ?p ?pp)
   (up ?t) (down ?t) (left ?t) (right ?t)
   )

  ; (:actions up down left right)

  (:action move-up
    :parameters (?omf ?px ?py ?by)
    :precondition (and (up ?omf)
		   (tile ?omf) (position ?px) (position ?py) (position ?by)
		   (dec ?by ?py) (blank ?px ?by) (at ?omf ?px ?py))
    :effect (and (not (blank ?px ?by)) (not (at ?omf ?px ?py))
		 (blank ?px ?py) (at ?omf ?px ?by)))

  (:action move-down
    :parameters (?omf ?px ?py ?by)
    :precondition (and (down ?omf)
		   (tile ?omf) (position ?px) (position ?py) (position ?by)
		   (inc ?by ?py) (blank ?px ?by) (at ?omf ?px ?py))
    :effect (and (not (blank ?px ?by)) (not (at ?omf ?px ?py))
		 (blank ?px ?py) (at ?omf ?px ?by)))

  (:action move-left
    :parameters (?omf ?px ?py ?bx)
    :precondition (and (left ?omf)
		   (tile ?omf) (position ?px) (position ?py) (position ?bx)
		   (dec ?bx ?px) (blank ?bx ?py) (at ?omf ?px ?py))
    :effect (and (not (blank ?bx ?py)) (not (at ?omf ?px ?py))
		 (blank ?px ?py) (at ?omf ?bx ?py)))

  (:action move-right
    :parameters (?omf ?px ?py ?bx)
    :precondition (and (right ?omf)
		   (tile ?omf) (position ?px) (position ?py) (position ?bx)
		   (inc ?bx ?px) (blank ?bx ?py) (at ?omf ?px ?py))
    :effect (and (not (blank ?bx ?py)) (not (at ?omf ?px ?py))
		 (blank ?px ?py) (at ?omf ?bx ?py)))
  )
