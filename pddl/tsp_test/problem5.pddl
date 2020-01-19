(define (problem tsp5)
  (:domain tsp)
  (:objects 
    c1 - place 
    c2 - place 
    c3 - place
    c4 - place
    c5 - place
    c6 - place
    p - path
  )
  (:init 
    (connected c1 c2)
    (connected c2 c1)
    (connected c2 c3) 
    (connected c3 c2) 
    (connected c3 c4)
    (connected c4 c3)
    (connected c3 c5)
    (connected c5 c3)
    (connected c3 c6)
    (connected c6 c3)
    (connected c4 c5)
    (connected c5 c4)
    (connected c4 c6)
    (connected c6 c4)
    (connected c6 c2)
    (connected c2 c6)
    (connected c6 c1)
    (connected c1 c6)
    (visited c1) 
    (not-visited c2) 
    (not-visited c3)
    (not-visited c4)
    (not-visited c5)
    (not-visited c6)
    (in c1) 
    (starting c1) 
    (not-complete p)

    (moveto c1)
    (moveto c2)
    (moveto c3)
    (moveto c4)
    (moveto c5)
    (moveto c6)

  )
  (:goal (and (visited c1) (visited c2) (visited c4) (visited c5) (visited c6) (complete p)))
)
