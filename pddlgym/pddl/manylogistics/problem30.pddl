


(define (problem logistics-c3-s2-p5-a2)
(:domain logistics-strips)
(:objects a0 a1 
          c0 c1 c2 
          t0 t1 t2 
          l00 l01 l10 l11 l20 l21 
          p0 p1 p2 p3 p4 
)
(:init
(AIRPLANE a0)
(AIRPLANE a1)
(CITY c0)
(CITY c1)
(CITY c2)
(TRUCK t0)
(TRUCK t1)
(TRUCK t2)
(LOCATION l00)
(in-city  l00 c0)
(LOCATION l01)
(in-city  l01 c0)
(LOCATION l10)
(in-city  l10 c1)
(LOCATION l11)
(in-city  l11 c1)
(LOCATION l20)
(in-city  l20 c2)
(LOCATION l21)
(in-city  l21 c2)
(AIRPORT l00)
(AIRPORT l10)
(AIRPORT l20)
(OBJ p0)
(OBJ p1)
(OBJ p2)
(OBJ p3)
(OBJ p4)
(at t0 l00)
(at t1 l10)
(at t2 l21)
(at p0 l21)
(at p1 l00)
(at p2 l20)
(at p3 l21)
(at p4 l11)
(at a0 l20)
(at a1 l20)
)
(:goal
(and
(at p0 l20)
(at p1 l20)
(at p2 l01)
(at p3 l21)
(at p4 l11)
)
)
)


