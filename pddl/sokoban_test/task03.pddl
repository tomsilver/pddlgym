
(define (problem p014-microban-sequential) (:domain sokoban)
  (:objects
        dir-down - direction
	dir-left - direction
	dir-right - direction
	dir-up - direction
	player-01 - thing
	pos-1-1 - location
	pos-1-2 - location
	pos-1-3 - location
	pos-1-4 - location
	pos-1-5 - location
	pos-1-6 - location
	pos-2-1 - location
	pos-2-2 - location
	pos-2-3 - location
	pos-2-4 - location
	pos-2-5 - location
	pos-2-6 - location
	pos-3-1 - location
	pos-3-2 - location
	pos-3-3 - location
	pos-3-4 - location
	pos-3-5 - location
	pos-3-6 - location
	pos-4-1 - location
	pos-4-2 - location
	pos-4-3 - location
	pos-4-4 - location
	pos-4-5 - location
	pos-4-6 - location
	pos-5-1 - location
	pos-5-2 - location
	pos-5-3 - location
	pos-5-4 - location
	pos-5-5 - location
	pos-5-6 - location
	pos-6-1 - location
	pos-6-2 - location
	pos-6-3 - location
	pos-6-4 - location
	pos-6-5 - location
	pos-6-6 - location
	pos-7-1 - location
	pos-7-2 - location
	pos-7-3 - location
	pos-7-4 - location
	pos-7-5 - location
	pos-7-6 - location
	stone-01 - thing
	stone-02 - thing
  )
  (:goal (and
	(at-goal stone-01)
	(at-goal stone-02)))
  (:init 
	(at player-01 pos-6-4)
	(at stone-01 pos-4-4)
	(at stone-02 pos-5-4)
	(at-goal stone-02)
	(clear pos-2-2)
	(clear pos-2-3)
	(clear pos-2-4)
	(clear pos-2-5)
	(clear pos-3-2)
	(clear pos-3-4)
	(clear pos-3-5)
	(clear pos-4-2)
	(clear pos-4-3)
	(clear pos-4-5)
	(clear pos-5-2)
	(clear pos-6-2)
	(clear pos-6-3)
	(clear pos-6-6)
	(clear pos-7-6)
	(is-goal pos-2-4)
	(is-goal pos-5-4)
	(is-nongoal pos-1-1)
	(is-nongoal pos-1-2)
	(is-nongoal pos-1-3)
	(is-nongoal pos-1-4)
	(is-nongoal pos-1-5)
	(is-nongoal pos-1-6)
	(is-nongoal pos-2-1)
	(is-nongoal pos-2-2)
	(is-nongoal pos-2-3)
	(is-nongoal pos-2-5)
	(is-nongoal pos-2-6)
	(is-nongoal pos-3-1)
	(is-nongoal pos-3-2)
	(is-nongoal pos-3-3)
	(is-nongoal pos-3-4)
	(is-nongoal pos-3-5)
	(is-nongoal pos-3-6)
	(is-nongoal pos-4-1)
	(is-nongoal pos-4-2)
	(is-nongoal pos-4-3)
	(is-nongoal pos-4-4)
	(is-nongoal pos-4-5)
	(is-nongoal pos-4-6)
	(is-nongoal pos-5-1)
	(is-nongoal pos-5-2)
	(is-nongoal pos-5-3)
	(is-nongoal pos-5-5)
	(is-nongoal pos-5-6)
	(is-nongoal pos-6-1)
	(is-nongoal pos-6-2)
	(is-nongoal pos-6-3)
	(is-nongoal pos-6-4)
	(is-nongoal pos-6-5)
	(is-nongoal pos-6-6)
	(is-nongoal pos-7-1)
	(is-nongoal pos-7-2)
	(is-nongoal pos-7-3)
	(is-nongoal pos-7-4)
	(is-nongoal pos-7-5)
	(is-nongoal pos-7-6)
	(is-player player-01)
	(is-stone stone-01)
	(is-stone stone-02)
	(move dir-down)
	(move dir-left)
	(move dir-right)
	(move dir-up)
	(move-dir pos-2-2 pos-2-3 dir-down)
	(move-dir pos-2-2 pos-3-2 dir-right)
	(move-dir pos-2-3 pos-2-2 dir-up)
	(move-dir pos-2-3 pos-2-4 dir-down)
	(move-dir pos-2-4 pos-2-3 dir-up)
	(move-dir pos-2-4 pos-2-5 dir-down)
	(move-dir pos-2-4 pos-3-4 dir-right)
	(move-dir pos-2-5 pos-2-4 dir-up)
	(move-dir pos-2-5 pos-3-5 dir-right)
	(move-dir pos-3-2 pos-2-2 dir-left)
	(move-dir pos-3-2 pos-4-2 dir-right)
	(move-dir pos-3-4 pos-2-4 dir-left)
	(move-dir pos-3-4 pos-3-5 dir-down)
	(move-dir pos-3-4 pos-4-4 dir-right)
	(move-dir pos-3-5 pos-2-5 dir-left)
	(move-dir pos-3-5 pos-3-4 dir-up)
	(move-dir pos-3-5 pos-4-5 dir-right)
	(move-dir pos-4-2 pos-3-2 dir-left)
	(move-dir pos-4-2 pos-4-3 dir-down)
	(move-dir pos-4-2 pos-5-2 dir-right)
	(move-dir pos-4-3 pos-4-2 dir-up)
	(move-dir pos-4-3 pos-4-4 dir-down)
	(move-dir pos-4-4 pos-3-4 dir-left)
	(move-dir pos-4-4 pos-4-3 dir-up)
	(move-dir pos-4-4 pos-4-5 dir-down)
	(move-dir pos-4-4 pos-5-4 dir-right)
	(move-dir pos-4-5 pos-3-5 dir-left)
	(move-dir pos-4-5 pos-4-4 dir-up)
	(move-dir pos-5-2 pos-4-2 dir-left)
	(move-dir pos-5-2 pos-6-2 dir-right)
	(move-dir pos-5-4 pos-4-4 dir-left)
	(move-dir pos-5-4 pos-6-4 dir-right)
	(move-dir pos-6-2 pos-5-2 dir-left)
	(move-dir pos-6-2 pos-6-3 dir-down)
	(move-dir pos-6-3 pos-6-2 dir-up)
	(move-dir pos-6-3 pos-6-4 dir-down)
	(move-dir pos-6-4 pos-5-4 dir-left)
	(move-dir pos-6-4 pos-6-3 dir-up)
	(move-dir pos-6-6 pos-7-6 dir-right)
	(move-dir pos-7-6 pos-6-6 dir-left)
))
        