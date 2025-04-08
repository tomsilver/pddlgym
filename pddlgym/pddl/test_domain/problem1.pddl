(define (problem test-1)
  (:domain test-domain)
  (:objects
    s1 - location
    s2 - location
    s3 - location
  )
  (:init
    (robot-at s1)
    (is-goal s3)

    (conn1 s1 s2)
    (conn1 s2 s3)
    (conn2 s1 s3)

  )
  (:goal (and (robot-at s3)))
)
