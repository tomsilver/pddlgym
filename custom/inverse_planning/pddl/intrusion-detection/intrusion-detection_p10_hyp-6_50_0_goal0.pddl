
(define (problem intrusion-detection-10-hosts) (:domain intrusion-detection)
  (:objects
        andromeda - host
	aries - host
	cassiopea - host
	leo - host
	libra - host
	perseus - host
	sagittarius - host
	scorpio - host
	taurus - host
	virgo - host
  )
  (:init 
	(dummy )
  )
  (:goal (and
	(information-gathered perseus)
	(information-gathered cassiopea)
	(information-gathered andromeda)
	(information-gathered sagittarius)
	(information-gathered scorpio)
	(information-gathered virgo)
	(information-gathered aries)
	(information-gathered leo)
	(information-gathered libra)
	(information-gathered taurus)))
)
        