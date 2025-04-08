(define (problem navigation_inst_mdp__1)
	(:domain navigation_mini)
	(:objects
	  f0-0f - location
	  f0-1f - location
	  f0-2f - location
	  f1-0f - location
	  f1-1f - location
	  f1-2f - location
	)
	(:init 
        (conn f1-1f f1-0f up)
	    (conn f1-1f f1-2f down)
	    (conn f1-1f f0-1f left)
	    (conn f1-2f f1-1f up)
	    (conn f1-2f f0-2f left)
	    (conn f0-0f f1-0f right)
	    (conn f0-0f f0-1f down)
	    (conn f0-1f f1-1f right)
	    (conn f0-1f f0-2f down)
	    (conn f0-1f f0-0f up)
	    (conn f0-2f f1-2f right)
	    (conn f0-2f f0-1f up)
		(conn f1-0f f1-1f down)
	    (conn f1-0f f0-0f left)

		(is-prob f0-1f)
		(is-prob f1-1f)

		(is-col-0 f0-0f)
		(is-col-0 f0-1f)
		(is-col-0 f0-2f)
		(is-col-1 f1-0f)
		(is-col-1 f1-1f)
		(is-col-1 f1-2f)

		(move down)
		(move left)
		(move right)
		(move up)

		(robot-at f1-2f)
	)
    (:goal (and
      (robot-at f1-0f)))
)
