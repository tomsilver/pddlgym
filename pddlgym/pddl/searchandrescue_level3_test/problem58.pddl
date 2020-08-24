
(define (problem searchandrescue) (:domain searchandrescue)
  (:objects
        f0-0f - location
	f0-1f - location
	f0-2f - location
	f0-3f - location
	f0-4f - location
	f0-5f - location
	f1-0f - location
	f1-1f - location
	f1-2f - location
	f1-3f - location
	f1-4f - location
	f1-5f - location
	f2-0f - location
	f2-1f - location
	f2-2f - location
	f2-3f - location
	f2-4f - location
	f2-5f - location
	f3-0f - location
	f3-1f - location
	f3-2f - location
	f3-3f - location
	f3-4f - location
	f3-5f - location
	f4-0f - location
	f4-1f - location
	f4-2f - location
	f4-3f - location
	f4-4f - location
	f4-5f - location
	f5-0f - location
	f5-1f - location
	f5-2f - location
	f5-3f - location
	f5-4f - location
	f5-5f - location
	hospital0 - hospital
	person0 - person
	robot0 - robot
	wall2-2 - wall
	wall2-3 - wall
	wall2-4 - wall
	wall4-0 - wall
	wall4-2 - wall
	wall5-4 - wall
  )
  (:init 
	(clear f0-0f)
	(clear f0-1f)
	(clear f0-2f)
	(clear f0-3f)
	(clear f0-4f)
	(clear f1-0f)
	(clear f1-1f)
	(clear f1-2f)
	(clear f1-3f)
	(clear f1-4f)
	(clear f1-5f)
	(clear f2-0f)
	(clear f2-1f)
	(clear f2-5f)
	(clear f3-0f)
	(clear f3-1f)
	(clear f3-2f)
	(clear f3-3f)
	(clear f3-4f)
	(clear f3-5f)
	(clear f4-1f)
	(clear f4-3f)
	(clear f4-4f)
	(clear f4-5f)
	(clear f5-0f)
	(clear f5-1f)
	(clear f5-2f)
	(clear f5-3f)
	(clear f5-5f)
	(conn f0-0f f0-1f right)
	(conn f0-0f f1-0f down)
	(conn f0-1f f0-0f left)
	(conn f0-1f f0-2f right)
	(conn f0-1f f1-1f down)
	(conn f0-2f f0-1f left)
	(conn f0-2f f0-3f right)
	(conn f0-2f f1-2f down)
	(conn f0-3f f0-2f left)
	(conn f0-3f f0-4f right)
	(conn f0-3f f1-3f down)
	(conn f0-4f f0-3f left)
	(conn f0-4f f0-5f right)
	(conn f0-4f f1-4f down)
	(conn f0-5f f0-4f left)
	(conn f0-5f f1-5f down)
	(conn f1-0f f0-0f up)
	(conn f1-0f f1-1f right)
	(conn f1-0f f2-0f down)
	(conn f1-1f f0-1f up)
	(conn f1-1f f1-0f left)
	(conn f1-1f f1-2f right)
	(conn f1-1f f2-1f down)
	(conn f1-2f f0-2f up)
	(conn f1-2f f1-1f left)
	(conn f1-2f f1-3f right)
	(conn f1-2f f2-2f down)
	(conn f1-3f f0-3f up)
	(conn f1-3f f1-2f left)
	(conn f1-3f f1-4f right)
	(conn f1-3f f2-3f down)
	(conn f1-4f f0-4f up)
	(conn f1-4f f1-3f left)
	(conn f1-4f f1-5f right)
	(conn f1-4f f2-4f down)
	(conn f1-5f f0-5f up)
	(conn f1-5f f1-4f left)
	(conn f1-5f f2-5f down)
	(conn f2-0f f1-0f up)
	(conn f2-0f f2-1f right)
	(conn f2-0f f3-0f down)
	(conn f2-1f f1-1f up)
	(conn f2-1f f2-0f left)
	(conn f2-1f f2-2f right)
	(conn f2-1f f3-1f down)
	(conn f2-2f f1-2f up)
	(conn f2-2f f2-1f left)
	(conn f2-2f f2-3f right)
	(conn f2-2f f3-2f down)
	(conn f2-3f f1-3f up)
	(conn f2-3f f2-2f left)
	(conn f2-3f f2-4f right)
	(conn f2-3f f3-3f down)
	(conn f2-4f f1-4f up)
	(conn f2-4f f2-3f left)
	(conn f2-4f f2-5f right)
	(conn f2-4f f3-4f down)
	(conn f2-5f f1-5f up)
	(conn f2-5f f2-4f left)
	(conn f2-5f f3-5f down)
	(conn f3-0f f2-0f up)
	(conn f3-0f f3-1f right)
	(conn f3-0f f4-0f down)
	(conn f3-1f f2-1f up)
	(conn f3-1f f3-0f left)
	(conn f3-1f f3-2f right)
	(conn f3-1f f4-1f down)
	(conn f3-2f f2-2f up)
	(conn f3-2f f3-1f left)
	(conn f3-2f f3-3f right)
	(conn f3-2f f4-2f down)
	(conn f3-3f f2-3f up)
	(conn f3-3f f3-2f left)
	(conn f3-3f f3-4f right)
	(conn f3-3f f4-3f down)
	(conn f3-4f f2-4f up)
	(conn f3-4f f3-3f left)
	(conn f3-4f f3-5f right)
	(conn f3-4f f4-4f down)
	(conn f3-5f f2-5f up)
	(conn f3-5f f3-4f left)
	(conn f3-5f f4-5f down)
	(conn f4-0f f3-0f up)
	(conn f4-0f f4-1f right)
	(conn f4-0f f5-0f down)
	(conn f4-1f f3-1f up)
	(conn f4-1f f4-0f left)
	(conn f4-1f f4-2f right)
	(conn f4-1f f5-1f down)
	(conn f4-2f f3-2f up)
	(conn f4-2f f4-1f left)
	(conn f4-2f f4-3f right)
	(conn f4-2f f5-2f down)
	(conn f4-3f f3-3f up)
	(conn f4-3f f4-2f left)
	(conn f4-3f f4-4f right)
	(conn f4-3f f5-3f down)
	(conn f4-4f f3-4f up)
	(conn f4-4f f4-3f left)
	(conn f4-4f f4-5f right)
	(conn f4-4f f5-4f down)
	(conn f4-5f f3-5f up)
	(conn f4-5f f4-4f left)
	(conn f4-5f f5-5f down)
	(conn f5-0f f4-0f up)
	(conn f5-0f f5-1f right)
	(conn f5-1f f4-1f up)
	(conn f5-1f f5-0f left)
	(conn f5-1f f5-2f right)
	(conn f5-2f f4-2f up)
	(conn f5-2f f5-1f left)
	(conn f5-2f f5-3f right)
	(conn f5-3f f4-3f up)
	(conn f5-3f f5-2f left)
	(conn f5-3f f5-4f right)
	(conn f5-4f f4-4f up)
	(conn f5-4f f5-3f left)
	(conn f5-4f f5-5f right)
	(conn f5-5f f4-5f up)
	(conn f5-5f f5-4f left)
	(dropoff )
	(handsfree robot0)
	(hospital-at hospital0 f3-0f)
	(move down)
	(move left)
	(move right)
	(move up)
	(person-at person0 f0-1f)
	(pickup person0)
	(robot-at robot0 f0-5f)
	(wall-at wall2-2 f2-2f)
	(wall-at wall2-3 f2-3f)
	(wall-at wall2-4 f2-4f)
	(wall-at wall4-0 f4-0f)
	(wall-at wall4-2 f4-2f)
	(wall-at wall5-4 f5-4f)
  )
  (:goal (and
	(person-at person0 f3-0f)))
)
