(define (problem tireworld-6)
  (:domain tireworld)
  (:objects
  l-1-1 - location
l-1-2 - location
l-1-3 - location
l-1-4 - location
l-1-5 - location
l-1-6 - location
l-1-7 - location
l-1-8 - location
l-1-9 - location
l-1-10 - location
l-1-11 - location
l-1-12 - location
l-1-13 - location
l-2-1 - location
l-2-2 - location
l-2-3 - location
l-2-4 - location
l-2-5 - location
l-2-6 - location
l-2-7 - location
l-2-8 - location
l-2-9 - location
l-2-10 - location
l-2-11 - location
l-2-12 - location
l-2-13 - location
l-3-1 - location
l-3-2 - location
l-3-3 - location
l-3-4 - location
l-3-5 - location
l-3-6 - location
l-3-7 - location
l-3-8 - location
l-3-9 - location
l-3-10 - location
l-3-11 - location
l-3-12 - location
l-3-13 - location
l-4-1 - location
l-4-2 - location
l-4-3 - location
l-4-4 - location
l-4-5 - location
l-4-6 - location
l-4-7 - location
l-4-8 - location
l-4-9 - location
l-4-10 - location
l-4-11 - location
l-4-12 - location
l-4-13 - location
l-5-1 - location
l-5-2 - location
l-5-3 - location
l-5-4 - location
l-5-5 - location
l-5-6 - location
l-5-7 - location
l-5-8 - location
l-5-9 - location
l-5-10 - location
l-5-11 - location
l-5-12 - location
l-5-13 - location
l-6-1 - location
l-6-2 - location
l-6-3 - location
l-6-4 - location
l-6-5 - location
l-6-6 - location
l-6-7 - location
l-6-8 - location
l-6-9 - location
l-6-10 - location
l-6-11 - location
l-6-12 - location
l-6-13 - location
l-7-1 - location
l-7-2 - location
l-7-3 - location
l-7-4 - location
l-7-5 - location
l-7-6 - location
l-7-7 - location
l-7-8 - location
l-7-9 - location
l-7-10 - location
l-7-11 - location
l-7-12 - location
l-7-13 - location
l-8-1 - location
l-8-2 - location
l-8-3 - location
l-8-4 - location
l-8-5 - location
l-8-6 - location
l-8-7 - location
l-8-8 - location
l-8-9 - location
l-8-10 - location
l-8-11 - location
l-8-12 - location
l-8-13 - location
l-9-1 - location
l-9-2 - location
l-9-3 - location
l-9-4 - location
l-9-5 - location
l-9-6 - location
l-9-7 - location
l-9-8 - location
l-9-9 - location
l-9-10 - location
l-9-11 - location
l-9-12 - location
l-9-13 - location
l-10-1 - location
l-10-2 - location
l-10-3 - location
l-10-4 - location
l-10-5 - location
l-10-6 - location
l-10-7 - location
l-10-8 - location
l-10-9 - location
l-10-10 - location
l-10-11 - location
l-10-12 - location
l-10-13 - location
l-11-1 - location
l-11-2 - location
l-11-3 - location
l-11-4 - location
l-11-5 - location
l-11-6 - location
l-11-7 - location
l-11-8 - location
l-11-9 - location
l-11-10 - location
l-11-11 - location
l-11-12 - location
l-11-13 - location
l-12-1 - location
l-12-2 - location
l-12-3 - location
l-12-4 - location
l-12-5 - location
l-12-6 - location
l-12-7 - location
l-12-8 - location
l-12-9 - location
l-12-10 - location
l-12-11 - location
l-12-12 - location
l-12-13 - location
l-13-1 - location
l-13-2 - location
l-13-3 - location
l-13-4 - location
l-13-5 - location
l-13-6 - location
l-13-7 - location
l-13-8 - location
l-13-9 - location
l-13-10 - location
l-13-11 - location
l-13-12 - location
l-13-13 - location
)
  (:init (vehicle-at l-1-1)(road l-1-1 l-1-2)(road l-1-2 l-1-3)(road l-1-3 l-1-4)(road l-1-4 l-1-5)(road l-1-5 l-1-6)(road l-1-6 l-1-7)(road l-1-7 l-1-8)(road l-1-8 l-1-9)(road l-1-9 l-1-10)(road l-1-10 l-1-11)(road l-1-11 l-1-12)(road l-1-12 l-1-13)(road l-1-1 l-2-1)(road l-1-2 l-2-2)(road l-1-3 l-2-3)(road l-1-4 l-2-4)(road l-1-5 l-2-5)(road l-1-6 l-2-6)(road l-1-7 l-2-7)(road l-1-8 l-2-8)(road l-1-9 l-2-9)(road l-1-10 l-2-10)(road l-1-11 l-2-11)(road l-1-12 l-2-12)(road l-2-1 l-1-2)(road l-2-2 l-1-3)(road l-2-3 l-1-4)(road l-2-4 l-1-5)(road l-2-5 l-1-6)(road l-2-6 l-1-7)(road l-2-7 l-1-8)(road l-2-8 l-1-9)(road l-2-9 l-1-10)(road l-2-10 l-1-11)(road l-2-11 l-1-12)(road l-2-12 l-1-13)(spare-in l-2-1)(spare-in l-2-2)(spare-in l-2-3)(spare-in l-2-4)(spare-in l-2-5)(spare-in l-2-6)(spare-in l-2-7)(spare-in l-2-8)(spare-in l-2-9)(spare-in l-2-10)(spare-in l-2-11)(spare-in l-2-12)(road l-3-1 l-3-2)(road l-3-2 l-3-3)(road l-3-3 l-3-4)(road l-3-4 l-3-5)(road l-3-5 l-3-6)(road l-3-6 l-3-7)(road l-3-7 l-3-8)(road l-3-8 l-3-9)(road l-3-9 l-3-10)(road l-3-10 l-3-11)(road l-2-1 l-3-1)(road l-2-3 l-3-3)(road l-2-5 l-3-5)(road l-2-7 l-3-7)(road l-2-9 l-3-9)(road l-2-11 l-3-11)(road l-3-1 l-2-2)(road l-3-3 l-2-4)(road l-3-5 l-2-6)(road l-3-7 l-2-8)(road l-3-9 l-2-10)(road l-3-11 l-2-12)(spare-in l-3-1)(spare-in l-3-11)(road l-3-1 l-4-1)(road l-3-2 l-4-2)(road l-3-3 l-4-3)(road l-3-4 l-4-4)(road l-3-5 l-4-5)(road l-3-6 l-4-6)(road l-3-7 l-4-7)(road l-3-8 l-4-8)(road l-3-9 l-4-9)(road l-3-10 l-4-10)(road l-4-1 l-3-2)(road l-4-2 l-3-3)(road l-4-3 l-3-4)(road l-4-4 l-3-5)(road l-4-5 l-3-6)(road l-4-6 l-3-7)(road l-4-7 l-3-8)(road l-4-8 l-3-9)(road l-4-9 l-3-10)(road l-4-10 l-3-11)(spare-in l-4-1)(spare-in l-4-2)(spare-in l-4-3)(spare-in l-4-4)(spare-in l-4-5)(spare-in l-4-6)(spare-in l-4-7)(spare-in l-4-8)(spare-in l-4-9)(spare-in l-4-10)(road l-5-1 l-5-2)(road l-5-2 l-5-3)(road l-5-3 l-5-4)(road l-5-4 l-5-5)(road l-5-5 l-5-6)(road l-5-6 l-5-7)(road l-5-7 l-5-8)(road l-5-8 l-5-9)(road l-4-1 l-5-1)(road l-4-3 l-5-3)(road l-4-5 l-5-5)(road l-4-7 l-5-7)(road l-4-9 l-5-9)(road l-5-1 l-4-2)(road l-5-3 l-4-4)(road l-5-5 l-4-6)(road l-5-7 l-4-8)(road l-5-9 l-4-10)(spare-in l-5-1)(spare-in l-5-9)(road l-5-1 l-6-1)(road l-5-2 l-6-2)(road l-5-3 l-6-3)(road l-5-4 l-6-4)(road l-5-5 l-6-5)(road l-5-6 l-6-6)(road l-5-7 l-6-7)(road l-5-8 l-6-8)(road l-6-1 l-5-2)(road l-6-2 l-5-3)(road l-6-3 l-5-4)(road l-6-4 l-5-5)(road l-6-5 l-5-6)(road l-6-6 l-5-7)(road l-6-7 l-5-8)(road l-6-8 l-5-9)(spare-in l-6-1)(spare-in l-6-2)(spare-in l-6-3)(spare-in l-6-4)(spare-in l-6-5)(spare-in l-6-6)(spare-in l-6-7)(spare-in l-6-8)(road l-7-1 l-7-2)(road l-7-2 l-7-3)(road l-7-3 l-7-4)(road l-7-4 l-7-5)(road l-7-5 l-7-6)(road l-7-6 l-7-7)(road l-6-1 l-7-1)(road l-6-3 l-7-3)(road l-6-5 l-7-5)(road l-6-7 l-7-7)(road l-7-1 l-6-2)(road l-7-3 l-6-4)(road l-7-5 l-6-6)(road l-7-7 l-6-8)(spare-in l-7-1)(spare-in l-7-7)(road l-7-1 l-8-1)(road l-7-2 l-8-2)(road l-7-3 l-8-3)(road l-7-4 l-8-4)(road l-7-5 l-8-5)(road l-7-6 l-8-6)(road l-8-1 l-7-2)(road l-8-2 l-7-3)(road l-8-3 l-7-4)(road l-8-4 l-7-5)(road l-8-5 l-7-6)(road l-8-6 l-7-7)(spare-in l-8-1)(spare-in l-8-2)(spare-in l-8-3)(spare-in l-8-4)(spare-in l-8-5)(spare-in l-8-6)(road l-9-1 l-9-2)(road l-9-2 l-9-3)(road l-9-3 l-9-4)(road l-9-4 l-9-5)(road l-8-1 l-9-1)(road l-8-3 l-9-3)(road l-8-5 l-9-5)(road l-9-1 l-8-2)(road l-9-3 l-8-4)(road l-9-5 l-8-6)(spare-in l-9-1)(spare-in l-9-5)(road l-9-1 l-10-1)(road l-9-2 l-10-2)(road l-9-3 l-10-3)(road l-9-4 l-10-4)(road l-10-1 l-9-2)(road l-10-2 l-9-3)(road l-10-3 l-9-4)(road l-10-4 l-9-5)(spare-in l-10-1)(spare-in l-10-2)(spare-in l-10-3)(spare-in l-10-4)(road l-11-1 l-11-2)(road l-11-2 l-11-3)(road l-10-1 l-11-1)(road l-10-3 l-11-3)(road l-11-1 l-10-2)(road l-11-3 l-10-4)(spare-in l-11-1)(spare-in l-11-3)(road l-11-1 l-12-1)(road l-11-2 l-12-2)(road l-12-1 l-11-2)(road l-12-2 l-11-3)(spare-in l-12-1)(spare-in l-12-2)(road l-12-1 l-13-1)(road l-13-1 l-12-2)(spare-in l-13-1)(spare-in l-13-1)(not-flattire)
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
(movecar l-1-8)
(changetire l-1-8)
(movecar l-1-9)
(changetire l-1-9)
(movecar l-1-10)
(changetire l-1-10)
(movecar l-1-11)
(changetire l-1-11)
(movecar l-1-12)
(changetire l-1-12)
(movecar l-1-13)
(changetire l-1-13)
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
(movecar l-2-8)
(changetire l-2-8)
(movecar l-2-9)
(changetire l-2-9)
(movecar l-2-10)
(changetire l-2-10)
(movecar l-2-11)
(changetire l-2-11)
(movecar l-2-12)
(changetire l-2-12)
(movecar l-2-13)
(changetire l-2-13)
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
(movecar l-3-8)
(changetire l-3-8)
(movecar l-3-9)
(changetire l-3-9)
(movecar l-3-10)
(changetire l-3-10)
(movecar l-3-11)
(changetire l-3-11)
(movecar l-3-12)
(changetire l-3-12)
(movecar l-3-13)
(changetire l-3-13)
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
(movecar l-4-8)
(changetire l-4-8)
(movecar l-4-9)
(changetire l-4-9)
(movecar l-4-10)
(changetire l-4-10)
(movecar l-4-11)
(changetire l-4-11)
(movecar l-4-12)
(changetire l-4-12)
(movecar l-4-13)
(changetire l-4-13)
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
(movecar l-5-8)
(changetire l-5-8)
(movecar l-5-9)
(changetire l-5-9)
(movecar l-5-10)
(changetire l-5-10)
(movecar l-5-11)
(changetire l-5-11)
(movecar l-5-12)
(changetire l-5-12)
(movecar l-5-13)
(changetire l-5-13)
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
(movecar l-6-8)
(changetire l-6-8)
(movecar l-6-9)
(changetire l-6-9)
(movecar l-6-10)
(changetire l-6-10)
(movecar l-6-11)
(changetire l-6-11)
(movecar l-6-12)
(changetire l-6-12)
(movecar l-6-13)
(changetire l-6-13)
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
(movecar l-7-8)
(changetire l-7-8)
(movecar l-7-9)
(changetire l-7-9)
(movecar l-7-10)
(changetire l-7-10)
(movecar l-7-11)
(changetire l-7-11)
(movecar l-7-12)
(changetire l-7-12)
(movecar l-7-13)
(changetire l-7-13)
(movecar l-8-1)
(changetire l-8-1)
(movecar l-8-2)
(changetire l-8-2)
(movecar l-8-3)
(changetire l-8-3)
(movecar l-8-4)
(changetire l-8-4)
(movecar l-8-5)
(changetire l-8-5)
(movecar l-8-6)
(changetire l-8-6)
(movecar l-8-7)
(changetire l-8-7)
(movecar l-8-8)
(changetire l-8-8)
(movecar l-8-9)
(changetire l-8-9)
(movecar l-8-10)
(changetire l-8-10)
(movecar l-8-11)
(changetire l-8-11)
(movecar l-8-12)
(changetire l-8-12)
(movecar l-8-13)
(changetire l-8-13)
(movecar l-9-1)
(changetire l-9-1)
(movecar l-9-2)
(changetire l-9-2)
(movecar l-9-3)
(changetire l-9-3)
(movecar l-9-4)
(changetire l-9-4)
(movecar l-9-5)
(changetire l-9-5)
(movecar l-9-6)
(changetire l-9-6)
(movecar l-9-7)
(changetire l-9-7)
(movecar l-9-8)
(changetire l-9-8)
(movecar l-9-9)
(changetire l-9-9)
(movecar l-9-10)
(changetire l-9-10)
(movecar l-9-11)
(changetire l-9-11)
(movecar l-9-12)
(changetire l-9-12)
(movecar l-9-13)
(changetire l-9-13)
(movecar l-10-1)
(changetire l-10-1)
(movecar l-10-2)
(changetire l-10-2)
(movecar l-10-3)
(changetire l-10-3)
(movecar l-10-4)
(changetire l-10-4)
(movecar l-10-5)
(changetire l-10-5)
(movecar l-10-6)
(changetire l-10-6)
(movecar l-10-7)
(changetire l-10-7)
(movecar l-10-8)
(changetire l-10-8)
(movecar l-10-9)
(changetire l-10-9)
(movecar l-10-10)
(changetire l-10-10)
(movecar l-10-11)
(changetire l-10-11)
(movecar l-10-12)
(changetire l-10-12)
(movecar l-10-13)
(changetire l-10-13)
(movecar l-11-1)
(changetire l-11-1)
(movecar l-11-2)
(changetire l-11-2)
(movecar l-11-3)
(changetire l-11-3)
(movecar l-11-4)
(changetire l-11-4)
(movecar l-11-5)
(changetire l-11-5)
(movecar l-11-6)
(changetire l-11-6)
(movecar l-11-7)
(changetire l-11-7)
(movecar l-11-8)
(changetire l-11-8)
(movecar l-11-9)
(changetire l-11-9)
(movecar l-11-10)
(changetire l-11-10)
(movecar l-11-11)
(changetire l-11-11)
(movecar l-11-12)
(changetire l-11-12)
(movecar l-11-13)
(changetire l-11-13)
(movecar l-12-1)
(changetire l-12-1)
(movecar l-12-2)
(changetire l-12-2)
(movecar l-12-3)
(changetire l-12-3)
(movecar l-12-4)
(changetire l-12-4)
(movecar l-12-5)
(changetire l-12-5)
(movecar l-12-6)
(changetire l-12-6)
(movecar l-12-7)
(changetire l-12-7)
(movecar l-12-8)
(changetire l-12-8)
(movecar l-12-9)
(changetire l-12-9)
(movecar l-12-10)
(changetire l-12-10)
(movecar l-12-11)
(changetire l-12-11)
(movecar l-12-12)
(changetire l-12-12)
(movecar l-12-13)
(changetire l-12-13)
(movecar l-13-1)
(changetire l-13-1)
(movecar l-13-2)
(changetire l-13-2)
(movecar l-13-3)
(changetire l-13-3)
(movecar l-13-4)
(changetire l-13-4)
(movecar l-13-5)
(changetire l-13-5)
(movecar l-13-6)
(changetire l-13-6)
(movecar l-13-7)
(changetire l-13-7)
(movecar l-13-8)
(changetire l-13-8)
(movecar l-13-9)
(changetire l-13-9)
(movecar l-13-10)
(changetire l-13-10)
(movecar l-13-11)
(changetire l-13-11)
(movecar l-13-12)
(changetire l-13-12)
(movecar l-13-13)
(changetire l-13-13)
  )
  (:goal (and (vehicle-at l-1-13))))