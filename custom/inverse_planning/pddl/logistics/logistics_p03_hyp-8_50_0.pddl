(define (problem logistics-04-0)
(:domain logistics)
(:objects
  apn1 - airplane
  apn2 - airplane
  apt1 - airport
  apt2 - airport
  pos21 - location
  pos22 - location
  pos23 - location
  pos11 - location
  pos12 - location
  pos13 - location
  cit2 - city
  cit1 - city
  tru2 - truck
  tru1 - truck
  obj23 - package
  obj22 - package
  obj21 - package
  obj13 - package
  obj12 - package
  obj11 - package
)










(:init 
	(at apn1 apt2) (at apn2 apt1) (at tru1 pos11) (at tru2 pos22) 
	(at obj11 pos11) (at obj12 pos12) (at obj13 pos13)
	(at obj21 pos21) (at obj22 pos22) (at obj23 pos23)
	(in-city apt1 cit1) (in-city pos11 cit1) (in-city pos12 cit1) (in-city pos13 cit1)
	(in-city apt2 cit2) (in-city pos21 cit2) (in-city pos22 cit2) (in-city pos23 cit2)
)

(:goal (and 
	(at obj13 pos21)  (at obj23 pos13)

	)
)
)
