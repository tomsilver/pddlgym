


(define (problem logistics-c2-s1-p6-a5)
(:domain logistics-strips)
(:objects a0 a1 a2 a3 a4 
          c0 c1 
          t0 t1 
          l00 l10 
          p0 p1 p2 p3 p4 p5 
)
(:init
(AIRPLANE a0)
(AIRPLANE a1)
(AIRPLANE a2)
(AIRPLANE a3)
(AIRPLANE a4)
(CITY c0)
(CITY c1)
(TRUCK t0)
(TRUCK t1)
(LOCATION l00)
(in-city  l00 c0)
(LOCATION l10)
(in-city  l10 c1)
(AIRPORT l00)
(AIRPORT l10)
(OBJ p0)
(OBJ p1)
(OBJ p2)
(OBJ p3)
(OBJ p4)
(OBJ p5)
(at t0 l00)
(at t1 l10)
(at p0 l00)
(at p1 l00)
(at p2 l10)
(at p3 l10)
(at p4 l10)
(at p5 l00)
(at a0 l00)
(at a1 l00)
(at a2 l00)
(at a3 l00)
(at a4 l10)
)
(:goal
(and
(at p0 l00)
(at p1 l00)
(at p2 l00)
(at p3 l00)
(at p4 l00)
(at p5 l10)
)
)
)


