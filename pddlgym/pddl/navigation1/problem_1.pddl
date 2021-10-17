(define (problem navigation_inst_mdp__1)
	(:domain navigation1)
	(:objects
	  f0-0f - location
	  f0-1f - location
	  f0-2f - location
	  f1-0f - location
	  f1-1f - location
	  f1-2f - location
	  f2-0f - location
	  f2-1f - location
	  f2-2f - location
	  f3-0f - location
	  f3-1f - location
	  f3-2f - location
	)
	(:init 
        (conn f1-1f f1-0f up)
	    (conn f1-1f f2-1f right)
	    (conn f1-1f f1-2f down)
	    (conn f1-1f f0-1f left)
	    (conn f1-2f f1-1f up)
	    (conn f1-2f f2-2f right)
	    (conn f1-2f f0-2f left)
	    (conn f2-1f f2-0f up)
	    (conn f2-1f f3-1f right)
	    (conn f2-1f f2-2f down)
	    (conn f2-1f f1-1f left)
	    (conn f2-2f f2-1f up)
	    (conn f2-2f f3-2f right)
	    (conn f2-2f f1-2f left)
	    (conn f3-1f f3-0f up)
	    (conn f3-1f f3-2f down)
	    (conn f3-1f f2-1f left)
	    (conn f3-2f f3-1f up)
	    (conn f3-2f f2-2f left)
	    (conn f0-0f f1-0f right)
	    (conn f0-0f f0-1f down)
	    (conn f0-1f f1-1f right)
	    (conn f0-1f f0-2f down)
	    (conn f0-1f f0-0f up)
	    (conn f0-2f f1-2f right)
	    (conn f0-2f f0-1f up)
		(conn f1-0f f1-1f down)
	    (conn f1-0f f2-0f right)
	    (conn f1-0f f0-0f left)
	    (conn f2-0f f2-1f down)
	    (conn f2-0f f3-0f right)
	    (conn f2-0f f1-0f left)
	    (conn f3-0f f3-1f down)
	    (conn f3-0f f2-0f left)

		(is-prob f0-1f)
		(is-prob f1-1f)
		(is-prob f2-1f)
		(is-prob f3-1f)

		(is-col-0 f0-0f)
		(is-col-0 f0-1f)
		(is-col-0 f0-2f)
		(is-col-1 f1-0f)
		(is-col-1 f1-1f)
		(is-col-1 f1-2f)
		(is-col-2 f2-0f)
		(is-col-2 f2-1f)
		(is-col-2 f2-2f)
		(is-col-3 f3-0f)
		(is-col-3 f3-1f)
		(is-col-3 f3-2f)

		(move down)
		(move left)
		(move right)
		(move up)

		(robot-at f3-2f)
	)
    (:goal (and
      (robot-at f3-0f)))
)
