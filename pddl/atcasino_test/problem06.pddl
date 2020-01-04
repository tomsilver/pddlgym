(define (problem atcasino6) 
    (:domain atcasino)

    (:objects
    prize-3-1 - prize3
    prize-4-1 - prize4
    prize-5-1 - prize5
    prize-3-2 - prize3
    prize-4-2 - prize4
    prize-5-2 - prize5
    prize-1-1 - prize1
    prize-2-1 - prize2
    )

    (:init
    (DontHavePrize3 prize-3-1)
    (DontHavePrize3 prize-3-2)
    (DontHavePrize4 prize-4-1)
    (DontHavePrize4 prize-4-2)
    (DontHavePrize5 prize-5-1)
    (DontHavePrize5 prize-5-2)

    (GetPrize3 prize-3-1)
    (GetPrize3 prize-3-2)
    (GetPrize4 prize-4-1)
    (GetPrize4 prize-4-2)
    (GetPrize5 prize-5-1)
    (GetPrize5 prize-5-2)
    )

    (:goal (and (HavePrize3 prize-3-1) (HavePrize3 prize-3-2) (not (HavePrize4 prize-4-1)) (not (HavePrize4 prize-4-2)) (HavePrize5 prize-5-1) (HavePrize5 prize-5-2)))
)
    