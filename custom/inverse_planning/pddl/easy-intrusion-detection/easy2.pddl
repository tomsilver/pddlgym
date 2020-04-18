(define (problem intrusion-detection-2-hosts)
	(:domain intrusion-detection)
	(:objects
  sagittarius - host
  scorpio - host
  virgo - host
)









	(:init
		(dummy)
	)
	(:goal
		(and
(recon-performed sagittarius)  (recon-performed scorpio) (recon-performed virgo)
		)
	)
)
