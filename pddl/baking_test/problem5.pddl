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
    
    (IsEgg egg-0)
    (IsEgg egg-1)
    (IsFlour flour-0)
    (IsFlour flour-1)
    (Hypothetical new-0)
    (Hypothetical new-1)
    (PanIsClean pan-0)
    (PanIsClean pan-1)
    (SoapConsumed soap-0)

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
        (IsCake new-0) 
        (IsCake new-1) 
    ))
)
    