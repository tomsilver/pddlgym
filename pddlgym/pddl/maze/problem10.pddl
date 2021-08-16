
(define (problem maze) (:domain maze)
  (:objects
        loc-1-1 - location
	loc-1-10 - location
	loc-1-11 - location
	loc-1-12 - location
	loc-1-13 - location
	loc-1-14 - location
	loc-1-2 - location
	loc-1-3 - location
	loc-1-4 - location
	loc-1-5 - location
	loc-1-6 - location
	loc-1-7 - location
	loc-1-8 - location
	loc-1-9 - location
	loc-10-1 - location
	loc-10-10 - location
	loc-10-11 - location
	loc-10-12 - location
	loc-10-13 - location
	loc-10-14 - location
	loc-10-2 - location
	loc-10-3 - location
	loc-10-4 - location
	loc-10-5 - location
	loc-10-6 - location
	loc-10-7 - location
	loc-10-8 - location
	loc-10-9 - location
	loc-11-1 - location
	loc-11-10 - location
	loc-11-11 - location
	loc-11-12 - location
	loc-11-13 - location
	loc-11-14 - location
	loc-11-2 - location
	loc-11-3 - location
	loc-11-4 - location
	loc-11-5 - location
	loc-11-6 - location
	loc-11-7 - location
	loc-11-8 - location
	loc-11-9 - location
	loc-12-1 - location
	loc-12-10 - location
	loc-12-11 - location
	loc-12-12 - location
	loc-12-13 - location
	loc-12-14 - location
	loc-12-2 - location
	loc-12-3 - location
	loc-12-4 - location
	loc-12-5 - location
	loc-12-6 - location
	loc-12-7 - location
	loc-12-8 - location
	loc-12-9 - location
	loc-13-1 - location
	loc-13-10 - location
	loc-13-11 - location
	loc-13-12 - location
	loc-13-13 - location
	loc-13-14 - location
	loc-13-2 - location
	loc-13-3 - location
	loc-13-4 - location
	loc-13-5 - location
	loc-13-6 - location
	loc-13-7 - location
	loc-13-8 - location
	loc-13-9 - location
	loc-14-1 - location
	loc-14-10 - location
	loc-14-11 - location
	loc-14-12 - location
	loc-14-13 - location
	loc-14-14 - location
	loc-14-2 - location
	loc-14-3 - location
	loc-14-4 - location
	loc-14-5 - location
	loc-14-6 - location
	loc-14-7 - location
	loc-14-8 - location
	loc-14-9 - location
	loc-2-1 - location
	loc-2-10 - location
	loc-2-11 - location
	loc-2-12 - location
	loc-2-13 - location
	loc-2-14 - location
	loc-2-2 - location
	loc-2-3 - location
	loc-2-4 - location
	loc-2-5 - location
	loc-2-6 - location
	loc-2-7 - location
	loc-2-8 - location
	loc-2-9 - location
	loc-3-1 - location
	loc-3-10 - location
	loc-3-11 - location
	loc-3-12 - location
	loc-3-13 - location
	loc-3-14 - location
	loc-3-2 - location
	loc-3-3 - location
	loc-3-4 - location
	loc-3-5 - location
	loc-3-6 - location
	loc-3-7 - location
	loc-3-8 - location
	loc-3-9 - location
	loc-4-1 - location
	loc-4-10 - location
	loc-4-11 - location
	loc-4-12 - location
	loc-4-13 - location
	loc-4-14 - location
	loc-4-2 - location
	loc-4-3 - location
	loc-4-4 - location
	loc-4-5 - location
	loc-4-6 - location
	loc-4-7 - location
	loc-4-8 - location
	loc-4-9 - location
	loc-5-1 - location
	loc-5-10 - location
	loc-5-11 - location
	loc-5-12 - location
	loc-5-13 - location
	loc-5-14 - location
	loc-5-2 - location
	loc-5-3 - location
	loc-5-4 - location
	loc-5-5 - location
	loc-5-6 - location
	loc-5-7 - location
	loc-5-8 - location
	loc-5-9 - location
	loc-6-1 - location
	loc-6-10 - location
	loc-6-11 - location
	loc-6-12 - location
	loc-6-13 - location
	loc-6-14 - location
	loc-6-2 - location
	loc-6-3 - location
	loc-6-4 - location
	loc-6-5 - location
	loc-6-6 - location
	loc-6-7 - location
	loc-6-8 - location
	loc-6-9 - location
	loc-7-1 - location
	loc-7-10 - location
	loc-7-11 - location
	loc-7-12 - location
	loc-7-13 - location
	loc-7-14 - location
	loc-7-2 - location
	loc-7-3 - location
	loc-7-4 - location
	loc-7-5 - location
	loc-7-6 - location
	loc-7-7 - location
	loc-7-8 - location
	loc-7-9 - location
	loc-8-1 - location
	loc-8-10 - location
	loc-8-11 - location
	loc-8-12 - location
	loc-8-13 - location
	loc-8-14 - location
	loc-8-2 - location
	loc-8-3 - location
	loc-8-4 - location
	loc-8-5 - location
	loc-8-6 - location
	loc-8-7 - location
	loc-8-8 - location
	loc-8-9 - location
	loc-9-1 - location
	loc-9-10 - location
	loc-9-11 - location
	loc-9-12 - location
	loc-9-13 - location
	loc-9-14 - location
	loc-9-2 - location
	loc-9-3 - location
	loc-9-4 - location
	loc-9-5 - location
	loc-9-6 - location
	loc-9-7 - location
	loc-9-8 - location
	loc-9-9 - location
	player-1 - player
  )
  (:init 
	(at player-1 loc-5-5)
	(clear loc-10-10)
	(clear loc-10-11)
	(clear loc-10-12)
	(clear loc-10-2)
	(clear loc-10-4)
	(clear loc-10-5)
	(clear loc-10-6)
	(clear loc-10-7)
	(clear loc-10-9)
	(clear loc-11-13)
	(clear loc-11-2)
	(clear loc-11-5)
	(clear loc-11-8)
	(clear loc-11-9)
	(clear loc-12-10)
	(clear loc-12-11)
	(clear loc-12-13)
	(clear loc-12-2)
	(clear loc-12-3)
	(clear loc-12-4)
	(clear loc-12-7)
	(clear loc-12-9)
	(clear loc-13-11)
	(clear loc-13-12)
	(clear loc-13-13)
	(clear loc-13-2)
	(clear loc-13-4)
	(clear loc-13-5)
	(clear loc-13-6)
	(clear loc-13-7)
	(clear loc-13-8)
	(clear loc-13-9)
	(clear loc-2-10)
	(clear loc-2-11)
	(clear loc-2-12)
	(clear loc-2-2)
	(clear loc-2-6)
	(clear loc-2-8)
	(clear loc-3-12)
	(clear loc-3-13)
	(clear loc-3-2)
	(clear loc-3-3)
	(clear loc-3-5)
	(clear loc-3-6)
	(clear loc-3-7)
	(clear loc-3-8)
	(clear loc-3-9)
	(clear loc-4-13)
	(clear loc-4-3)
	(clear loc-4-4)
	(clear loc-4-5)
	(clear loc-5-12)
	(clear loc-5-13)
	(clear loc-5-3)
	(clear loc-5-7)
	(clear loc-5-8)
	(clear loc-5-9)
	(clear loc-6-10)
	(clear loc-6-11)
	(clear loc-6-12)
	(clear loc-6-2)
	(clear loc-6-3)
	(clear loc-6-5)
	(clear loc-6-6)
	(clear loc-6-9)
	(clear loc-7-11)
	(clear loc-7-13)
	(clear loc-7-2)
	(clear loc-7-5)
	(clear loc-7-7)
	(clear loc-7-9)
	(clear loc-8-10)
	(clear loc-8-13)
	(clear loc-8-2)
	(clear loc-8-4)
	(clear loc-8-5)
	(clear loc-8-7)
	(clear loc-8-8)
	(clear loc-8-9)
	(clear loc-9-12)
	(clear loc-9-13)
	(clear loc-9-2)
	(clear loc-9-3)
	(clear loc-9-5)
	(clear loc-9-7)
	(is-goal loc-3-2)
	(move-dir-down loc-10-2 loc-11-2)
	(move-dir-down loc-10-5 loc-11-5)
	(move-dir-down loc-10-9 loc-11-9)
	(move-dir-down loc-11-13 loc-12-13)
	(move-dir-down loc-11-2 loc-12-2)
	(move-dir-down loc-11-9 loc-12-9)
	(move-dir-down loc-12-11 loc-13-11)
	(move-dir-down loc-12-13 loc-13-13)
	(move-dir-down loc-12-2 loc-13-2)
	(move-dir-down loc-12-4 loc-13-4)
	(move-dir-down loc-12-7 loc-13-7)
	(move-dir-down loc-12-9 loc-13-9)
	(move-dir-down loc-2-12 loc-3-12)
	(move-dir-down loc-2-2 loc-3-2)
	(move-dir-down loc-2-6 loc-3-6)
	(move-dir-down loc-2-8 loc-3-8)
	(move-dir-down loc-3-13 loc-4-13)
	(move-dir-down loc-3-3 loc-4-3)
	(move-dir-down loc-3-5 loc-4-5)
	(move-dir-down loc-4-13 loc-5-13)
	(move-dir-down loc-4-3 loc-5-3)
	(move-dir-down loc-4-5 loc-5-5)
	(move-dir-down loc-5-12 loc-6-12)
	(move-dir-down loc-5-3 loc-6-3)
	(move-dir-down loc-5-5 loc-6-5)
	(move-dir-down loc-5-9 loc-6-9)
	(move-dir-down loc-6-11 loc-7-11)
	(move-dir-down loc-6-2 loc-7-2)
	(move-dir-down loc-6-5 loc-7-5)
	(move-dir-down loc-6-9 loc-7-9)
	(move-dir-down loc-7-13 loc-8-13)
	(move-dir-down loc-7-2 loc-8-2)
	(move-dir-down loc-7-5 loc-8-5)
	(move-dir-down loc-7-7 loc-8-7)
	(move-dir-down loc-7-9 loc-8-9)
	(move-dir-down loc-8-13 loc-9-13)
	(move-dir-down loc-8-2 loc-9-2)
	(move-dir-down loc-8-5 loc-9-5)
	(move-dir-down loc-8-7 loc-9-7)
	(move-dir-down loc-9-12 loc-10-12)
	(move-dir-down loc-9-2 loc-10-2)
	(move-dir-down loc-9-5 loc-10-5)
	(move-dir-down loc-9-7 loc-10-7)
	(move-dir-left loc-10-10 loc-10-9)
	(move-dir-left loc-10-11 loc-10-10)
	(move-dir-left loc-10-12 loc-10-11)
	(move-dir-left loc-10-5 loc-10-4)
	(move-dir-left loc-10-6 loc-10-5)
	(move-dir-left loc-10-7 loc-10-6)
	(move-dir-left loc-11-9 loc-11-8)
	(move-dir-left loc-12-10 loc-12-9)
	(move-dir-left loc-12-11 loc-12-10)
	(move-dir-left loc-12-3 loc-12-2)
	(move-dir-left loc-12-4 loc-12-3)
	(move-dir-left loc-13-12 loc-13-11)
	(move-dir-left loc-13-13 loc-13-12)
	(move-dir-left loc-13-5 loc-13-4)
	(move-dir-left loc-13-6 loc-13-5)
	(move-dir-left loc-13-7 loc-13-6)
	(move-dir-left loc-13-8 loc-13-7)
	(move-dir-left loc-13-9 loc-13-8)
	(move-dir-left loc-2-11 loc-2-10)
	(move-dir-left loc-2-12 loc-2-11)
	(move-dir-left loc-3-13 loc-3-12)
	(move-dir-left loc-3-3 loc-3-2)
	(move-dir-left loc-3-6 loc-3-5)
	(move-dir-left loc-3-7 loc-3-6)
	(move-dir-left loc-3-8 loc-3-7)
	(move-dir-left loc-3-9 loc-3-8)
	(move-dir-left loc-4-4 loc-4-3)
	(move-dir-left loc-4-5 loc-4-4)
	(move-dir-left loc-5-13 loc-5-12)
	(move-dir-left loc-5-8 loc-5-7)
	(move-dir-left loc-5-9 loc-5-8)
	(move-dir-left loc-6-10 loc-6-9)
	(move-dir-left loc-6-11 loc-6-10)
	(move-dir-left loc-6-12 loc-6-11)
	(move-dir-left loc-6-3 loc-6-2)
	(move-dir-left loc-6-6 loc-6-5)
	(move-dir-left loc-8-10 loc-8-9)
	(move-dir-left loc-8-5 loc-8-4)
	(move-dir-left loc-8-8 loc-8-7)
	(move-dir-left loc-8-9 loc-8-8)
	(move-dir-left loc-9-13 loc-9-12)
	(move-dir-left loc-9-3 loc-9-2)
	(move-dir-right loc-10-10 loc-10-11)
	(move-dir-right loc-10-11 loc-10-12)
	(move-dir-right loc-10-4 loc-10-5)
	(move-dir-right loc-10-5 loc-10-6)
	(move-dir-right loc-10-6 loc-10-7)
	(move-dir-right loc-10-9 loc-10-10)
	(move-dir-right loc-11-8 loc-11-9)
	(move-dir-right loc-12-10 loc-12-11)
	(move-dir-right loc-12-2 loc-12-3)
	(move-dir-right loc-12-3 loc-12-4)
	(move-dir-right loc-12-9 loc-12-10)
	(move-dir-right loc-13-11 loc-13-12)
	(move-dir-right loc-13-12 loc-13-13)
	(move-dir-right loc-13-4 loc-13-5)
	(move-dir-right loc-13-5 loc-13-6)
	(move-dir-right loc-13-6 loc-13-7)
	(move-dir-right loc-13-7 loc-13-8)
	(move-dir-right loc-13-8 loc-13-9)
	(move-dir-right loc-2-10 loc-2-11)
	(move-dir-right loc-2-11 loc-2-12)
	(move-dir-right loc-3-12 loc-3-13)
	(move-dir-right loc-3-2 loc-3-3)
	(move-dir-right loc-3-5 loc-3-6)
	(move-dir-right loc-3-6 loc-3-7)
	(move-dir-right loc-3-7 loc-3-8)
	(move-dir-right loc-3-8 loc-3-9)
	(move-dir-right loc-4-3 loc-4-4)
	(move-dir-right loc-4-4 loc-4-5)
	(move-dir-right loc-5-12 loc-5-13)
	(move-dir-right loc-5-7 loc-5-8)
	(move-dir-right loc-5-8 loc-5-9)
	(move-dir-right loc-6-10 loc-6-11)
	(move-dir-right loc-6-11 loc-6-12)
	(move-dir-right loc-6-2 loc-6-3)
	(move-dir-right loc-6-5 loc-6-6)
	(move-dir-right loc-6-9 loc-6-10)
	(move-dir-right loc-8-4 loc-8-5)
	(move-dir-right loc-8-7 loc-8-8)
	(move-dir-right loc-8-8 loc-8-9)
	(move-dir-right loc-8-9 loc-8-10)
	(move-dir-right loc-9-12 loc-9-13)
	(move-dir-right loc-9-2 loc-9-3)
	(move-dir-up loc-10-12 loc-9-12)
	(move-dir-up loc-10-2 loc-9-2)
	(move-dir-up loc-10-5 loc-9-5)
	(move-dir-up loc-10-7 loc-9-7)
	(move-dir-up loc-11-2 loc-10-2)
	(move-dir-up loc-11-5 loc-10-5)
	(move-dir-up loc-11-9 loc-10-9)
	(move-dir-up loc-12-13 loc-11-13)
	(move-dir-up loc-12-2 loc-11-2)
	(move-dir-up loc-12-9 loc-11-9)
	(move-dir-up loc-13-11 loc-12-11)
	(move-dir-up loc-13-13 loc-12-13)
	(move-dir-up loc-13-2 loc-12-2)
	(move-dir-up loc-13-4 loc-12-4)
	(move-dir-up loc-13-7 loc-12-7)
	(move-dir-up loc-13-9 loc-12-9)
	(move-dir-up loc-3-12 loc-2-12)
	(move-dir-up loc-3-2 loc-2-2)
	(move-dir-up loc-3-6 loc-2-6)
	(move-dir-up loc-3-8 loc-2-8)
	(move-dir-up loc-4-13 loc-3-13)
	(move-dir-up loc-4-3 loc-3-3)
	(move-dir-up loc-4-5 loc-3-5)
	(move-dir-up loc-5-13 loc-4-13)
	(move-dir-up loc-5-3 loc-4-3)
	(move-dir-up loc-5-5 loc-4-5)
	(move-dir-up loc-6-12 loc-5-12)
	(move-dir-up loc-6-3 loc-5-3)
	(move-dir-up loc-6-5 loc-5-5)
	(move-dir-up loc-6-9 loc-5-9)
	(move-dir-up loc-7-11 loc-6-11)
	(move-dir-up loc-7-2 loc-6-2)
	(move-dir-up loc-7-5 loc-6-5)
	(move-dir-up loc-7-9 loc-6-9)
	(move-dir-up loc-8-13 loc-7-13)
	(move-dir-up loc-8-2 loc-7-2)
	(move-dir-up loc-8-5 loc-7-5)
	(move-dir-up loc-8-7 loc-7-7)
	(move-dir-up loc-8-9 loc-7-9)
	(move-dir-up loc-9-13 loc-8-13)
	(move-dir-up loc-9-2 loc-8-2)
	(move-dir-up loc-9-5 loc-8-5)
	(move-dir-up loc-9-7 loc-8-7)
	(oriented-down player-1)
  )
  (:goal (at player-1 loc-3-2))
)
