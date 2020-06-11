; Probabilistic river world.

(define (domain river)
  (:requirements :typing :strips :probabilistic-effects)
  (:predicates
    (on-near-bank)
    (on-far-bank)
    (on-island)
    (alive)
    (traverserocks)
    (swimriver)
    (swimisland)
  )

  ; (:actions traverserocks swimriver swimisland)

  (:action traverse-rocks :parameters ()
     :precondition (and (on-near-bank) (traverserocks))
     :effect (and (not (on-near-bank))
                  (probabilistic
                   0.25 (on-far-bank)
                   0.25 (not (alive))
                   0.50 (on-island))))
  (:action swim-river :parameters ()
     :precondition (and (on-near-bank) (swimriver))
     :effect (and (not (on-near-bank))
                  (probabilistic 0.5 (on-far-bank))))
  (:action swim-island :parameters ()
     :precondition (and (on-island) (swimisland))
     :effect (and (not (on-island))
                  (probabilistic
                   0.8 (on-far-bank)
                   0.2 (not (alive))))))