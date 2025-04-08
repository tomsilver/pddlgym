
(define (domain navigation11)
  (:requirements :typing :probabilistic-effects)
  (:types location direction)

  (:constants down - direction
    left - direction
    right - direction
    up - direction)

  (:predicates (conn ?v0 - location ?v1 - location ?v2 - direction)
    (robot-at ?v0 - location)
    (is-col-0 ?v0 - location)
    (is-col-1 ?v0 - location)
    (is-col-2 ?v0 - location)
    (is-col-3 ?v0 - location)
    (is-col-4 ?v0 - location)
    (is-col-5 ?v0 - location)
    (is-col-6 ?v0 - location)
    (is-col-7 ?v0 - location)
    (is-col-8 ?v0 - location)
    (is-col-9 ?v0 - location)
    (is-col-10 ?v0 - location)
    (is-col-11 ?v0 - location)
    (is-col-12 ?v0 - location)
    (is-col-13 ?v0 - location)
    (is-col-14 ?v0 - location)
    (is-col-15 ?v0 - location)
    (is-col-16 ?v0 - location)
    (is-col-17 ?v0 - location)
    (is-col-18 ?v0 - location)
    (is-col-19 ?v0 - location)
    (is-prob ?v0 - location)
    (move ?v0 - direction)
  )
  ; (:actions move)


    (:action move-robot
        :parameters (?from - location ?to - location ?dir - direction)
        :precondition (and (move ?dir)
            (conn ?from ?to ?dir)
            (robot-at ?from)
            (not (is-prob ?from)))
        :effect (and
            (not (robot-at ?from))
            (robot-at ?to))
    )

    
    (:action move-robot-col-0
        :parameters (?from - location ?to - location ?dir - direction)
        :precondition (and (move ?dir)
            (is-col-0 ?from)
            (conn ?from ?to ?dir)
            (robot-at ?from)
            (is-prob ?from))
        :effect (and
            (not (robot-at ?from))
            (probabilistic
              0.95  (robot-at ?to)
            ))
    )
    
    (:action move-robot-col-1
        :parameters (?from - location ?to - location ?dir - direction)
        :precondition (and (move ?dir)
            (is-col-1 ?from)
            (conn ?from ?to ?dir)
            (robot-at ?from)
            (is-prob ?from))
        :effect (and
            (not (robot-at ?from))
            (probabilistic
              0.7185235581402548  (robot-at ?to)
            ))
    )
    
    (:action move-robot-col-2
        :parameters (?from - location ?to - location ?dir - direction)
        :precondition (and (move ?dir)
            (is-col-2 ?from)
            (conn ?from ?to ?dir)
            (robot-at ?from)
            (is-prob ?from))
        :effect (and
            (not (robot-at ?from))
            (probabilistic
              0.5434485301079286  (robot-at ?to)
            ))
    )
    
    (:action move-robot-col-3
        :parameters (?from - location ?to - location ?dir - direction)
        :precondition (and (move ?dir)
            (is-col-3 ?from)
            (conn ?from ?to ?dir)
            (robot-at ?from)
            (is-prob ?from))
        :effect (and
            (not (robot-at ?from))
            (probabilistic
              0.41103218054656865  (robot-at ?to)
            ))
    )
    
    (:action move-robot-col-4
        :parameters (?from - location ?to - location ?dir - direction)
        :precondition (and (move ?dir)
            (is-col-4 ?from)
            (conn ?from ?to ?dir)
            (robot-at ?from)
            (is-prob ?from))
        :effect (and
            (not (robot-at ?from))
            (probabilistic
              0.3108803209225981  (robot-at ?to)
            ))
    )
    
    (:action move-robot-col-5
        :parameters (?from - location ?to - location ?dir - direction)
        :precondition (and (move ?dir)
            (is-col-5 ?from)
            (conn ?from ?to ?dir)
            (robot-at ?from)
            (is-prob ?from))
        :effect (and
            (not (robot-at ?from))
            (probabilistic
              0.23513140457377843  (robot-at ?to)
            ))
    )
    
    (:action move-robot-col-6
        :parameters (?from - location ?to - location ?dir - direction)
        :precondition (and (move ?dir)
            (is-col-6 ?from)
            (conn ?from ?to ?dir)
            (robot-at ?from)
            (is-prob ?from))
        :effect (and
            (not (robot-at ?from))
            (probabilistic
              0.1778394246788074  (robot-at ?to)
            ))
    )
    
    (:action move-robot-col-7
        :parameters (?from - location ?to - location ?dir - direction)
        :precondition (and (move ?dir)
            (is-col-7 ?from)
            (conn ?from ?to ?dir)
            (robot-at ?from)
            (is-prob ?from))
        :effect (and
            (not (robot-at ?from))
            (probabilistic
              0.1345071749450869  (robot-at ?to)
            ))
    )
    
    (:action move-robot-col-8
        :parameters (?from - location ?to - location ?dir - direction)
        :precondition (and (move ?dir)
            (is-col-8 ?from)
            (conn ?from ?to ?dir)
            (robot-at ?from)
            (is-prob ?from))
        :effect (and
            (not (robot-at ?from))
            (probabilistic
              0.10173323572309219  (robot-at ?to)
            ))
    )
    
    (:action move-robot-col-9
        :parameters (?from - location ?to - location ?dir - direction)
        :precondition (and (move ?dir)
            (is-col-9 ?from)
            (conn ?from ?to ?dir)
            (robot-at ?from)
            (is-prob ?from))
        :effect (and
            (not (robot-at ?from))
            (probabilistic
              0.07694497527671315  (robot-at ?to)
            ))
    )
    
