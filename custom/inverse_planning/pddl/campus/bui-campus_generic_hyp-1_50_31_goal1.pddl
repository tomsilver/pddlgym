
(define (problem bui-campus_generic_hyp-1_50_31) (:domain campus)
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
  (:init 
	(at bookmark-cafe)
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
  )
  (:goal (and
	(group-meeting-2 )
	(banking )
	(lecture-3-taken )
	(lecture-4-taken )
	(group-meeting-3 )
	(lunch )))
)
        