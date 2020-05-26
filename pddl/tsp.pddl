;; the traveling salesman problem, strips version.
;; the predicate "connected" defines the graph; it doesn't have to
;; be made symmetric, since there're actions for going both "along"
;; and "against" the direction of an arc.

(define (domain tsp)
  (:requirements :strips :typing)
  (:types place path)
  (:predicates 
    (in ?x - place) 
    (visited ?x - place) 
    (not-visited ?x - place)
    (starting ?x - place) 
    (complete ?p - path)
    (not-complete ?p - path)
    (connected ?x - place ?y - place)
    (moveto ?x - place)
  )

  ; (:actions moveto)

  (:action go-along
    :parameters (?x - place ?y - place ?p - path)
    :precondition (and (moveto ?y) (in ?x) (not-visited ?y) (not-complete ?p)
               (connected ?x ?y))
    :effect (and (not (in ?x)) (in ?y) (visited ?y) (not (not-visited ?y))))

  ;; the "return" actions have to used to take the last step of the tour,
  ;; since this involves returning to a city allready visited (the starting
  ;; city).
  (:action return-along
    :parameters (?x - place ?y - place ?p - path)
    :precondition (and (moveto ?y) (in ?x) (starting ?y) (not-complete ?p)
               (connected ?x ?y))
    :effect (and (not (in ?x)) (in ?y) (not (not-complete ?p)) (complete ?p)))
 )