
(define (domain navigation10)
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
              0.947624068086346  (robot-at ?to)
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
              0.915267289640676  (robot-at ?to)
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
              0.8620475667708537  (robot-at ?to)
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
              0.8213427355349586  (robot-at ?to)
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
              0.7793868366289851  (robot-at ?to)
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
              0.7268985478624114  (robot-at ?to)
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
              0.6725489071553997  (robot-at ?to)
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
              0.6166440407631167  (robot-at ?to)
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
              0.5815221669250412  (robot-at ?to)
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
              0.5357353301849542  (robot-at ?to)
            ))
    )
    
    (:action move-robot-col-10
        :parameters (?from - location ?to - location ?dir - direction)
        :precondition (and (move ?dir)
            (is-col-10 ?from)
            (conn ?from ?to ?dir)
            (robot-at ?from)
            (is-prob ?from))
        :effect (and
            (not (robot-at ?from))
            (probabilistic
              0.4844794712241805  (robot-at ?to)
            ))
    )
    
    (:action move-robot-col-11
        :parameters (?from - location ?to - location ?dir - direction)
        :precondition (and (move ?dir)
            (is-col-11 ?from)
            (conn ?from ?to ?dir)
            (robot-at ?from)
            (is-prob ?from))
        :effect (and
            (not (robot-at ?from))
            (probabilistic
              0.4454454225733092  (robot-at ?to)
            ))
    )
    
    (:action move-robot-col-12
        :parameters (?from - location ?to - location ?dir - direction)
        :precondition (and (move ?dir)
            (is-col-12 ?from)
            (conn ?from ?to ?dir)
            (robot-at ?from)
            (is-prob ?from))
        :effect (and
            (not (robot-at ?from))
            (probabilistic
              0.3944247517042401  (robot-at ?to)
            ))
    )
    
    (:action move-robot-col-13
        :parameters (?from - location ?to - location ?dir - direction)
        :precondition (and (move ?dir)
            (is-col-13 ?from)
            (conn ?from ?to ?dir)
            (robot-at ?from)
            (is-prob ?from))
        :effect (and
            (not (robot-at ?from))
            (probabilistic
              0.34621302358675415  (robot-at ?to)
            ))
    )
    
    (:action move-robot-col-14
        :parameters (?from - location ?to - location ?dir - direction)
        :precondition (and (move ?dir)
            (is-col-14 ?from)
            (conn ?from ?to ?dir)
            (robot-at ?from)
            (is-prob ?from))
        :effect (and
            (not (robot-at ?from))
            (probabilistic
              0.3005661931901909  (robot-at ?to)
            ))
    )
    
    (:action move-robot-col-15
        :parameters (?from - location ?to - location ?dir - direction)
        :precondition (and (move ?dir)
            (is-col-15 ?from)
            (conn ?from ?to ?dir)
            (robot-at ?from)
            (is-prob ?from))
        :effect (and
            (not (robot-at ?from))
            (probabilistic
              0.27030758239255337  (robot-at ?to)
            ))
    )
    
    (:action move-robot-col-16
        :parameters (?from - location ?to - location ?dir - direction)
        :precondition (and (move ?dir)
            (is-col-16 ?from)
            (conn ?from ?to ?dir)
            (robot-at ?from)
            (is-prob ?from))
        :effect (and
            (not (robot-at ?from))
            (probabilistic
              0.21659324268132377  (robot-at ?to)
            ))
    )
    
    (:action move-robot-col-17
        :parameters (?from - location ?to - location ?dir - direction)
        :precondition (and (move ?dir)
            (is-col-17 ?from)
            (conn ?from ?to ?dir)
            (robot-at ?from)
            (is-prob ?from))
        :effect (and
            (not (robot-at ?from))
            (probabilistic
              0.16538046315116317  (robot-at ?to)
            ))
    )
    
    (:action move-robot-col-18
        :parameters (?from - location ?to - location ?dir - direction)
        :precondition (and (move ?dir)
            (is-col-18 ?from)
            (conn ?from ?to ?dir)
            (robot-at ?from)
            (is-prob ?from))
        :effect (and
            (not (robot-at ?from))
            (probabilistic
              0.11434718118490361  (robot-at ?to)
            ))
    )
    
    (:action move-robot-col-19
        :parameters (?from - location ?to - location ?dir - direction)
        :precondition (and (move ?dir)
            (is-col-19 ?from)
            (conn ?from ?to ?dir)
            (robot-at ?from)
            (is-prob ?from))
        :effect (and
            (not (robot-at ?from))
            (probabilistic
              0.07489475468990574  (robot-at ?to)
            ))
    )
    
