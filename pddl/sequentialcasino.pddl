(define (domain sequentialcasino)
  (:requirements :strips :typing)
  (:types location direction prize1 prize2 prize3 prize4 prize5 prize6 prize7 prize8 prize9 prize10)
  (:predicates
    (RobotAt ?loc - location)
    (DirHolds ?sloc - location ?eloc - location ?dir - direction)
    (Move ?dir - direction)
    (GetPrize1 ?prize - prize1)
    (HoldingPrize1 ?prize - prize1)
    (LocPrize1 ?prize - prize1 ?loc - location)
    (GetPrize2 ?prize - prize2)
    (HoldingPrize2 ?prize - prize2)
    (LocPrize2 ?prize - prize2 ?loc - location)
    (GetPrize3 ?prize - prize3)
    (HoldingPrize3 ?prize - prize3)
    (LocPrize3 ?prize - prize3 ?loc - location)
    (GetPrize4 ?prize - prize4)
    (HoldingPrize4 ?prize - prize4)
    (LocPrize4 ?prize - prize4 ?loc - location)
    (GetPrize5 ?prize - prize5)
    (HoldingPrize5 ?prize - prize5)
    (LocPrize5 ?prize - prize5 ?loc - location)
    (GetPrize6 ?prize - prize6)
    (HoldingPrize6 ?prize - prize6)
    (LocPrize6 ?prize - prize6 ?loc - location)
    (GetPrize7 ?prize - prize7)
    (HoldingPrize7 ?prize - prize7)
    (LocPrize7 ?prize - prize7 ?loc - location)
    (GetPrize8 ?prize - prize8)
    (HoldingPrize8 ?prize - prize8)
    (LocPrize8 ?prize - prize8 ?loc - location)
    (GetPrize9 ?prize - prize9)
    (HoldingPrize9 ?prize - prize9)
    (LocPrize9 ?prize - prize9 ?loc - location)
    (GetPrize10 ?prize - prize10)
    (HoldingPrize10 ?prize - prize10)
    (LocPrize10 ?prize - prize10 ?loc - location)
  )

  ; (:actions Move GetPrize1 GetPrize2 GetPrize3 GetPrize4 GetPrize5 GetPrize6 GetPrize7 GetPrize8 GetPrize9 GetPrize10)

  (:action MoveTo
    :parameters (?sloc - location ?eloc - location ?dir - direction)
    :precondition (and (Move ?dir) (DirHolds ?sloc ?eloc ?dir) (RobotAt ?sloc))
    :effect (and (not (RobotAt ?sloc)) (RobotAt ?eloc))
  )

  (:action GetPrize1
    :parameters (?prize - prize1 ?loc - location)
    :precondition (and (GetPrize1 ?prize) (LocPrize1 ?prize ?loc) (RobotAt ?loc))
    :effect (and (HoldingPrize1 ?prize))
  )

  (:action GetPrize2
    :parameters (?prize - prize2 ?loc - location)
    :precondition (and (GetPrize2 ?prize) (LocPrize2 ?prize ?loc) (RobotAt ?loc))
    :effect (and (HoldingPrize2 ?prize))
  )

  (:action GetPrize3
    :parameters (?prize - prize3 ?loc - location)
    :precondition (and (GetPrize3 ?prize) (LocPrize3 ?prize ?loc) (RobotAt ?loc))
    :effect (and (HoldingPrize3 ?prize))
  )

  (:action GetPrize4
    :parameters (?prize - prize4 ?loc - location)
    :precondition (and (GetPrize4 ?prize) (LocPrize4 ?prize ?loc) (RobotAt ?loc))
    :effect (and (HoldingPrize4 ?prize))
  )

  (:action GetPrize5
    :parameters (?prize - prize5 ?loc - location)
    :precondition (and (GetPrize5 ?prize) (LocPrize5 ?prize ?loc) (RobotAt ?loc))
    :effect (and (HoldingPrize5 ?prize))
  )

  (:action GetPrize6
    :parameters (?prize - prize6 ?loc - location)
    :precondition (and (GetPrize6 ?prize) (LocPrize6 ?prize ?loc) (RobotAt ?loc))
    :effect (and (HoldingPrize6 ?prize))
  )

  (:action GetPrize7
    :parameters (?prize - prize7 ?loc - location)
    :precondition (and (GetPrize7 ?prize) (LocPrize7 ?prize ?loc) (RobotAt ?loc))
    :effect (and (HoldingPrize7 ?prize))
  )

  (:action GetPrize8
    :parameters (?prize - prize8 ?loc - location)
    :precondition (and (GetPrize8 ?prize) (LocPrize8 ?prize ?loc) (RobotAt ?loc))
    :effect (and (HoldingPrize8 ?prize))
  )

  (:action GetPrize9
    :parameters (?prize - prize9 ?loc - location)
    :precondition (and (GetPrize9 ?prize) (LocPrize9 ?prize ?loc) (RobotAt ?loc))
    :effect (and (HoldingPrize9 ?prize))
  )

  (:action GetPrize10
    :parameters (?prize - prize10 ?loc - location)
    :precondition (and (GetPrize10 ?prize) (LocPrize10 ?prize ?loc) (RobotAt ?loc))
    :effect (and (HoldingPrize10 ?prize))
  )
)



