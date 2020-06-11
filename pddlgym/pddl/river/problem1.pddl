(define (problem river-problem)
  (:domain river)
  (:objects
  )
  (:init
    (on-near-bank)
    (alive)

    (traverserocks)
    (swimriver)
    (swimisland)
  )
  (:goal (and (on-far-bank))))