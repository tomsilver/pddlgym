
(define (domain navigation5)
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
              0.9759851833805442  (robot-at ?to)
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
              0.8463493086811569  (robot-at ?to)
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
              0.7864266712115042  (robot-at ?to)
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
              0.6579105384233925  (robot-at ?to)
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
              0.5732352750168906  (robot-at ?to)
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
              0.47488661017268896  (robot-at ?to)
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
              0.37331650323337984  (robot-at ?to)
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
              0.27388255981107557  (robot-at ?to)
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
              0.1460833899262879  (robot-at ?to)
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
              0.06632497968773043  (robot-at ?to)
            ))
    )
    
