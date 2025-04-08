
(define (domain navigation12)
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
    (is-col-20 ?v0 - location)
    (is-col-21 ?v0 - location)
    (is-col-22 ?v0 - location)
    (is-col-23 ?v0 - location)
    (is-col-24 ?v0 - location)
    (is-col-25 ?v0 - location)
    (is-col-26 ?v0 - location)
    (is-col-27 ?v0 - location)
    (is-col-28 ?v0 - location)
    (is-col-29 ?v0 - location)
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
              0.7938824911311555  (robot-at ?to)
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
              0.6634204312890623  (robot-at ?to)
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
              0.5543977522727014  (robot-at ?to)
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
              0.46329123015975304  (robot-at ?to)
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
              0.3871566272825708  (robot-at ?to)
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
              0.323533544973709  (robot-at ?to)
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
              0.27036591226128615  (robot-at ?to)
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
              0.22593554099256555  (robot-at ?to)
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
              0.18880660012446657  (robot-at ?to)
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
              0.1577792147882268  (robot-at ?to)
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
              0.13185069061557383  (robot-at ?to)
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
              0.11018311023500528  (robot-at ?to)
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
              0.09207625477257338  (robot-at ?to)
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
              0.07694497527671315  (robot-at ?to)
            ))
    )
    
