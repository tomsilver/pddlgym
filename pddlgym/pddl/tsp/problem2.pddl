(define (problem tsp2)
  (:domain tsp)
  (:objects 
    c1 - place 
    c2 - place 
    c3 - place
    c4 - place
    c5 - place
    c6 - place
    c7 - place
    c8 - place
    c9 - place
    c10 - place
    c11 - place 
    c12 - place 
    c13 - place
    c14 - place
    c15 - place
    c16 - place
    c17 - place
    c18 - place
    c19 - place
    c20 - place
    p - path
  )
  (:init 
    (connected c1 c2)
    (connected c2 c1)
    (connected c2 c3)
    (connected c3 c2)
    (connected c1 c3)
    (connected c3 c1)
    (connected c1 c4)
    (connected c4 c1)
    (connected c1 c5)
    (connected c5 c1)
    (connected c1 c6)
    (connected c6 c1)
    (connected c1 c7)
    (connected c7 c1)
    (connected c1 c8)
    (connected c8 c1)
    (connected c1 c9)
    (connected c9 c1)
    (connected c1 c10)
    (connected c10 c1)
    (connected c10 c11)
    (connected c11 c10)
    (connected c12 c13)
    (connected c13 c12)
    (connected c13 c14)
    (connected c14 c13)
    (connected c14 c12)
    (connected c12 c14)
    (visited c1) 
    (not-visited c2) 
    (not-visited c3)
    (not-visited c4)
    (not-visited c5)
    (not-visited c6)
    (not-visited c7)
    (not-visited c8)
    (not-visited c9)
    (not-visited c10)
    (not-visited c11) 
    (not-visited c12)
    (not-visited c13)
    (not-visited c14)
    (not-visited c15)
    (not-visited c16)
    (not-visited c17)
    (not-visited c18)
    (not-visited c19)
    (not-visited c20)
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
    (moveto c8)
    (moveto c9)
    (moveto c10)
    (moveto c11)
    (moveto c12)
    (moveto c13)
    (moveto c14)
    (moveto c15)
    (moveto c16)
    (moveto c17)
    (moveto c18)
    (moveto c19)
    (moveto c20)

  )
  (:goal (and (visited c1) (visited c2) (visited c3) (visited c4) (complete p)))
)
