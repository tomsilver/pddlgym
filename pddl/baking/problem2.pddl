(define (problem baking) 
    (:domain baking)

    (:objects
      oven-0 - oven
      egg-0 - ingredient
      egg-1 - ingredient
      flour-0 - ingredient
      soap-0 - soap
      pan-0 - pan
      new-0 - ingredient
      new-1 - ingredient
    )

    (:init
    
    (IsEgg egg-0)
    (IsEgg egg-1)
    (IsFlour flour-0)
    (Hypothetical new-0)
    (Hypothetical new-1)
    (PanIsClean pan-0)

    ; Action literals
    (PutEggInPan egg-0 pan-0)
    (PutEggInPan egg-1 pan-0)
    (PutFlourInPan flour-0 pan-0)
    (Mix pan-0)
    (PutPanInOven pan-0 oven-0)
    (RemovePanFromOven pan-0)
    (BakeCake new-0 oven-0)
    (BakeCake new-1 oven-0)
    (BakeSouffle new-0 oven-0)
    (BakeSouffle new-1 oven-0)
    (CleanPan pan-0 soap-0)

    )

    (:goal (and (IsSouffle new-0) (IsCake new-1) ))
)
    