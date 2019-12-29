(define (problem doors) 
    (:domain doors)

    (:objects
    key-0 - key
	key-1 - key
	key-2 - key
	key-3 - key
	loc-0-0 - location
	loc-0-1 - location
	loc-0-2 - location
	loc-0-3 - location
	loc-0-4 - location
	loc-0-5 - location
	loc-0-6 - location
	loc-0-7 - location
	loc-0-8 - location
	loc-0-9 - location
	loc-1-0 - location
	loc-1-1 - location
	loc-1-2 - location
	loc-1-3 - location
	loc-1-4 - location
	loc-1-5 - location
	loc-1-6 - location
	loc-1-7 - location
	loc-1-8 - location
	loc-1-9 - location
	loc-2-0 - location
	loc-2-1 - location
	loc-2-2 - location
	loc-2-3 - location
	loc-2-4 - location
	loc-2-5 - location
	loc-2-6 - location
	loc-2-7 - location
	loc-2-8 - location
	loc-2-9 - location
	loc-3-0 - location
	loc-3-1 - location
	loc-3-2 - location
	loc-3-3 - location
	loc-3-4 - location
	loc-3-5 - location
	loc-3-6 - location
	loc-3-7 - location
	loc-3-8 - location
	loc-3-9 - location
	loc-4-0 - location
	loc-4-1 - location
	loc-4-2 - location
	loc-4-3 - location
	loc-4-4 - location
	loc-4-5 - location
	loc-4-6 - location
	loc-4-7 - location
	loc-4-8 - location
	loc-4-9 - location
	loc-5-0 - location
	loc-5-1 - location
	loc-5-2 - location
	loc-5-3 - location
	loc-5-4 - location
	loc-5-5 - location
	loc-5-6 - location
	loc-5-7 - location
	loc-5-8 - location
	loc-5-9 - location
	loc-6-0 - location
	loc-6-1 - location
	loc-6-2 - location
	loc-6-3 - location
	loc-6-4 - location
	loc-6-5 - location
	loc-6-6 - location
	loc-6-7 - location
	loc-6-8 - location
	loc-6-9 - location
	loc-7-0 - location
	loc-7-1 - location
	loc-7-2 - location
	loc-7-3 - location
	loc-7-4 - location
	loc-7-5 - location
	loc-7-6 - location
	loc-7-7 - location
	loc-7-8 - location
	loc-7-9 - location
	room-0 - room
	room-1 - room
	room-2 - room
	room-3 - room
	room-4 - room
	room-5 - room
    )

    (:init
    (At loc-0-0)
	(Unlocked room-0)
	(LocInRoom loc-0-0 room-0)
	(MoveTo loc-0-0)
	(LocInRoom loc-0-1 room-1)
	(MoveTo loc-0-1)
	(LocInRoom loc-0-2 room-2)
	(MoveTo loc-0-2)
	(LocInRoom loc-0-3 room-3)
	(MoveTo loc-0-3)
	(LocInRoom loc-0-4 room-4)
	(MoveTo loc-0-4)
	(LocInRoom loc-0-5 room-0)
	(MoveTo loc-0-5)
	(LocInRoom loc-0-6 room-0)
	(MoveTo loc-0-6)
	(LocInRoom loc-0-7 room-0)
	(MoveTo loc-0-7)
	(LocInRoom loc-0-8 room-0)
	(MoveTo loc-0-8)
	(LocInRoom loc-0-9 room-0)
	(MoveTo loc-0-9)
	(LocInRoom loc-1-0 room-0)
	(MoveTo loc-1-0)
	(LocInRoom loc-1-1 room-0)
	(MoveTo loc-1-1)
	(LocInRoom loc-1-2 room-0)
	(MoveTo loc-1-2)
	(LocInRoom loc-1-3 room-0)
	(MoveTo loc-1-3)
	(LocInRoom loc-1-4 room-4)
	(MoveTo loc-1-4)
	(LocInRoom loc-1-5 room-0)
	(MoveTo loc-1-5)
	(LocInRoom loc-1-6 room-0)
	(MoveTo loc-1-6)
	(LocInRoom loc-1-7 room-0)
	(MoveTo loc-1-7)
	(LocInRoom loc-1-8 room-0)
	(MoveTo loc-1-8)
	(LocInRoom loc-1-9 room-0)
	(MoveTo loc-1-9)
	(LocInRoom loc-2-0 room-0)
	(MoveTo loc-2-0)
	(LocInRoom loc-2-1 room-0)
	(MoveTo loc-2-1)
	(LocInRoom loc-2-2 room-0)
	(MoveTo loc-2-2)
	(LocInRoom loc-2-3 room-0)
	(MoveTo loc-2-3)
	(LocInRoom loc-2-4 room-4)
	(MoveTo loc-2-4)
	(LocInRoom loc-2-5 room-0)
	(MoveTo loc-2-5)
	(LocInRoom loc-2-6 room-0)
	(MoveTo loc-2-6)
	(LocInRoom loc-2-7 room-0)
	(MoveTo loc-2-7)
	(LocInRoom loc-2-8 room-0)
	(MoveTo loc-2-8)
	(LocInRoom loc-2-9 room-0)
	(MoveTo loc-2-9)
	(LocInRoom loc-3-0 room-0)
	(MoveTo loc-3-0)
	(LocInRoom loc-3-1 room-0)
	(MoveTo loc-3-1)
	(LocInRoom loc-3-2 room-0)
	(MoveTo loc-3-2)
	(LocInRoom loc-3-3 room-0)
	(MoveTo loc-3-3)
	(LocInRoom loc-3-4 room-0)
	(MoveTo loc-3-4)
	(LocInRoom loc-3-5 room-0)
	(MoveTo loc-3-5)
	(LocInRoom loc-3-6 room-0)
	(MoveTo loc-3-6)
	(LocInRoom loc-3-7 room-0)
	(MoveTo loc-3-7)
	(LocInRoom loc-3-8 room-0)
	(MoveTo loc-3-8)
	(LocInRoom loc-3-9 room-0)
	(MoveTo loc-3-9)
	(LocInRoom loc-4-0 room-0)
	(MoveTo loc-4-0)
	(LocInRoom loc-4-1 room-0)
	(MoveTo loc-4-1)
	(LocInRoom loc-4-2 room-0)
	(MoveTo loc-4-2)
	(LocInRoom loc-4-3 room-0)
	(MoveTo loc-4-3)
	(LocInRoom loc-4-4 room-0)
	(MoveTo loc-4-4)
	(LocInRoom loc-4-5 room-0)
	(MoveTo loc-4-5)
	(LocInRoom loc-4-6 room-0)
	(MoveTo loc-4-6)
	(LocInRoom loc-4-7 room-0)
	(MoveTo loc-4-7)
	(LocInRoom loc-4-8 room-0)
	(MoveTo loc-4-8)
	(LocInRoom loc-4-9 room-0)
	(MoveTo loc-4-9)
	(LocInRoom loc-5-0 room-0)
	(MoveTo loc-5-0)
	(LocInRoom loc-5-1 room-0)
	(MoveTo loc-5-1)
	(LocInRoom loc-5-2 room-0)
	(MoveTo loc-5-2)
	(LocInRoom loc-5-3 room-0)
	(MoveTo loc-5-3)
	(LocInRoom loc-5-4 room-0)
	(MoveTo loc-5-4)
	(LocInRoom loc-5-5 room-0)
	(MoveTo loc-5-5)
	(LocInRoom loc-5-6 room-0)
	(MoveTo loc-5-6)
	(LocInRoom loc-5-7 room-0)
	(MoveTo loc-5-7)
	(LocInRoom loc-5-8 room-0)
	(MoveTo loc-5-8)
	(LocInRoom loc-5-9 room-0)
	(MoveTo loc-5-9)
	(LocInRoom loc-6-0 room-0)
	(MoveTo loc-6-0)
	(LocInRoom loc-6-1 room-0)
	(MoveTo loc-6-1)
	(LocInRoom loc-6-2 room-0)
	(MoveTo loc-6-2)
	(LocInRoom loc-6-3 room-0)
	(MoveTo loc-6-3)
	(LocInRoom loc-6-4 room-0)
	(MoveTo loc-6-4)
	(LocInRoom loc-6-5 room-0)
	(MoveTo loc-6-5)
	(LocInRoom loc-6-6 room-0)
	(MoveTo loc-6-6)
	(LocInRoom loc-6-7 room-0)
	(MoveTo loc-6-7)
	(LocInRoom loc-6-8 room-0)
	(MoveTo loc-6-8)
	(LocInRoom loc-6-9 room-0)
	(MoveTo loc-6-9)
	(LocInRoom loc-7-0 room-0)
	(MoveTo loc-7-0)
	(LocInRoom loc-7-1 room-0)
	(MoveTo loc-7-1)
	(LocInRoom loc-7-2 room-0)
	(MoveTo loc-7-2)
	(LocInRoom loc-7-3 room-0)
	(MoveTo loc-7-3)
	(LocInRoom loc-7-4 room-0)
	(MoveTo loc-7-4)
	(LocInRoom loc-7-5 room-0)
	(MoveTo loc-7-5)
	(LocInRoom loc-7-6 room-0)
	(MoveTo loc-7-6)
	(LocInRoom loc-7-7 room-0)
	(MoveTo loc-7-7)
	(LocInRoom loc-7-8 room-0)
	(MoveTo loc-7-8)
	(LocInRoom loc-7-9 room-0)
	(MoveTo loc-7-9)
	(KeyForRoom key-0 room-1)
	(KeyAt key-0 loc-3-3)
	(Pick key-0)
	(KeyForRoom key-1 room-5)
	(KeyAt key-1 loc-0-4)
	(Pick key-1)
	(KeyForRoom key-2 room-2)
	(KeyAt key-2 loc-0-1)
	(Pick key-2)
	(KeyForRoom key-3 room-4)
	(KeyAt key-3 loc-0-3)
	(Pick key-3)

    )

    (:goal (and (At loc-0-4)))
)
    