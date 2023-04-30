
(define (domain river_alt)
  (:requirements :typing :probabilistic-effects)
  (:types robot location direction)
  
  (:constants down - direction
    left - direction
    right - direction
    up - direction)

  (:predicates (conn ?v0 - location ?v1 - location ?v2 - direction)
    (robot-at ?v0 - robot ?v1 - location)
    (is-bridge ?v0 - location)
    (is-bank ?v0 - location)
    (is-river ?v0 - location)
    (is-waterfall ?v0 - location)
    (is-goal ?v0 - location)
    (move ?v0 - direction)
  )
  ; (:actions move)
  

    (:action move-robot
        :parameters (?robot - robot ?from - location ?to - location ?dir - direction)
        :precondition (and (move ?dir)
            (conn ?from ?to ?dir)
            (robot-at ?robot ?from)
            (not (is-river ?from))
            (not (is-waterfall ?from)))
        :effect (and
            (not (robot-at ?robot ?from))
            (robot-at ?robot ?to))
    )

    (:action move-robot-river
        :parameters (?robot - robot ?from - location ?to - location ?fall - location ?dir - direction)
        :precondition (and (move ?dir)
            (conn ?from ?to ?dir)
            (conn ?from ?fall down)
            (robot-at ?robot ?from)
            (not (is-waterfall ?from))
            (is-river ?from))
        :effect (and
            (not (robot-at ?robot ?from))
            (probabilistic
              0.6 (robot-at ?robot ?to)
              0.4 (robot-at ?robot ?fall)
            ))
    )
)
        
