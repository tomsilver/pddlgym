; Probabilistic triangle tireworld.

(define (domain manytireworld)
  (:requirements :typing :strips :probabilistic-effects)
  (:types location)
  (:predicates
       (vehicle-at ?loc - location)
       (spare-in ?loc - location)
       (road ?from - location ?to - location)
       (not-flattire)
  )

  (:action movecar
    :parameters (?from - location ?to - location)
    :precondition (and (vehicle-at ?from) (road ?from ?to) (not-flattire))
    :effect (and (vehicle-at ?to) (not (vehicle-at ?from))
       (probabilistic 0.8 (not (not-flattire)))))
  (:action changetire
    :parameters (?loc - location)
    :precondition (and (spare-in ?loc) (vehicle-at ?loc) (not (not-flattire)))
    :effect (and (not (spare-in ?loc)) (not-flattire)))
)
