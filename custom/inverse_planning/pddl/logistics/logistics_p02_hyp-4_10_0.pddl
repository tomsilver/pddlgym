
(define (problem logistics-04-0) (:domain logistics)
  (:objects
        apn1 - thing
	apt1 - location
	apt2 - location
	cit1 - location
	cit2 - location
	obj11 - thing
	obj12 - thing
	obj13 - thing
	obj21 - thing
	obj22 - thing
	obj23 - thing
	pos11 - location
	pos12 - location
	pos13 - location
	pos21 - location
	pos22 - location
	pos23 - location
	tru1 - thing
	tru2 - thing
  )
  (:goal (and
	(at obj12 pos21)
	(at obj22 pos12)))
  (:init 
	(at apn1 apt2)
	(at obj11 pos13)
	(at obj12 pos13)
	(at obj13 pos11)
	(at obj21 pos21)
	(at obj22 pos21)
	(at obj23 pos22)
	(at tru1 pos11)
	(at tru2 pos22)
	(in-city apt1 cit1)
	(in-city apt2 cit2)
	(in-city pos11 cit1)
	(in-city pos12 cit1)
	(in-city pos13 cit1)
	(in-city pos21 cit2)
	(in-city pos22 cit2)
	(in-city pos23 cit2)
	(isairplane apn1)
	(isairport apt1)
	(isairport apt2)
	(iscity cit1)
	(iscity cit2)
	(islocation pos11)
	(islocation pos12)
	(islocation pos13)
	(islocation pos21)
	(islocation pos22)
	(islocation pos23)
	(ispackage obj11)
	(ispackage obj12)
	(ispackage obj13)
	(ispackage obj21)
	(ispackage obj22)
	(ispackage obj23)
	(isplace apt1)
	(isplace apt2)
	(isplace pos11)
	(isplace pos12)
	(isplace pos13)
	(isplace pos21)
	(isplace pos22)
	(isplace pos23)
	(istruck tru1)
	(istruck tru2)
))
        