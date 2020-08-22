
(define (problem searchandrescue) (:domain searchandrescue)
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
	f5-0f - location
	f5-1f - location
	f5-2f - location
	f5-3f - location
	f5-4f - location
	f5-5f - location
	f5-6f - location
	f5-7f - location
	f5-8f - location
	f5-9f - location
	f6-0f - location
	f6-1f - location
	f6-2f - location
	f6-3f - location
	f6-4f - location
	f6-5f - location
	f6-6f - location
	f6-7f - location
	f6-8f - location
	f6-9f - location
	f7-0f - location
	f7-1f - location
	f7-2f - location
	f7-3f - location
	f7-4f - location
	f7-5f - location
	f7-6f - location
	f7-7f - location
	f7-8f - location
	f7-9f - location
	f8-0f - location
	f8-1f - location
	f8-2f - location
	f8-3f - location
	f8-4f - location
	f8-5f - location
	f8-6f - location
	f8-7f - location
	f8-8f - location
	f8-9f - location
	f9-0f - location
	f9-1f - location
	f9-2f - location
	f9-3f - location
	f9-4f - location
	f9-5f - location
	f9-6f - location
	f9-7f - location
	f9-8f - location
	f9-9f - location
	hospital0 - hospital
	person0 - person
	robot0 - robot
	wall0 - wall
	wall1 - wall
	wall10 - wall
	wall11 - wall
	wall12 - wall
	wall13 - wall
	wall14 - wall
	wall15 - wall
	wall16 - wall
	wall17 - wall
	wall18 - wall
	wall19 - wall
	wall2 - wall
	wall20 - wall
	wall21 - wall
	wall22 - wall
	wall23 - wall
	wall3 - wall
	wall4 - wall
	wall5 - wall
	wall6 - wall
	wall7 - wall
	wall8 - wall
	wall9 - wall
  )
  (:init 
	(clear f0-0f)
	(clear f0-1f)
	(clear f0-2f)
	(clear f0-3f)
	(clear f0-4f)
	(clear f0-5f)
	(clear f0-6f)
	(clear f0-7f)
	(clear f0-8f)
	(clear f0-9f)
	(clear f1-0f)
	(clear f1-1f)
	(clear f1-2f)
	(clear f1-3f)
	(clear f1-7f)
	(clear f1-8f)
	(clear f1-9f)
	(clear f2-0f)
	(clear f2-1f)
	(clear f2-2f)
	(clear f2-3f)
	(clear f2-5f)
	(clear f2-7f)
	(clear f2-8f)
	(clear f2-9f)
	(clear f3-0f)
	(clear f3-1f)
	(clear f3-2f)
	(clear f3-3f)
	(clear f3-5f)
	(clear f3-6f)
	(clear f3-7f)
	(clear f3-8f)
	(clear f3-9f)
	(clear f4-0f)
	(clear f4-1f)
	(clear f4-2f)
	(clear f4-4f)
	(clear f4-5f)
	(clear f4-6f)
	(clear f4-8f)
	(clear f4-9f)
	(clear f5-0f)
	(clear f5-1f)
	(clear f5-2f)
	(clear f5-4f)
	(clear f5-6f)
	(clear f5-7f)
	(clear f5-8f)
	(clear f5-9f)
	(clear f6-2f)
	(clear f6-5f)
	(clear f6-6f)
	(clear f6-8f)
	(clear f7-0f)
	(clear f7-1f)
	(clear f7-2f)
	(clear f7-3f)
	(clear f7-4f)
	(clear f7-6f)
	(clear f7-8f)
	(clear f8-0f)
	(clear f8-1f)
	(clear f8-3f)
	(clear f8-4f)
	(clear f8-5f)
	(clear f8-6f)
	(clear f8-8f)
	(clear f8-9f)
	(clear f9-0f)
	(clear f9-1f)
	(clear f9-3f)
	(clear f9-4f)
	(clear f9-6f)
	(clear f9-8f)
	(clear f9-9f)
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
	(conn f0-5f f0-6f right)
	(conn f0-5f f1-5f down)
	(conn f0-6f f0-5f left)
	(conn f0-6f f0-7f right)
	(conn f0-6f f1-6f down)
	(conn f0-7f f0-6f left)
	(conn f0-7f f0-8f right)
	(conn f0-7f f1-7f down)
	(conn f0-8f f0-7f left)
	(conn f0-8f f0-9f right)
	(conn f0-8f f1-8f down)
	(conn f0-9f f0-8f left)
	(conn f0-9f f1-9f down)
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
	(conn f1-5f f1-6f right)
	(conn f1-5f f2-5f down)
	(conn f1-6f f0-6f up)
	(conn f1-6f f1-5f left)
	(conn f1-6f f1-7f right)
	(conn f1-6f f2-6f down)
	(conn f1-7f f0-7f up)
	(conn f1-7f f1-6f left)
	(conn f1-7f f1-8f right)
	(conn f1-7f f2-7f down)
	(conn f1-8f f0-8f up)
	(conn f1-8f f1-7f left)
	(conn f1-8f f1-9f right)
	(conn f1-8f f2-8f down)
	(conn f1-9f f0-9f up)
	(conn f1-9f f1-8f left)
	(conn f1-9f f2-9f down)
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
	(conn f2-5f f2-6f right)
	(conn f2-5f f3-5f down)
	(conn f2-6f f1-6f up)
	(conn f2-6f f2-5f left)
	(conn f2-6f f2-7f right)
	(conn f2-6f f3-6f down)
	(conn f2-7f f1-7f up)
	(conn f2-7f f2-6f left)
	(conn f2-7f f2-8f right)
	(conn f2-7f f3-7f down)
	(conn f2-8f f1-8f up)
	(conn f2-8f f2-7f left)
	(conn f2-8f f2-9f right)
	(conn f2-8f f3-8f down)
	(conn f2-9f f1-9f up)
	(conn f2-9f f2-8f left)
	(conn f2-9f f3-9f down)
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
	(conn f3-5f f3-6f right)
	(conn f3-5f f4-5f down)
	(conn f3-6f f2-6f up)
	(conn f3-6f f3-5f left)
	(conn f3-6f f3-7f right)
	(conn f3-6f f4-6f down)
	(conn f3-7f f2-7f up)
	(conn f3-7f f3-6f left)
	(conn f3-7f f3-8f right)
	(conn f3-7f f4-7f down)
	(conn f3-8f f2-8f up)
	(conn f3-8f f3-7f left)
	(conn f3-8f f3-9f right)
	(conn f3-8f f4-8f down)
	(conn f3-9f f2-9f up)
	(conn f3-9f f3-8f left)
	(conn f3-9f f4-9f down)
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
	(conn f4-5f f4-6f right)
	(conn f4-5f f5-5f down)
	(conn f4-6f f3-6f up)
	(conn f4-6f f4-5f left)
	(conn f4-6f f4-7f right)
	(conn f4-6f f5-6f down)
	(conn f4-7f f3-7f up)
	(conn f4-7f f4-6f left)
	(conn f4-7f f4-8f right)
	(conn f4-7f f5-7f down)
	(conn f4-8f f3-8f up)
	(conn f4-8f f4-7f left)
	(conn f4-8f f4-9f right)
	(conn f4-8f f5-8f down)
	(conn f4-9f f3-9f up)
	(conn f4-9f f4-8f left)
	(conn f4-9f f5-9f down)
	(conn f5-0f f4-0f up)
	(conn f5-0f f5-1f right)
	(conn f5-0f f6-0f down)
	(conn f5-1f f4-1f up)
	(conn f5-1f f5-0f left)
	(conn f5-1f f5-2f right)
	(conn f5-1f f6-1f down)
	(conn f5-2f f4-2f up)
	(conn f5-2f f5-1f left)
	(conn f5-2f f5-3f right)
	(conn f5-2f f6-2f down)
	(conn f5-3f f4-3f up)
	(conn f5-3f f5-2f left)
	(conn f5-3f f5-4f right)
	(conn f5-3f f6-3f down)
	(conn f5-4f f4-4f up)
	(conn f5-4f f5-3f left)
	(conn f5-4f f5-5f right)
	(conn f5-4f f6-4f down)
	(conn f5-5f f4-5f up)
	(conn f5-5f f5-4f left)
	(conn f5-5f f5-6f right)
	(conn f5-5f f6-5f down)
	(conn f5-6f f4-6f up)
	(conn f5-6f f5-5f left)
	(conn f5-6f f5-7f right)
	(conn f5-6f f6-6f down)
	(conn f5-7f f4-7f up)
	(conn f5-7f f5-6f left)
	(conn f5-7f f5-8f right)
	(conn f5-7f f6-7f down)
	(conn f5-8f f4-8f up)
	(conn f5-8f f5-7f left)
	(conn f5-8f f5-9f right)
	(conn f5-8f f6-8f down)
	(conn f5-9f f4-9f up)
	(conn f5-9f f5-8f left)
	(conn f5-9f f6-9f down)
	(conn f6-0f f5-0f up)
	(conn f6-0f f6-1f right)
	(conn f6-0f f7-0f down)
	(conn f6-1f f5-1f up)
	(conn f6-1f f6-0f left)
	(conn f6-1f f6-2f right)
	(conn f6-1f f7-1f down)
	(conn f6-2f f5-2f up)
	(conn f6-2f f6-1f left)
	(conn f6-2f f6-3f right)
	(conn f6-2f f7-2f down)
	(conn f6-3f f5-3f up)
	(conn f6-3f f6-2f left)
	(conn f6-3f f6-4f right)
	(conn f6-3f f7-3f down)
	(conn f6-4f f5-4f up)
	(conn f6-4f f6-3f left)
	(conn f6-4f f6-5f right)
	(conn f6-4f f7-4f down)
	(conn f6-5f f5-5f up)
	(conn f6-5f f6-4f left)
	(conn f6-5f f6-6f right)
	(conn f6-5f f7-5f down)
	(conn f6-6f f5-6f up)
	(conn f6-6f f6-5f left)
	(conn f6-6f f6-7f right)
	(conn f6-6f f7-6f down)
	(conn f6-7f f5-7f up)
	(conn f6-7f f6-6f left)
	(conn f6-7f f6-8f right)
	(conn f6-7f f7-7f down)
	(conn f6-8f f5-8f up)
	(conn f6-8f f6-7f left)
	(conn f6-8f f6-9f right)
	(conn f6-8f f7-8f down)
	(conn f6-9f f5-9f up)
	(conn f6-9f f6-8f left)
	(conn f6-9f f7-9f down)
	(conn f7-0f f6-0f up)
	(conn f7-0f f7-1f right)
	(conn f7-0f f8-0f down)
	(conn f7-1f f6-1f up)
	(conn f7-1f f7-0f left)
	(conn f7-1f f7-2f right)
	(conn f7-1f f8-1f down)
	(conn f7-2f f6-2f up)
	(conn f7-2f f7-1f left)
	(conn f7-2f f7-3f right)
	(conn f7-2f f8-2f down)
	(conn f7-3f f6-3f up)
	(conn f7-3f f7-2f left)
	(conn f7-3f f7-4f right)
	(conn f7-3f f8-3f down)
	(conn f7-4f f6-4f up)
	(conn f7-4f f7-3f left)
	(conn f7-4f f7-5f right)
	(conn f7-4f f8-4f down)
	(conn f7-5f f6-5f up)
	(conn f7-5f f7-4f left)
	(conn f7-5f f7-6f right)
	(conn f7-5f f8-5f down)
	(conn f7-6f f6-6f up)
	(conn f7-6f f7-5f left)
	(conn f7-6f f7-7f right)
	(conn f7-6f f8-6f down)
	(conn f7-7f f6-7f up)
	(conn f7-7f f7-6f left)
	(conn f7-7f f7-8f right)
	(conn f7-7f f8-7f down)
	(conn f7-8f f6-8f up)
	(conn f7-8f f7-7f left)
	(conn f7-8f f7-9f right)
	(conn f7-8f f8-8f down)
	(conn f7-9f f6-9f up)
	(conn f7-9f f7-8f left)
	(conn f7-9f f8-9f down)
	(conn f8-0f f7-0f up)
	(conn f8-0f f8-1f right)
	(conn f8-0f f9-0f down)
	(conn f8-1f f7-1f up)
	(conn f8-1f f8-0f left)
	(conn f8-1f f8-2f right)
	(conn f8-1f f9-1f down)
	(conn f8-2f f7-2f up)
	(conn f8-2f f8-1f left)
	(conn f8-2f f8-3f right)
	(conn f8-2f f9-2f down)
	(conn f8-3f f7-3f up)
	(conn f8-3f f8-2f left)
	(conn f8-3f f8-4f right)
	(conn f8-3f f9-3f down)
	(conn f8-4f f7-4f up)
	(conn f8-4f f8-3f left)
	(conn f8-4f f8-5f right)
	(conn f8-4f f9-4f down)
	(conn f8-5f f7-5f up)
	(conn f8-5f f8-4f left)
	(conn f8-5f f8-6f right)
	(conn f8-5f f9-5f down)
	(conn f8-6f f7-6f up)
	(conn f8-6f f8-5f left)
	(conn f8-6f f8-7f right)
	(conn f8-6f f9-6f down)
	(conn f8-7f f7-7f up)
	(conn f8-7f f8-6f left)
	(conn f8-7f f8-8f right)
	(conn f8-7f f9-7f down)
	(conn f8-8f f7-8f up)
	(conn f8-8f f8-7f left)
	(conn f8-8f f8-9f right)
	(conn f8-8f f9-8f down)
	(conn f8-9f f7-9f up)
	(conn f8-9f f8-8f left)
	(conn f8-9f f9-9f down)
	(conn f9-0f f8-0f up)
	(conn f9-0f f9-1f right)
	(conn f9-1f f8-1f up)
	(conn f9-1f f9-0f left)
	(conn f9-1f f9-2f right)
	(conn f9-2f f8-2f up)
	(conn f9-2f f9-1f left)
	(conn f9-2f f9-3f right)
	(conn f9-3f f8-3f up)
	(conn f9-3f f9-2f left)
	(conn f9-3f f9-4f right)
	(conn f9-4f f8-4f up)
	(conn f9-4f f9-3f left)
	(conn f9-4f f9-5f right)
	(conn f9-5f f8-5f up)
	(conn f9-5f f9-4f left)
	(conn f9-5f f9-6f right)
	(conn f9-6f f8-6f up)
	(conn f9-6f f9-5f left)
	(conn f9-6f f9-7f right)
	(conn f9-7f f8-7f up)
	(conn f9-7f f9-6f left)
	(conn f9-7f f9-8f right)
	(conn f9-8f f8-8f up)
	(conn f9-8f f9-7f left)
	(conn f9-8f f9-9f right)
	(conn f9-9f f8-9f up)
	(conn f9-9f f9-8f left)
	(dropoff )
	(handsfree robot0)
	(hospital-at hospital0 f9-9f)
	(move down)
	(move left)
	(move right)
	(move up)
	(person-at person0 f2-7f)
	(pickup person0)
	(robot-at robot0 f9-3f)
	(wall-at wall0 f1-4f)
	(wall-at wall10 f6-0f)
	(wall-at wall11 f6-1f)
	(wall-at wall12 f6-3f)
	(wall-at wall13 f6-4f)
	(wall-at wall14 f6-7f)
	(wall-at wall15 f6-9f)
	(wall-at wall16 f7-5f)
	(wall-at wall17 f7-7f)
	(wall-at wall18 f7-9f)
	(wall-at wall19 f8-2f)
	(wall-at wall1 f1-5f)
	(wall-at wall20 f8-7f)
	(wall-at wall21 f9-2f)
	(wall-at wall22 f9-5f)
	(wall-at wall23 f9-7f)
	(wall-at wall2 f1-6f)
	(wall-at wall3 f2-4f)
	(wall-at wall4 f2-6f)
	(wall-at wall5 f3-4f)
	(wall-at wall6 f4-3f)
	(wall-at wall7 f4-7f)
	(wall-at wall8 f5-3f)
	(wall-at wall9 f5-5f)
  )
  (:goal (and
	(person-at person0 f9-9f)))
)
