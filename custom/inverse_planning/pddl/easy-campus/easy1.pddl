
(define (problem bui-campus_generic_hyp-0_70_48) (:domain campus)
  (:objects
    angazi-cafe - place
    bookmark-cafe - place
    cbs - place
    watson-theater - place
  )
  (:goal (and
	(breakfast )
	(lecture-1-taken )
	))
  (:init 
	(at watson-theater)
	(is-angazi-cafe angazi-cafe)
    (is-bookmark-cafe bookmark-cafe)
    (is-cbs cbs)
    (is-watson-theater watson-theater)
))
        