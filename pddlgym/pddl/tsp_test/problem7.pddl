(define (problem tsp7)
  (:domain tsp)
  (:objects 
    c1 - place 
    c2 - place 
    c3 - place
    c4 - place
    c5 - place
    c6 - place
    c7 - place
    p - path
  )
  (:init 
    (connected c1 c2)
    (connected c2 c1)
    (connected c2 c3)
    (connected c3 c2)
    (connected c3 c4)
    (connected c4 c3)
    (connected c4 c5)
    (connected c5 c4)
    (connected c5 c6)
    (connected c6 c5)
    (connected c6 c7)
    (connected c7 c6)
    (connected c7 c1)
    (connected c1 c7)
    (visited c1) 
    (not-visited c2) 
    (not-visited c3)
    (not-visited c4)
    (not-visited c5)
    (not-visited c6)
    (not-visited c7)
    (in c1) 
    (starting c1) 
    (not-complete p)

    (moveto c1)
    (moveto c2)
    (moveto c3)
    (moveto c4)
    (moveto c5)
    (moveto c6)
    (moveto c7)

  )
  (:goal (and (visited c1) (visited c2) (visited c3) (visited c4) (visited c5) (visited c6) (visited c7) (complete p)))
)
