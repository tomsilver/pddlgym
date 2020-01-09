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
    myprize6 - prize6
    square6 - location
    myprize7 - prize7
    square7 - location
    myprize8 - prize8
    square8 - location
    myprize9 - prize9
    square9 - location
    myprize10 - prize10
    square10 - location
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
    (LocPrize6 myprize6 square6)
    (GetPrize6 myprize6)
    (DirHolds square5 square6 right)
    (DirHolds square6 square5 left)
    (LocPrize7 myprize7 square7)
    (GetPrize7 myprize7)
    (DirHolds square6 square7 right)
    (DirHolds square7 square6 left)
    (LocPrize8 myprize8 square8)
    (GetPrize8 myprize8)
    (DirHolds square7 square8 right)
    (DirHolds square8 square7 left)
    (LocPrize9 myprize9 square9)
    (GetPrize9 myprize9)
    (DirHolds square8 square9 right)
    (DirHolds square9 square8 left)
    (LocPrize10 myprize10 square10)
    (GetPrize10 myprize10)
    (DirHolds square9 square10 right)
    (DirHolds square10 square9 left)
  )

  (:goal (HoldingPrize10 myprize10))
)
