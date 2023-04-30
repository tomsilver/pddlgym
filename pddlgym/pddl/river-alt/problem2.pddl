
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
	f0-8f - location
	f0-9f - location
	f0-10f - location
	f0-11f - location
	f0-12f - location
	f0-13f - location
	f0-14f - location
	f1-0f - location
	f1-1f - location
	f1-2f - location
	f1-3f - location
	f1-4f - location
	f1-5f - location
	f1-6f - location
	f1-7f - location
	f1-8f - location
	f1-9f - location
	f1-10f - location
	f1-11f - location
	f1-12f - location
	f1-13f - location
	f1-14f - location
	f2-0f - location
	f2-1f - location
	f2-2f - location
	f2-3f - location
	f2-4f - location
	f2-5f - location
	f2-6f - location
	f2-7f - location
	f2-8f - location
	f2-9f - location
	f2-10f - location
	f2-11f - location
	f2-12f - location
	f2-13f - location
	f2-14f - location
	f3-0f - location
	f3-1f - location
	f3-2f - location
	f3-3f - location
	f3-4f - location
	f3-5f - location
	f3-6f - location
	f3-7f - location
	f3-8f - location
	f3-9f - location
	f3-10f - location
	f3-11f - location
	f3-12f - location
	f3-13f - location
	f3-14f - location
	f4-0f - location
	f4-1f - location
	f4-2f - location
	f4-3f - location
	f4-4f - location
	f4-5f - location
	f4-6f - location
	f4-7f - location
	f4-8f - location
	f4-9f - location
	f4-10f - location
	f4-11f - location
	f4-12f - location
	f4-13f - location
	f4-14f - location
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
	(conn f1-7f f1-6f up)
	(conn f1-7f f2-7f right)
	(conn f1-7f f1-8f down)
	(conn f1-7f f0-7f left)
	(conn f1-8f f1-7f up)
	(conn f1-8f f2-8f right)
	(conn f1-8f f1-9f down)
	(conn f1-8f f0-8f left)
	(conn f1-9f f1-8f up)
	(conn f1-9f f2-9f right)
	(conn f1-9f f1-10f down)
	(conn f1-9f f0-9f left)
	(conn f1-10f f1-9f up)
	(conn f1-10f f2-10f right)
	(conn f1-10f f1-11f down)
	(conn f1-10f f0-10f left)
	(conn f1-11f f1-10f up)
	(conn f1-11f f2-11f right)
	(conn f1-11f f1-12f down)
	(conn f1-11f f0-11f left)
	(conn f1-12f f1-11f up)
	(conn f1-12f f2-12f right)
	(conn f1-12f f1-13f down)
	(conn f1-12f f0-12f left)
	(conn f1-13f f1-12f up)
	(conn f1-13f f2-13f right)
	(conn f1-13f f1-14f down)
	(conn f1-13f f0-13f left)
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
	(conn f2-7f f2-6f up)
	(conn f2-7f f3-7f right)
	(conn f2-7f f2-8f down)
	(conn f2-7f f1-7f left)
	(conn f2-8f f2-7f up)
	(conn f2-8f f3-8f right)
	(conn f2-8f f2-9f down)
	(conn f2-8f f1-8f left)
	(conn f2-9f f2-8f up)
	(conn f2-9f f3-9f right)
	(conn f2-9f f2-10f down)
	(conn f2-9f f1-9f left)
	(conn f2-10f f2-9f up)
	(conn f2-10f f3-10f right)
	(conn f2-10f f2-11f down)
	(conn f2-10f f1-10f left)
	(conn f2-11f f2-10f up)
	(conn f2-11f f3-11f right)
	(conn f2-11f f2-12f down)
	(conn f2-11f f1-11f left)
	(conn f2-12f f2-11f up)
	(conn f2-12f f3-12f right)
	(conn f2-12f f2-13f down)
	(conn f2-12f f1-12f left)
	(conn f2-13f f2-12f up)
	(conn f2-13f f3-13f right)
	(conn f2-13f f2-14f down)
	(conn f2-13f f1-13f left)
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
	(conn f3-7f f3-6f up)
	(conn f3-7f f4-7f right)
	(conn f3-7f f3-8f down)
	(conn f3-7f f2-7f left)
	(conn f3-8f f3-7f up)
	(conn f3-8f f4-8f right)
	(conn f3-8f f3-9f down)
	(conn f3-8f f2-8f left)
	(conn f3-9f f3-8f up)
	(conn f3-9f f4-9f right)
	(conn f3-9f f3-10f down)
	(conn f3-9f f2-9f left)
	(conn f3-10f f3-9f up)
	(conn f3-10f f4-10f right)
	(conn f3-10f f3-11f down)
	(conn f3-10f f2-10f left)
	(conn f3-11f f3-10f up)
	(conn f3-11f f4-11f right)
	(conn f3-11f f3-12f down)
	(conn f3-11f f2-11f left)
	(conn f3-12f f3-11f up)
	(conn f3-12f f4-12f right)
	(conn f3-12f f3-13f down)
	(conn f3-12f f2-12f left)
	(conn f3-13f f3-12f up)
	(conn f3-13f f4-13f right)
	(conn f3-13f f3-14f down)
	(conn f3-13f f2-13f left)
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
	(conn f0-7f f1-7f right)
	(conn f0-7f f0-8f down)
	(conn f0-7f f0-6f up)
	(conn f0-8f f1-8f right)
	(conn f0-8f f0-9f down)
	(conn f0-8f f0-7f up)
	(conn f0-9f f1-9f right)
	(conn f0-9f f0-10f down)
	(conn f0-9f f0-8f up)
	(conn f0-10f f1-10f right)
	(conn f0-10f f0-11f down)
	(conn f0-10f f0-9f up)
	(conn f0-11f f1-11f right)
	(conn f0-11f f0-12f down)
	(conn f0-11f f0-10f up)
	(conn f0-12f f1-12f right)
	(conn f0-12f f0-13f down)
	(conn f0-12f f0-11f up)
	(conn f0-13f f1-13f right)
	(conn f0-13f f0-14f down)
	(conn f0-13f f0-12f up)
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
	(conn f4-7f f4-8f down)
	(conn f4-7f f4-6f up)
	(conn f4-8f f3-8f left)
	(conn f4-8f f4-9f down)
	(conn f4-8f f4-7f up)
	(conn f4-9f f3-9f left)
	(conn f4-9f f4-10f down)
	(conn f4-9f f4-8f up)
	(conn f4-10f f3-10f left)
	(conn f4-10f f4-11f down)
	(conn f4-10f f4-9f up)
	(conn f4-11f f3-11f left)
	(conn f4-11f f4-12f down)
	(conn f4-11f f4-10f up)
	(conn f4-12f f3-12f left)
	(conn f4-12f f4-13f down)
	(conn f4-12f f4-11f up)
	(conn f4-13f f3-13f left)
	(conn f4-13f f4-14f down)
	(conn f4-13f f4-12f up)
	(conn f4-14f f3-14f left)
	(conn f4-14f f4-13f up)
	(conn f1-0f f1-1f down)
	(conn f1-0f f2-0f right)
	(conn f1-0f f0-0f left)
	(conn f2-0f f2-1f down)
	(conn f2-0f f3-0f right)
	(conn f2-0f f1-0f left)
	(conn f3-0f f3-1f down)
	(conn f3-0f f4-0f right)
	(conn f3-0f f2-0f left)
	(conn f0-14f f0-13f up)
	(conn f1-14f f1-13f up)
	(conn f2-14f f2-13f up)
	(conn f3-14f f3-13f up)
	(conn f4-14f f4-13f up)

    (is-river f1-1f)
	(is-river f1-2f)
	(is-river f1-3f)
	(is-river f1-4f)
	(is-river f1-5f)
	(is-river f1-6f)
	(is-river f1-7f)
	(is-river f1-8f)
	(is-river f1-9f)
	(is-river f1-10f)
	(is-river f1-11f)
	(is-river f1-12f)
	(is-river f1-13f)
	(is-river f2-1f)
	(is-river f2-2f)
	(is-river f2-3f)
	(is-river f2-4f)
	(is-river f2-5f)
	(is-river f2-6f)
	(is-river f2-7f)
	(is-river f2-8f)
	(is-river f2-9f)
	(is-river f2-10f)
	(is-river f2-11f)
	(is-river f2-12f)
	(is-river f2-13f)
	(is-river f3-1f)
	(is-river f3-2f)
	(is-river f3-3f)
	(is-river f3-4f)
	(is-river f3-5f)
	(is-river f3-6f)
	(is-river f3-7f)
	(is-river f3-8f)
	(is-river f3-9f)
	(is-river f3-10f)
	(is-river f3-11f)
	(is-river f3-12f)
	(is-river f3-13f)

    (is-waterfall f0-14f)
	(is-waterfall f1-14f)
	(is-waterfall f2-14f)
	(is-waterfall f3-14f)

    (is-bank f0-0f)
	(is-bank f0-1f)
	(is-bank f0-2f)
	(is-bank f0-3f)
	(is-bank f0-4f)
	(is-bank f0-5f)
	(is-bank f0-6f)
	(is-bank f0-7f)
	(is-bank f0-8f)
	(is-bank f0-9f)
	(is-bank f0-10f)
	(is-bank f0-11f)
	(is-bank f0-12f)
	(is-bank f0-13f)
	(is-bank f4-0f)
	(is-bank f4-1f)
	(is-bank f4-2f)
	(is-bank f4-3f)
	(is-bank f4-4f)
	(is-bank f4-5f)
	(is-bank f4-6f)
	(is-bank f4-7f)
	(is-bank f4-8f)
	(is-bank f4-9f)
	(is-bank f4-10f)
	(is-bank f4-11f)
	(is-bank f4-12f)
	(is-bank f4-13f)
	(is-bank f4-14f)

    (is-bridge f1-0f)
	(is-bridge f2-0f)
	(is-bridge f3-0f)

    (move down)
    (move left)
    (move right)
    (move up)

    (robot-at robot0 f0-13f)
    (is-goal f4-14f)
  )
  (:goal (and
    (robot-at robot0 f4-14f)))
)
    
