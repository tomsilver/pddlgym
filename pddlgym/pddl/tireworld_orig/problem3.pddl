(define (problem tireworld-3)
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
  n17 - location
  n18 - location
  n19 - location
  n20 - location
  
  )
  (:init
         (vehicle-at n0)
         (road n0 n18) (road n18 n0)
         (road n1 n2) (road n2 n1)
         (road n1 n7) (road n7 n1)
         (road n1 n16) (road n16 n1)
         (road n2 n6) (road n6 n2)
         (road n2 n8) (road n8 n2)
         (road n2 n13) (road n13 n2)
         (road n2 n17) (road n17 n2)
         (road n2 n20) (road n20 n2)
         (road n3 n8) (road n8 n3)
         (road n3 n14) (road n14 n3)
         (road n4 n12) (road n12 n4)
         (road n4 n16) (road n16 n4)
         (road n5 n15) (road n15 n5)
         (road n6 n9) (road n9 n6)
         (road n6 n13) (road n13 n6)
         (road n6 n16) (road n16 n6)
         (road n6 n18) (road n18 n6)
         (road n7 n18) (road n18 n7)
         (road n7 n19) (road n19 n7)
         (road n8 n13) (road n13 n8)
         (road n8 n14) (road n14 n8)
         (road n8 n17) (road n17 n8)
         (road n9 n10) (road n10 n9)
         (road n10 n15) (road n15 n10)
         (road n11 n14) (road n14 n11)
         (road n12 n13) (road n13 n12)
         (road n12 n16) (road n16 n12)
         (road n14 n15) (road n15 n14)
         (road n14 n18) (road n18 n14)
         (road n16 n17) (road n17 n16)
         (road n16 n20) (road n20 n16)
         (road n17 n20) (road n20 n17)
         (road n18 n19) (road n19 n18)
         (road n18 n20) (road n20 n18)
         (road n19 n20) (road n20 n19)
         (spare-in n0)
         (spare-in n1)
         (spare-in n5)
         (spare-in n6)
         (spare-in n15)
         (spare-in n16)
         (spare-in n20)
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
  (movecar n17)
  (changetire n17)
  (movecar n18)
  (changetire n18)
  (movecar n19)
  (changetire n19)
  (movecar n20)
  (changetire n20)
  )
  (:goal (and (vehicle-at n14))))
