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
(root-access-obtained sagittarius) (recon-performed virgo)
		)
	)
)
