(define (problem doors) 
    (:domain doors)

    (:objects
    key-0 - key
	key-1 - key
	loc-0-0 - location
	loc-0-1 - location
	loc-0-2 - location
	loc-0-3 - location
	loc-1-0 - location
	loc-1-1 - location
	loc-1-2 - location
	loc-1-3 - location
	loc-10-0 - location
	loc-10-1 - location
	loc-10-2 - location
	loc-10-3 - location
	loc-11-0 - location
	loc-11-1 - location
	loc-11-2 - location
	loc-11-3 - location
	loc-2-0 - location
	loc-2-1 - location
	loc-2-2 - location
	loc-2-3 - location
	loc-3-0 - location
	loc-3-1 - location
	loc-3-2 - location
	loc-3-3 - location
	loc-4-0 - location
	loc-4-1 - location
	loc-4-2 - location
	loc-4-3 - location
	loc-5-0 - location
	loc-5-1 - location
	loc-5-2 - location
	loc-5-3 - location
	loc-6-0 - location
	loc-6-1 - location
	loc-6-2 - location
	loc-6-3 - location
	loc-7-0 - location
	loc-7-1 - location
	loc-7-2 - location
	loc-7-3 - location
	loc-8-0 - location
	loc-8-1 - location
	loc-8-2 - location
	loc-8-3 - location
	loc-9-0 - location
	loc-9-1 - location
	loc-9-2 - location
	loc-9-3 - location
	room-0 - room
	room-1 - room
	room-2 - room
    )

    (:init
    (At loc-0-0)
	(Unlocked room-0)
	(LocInRoom loc-0-0 room-0)
	(MoveTo loc-0-0)
	(LocInRoom loc-0-1 room-0)
	(MoveTo loc-0-1)
	(LocInRoom loc-0-2 room-0)
	(MoveTo loc-0-2)
	(LocInRoom loc-0-3 room-0)
	(MoveTo loc-0-3)
	(LocInRoom loc-1-0 room-0)
	(MoveTo loc-1-0)
	(LocInRoom loc-1-1 room-0)
	(MoveTo loc-1-1)
	(LocInRoom loc-1-2 room-0)
	(MoveTo loc-1-2)
	(LocInRoom loc-1-3 room-0)
	(MoveTo loc-1-3)
	(LocInRoom loc-2-0 room-0)
	(MoveTo loc-2-0)
	(LocInRoom loc-2-1 room-0)
	(MoveTo loc-2-1)
	(LocInRoom loc-2-2 room-0)
	(MoveTo loc-2-2)
	(LocInRoom loc-2-3 room-0)
	(MoveTo loc-2-3)
	(LocInRoom loc-3-0 room-0)
	(MoveTo loc-3-0)
	(LocInRoom loc-3-1 room-0)
	(MoveTo loc-3-1)
	(LocInRoom loc-3-2 room-0)
	(MoveTo loc-3-2)
	(LocInRoom loc-3-3 room-0)
	(MoveTo loc-3-3)
	(LocInRoom loc-4-0 room-1)
	(MoveTo loc-4-0)
	(LocInRoom loc-4-1 room-1)
	(MoveTo loc-4-1)
	(LocInRoom loc-4-2 room-1)
	(MoveTo loc-4-2)
	(LocInRoom loc-4-3 room-1)
	(MoveTo loc-4-3)
	(LocInRoom loc-5-0 room-1)
	(MoveTo loc-5-0)
	(LocInRoom loc-5-1 room-1)
	(MoveTo loc-5-1)
	(LocInRoom loc-5-2 room-1)
	(MoveTo loc-5-2)
	(LocInRoom loc-5-3 room-1)
	(MoveTo loc-5-3)
	(LocInRoom loc-6-0 room-1)
	(MoveTo loc-6-0)
	(LocInRoom loc-6-1 room-1)
	(MoveTo loc-6-1)
	(LocInRoom loc-6-2 room-1)
	(MoveTo loc-6-2)
	(LocInRoom loc-6-3 room-1)
	(MoveTo loc-6-3)
	(LocInRoom loc-7-0 room-1)
	(MoveTo loc-7-0)
	(LocInRoom loc-7-1 room-1)
	(MoveTo loc-7-1)
	(LocInRoom loc-7-2 room-1)
	(MoveTo loc-7-2)
	(LocInRoom loc-7-3 room-1)
	(MoveTo loc-7-3)
	(LocInRoom loc-8-0 room-2)
	(MoveTo loc-8-0)
	(LocInRoom loc-8-1 room-2)
	(MoveTo loc-8-1)
	(LocInRoom loc-8-2 room-2)
	(MoveTo loc-8-2)
	(LocInRoom loc-8-3 room-2)
	(MoveTo loc-8-3)
	(LocInRoom loc-9-0 room-2)
	(MoveTo loc-9-0)
	(LocInRoom loc-9-1 room-2)
	(MoveTo loc-9-1)
	(LocInRoom loc-9-2 room-2)
	(MoveTo loc-9-2)
	(LocInRoom loc-9-3 room-2)
	(MoveTo loc-9-3)
	(LocInRoom loc-10-0 room-2)
	(MoveTo loc-10-0)
	(LocInRoom loc-10-1 room-2)
	(MoveTo loc-10-1)
	(LocInRoom loc-10-2 room-2)
	(MoveTo loc-10-2)
	(LocInRoom loc-10-3 room-2)
	(MoveTo loc-10-3)
	(LocInRoom loc-11-0 room-2)
	(MoveTo loc-11-0)
	(LocInRoom loc-11-1 room-2)
	(MoveTo loc-11-1)
	(LocInRoom loc-11-2 room-2)
	(MoveTo loc-11-2)
	(LocInRoom loc-11-3 room-2)
	(MoveTo loc-11-3)
	(KeyForRoom key-0 room-1)
	(KeyAt key-0 loc-3-2)
	(Pick key-0)
	(KeyForRoom key-1 room-2)
	(KeyAt key-1 loc-6-2)
	(Pick key-1)

    )

    (:goal (and (At loc-11-3)))
)
    