(define (domain atcasino)
  (:requirements :strips :typing)
  (:types prize1 prize2 prize3 prize4 prize5)
  (:predicates
     (GetPrize1 ?p1 - prize1)
     (HavePrize1 ?p1 - prize1)
     (DontHavePrize1 ?p1 - prize1)
     (GetPrize2 ?p2 - prize2)
     (HavePrize2 ?p2 - prize2)
     (DontHavePrize2 ?p1 - prize2)
     (GetPrize3 ?p3 - prize3)
     (HavePrize3 ?p3 - prize3)
     (DontHavePrize3 ?p1 - prize3)
     (GetPrize4 ?p4 - prize4)
     (HavePrize4 ?p4 - prize4)
     (DontHavePrize4 ?p1 - prize4)
     (GetPrize5 ?p5 - prize5)
     (HavePrize5 ?p5 - prize5)
     (DontHavePrize5 ?p1 - prize5)
  )

  ; (:actions GetPrize1 GetPrize2 GetPrize3 GetPrize4 GetPrize5)

  (:action GetPrize1
    :parameters (?prize - prize1)
    :precondition (and (GetPrize1 ?prize)
                       (not (HavePrize1 ?prize))
                  )
    :effect (and (HavePrize1 ?prize) (not (DontHavePrize1 ?prize))
            )
  )

  (:action GetPrize2
    :parameters (?prize - prize2)
    :precondition (and (GetPrize2 ?prize)
                       (not (HavePrize2 ?prize))
                  )
    :effect (and (HavePrize2 ?prize) (not (DontHavePrize2 ?prize))
            )
  )

  (:action GetPrize3
    :parameters (?prize - prize3)
    :precondition (and (GetPrize3 ?prize)
                       (not (HavePrize3 ?prize))
                  )
    :effect (and (HavePrize3 ?prize) (not (DontHavePrize3 ?prize))
            )
  )

  (:action GetPrize4
    :parameters (?prize - prize4)
    :precondition (and (GetPrize4 ?prize)
                       (not (HavePrize4 ?prize))
                  )
    :effect (and (HavePrize4 ?prize) (not (DontHavePrize4 ?prize))
            )
  )

  (:action GetPrize5
    :parameters (?prize - prize5)
    :precondition (and (GetPrize5 ?prize)
                       (not (HavePrize5 ?prize))
                  )
    :effect (and (HavePrize5 ?prize) (not (DontHavePrize5 ?prize))
            )
  )

)