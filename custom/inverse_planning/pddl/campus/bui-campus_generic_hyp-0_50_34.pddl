
(define (problem bui-campus_generic_hyp-0_50_34) (:domain campus)
  (:objects
        angazi-cafe - place
	bank - place
	bookmark-cafe - place
	cbs - place
	davis-theater - place
	hayman-theater - place
	jones-theater - place
	library - place
	psychology-bldg - place
	tav - place
	watson-theater - place
  )
  (:goal (and
	(breakfast )
	(lecture-1-taken )
	(group-meeting-1 )
	(lecture-2-taken )
	(coffee )))
  (:init 
	(at cbs)
	(is-angazi-cafe angazi-cafe)
	(is-bank bank)
	(is-bookmark-cafe bookmark-cafe)
	(is-cbs cbs)
	(is-davis-theater davis-theater)
	(is-hayman-theater hayman-theater)
	(is-jones-theater jones-theater)
	(is-library library)
	(is-psychology-bldg psychology-bldg)
	(is-tav tav)
	(is-watson-theater watson-theater)
))
        