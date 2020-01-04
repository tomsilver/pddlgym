(define (problem atcasino10) 
    (:domain atcasino)

    (:objects
    prize-1-1 - prize1
    prize-1-2 - prize1
    prize-1-3 - prize1
    prize-1-4 - prize1
    prize-2-1 - prize2
    prize-3-1 - prize3
    prize-4-1 - prize4
    prize-5-1 - prize5
    )

    (:init
    (DontHavePrize1 prize-1-1)
    (DontHavePrize1 prize-1-2)
    (DontHavePrize1 prize-1-3)
    (DontHavePrize1 prize-1-4)

    (GetPrize1 prize-1-1)
    (GetPrize1 prize-1-2)
    (GetPrize1 prize-1-3)
    (GetPrize1 prize-1-4)
    )

    (:goal (and (HavePrize1 prize-1-1) (HavePrize1 prize-1-2) (HavePrize1 prize-1-3) (HavePrize1 prize-1-4)))
)
