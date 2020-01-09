(define (domain sequentialcasino)
  (:requirements :strips :typing)
  (:types location direction prize1 prize2 prize3 prize4 prize5)
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
  )

  ; (:actions Move GetPrize1 GetPrize2 GetPrize3 GetPrize4 GetPrize5)

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
)



