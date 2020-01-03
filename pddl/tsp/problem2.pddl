(define (problem tsp2)
  (:domain tsp)
  (:objects 
    c1 - place 
    c2 - place 
    c3 - place
    c4 - place
    c5 - place
    p - path
  )
  (:init 
    (connected c1 c2)
    (connected c2 c1)
    (connected c2 c3) 
    (connected c3 c2)
    (connected c1 c3)
    (connected c3 c1)
    (connected c3 c4)
    (connected c4 c3)
    (connected c4 c1)
    (connected c1 c4)
    (visited c1) 
    (not-visited c2) 
    (not-visited c3)
    (not-visited c4)
    (visited c5)
    (in c1) 
    (starting c1) 
    (not-complete p)

    (moveto c1)
    (moveto c2)
    (moveto c3)
    (moveto c4)
    (moveto c5)

  )
  (:goal (and (visited c1) (visited c2) (visited c3) (visited c4) (complete p)))
)
