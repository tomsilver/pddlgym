
(define (problem river_alt) (:domain river_alt)
  (:objects
    f0-0f - location
	f0-1f - location
	f0-2f - location
	f0-3f - location
	f0-4f - location
	f0-5f - location
	f0-6f - location
	f0-7f - location
	f1-0f - location
	f1-1f - location
	f1-2f - location
	f1-3f - location
	f1-4f - location
	f1-5f - location
	f1-6f - location
	f1-7f - location
	f2-0f - location
	f2-1f - location
	f2-2f - location
	f2-3f - location
	f2-4f - location
	f2-5f - location
	f2-6f - location
	f2-7f - location
	f3-0f - location
	f3-1f - location
	f3-2f - location
	f3-3f - location
	f3-4f - location
	f3-5f - location
	f3-6f - location
	f3-7f - location
	f4-0f - location
	f4-1f - location
	f4-2f - location
	f4-3f - location
	f4-4f - location
	f4-5f - location
	f4-6f - location
	f4-7f - location
    robot0 - robot
  )
  (:init
    (conn f1-1f f1-0f up)
	(conn f1-1f f2-1f right)
	(conn f1-1f f1-2f down)
	(conn f1-1f f0-1f left)
	(conn f1-2f f1-1f up)
	(conn f1-2f f2-2f right)
	(conn f1-2f f1-3f down)
	(conn f1-2f f0-2f left)
	(conn f1-3f f1-2f up)
	(conn f1-3f f2-3f right)
	(conn f1-3f f1-4f down)
	(conn f1-3f f0-3f left)
	(conn f1-4f f1-3f up)
	(conn f1-4f f2-4f right)
	(conn f1-4f f1-5f down)
	(conn f1-4f f0-4f left)
	(conn f1-5f f1-4f up)
	(conn f1-5f f2-5f right)
	(conn f1-5f f1-6f down)
	(conn f1-5f f0-5f left)
	(conn f1-6f f1-5f up)
	(conn f1-6f f2-6f right)
	(conn f1-6f f1-7f down)
	(conn f1-6f f0-6f left)
	(conn f2-1f f2-0f up)
	(conn f2-1f f3-1f right)
	(conn f2-1f f2-2f down)
	(conn f2-1f f1-1f left)
	(conn f2-2f f2-1f up)
	(conn f2-2f f3-2f right)
	(conn f2-2f f2-3f down)
	(conn f2-2f f1-2f left)
	(conn f2-3f f2-2f up)
	(conn f2-3f f3-3f right)
	(conn f2-3f f2-4f down)
	(conn f2-3f f1-3f left)
	(conn f2-4f f2-3f up)
	(conn f2-4f f3-4f right)
	(conn f2-4f f2-5f down)
	(conn f2-4f f1-4f left)
	(conn f2-5f f2-4f up)
	(conn f2-5f f3-5f right)
	(conn f2-5f f2-6f down)
	(conn f2-5f f1-5f left)
	(conn f2-6f f2-5f up)
	(conn f2-6f f3-6f right)
	(conn f2-6f f2-7f down)
	(conn f2-6f f1-6f left)
	(conn f3-1f f3-0f up)
	(conn f3-1f f4-1f right)
	(conn f3-1f f3-2f down)
	(conn f3-1f f2-1f left)
	(conn f3-2f f3-1f up)
	(conn f3-2f f4-2f right)
	(conn f3-2f f3-3f down)
	(conn f3-2f f2-2f left)
	(conn f3-3f f3-2f up)
	(conn f3-3f f4-3f right)
	(conn f3-3f f3-4f down)
	(conn f3-3f f2-3f left)
	(conn f3-4f f3-3f up)
	(conn f3-4f f4-4f right)
	(conn f3-4f f3-5f down)
	(conn f3-4f f2-4f left)
	(conn f3-5f f3-4f up)
	(conn f3-5f f4-5f right)
	(conn f3-5f f3-6f down)
	(conn f3-5f f2-5f left)
	(conn f3-6f f3-5f up)
	(conn f3-6f f4-6f right)
	(conn f3-6f f3-7f down)
	(conn f3-6f f2-6f left)
	(conn f0-0f f1-0f right)
	(conn f0-0f f0-1f down)
	(conn f0-1f f1-1f right)
	(conn f0-1f f0-2f down)
	(conn f0-1f f0-0f up)
	(conn f0-2f f1-2f right)
	(conn f0-2f f0-3f down)
	(conn f0-2f f0-1f up)
	(conn f0-3f f1-3f right)
	(conn f0-3f f0-4f down)
	(conn f0-3f f0-2f up)
	(conn f0-4f f1-4f right)
	(conn f0-4f f0-5f down)
	(conn f0-4f f0-3f up)
	(conn f0-5f f1-5f right)
	(conn f0-5f f0-6f down)
	(conn f0-5f f0-4f up)
	(conn f0-6f f1-6f right)
	(conn f0-6f f0-7f down)
	(conn f0-6f f0-5f up)
	(conn f4-0f f3-0f left)
	(conn f4-0f f4-1f down)
	(conn f4-1f f3-1f left)
	(conn f4-1f f4-2f down)
	(conn f4-1f f4-0f up)
	(conn f4-2f f3-2f left)
	(conn f4-2f f4-3f down)
	(conn f4-2f f4-1f up)
	(conn f4-3f f3-3f left)
	(conn f4-3f f4-4f down)
	(conn f4-3f f4-2f up)
	(conn f4-4f f3-4f left)
	(conn f4-4f f4-5f down)
	(conn f4-4f f4-3f up)
	(conn f4-5f f3-5f left)
	(conn f4-5f f4-6f down)
	(conn f4-5f f4-4f up)
	(conn f4-6f f3-6f left)
	(conn f4-6f f4-7f down)
	(conn f4-6f f4-5f up)
	(conn f4-7f f3-7f left)
	(conn f4-7f f4-6f up)
	(conn f1-0f f1-1f down)
	(conn f1-0f f2-0f right)
	(conn f1-0f f0-0f left)
	(conn f2-0f f2-1f down)
	(conn f2-0f f3-0f right)
	(conn f2-0f f1-0f left)
	(conn f3-0f f3-1f down)
	(conn f3-0f f4-0f right)
	(conn f3-0f f2-0f left)
	(conn f0-7f f0-6f up)
	(conn f1-7f f1-6f up)
	(conn f2-7f f2-6f up)
	(conn f3-7f f3-6f up)
	(conn f4-7f f4-6f up)

    (is-river f1-1f)
	(is-river f1-2f)
	(is-river f1-3f)
	(is-river f1-4f)
	(is-river f1-5f)
	(is-river f1-6f)
	(is-river f2-1f)
	(is-river f2-2f)
	(is-river f2-3f)
	(is-river f2-4f)
	(is-river f2-5f)
	(is-river f2-6f)
	(is-river f3-1f)
	(is-river f3-2f)
	(is-river f3-3f)
	(is-river f3-4f)
	(is-river f3-5f)
	(is-river f3-6f)

    (is-waterfall f0-7f)
	(is-waterfall f1-7f)
	(is-waterfall f2-7f)
	(is-waterfall f3-7f)

    (is-bank f0-0f)
	(is-bank f0-1f)
	(is-bank f0-2f)
	(is-bank f0-3f)
	(is-bank f0-4f)
	(is-bank f0-5f)
	(is-bank f0-6f)
	(is-bank f4-0f)
	(is-bank f4-1f)
	(is-bank f4-2f)
	(is-bank f4-3f)
	(is-bank f4-4f)
	(is-bank f4-5f)
	(is-bank f4-6f)
	(is-bank f4-7f)

    (is-bridge f1-0f)
	(is-bridge f2-0f)
	(is-bridge f3-0f)

    (move down)
    (move left)
    (move right)
    (move up)

    (robot-at robot0 f0-6f)
    (is-goal f4-7f)
  )
  (:goal (and
    (robot-at robot0 f4-7f)))
)
    
