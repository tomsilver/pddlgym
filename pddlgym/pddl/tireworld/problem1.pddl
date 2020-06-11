(define (problem tireworld-1)
  (:domain tireworld)
  (:objects
  l-1-1 - location
  l-1-2 - location
  l-1-3 - location
  l-2-1 - location
  l-2-2 - location
  l-2-3 - location
  l-3-1 - location
  l-3-2 - location
  l-3-3 - location
  )
  (:init (vehicle-at l-1-1)(road l-1-1 l-1-2)(road l-1-2 l-1-3)(road l-1-1 l-2-1)(road l-1-2 l-2-2)(road l-2-1 l-1-2)(road l-2-2 l-1-3)(spare-in l-2-1)(spare-in l-2-2)(road l-2-1 l-3-1)(road l-3-1 l-2-2)(spare-in l-3-1)(spare-in l-3-1)(not-flattire)
  (movecar l-1-1)
  (changetire l-1-1)
  (movecar l-1-2)
  (changetire l-1-2)
  (movecar l-1-3)
  (changetire l-1-3)
  (movecar l-2-1)
  (changetire l-2-1)
  (movecar l-2-2)
  (changetire l-2-2)
  (movecar l-2-3)
  (changetire l-2-3)
  (movecar l-3-1)
  (changetire l-3-1)
  (movecar l-3-2)
  (changetire l-3-2)
  (movecar l-3-3)
  (changetire l-3-3)
)
  (:goal (and (vehicle-at l-1-3))))