(define (problem test-1)
  (:domain test-domain3)
  (:objects
    s1 - location
    s2 - location
  )
  (:init
    (robot-at s1)
    (is-goal s2)

    (conn s1 s2)

    (move)

  )
  (:goal (and (robot-at s2)))
)
