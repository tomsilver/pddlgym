(define (problem atcasino8) 
    (:domain atcasino)

    (:objects
    prize-1-1 - prize1
    prize-2-1 - prize2
    prize-3-1 - prize3
    prize-4-1 - prize4
    prize-5-1 - prize5
    )

    (:init
    (DontHavePrize1 prize-1-1)
    (DontHavePrize2 prize-2-1)
    (DontHavePrize3 prize-3-1)
    (DontHavePrize4 prize-4-1)
    (DontHavePrize5 prize-5-1)

    (GetPrize1 prize-1-1)
    (GetPrize2 prize-2-1)
    (GetPrize3 prize-3-1)
    (GetPrize4 prize-4-1)
    (GetPrize5 prize-5-1)
    )

    (:goal (and (HavePrize1 prize-1-1) (not (HavePrize2 prize-2-1)) (HavePrize3 prize-3-1) (not (HavePrize4 prize-4-1)) (HavePrize5 prize-5-1)))
)
