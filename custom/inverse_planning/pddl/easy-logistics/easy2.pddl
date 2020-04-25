
(define (problem easy-logistics-1) (:domain logistics)
  (:objects
    apn1 - thing
    apt1 - location
    apt2 - location
    cit1 - location
    obj1 - thing
    pos1 - location
    pos2 - location
    pos3 - location
    tru1 - thing
  )
  (:goal (and
    (at obj1 pos3)
    (at apn1 apt1)
  ))
  (:init 
    (at apn1 apt1)
    (at tru1 pos1)
    (in obj1 apn1)
    (in-city apt2 cit1)
    (in-city pos1 cit1)
    (in-city pos2 cit1)
    (in-city pos3 cit1)
    (isairplane apn1)
    (isairport apt1)
    (isairport apt2)
    (iscity cit1)
    (islocation pos1)
    (islocation pos2)
    (islocation pos3)
    (ispackage obj1)
    (isplace apt1)
    (isplace apt2)
    (isplace pos1)
    (isplace pos2)
    (isplace pos3)
    (istruck tru1)
))
        