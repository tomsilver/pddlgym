
(define (domain navigation7)
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
              0.9811790632084012  (robot-at ?to)
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
              0.8526364606287744  (robot-at ?to)
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
              0.7737736237209497  (robot-at ?to)
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
              0.6822601862909828  (robot-at ?to)
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
              0.5563381684737073  (robot-at ?to)
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
              0.477169446569557  (robot-at ?to)
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
              0.35945948813524514  (robot-at ?to)
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
              0.255770438661178  (robot-at ?to)
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
              0.1646184333496624  (robot-at ?to)
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
              0.0651401424159606  (robot-at ?to)
            ))
    )
    
