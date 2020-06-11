(define (problem tireworld-3)
  (:domain tireworld)
  (:objects
  l-1-1 - location
l-1-2 - location
l-1-3 - location
l-1-4 - location
l-1-5 - location
l-1-6 - location
l-1-7 - location
l-2-1 - location
l-2-2 - location
l-2-3 - location
l-2-4 - location
l-2-5 - location
l-2-6 - location
l-2-7 - location
l-3-1 - location
l-3-2 - location
l-3-3 - location
l-3-4 - location
l-3-5 - location
l-3-6 - location
l-3-7 - location
l-4-1 - location
l-4-2 - location
l-4-3 - location
l-4-4 - location
l-4-5 - location
l-4-6 - location
l-4-7 - location
l-5-1 - location
l-5-2 - location
l-5-3 - location
l-5-4 - location
l-5-5 - location
l-5-6 - location
l-5-7 - location
l-6-1 - location
l-6-2 - location
l-6-3 - location
l-6-4 - location
l-6-5 - location
l-6-6 - location
l-6-7 - location
l-7-1 - location
l-7-2 - location
l-7-3 - location
l-7-4 - location
l-7-5 - location
l-7-6 - location
l-7-7 - location
  )
  (:init (vehicle-at l-1-1)(road l-1-1 l-1-2)(road l-1-2 l-1-3)(road l-1-3 l-1-4)(road l-1-4 l-1-5)(road l-1-5 l-1-6)(road l-1-6 l-1-7)(road l-1-1 l-2-1)(road l-1-2 l-2-2)(road l-1-3 l-2-3)(road l-1-4 l-2-4)(road l-1-5 l-2-5)(road l-1-6 l-2-6)(road l-2-1 l-1-2)(road l-2-2 l-1-3)(road l-2-3 l-1-4)(road l-2-4 l-1-5)(road l-2-5 l-1-6)(road l-2-6 l-1-7)(spare-in l-2-1)(spare-in l-2-2)(spare-in l-2-3)(spare-in l-2-4)(spare-in l-2-5)(spare-in l-2-6)(road l-3-1 l-3-2)(road l-3-2 l-3-3)(road l-3-3 l-3-4)(road l-3-4 l-3-5)(road l-2-1 l-3-1)(road l-2-3 l-3-3)(road l-2-5 l-3-5)(road l-3-1 l-2-2)(road l-3-3 l-2-4)(road l-3-5 l-2-6)(spare-in l-3-1)(spare-in l-3-5)(road l-3-1 l-4-1)(road l-3-2 l-4-2)(road l-3-3 l-4-3)(road l-3-4 l-4-4)(road l-4-1 l-3-2)(road l-4-2 l-3-3)(road l-4-3 l-3-4)(road l-4-4 l-3-5)(spare-in l-4-1)(spare-in l-4-2)(spare-in l-4-3)(spare-in l-4-4)(road l-5-1 l-5-2)(road l-5-2 l-5-3)(road l-4-1 l-5-1)(road l-4-3 l-5-3)(road l-5-1 l-4-2)(road l-5-3 l-4-4)(spare-in l-5-1)(spare-in l-5-3)(road l-5-1 l-6-1)(road l-5-2 l-6-2)(road l-6-1 l-5-2)(road l-6-2 l-5-3)(spare-in l-6-1)(spare-in l-6-2)(road l-6-1 l-7-1)(road l-7-1 l-6-2)(spare-in l-7-1)(spare-in l-7-1)(not-flattire)
  (movecar l-1-1)
(changetire l-1-1)
(movecar l-1-2)
(changetire l-1-2)
(movecar l-1-3)
(changetire l-1-3)
(movecar l-1-4)
(changetire l-1-4)
(movecar l-1-5)
(changetire l-1-5)
(movecar l-1-6)
(changetire l-1-6)
(movecar l-1-7)
(changetire l-1-7)
(movecar l-2-1)
(changetire l-2-1)
(movecar l-2-2)
(changetire l-2-2)
(movecar l-2-3)
(changetire l-2-3)
(movecar l-2-4)
(changetire l-2-4)
(movecar l-2-5)
(changetire l-2-5)
(movecar l-2-6)
(changetire l-2-6)
(movecar l-2-7)
(changetire l-2-7)
(movecar l-3-1)
(changetire l-3-1)
(movecar l-3-2)
(changetire l-3-2)
(movecar l-3-3)
(changetire l-3-3)
(movecar l-3-4)
(changetire l-3-4)
(movecar l-3-5)
(changetire l-3-5)
(movecar l-3-6)
(changetire l-3-6)
(movecar l-3-7)
(changetire l-3-7)
(movecar l-4-1)
(changetire l-4-1)
(movecar l-4-2)
(changetire l-4-2)
(movecar l-4-3)
(changetire l-4-3)
(movecar l-4-4)
(changetire l-4-4)
(movecar l-4-5)
(changetire l-4-5)
(movecar l-4-6)
(changetire l-4-6)
(movecar l-4-7)
(changetire l-4-7)
(movecar l-5-1)
(changetire l-5-1)
(movecar l-5-2)
(changetire l-5-2)
(movecar l-5-3)
(changetire l-5-3)
(movecar l-5-4)
(changetire l-5-4)
(movecar l-5-5)
(changetire l-5-5)
(movecar l-5-6)
(changetire l-5-6)
(movecar l-5-7)
(changetire l-5-7)
(movecar l-6-1)
(changetire l-6-1)
(movecar l-6-2)
(changetire l-6-2)
(movecar l-6-3)
(changetire l-6-3)
(movecar l-6-4)
(changetire l-6-4)
(movecar l-6-5)
(changetire l-6-5)
(movecar l-6-6)
(changetire l-6-6)
(movecar l-6-7)
(changetire l-6-7)
(movecar l-7-1)
(changetire l-7-1)
(movecar l-7-2)
(changetire l-7-2)
(movecar l-7-3)
(changetire l-7-3)
(movecar l-7-4)
(changetire l-7-4)
(movecar l-7-5)
(changetire l-7-5)
(movecar l-7-6)
(changetire l-7-6)
(movecar l-7-7)
(changetire l-7-7)
  )
  (:goal (and (vehicle-at l-1-7))))