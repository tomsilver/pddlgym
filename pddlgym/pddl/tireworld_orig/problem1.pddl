(define (problem tireworld-1)
  (:domain tireworld)
  (:objects
  n0  - location
  n1  - location
  n2  - location
  n3  - location
  n4  - location
  n5  - location
  n6  - location
  n7  - location
  n8  - location
  n9  - location
  n10 - location
  n11 - location
  n12 - location
  n13 - location
  n14 - location
  n15 - location
  n16 - location
  
  ;l-1-1 - location
  ;l-1-2 - location
  ;l-1-3 - location
  ;l-1-4 - location
  ;l-1-5 - location
  ;l-2-1 - location
  ;l-2-2 - location
  ;l-2-3 - location
  ;l-2-4 - location
  ;l-3-1 - location
  ;l-3-2 - location
  ;l-3-3 - location
  ;l-4-1 - location
  ;l-4-2 - location
  ;l-5-1 - location
  )
  (:init
         (vehicle-at n2)
         (road n0 n12) (road n12 n0)
         (road n0 n16) (road n16 n0)
         (road n1 n2) (road n2 n1)
         (road n1 n3) (road n3 n1)
         (road n3 n4) (road n4 n3)
         (road n3 n13) (road n13 n3)
         (road n3 n14) (road n14 n3)
         (road n5 n8) (road n8 n5)
         (road n5 n10) (road n10 n5)
         (road n5 n16) (road n16 n5)
         (road n6 n14) (road n14 n6)
         (road n7 n9) (road n9 n7)
         (road n7 n13) (road n13 n7)
         (road n8 n9) (road n9 n8)
         (road n9 n12) (road n12 n9)
         (road n9 n16) (road n16 n9)
         (road n10 n12) (road n12 n10)
         (road n10 n13) (road n13 n10)
         (road n11 n16) (road n16 n11)
         (road n12 n16) (road n16 n12)
         (road n13 n15) (road n15 n13)
         (road n14 n16) (road n16 n14)
         (spare-in n4)
         (spare-in n5)
         (spare-in n7)
         (spare-in n8)
         (spare-in n10)
         (spare-in n12)
         (spare-in n16)
         (not-flattire)

  (movecar n0)
  (changetire n0)
  (movecar n1)
  (changetire n1)
  (movecar n2)
  (changetire n2)
  (movecar n3)
  (changetire n3)
  (movecar n4)
  (changetire n4)
  (movecar n5)
  (changetire n5)
  (movecar n6)
  (changetire n6)
  (movecar n7)
  (changetire n7)
  (movecar n8)
  (changetire n8)
  (movecar n9)
  (changetire n9)
  (movecar n10)
  (changetire n10)
  (movecar n11)
  (changetire n11)
  (movecar n12)
  (changetire n12)
  (movecar n13)
  (changetire n13)
  (movecar n14)
  (changetire n14)
  (movecar n15)
  (changetire n15)
  (movecar n16)
  (changetire n16)
  )
  (:goal (and (vehicle-at n0))))
