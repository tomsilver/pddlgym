(define (problem intrusion-detection-2-hosts)
	(:domain intrusion-detection)
	(:objects
  sagittarius - host
  scorpio - host
)









	(:init
		(dummy)
	)
	(:goal
		(and
(recon-performed sagittarius)  (vandalized scorpio)
		)
	)
)
