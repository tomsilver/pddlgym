(define (problem doors) 
    (:domain doors)

    (:objects
    key-0 - key
	key-1 - key
	key-2 - key
	loc-0-0 - location
	loc-0-1 - location
	loc-0-2 - location
	loc-0-3 - location
	loc-0-4 - location
	loc-0-5 - location
	loc-1-0 - location
	loc-1-1 - location
	loc-1-2 - location
	loc-1-3 - location
	loc-1-4 - location
	loc-1-5 - location
	loc-2-0 - location
	loc-2-1 - location
	loc-2-2 - location
	loc-2-3 - location
	loc-2-4 - location
	loc-2-5 - location
	loc-3-0 - location
	loc-3-1 - location
	loc-3-2 - location
	loc-3-3 - location
	loc-3-4 - location
	loc-3-5 - location
	loc-4-0 - location
	loc-4-1 - location
	loc-4-2 - location
	loc-4-3 - location
	loc-4-4 - location
	loc-4-5 - location
	loc-5-0 - location
	loc-5-1 - location
	loc-5-2 - location
	loc-5-3 - location
	loc-5-4 - location
	loc-5-5 - location
	room-0 - room
	room-1 - room
	room-2 - room
	room-3 - room
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
	(LocInRoom loc-0-3 room-1)
	(MoveTo loc-0-3)
	(LocInRoom loc-0-4 room-1)
	(MoveTo loc-0-4)
	(LocInRoom loc-0-5 room-1)
	(MoveTo loc-0-5)
	(LocInRoom loc-1-0 room-0)
	(MoveTo loc-1-0)
	(LocInRoom loc-1-1 room-0)
	(MoveTo loc-1-1)
	(LocInRoom loc-1-2 room-0)
	(MoveTo loc-1-2)
	(LocInRoom loc-1-3 room-1)
	(MoveTo loc-1-3)
	(LocInRoom loc-1-4 room-1)
	(MoveTo loc-1-4)
	(LocInRoom loc-1-5 room-1)
	(MoveTo loc-1-5)
	(LocInRoom loc-2-0 room-0)
	(MoveTo loc-2-0)
	(LocInRoom loc-2-1 room-0)
	(MoveTo loc-2-1)
	(LocInRoom loc-2-2 room-0)
	(MoveTo loc-2-2)
	(LocInRoom loc-2-3 room-1)
	(MoveTo loc-2-3)
	(LocInRoom loc-2-4 room-1)
	(MoveTo loc-2-4)
	(LocInRoom loc-2-5 room-1)
	(MoveTo loc-2-5)
	(LocInRoom loc-3-0 room-2)
	(MoveTo loc-3-0)
	(LocInRoom loc-3-1 room-2)
	(MoveTo loc-3-1)
	(LocInRoom loc-3-2 room-2)
	(MoveTo loc-3-2)
	(LocInRoom loc-3-3 room-3)
	(MoveTo loc-3-3)
	(LocInRoom loc-3-4 room-3)
	(MoveTo loc-3-4)
	(LocInRoom loc-3-5 room-3)
	(MoveTo loc-3-5)
	(LocInRoom loc-4-0 room-2)
	(MoveTo loc-4-0)
	(LocInRoom loc-4-1 room-2)
	(MoveTo loc-4-1)
	(LocInRoom loc-4-2 room-2)
	(MoveTo loc-4-2)
	(LocInRoom loc-4-3 room-3)
	(MoveTo loc-4-3)
	(LocInRoom loc-4-4 room-3)
	(MoveTo loc-4-4)
	(LocInRoom loc-4-5 room-3)
	(MoveTo loc-4-5)
	(LocInRoom loc-5-0 room-2)
	(MoveTo loc-5-0)
	(LocInRoom loc-5-1 room-2)
	(MoveTo loc-5-1)
	(LocInRoom loc-5-2 room-2)
	(MoveTo loc-5-2)
	(LocInRoom loc-5-3 room-3)
	(MoveTo loc-5-3)
	(LocInRoom loc-5-4 room-3)
	(MoveTo loc-5-4)
	(LocInRoom loc-5-5 room-3)
	(MoveTo loc-5-5)
	(KeyForRoom key-0 room-2)
	(KeyAt key-0 loc-1-1)
	(Pick key-0)
	(KeyForRoom key-1 room-1)
	(KeyAt key-1 loc-1-4)
	(Pick key-1)
	(KeyForRoom key-2 room-3)
	(KeyAt key-2 loc-4-2)
	(Pick key-2)

    )

    (:goal (and (At loc-5-5)))
)
    