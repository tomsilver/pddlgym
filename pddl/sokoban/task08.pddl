
(define (problem p131-microban-sequential) (:domain sokoban)
  (:objects
        dir-down - direction
	dir-left - direction
	dir-right - direction
	dir-up - direction
	player-01 - thing
	pos-01-01 - location
	pos-01-02 - location
	pos-01-03 - location
	pos-01-04 - location
	pos-01-05 - location
	pos-01-06 - location
	pos-01-07 - location
	pos-01-08 - location
	pos-01-09 - location
	pos-01-10 - location
	pos-01-11 - location
	pos-02-01 - location
	pos-02-02 - location
	pos-02-03 - location
	pos-02-04 - location
	pos-02-05 - location
	pos-02-06 - location
	pos-02-07 - location
	pos-02-08 - location
	pos-02-09 - location
	pos-02-10 - location
	pos-02-11 - location
	pos-03-01 - location
	pos-03-02 - location
	pos-03-03 - location
	pos-03-04 - location
	pos-03-05 - location
	pos-03-06 - location
	pos-03-07 - location
	pos-03-08 - location
	pos-03-09 - location
	pos-03-10 - location
	pos-03-11 - location
	pos-04-01 - location
	pos-04-02 - location
	pos-04-03 - location
	pos-04-04 - location
	pos-04-05 - location
	pos-04-06 - location
	pos-04-07 - location
	pos-04-08 - location
	pos-04-09 - location
	pos-04-10 - location
	pos-04-11 - location
	pos-05-01 - location
	pos-05-02 - location
	pos-05-03 - location
	pos-05-04 - location
	pos-05-05 - location
	pos-05-06 - location
	pos-05-07 - location
	pos-05-08 - location
	pos-05-09 - location
	pos-05-10 - location
	pos-05-11 - location
	pos-06-01 - location
	pos-06-02 - location
	pos-06-03 - location
	pos-06-04 - location
	pos-06-05 - location
	pos-06-06 - location
	pos-06-07 - location
	pos-06-08 - location
	pos-06-09 - location
	pos-06-10 - location
	pos-06-11 - location
	pos-07-01 - location
	pos-07-02 - location
	pos-07-03 - location
	pos-07-04 - location
	pos-07-05 - location
	pos-07-06 - location
	pos-07-07 - location
	pos-07-08 - location
	pos-07-09 - location
	pos-07-10 - location
	pos-07-11 - location
	stone-01 - thing
	stone-02 - thing
	stone-03 - thing
	stone-04 - thing
  )
  (:goal (and
	(at-goal stone-01)
	(at-goal stone-02)
	(at-goal stone-03)
	(at-goal stone-04)))
  (:init 
	(at player-01 pos-03-04)
	(at stone-01 pos-04-06)
	(at stone-02 pos-03-07)
	(at stone-03 pos-03-08)
	(at stone-04 pos-04-08)
	(clear pos-01-09)
	(clear pos-01-10)
	(clear pos-01-11)
	(clear pos-02-02)
	(clear pos-02-03)
	(clear pos-02-04)
	(clear pos-02-06)
	(clear pos-02-07)
	(clear pos-03-02)
	(clear pos-03-03)
	(clear pos-03-05)
	(clear pos-03-06)
	(clear pos-03-09)
	(clear pos-03-10)
	(clear pos-04-02)
	(clear pos-04-03)
	(clear pos-04-04)
	(clear pos-04-07)
	(clear pos-04-09)
	(clear pos-04-10)
	(clear pos-05-05)
	(clear pos-05-06)
	(clear pos-05-07)
	(clear pos-05-08)
	(clear pos-06-01)
	(clear pos-06-02)
	(clear pos-06-03)
	(clear pos-06-05)
	(clear pos-06-06)
	(clear pos-06-07)
	(clear pos-06-08)
	(clear pos-06-10)
	(clear pos-06-11)
	(clear pos-07-01)
	(clear pos-07-02)
	(clear pos-07-03)
	(clear pos-07-10)
	(clear pos-07-11)
	(is-goal pos-02-04)
	(is-goal pos-03-03)
	(is-goal pos-03-05)
	(is-goal pos-04-04)
	(is-nongoal pos-01-01)
	(is-nongoal pos-01-02)
	(is-nongoal pos-01-03)
	(is-nongoal pos-01-04)
	(is-nongoal pos-01-05)
	(is-nongoal pos-01-06)
	(is-nongoal pos-01-07)
	(is-nongoal pos-01-08)
	(is-nongoal pos-01-09)
	(is-nongoal pos-01-10)
	(is-nongoal pos-01-11)
	(is-nongoal pos-02-01)
	(is-nongoal pos-02-02)
	(is-nongoal pos-02-03)
	(is-nongoal pos-02-05)
	(is-nongoal pos-02-06)
	(is-nongoal pos-02-07)
	(is-nongoal pos-02-08)
	(is-nongoal pos-02-09)
	(is-nongoal pos-02-10)
	(is-nongoal pos-02-11)
	(is-nongoal pos-03-01)
	(is-nongoal pos-03-02)
	(is-nongoal pos-03-04)
	(is-nongoal pos-03-06)
	(is-nongoal pos-03-07)
	(is-nongoal pos-03-08)
	(is-nongoal pos-03-09)
	(is-nongoal pos-03-10)
	(is-nongoal pos-03-11)
	(is-nongoal pos-04-01)
	(is-nongoal pos-04-02)
	(is-nongoal pos-04-03)
	(is-nongoal pos-04-05)
	(is-nongoal pos-04-06)
	(is-nongoal pos-04-07)
	(is-nongoal pos-04-08)
	(is-nongoal pos-04-09)
	(is-nongoal pos-04-10)
	(is-nongoal pos-04-11)
	(is-nongoal pos-05-01)
	(is-nongoal pos-05-02)
	(is-nongoal pos-05-03)
	(is-nongoal pos-05-04)
	(is-nongoal pos-05-05)
	(is-nongoal pos-05-06)
	(is-nongoal pos-05-07)
	(is-nongoal pos-05-08)
	(is-nongoal pos-05-09)
	(is-nongoal pos-05-10)
	(is-nongoal pos-05-11)
	(is-nongoal pos-06-01)
	(is-nongoal pos-06-02)
	(is-nongoal pos-06-03)
	(is-nongoal pos-06-04)
	(is-nongoal pos-06-05)
	(is-nongoal pos-06-06)
	(is-nongoal pos-06-07)
	(is-nongoal pos-06-08)
	(is-nongoal pos-06-09)
	(is-nongoal pos-06-10)
	(is-nongoal pos-06-11)
	(is-nongoal pos-07-01)
	(is-nongoal pos-07-02)
	(is-nongoal pos-07-03)
	(is-nongoal pos-07-04)
	(is-nongoal pos-07-05)
	(is-nongoal pos-07-06)
	(is-nongoal pos-07-07)
	(is-nongoal pos-07-08)
	(is-nongoal pos-07-09)
	(is-nongoal pos-07-10)
	(is-nongoal pos-07-11)
	(is-player player-01)
	(is-stone stone-01)
	(is-stone stone-02)
	(is-stone stone-03)
	(is-stone stone-04)
	(move dir-down)
	(move dir-left)
	(move dir-right)
	(move dir-up)
	(move-dir pos-01-09 pos-01-10 dir-down)
	(move-dir pos-01-10 pos-01-09 dir-up)
	(move-dir pos-01-10 pos-01-11 dir-down)
	(move-dir pos-01-11 pos-01-10 dir-up)
	(move-dir pos-02-02 pos-02-03 dir-down)
	(move-dir pos-02-02 pos-03-02 dir-right)
	(move-dir pos-02-03 pos-02-02 dir-up)
	(move-dir pos-02-03 pos-02-04 dir-down)
	(move-dir pos-02-03 pos-03-03 dir-right)
	(move-dir pos-02-04 pos-02-03 dir-up)
	(move-dir pos-02-04 pos-03-04 dir-right)
	(move-dir pos-02-06 pos-02-07 dir-down)
	(move-dir pos-02-06 pos-03-06 dir-right)
	(move-dir pos-02-07 pos-02-06 dir-up)
	(move-dir pos-02-07 pos-03-07 dir-right)
	(move-dir pos-03-02 pos-02-02 dir-left)
	(move-dir pos-03-02 pos-03-03 dir-down)
	(move-dir pos-03-02 pos-04-02 dir-right)
	(move-dir pos-03-03 pos-02-03 dir-left)
	(move-dir pos-03-03 pos-03-02 dir-up)
	(move-dir pos-03-03 pos-03-04 dir-down)
	(move-dir pos-03-03 pos-04-03 dir-right)
	(move-dir pos-03-04 pos-02-04 dir-left)
	(move-dir pos-03-04 pos-03-03 dir-up)
	(move-dir pos-03-04 pos-03-05 dir-down)
	(move-dir pos-03-04 pos-04-04 dir-right)
	(move-dir pos-03-05 pos-03-04 dir-up)
	(move-dir pos-03-05 pos-03-06 dir-down)
	(move-dir pos-03-06 pos-02-06 dir-left)
	(move-dir pos-03-06 pos-03-05 dir-up)
	(move-dir pos-03-06 pos-03-07 dir-down)
	(move-dir pos-03-06 pos-04-06 dir-right)
	(move-dir pos-03-07 pos-02-07 dir-left)
	(move-dir pos-03-07 pos-03-06 dir-up)
	(move-dir pos-03-07 pos-03-08 dir-down)
	(move-dir pos-03-07 pos-04-07 dir-right)
	(move-dir pos-03-08 pos-03-07 dir-up)
	(move-dir pos-03-08 pos-03-09 dir-down)
	(move-dir pos-03-08 pos-04-08 dir-right)
	(move-dir pos-03-09 pos-03-08 dir-up)
	(move-dir pos-03-09 pos-03-10 dir-down)
	(move-dir pos-03-09 pos-04-09 dir-right)
	(move-dir pos-03-10 pos-03-09 dir-up)
	(move-dir pos-03-10 pos-04-10 dir-right)
	(move-dir pos-04-02 pos-03-02 dir-left)
	(move-dir pos-04-02 pos-04-03 dir-down)
	(move-dir pos-04-03 pos-03-03 dir-left)
	(move-dir pos-04-03 pos-04-02 dir-up)
	(move-dir pos-04-03 pos-04-04 dir-down)
	(move-dir pos-04-04 pos-03-04 dir-left)
	(move-dir pos-04-04 pos-04-03 dir-up)
	(move-dir pos-04-06 pos-03-06 dir-left)
	(move-dir pos-04-06 pos-04-07 dir-down)
	(move-dir pos-04-06 pos-05-06 dir-right)
	(move-dir pos-04-07 pos-03-07 dir-left)
	(move-dir pos-04-07 pos-04-06 dir-up)
	(move-dir pos-04-07 pos-04-08 dir-down)
	(move-dir pos-04-07 pos-05-07 dir-right)
	(move-dir pos-04-08 pos-03-08 dir-left)
	(move-dir pos-04-08 pos-04-07 dir-up)
	(move-dir pos-04-08 pos-04-09 dir-down)
	(move-dir pos-04-08 pos-05-08 dir-right)
	(move-dir pos-04-09 pos-03-09 dir-left)
	(move-dir pos-04-09 pos-04-08 dir-up)
	(move-dir pos-04-09 pos-04-10 dir-down)
	(move-dir pos-04-10 pos-03-10 dir-left)
	(move-dir pos-04-10 pos-04-09 dir-up)
	(move-dir pos-05-05 pos-05-06 dir-down)
	(move-dir pos-05-05 pos-06-05 dir-right)
	(move-dir pos-05-06 pos-04-06 dir-left)
	(move-dir pos-05-06 pos-05-05 dir-up)
	(move-dir pos-05-06 pos-05-07 dir-down)
	(move-dir pos-05-06 pos-06-06 dir-right)
	(move-dir pos-05-07 pos-04-07 dir-left)
	(move-dir pos-05-07 pos-05-06 dir-up)
	(move-dir pos-05-07 pos-05-08 dir-down)
	(move-dir pos-05-07 pos-06-07 dir-right)
	(move-dir pos-05-08 pos-04-08 dir-left)
	(move-dir pos-05-08 pos-05-07 dir-up)
	(move-dir pos-05-08 pos-06-08 dir-right)
	(move-dir pos-06-01 pos-06-02 dir-down)
	(move-dir pos-06-01 pos-07-01 dir-right)
	(move-dir pos-06-02 pos-06-01 dir-up)
	(move-dir pos-06-02 pos-06-03 dir-down)
	(move-dir pos-06-02 pos-07-02 dir-right)
	(move-dir pos-06-03 pos-06-02 dir-up)
	(move-dir pos-06-03 pos-07-03 dir-right)
	(move-dir pos-06-05 pos-05-05 dir-left)
	(move-dir pos-06-05 pos-06-06 dir-down)
	(move-dir pos-06-06 pos-05-06 dir-left)
	(move-dir pos-06-06 pos-06-05 dir-up)
	(move-dir pos-06-06 pos-06-07 dir-down)
	(move-dir pos-06-07 pos-05-07 dir-left)
	(move-dir pos-06-07 pos-06-06 dir-up)
	(move-dir pos-06-07 pos-06-08 dir-down)
	(move-dir pos-06-08 pos-05-08 dir-left)
	(move-dir pos-06-08 pos-06-07 dir-up)
	(move-dir pos-06-10 pos-06-11 dir-down)
	(move-dir pos-06-10 pos-07-10 dir-right)
	(move-dir pos-06-11 pos-06-10 dir-up)
	(move-dir pos-06-11 pos-07-11 dir-right)
	(move-dir pos-07-01 pos-06-01 dir-left)
	(move-dir pos-07-01 pos-07-02 dir-down)
	(move-dir pos-07-02 pos-06-02 dir-left)
	(move-dir pos-07-02 pos-07-01 dir-up)
	(move-dir pos-07-02 pos-07-03 dir-down)
	(move-dir pos-07-03 pos-06-03 dir-left)
	(move-dir pos-07-03 pos-07-02 dir-up)
	(move-dir pos-07-10 pos-06-10 dir-left)
	(move-dir pos-07-10 pos-07-11 dir-down)
	(move-dir pos-07-11 pos-06-11 dir-left)
	(move-dir pos-07-11 pos-07-10 dir-up)
))
        