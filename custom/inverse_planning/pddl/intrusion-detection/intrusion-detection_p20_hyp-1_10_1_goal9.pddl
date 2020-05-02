
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
	(data-stolen-from perseus)
	(data-stolen-from cassiopea)
	(vandalized libra)))
)
        