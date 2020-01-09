(define (problem sequentialcasino1)
  (:domain sequentialcasino)

  (:objects
    myprize1 - prize1
    square1 - location
    myprize2 - prize2
    square2 - location
    myprize3 - prize3
    square3 - location
    myprize4 - prize4
    square4 - location
    myprize5 - prize5
    square5 - location
    right - direction
    left - direction
    start - location
  )

  (:init
    (RobotAt start)
    (Move right)
    (Move left)
    (LocPrize1 myprize1 square1)
    (GetPrize1 myprize1)
    (DirHolds start square1 right)
    (DirHolds square1 start left)
    (LocPrize2 myprize2 square2)
    (GetPrize2 myprize2)
    (DirHolds square1 square2 right)
    (DirHolds square2 square1 left)
    (LocPrize3 myprize3 square3)
    (GetPrize3 myprize3)
    (DirHolds square2 square3 right)
    (DirHolds square3 square2 left)
    (LocPrize4 myprize4 square4)
    (GetPrize4 myprize4)
    (DirHolds square3 square4 right)
    (DirHolds square4 square3 left)
    (LocPrize5 myprize5 square5)
    (GetPrize5 myprize5)
    (DirHolds square4 square5 right)
    (DirHolds square5 square4 left)
  )

  (:goal (HoldingPrize5 myprize5))
)
