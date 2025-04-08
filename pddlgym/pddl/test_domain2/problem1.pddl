(define (problem test-1)
  (:domain test-domain2)
  (:objects
    s1 - location
    s2 - location
    s3 - location
  )
  (:init
    (robot-at s1)
    (is-goal s3)

    (conn s1 s2)
    (conn s2 s3)

    (move)

  )
  (:goal (and (robot-at s3)))
)
