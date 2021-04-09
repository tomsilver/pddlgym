(define (problem tireworld-5)
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
  n21 - location
  n22 - location
  n23 - location
  n24 - location
  
  )
  (:init
         (vehicle-at n13)
         (road n0 n1) (road n1 n0)
         (road n0 n5) (road n5 n0)
         (road n0 n9) (road n9 n0)
         (road n1 n13) (road n13 n1)
         (road n2 n3) (road n3 n2)
         (road n2 n5) (road n5 n2)
         (road n2 n19) (road n19 n2)
         (road n4 n11) (road n11 n4)
         (road n5 n17) (road n17 n5)
         (road n6 n7) (road n7 n6)
         (road n6 n14) (road n14 n6)
         (road n6 n16) (road n16 n6)
         (road n7 n12) (road n12 n7)
         (road n7 n18) (road n18 n7)
         (road n7 n19) (road n19 n7)
         (road n8 n13) (road n13 n8)
         (road n8 n14) (road n14 n8)
         (road n8 n18) (road n18 n8)
         (road n8 n24) (road n24 n8)
         (road n9 n21) (road n21 n9)
         (road n10 n18) (road n18 n10)
         (road n11 n14) (road n14 n11)
         (road n12 n17) (road n17 n12)
         (road n12 n18) (road n18 n12)
         (road n12 n21) (road n21 n12)
         (road n13 n14) (road n14 n13)
         (road n14 n18) (road n18 n14)
         (road n15 n18) (road n18 n15)
         (road n15 n21) (road n21 n15)
         (road n15 n23) (road n23 n15)
         (road n16 n20) (road n20 n16)
         (road n18 n22) (road n22 n18)
         (road n18 n23) (road n23 n18)
         (road n18 n24) (road n24 n18)
         (road n19 n21) (road n21 n19)
         (road n21 n22) (road n22 n21)
         (road n21 n23) (road n23 n21)
         (road n21 n24) (road n24 n21)
         (road n22 n24) (road n24 n22)
         (road n23 n24) (road n24 n23)
         (spare-in n0)
         (spare-in n1)
         (spare-in n2)
         (spare-in n5)
         (spare-in n6)
         (spare-in n10)
         (spare-in n13)
         (spare-in n14)
         (spare-in n15)
         (spare-in n16)
         (spare-in n18)
         (spare-in n21)
         (spare-in n24)
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
  (movecar n21)
  (changetire n21)
  (movecar n22)
  (changetire n22)
  (movecar n23)
  (changetire n23)
  (movecar n24)
  (changetire n24)
  )
  (:goal (and (vehicle-at n18))))
