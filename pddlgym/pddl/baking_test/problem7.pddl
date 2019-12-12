(define (problem baking) 
    (:domain baking)

    (:objects
      oven-0 - oven
      oven-1 - oven
      egg-0 - ingredient
      egg-1 - ingredient
      flour-0 - ingredient
      flour-1 - ingredient
      pan-0 - pan
      pan-1 - pan
      new-0 - ingredient
      new-1 - ingredient
      soap-0 - soap
    )

    (:init

    ; Action literals
    (PutEggInPan egg-0 pan-0)
    (PutEggInPan egg-1 pan-0)
    (PutFlourInPan flour-0 pan-0)
    (PutFlourInPan flour-1 pan-0)
    (Mix pan-0)
    (PutPanInOven pan-0 oven-0)
    (PutPanInOven pan-0 oven-1)
    (RemovePanFromOven pan-0)
    (CleanPan pan-0 soap-0)
    (PutEggInPan egg-0 pan-1)
    (PutEggInPan egg-1 pan-1)
    (PutFlourInPan flour-0 pan-1)
    (PutFlourInPan flour-1 pan-1)
    (Mix pan-1)
    (PutPanInOven pan-1 oven-0)
    (PutPanInOven pan-1 oven-1)
    (RemovePanFromOven pan-1)
    (CleanPan pan-1 soap-0)
    (BakeCake new-0 oven-0)
    (BakeCake new-1 oven-0)
    (BakeSouffle new-0 oven-0)
    (BakeSouffle new-1 oven-0)
    (BakeCake new-0 oven-1)
    (BakeCake new-1 oven-1)
    (BakeSouffle new-0 oven-1)
    (BakeSouffle new-1 oven-1)
    )

    (:goal (and 
        (OvenIsFull oven-0)
        (OvenIsFull oven-1)
    ))
)
    