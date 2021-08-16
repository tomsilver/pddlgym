
(define (problem maze) (:domain maze)
  (:objects
        loc-1-1 - location
	loc-1-10 - location
	loc-1-11 - location
	loc-1-12 - location
	loc-1-13 - location
	loc-1-14 - location
	loc-1-15 - location
	loc-1-16 - location
	loc-1-17 - location
	loc-1-18 - location
	loc-1-19 - location
	loc-1-2 - location
	loc-1-20 - location
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
	loc-10-15 - location
	loc-10-16 - location
	loc-10-17 - location
	loc-10-18 - location
	loc-10-19 - location
	loc-10-2 - location
	loc-10-20 - location
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
	loc-11-15 - location
	loc-11-16 - location
	loc-11-17 - location
	loc-11-18 - location
	loc-11-19 - location
	loc-11-2 - location
	loc-11-20 - location
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
	loc-12-15 - location
	loc-12-16 - location
	loc-12-17 - location
	loc-12-18 - location
	loc-12-19 - location
	loc-12-2 - location
	loc-12-20 - location
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
	loc-13-15 - location
	loc-13-16 - location
	loc-13-17 - location
	loc-13-18 - location
	loc-13-19 - location
	loc-13-2 - location
	loc-13-20 - location
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
	loc-14-15 - location
	loc-14-16 - location
	loc-14-17 - location
	loc-14-18 - location
	loc-14-19 - location
	loc-14-2 - location
	loc-14-20 - location
	loc-14-3 - location
	loc-14-4 - location
	loc-14-5 - location
	loc-14-6 - location
	loc-14-7 - location
	loc-14-8 - location
	loc-14-9 - location
	loc-15-1 - location
	loc-15-10 - location
	loc-15-11 - location
	loc-15-12 - location
	loc-15-13 - location
	loc-15-14 - location
	loc-15-15 - location
	loc-15-16 - location
	loc-15-17 - location
	loc-15-18 - location
	loc-15-19 - location
	loc-15-2 - location
	loc-15-20 - location
	loc-15-3 - location
	loc-15-4 - location
	loc-15-5 - location
	loc-15-6 - location
	loc-15-7 - location
	loc-15-8 - location
	loc-15-9 - location
	loc-16-1 - location
	loc-16-10 - location
	loc-16-11 - location
	loc-16-12 - location
	loc-16-13 - location
	loc-16-14 - location
	loc-16-15 - location
	loc-16-16 - location
	loc-16-17 - location
	loc-16-18 - location
	loc-16-19 - location
	loc-16-2 - location
	loc-16-20 - location
	loc-16-3 - location
	loc-16-4 - location
	loc-16-5 - location
	loc-16-6 - location
	loc-16-7 - location
	loc-16-8 - location
	loc-16-9 - location
	loc-17-1 - location
	loc-17-10 - location
	loc-17-11 - location
	loc-17-12 - location
	loc-17-13 - location
	loc-17-14 - location
	loc-17-15 - location
	loc-17-16 - location
	loc-17-17 - location
	loc-17-18 - location
	loc-17-19 - location
	loc-17-2 - location
	loc-17-20 - location
	loc-17-3 - location
	loc-17-4 - location
	loc-17-5 - location
	loc-17-6 - location
	loc-17-7 - location
	loc-17-8 - location
	loc-17-9 - location
	loc-18-1 - location
	loc-18-10 - location
	loc-18-11 - location
	loc-18-12 - location
	loc-18-13 - location
	loc-18-14 - location
	loc-18-15 - location
	loc-18-16 - location
	loc-18-17 - location
	loc-18-18 - location
	loc-18-19 - location
	loc-18-2 - location
	loc-18-20 - location
	loc-18-3 - location
	loc-18-4 - location
	loc-18-5 - location
	loc-18-6 - location
	loc-18-7 - location
	loc-18-8 - location
	loc-18-9 - location
	loc-19-1 - location
	loc-19-10 - location
	loc-19-11 - location
	loc-19-12 - location
	loc-19-13 - location
	loc-19-14 - location
	loc-19-15 - location
	loc-19-16 - location
	loc-19-17 - location
	loc-19-18 - location
	loc-19-19 - location
	loc-19-2 - location
	loc-19-20 - location
	loc-19-3 - location
	loc-19-4 - location
	loc-19-5 - location
	loc-19-6 - location
	loc-19-7 - location
	loc-19-8 - location
	loc-19-9 - location
	loc-2-1 - location
	loc-2-10 - location
	loc-2-11 - location
	loc-2-12 - location
	loc-2-13 - location
	loc-2-14 - location
	loc-2-15 - location
	loc-2-16 - location
	loc-2-17 - location
	loc-2-18 - location
	loc-2-19 - location
	loc-2-2 - location
	loc-2-20 - location
	loc-2-3 - location
	loc-2-4 - location
	loc-2-5 - location
	loc-2-6 - location
	loc-2-7 - location
	loc-2-8 - location
	loc-2-9 - location
	loc-20-1 - location
	loc-20-10 - location
	loc-20-11 - location
	loc-20-12 - location
	loc-20-13 - location
	loc-20-14 - location
	loc-20-15 - location
	loc-20-16 - location
	loc-20-17 - location
	loc-20-18 - location
	loc-20-19 - location
	loc-20-2 - location
	loc-20-20 - location
	loc-20-3 - location
	loc-20-4 - location
	loc-20-5 - location
	loc-20-6 - location
	loc-20-7 - location
	loc-20-8 - location
	loc-20-9 - location
	loc-3-1 - location
	loc-3-10 - location
	loc-3-11 - location
	loc-3-12 - location
	loc-3-13 - location
	loc-3-14 - location
	loc-3-15 - location
	loc-3-16 - location
	loc-3-17 - location
	loc-3-18 - location
	loc-3-19 - location
	loc-3-2 - location
	loc-3-20 - location
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
	loc-4-15 - location
	loc-4-16 - location
	loc-4-17 - location
	loc-4-18 - location
	loc-4-19 - location
	loc-4-2 - location
	loc-4-20 - location
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
	loc-5-15 - location
	loc-5-16 - location
	loc-5-17 - location
	loc-5-18 - location
	loc-5-19 - location
	loc-5-2 - location
	loc-5-20 - location
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
	loc-6-15 - location
	loc-6-16 - location
	loc-6-17 - location
	loc-6-18 - location
	loc-6-19 - location
	loc-6-2 - location
	loc-6-20 - location
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
	loc-7-15 - location
	loc-7-16 - location
	loc-7-17 - location
	loc-7-18 - location
	loc-7-19 - location
	loc-7-2 - location
	loc-7-20 - location
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
	loc-8-15 - location
	loc-8-16 - location
	loc-8-17 - location
	loc-8-18 - location
	loc-8-19 - location
	loc-8-2 - location
	loc-8-20 - location
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
	loc-9-15 - location
	loc-9-16 - location
	loc-9-17 - location
	loc-9-18 - location
	loc-9-19 - location
	loc-9-2 - location
	loc-9-20 - location
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
	(at player-1 loc-8-3)
	(clear loc-10-10)
	(clear loc-10-11)
	(clear loc-10-13)
	(clear loc-10-16)
	(clear loc-10-19)
	(clear loc-10-2)
	(clear loc-10-3)
	(clear loc-10-5)
	(clear loc-10-6)
	(clear loc-11-10)
	(clear loc-11-12)
	(clear loc-11-13)
	(clear loc-11-14)
	(clear loc-11-15)
	(clear loc-11-17)
	(clear loc-11-18)
	(clear loc-11-19)
	(clear loc-11-3)
	(clear loc-11-4)
	(clear loc-11-7)
	(clear loc-11-8)
	(clear loc-12-10)
	(clear loc-12-11)
	(clear loc-12-13)
	(clear loc-12-15)
	(clear loc-12-16)
	(clear loc-12-19)
	(clear loc-12-2)
	(clear loc-12-4)
	(clear loc-12-5)
	(clear loc-12-6)
	(clear loc-12-8)
	(clear loc-12-9)
	(clear loc-13-11)
	(clear loc-13-12)
	(clear loc-13-13)
	(clear loc-13-14)
	(clear loc-13-17)
	(clear loc-13-18)
	(clear loc-13-19)
	(clear loc-13-2)
	(clear loc-13-3)
	(clear loc-13-4)
	(clear loc-13-7)
	(clear loc-13-8)
	(clear loc-14-12)
	(clear loc-14-14)
	(clear loc-14-16)
	(clear loc-14-17)
	(clear loc-14-19)
	(clear loc-14-2)
	(clear loc-14-6)
	(clear loc-14-8)
	(clear loc-14-9)
	(clear loc-15-10)
	(clear loc-15-12)
	(clear loc-15-14)
	(clear loc-15-15)
	(clear loc-15-16)
	(clear loc-15-18)
	(clear loc-15-19)
	(clear loc-15-2)
	(clear loc-15-4)
	(clear loc-15-5)
	(clear loc-15-6)
	(clear loc-15-7)
	(clear loc-16-10)
	(clear loc-16-11)
	(clear loc-16-12)
	(clear loc-16-13)
	(clear loc-16-15)
	(clear loc-16-17)
	(clear loc-16-2)
	(clear loc-16-3)
	(clear loc-16-4)
	(clear loc-16-7)
	(clear loc-16-8)
	(clear loc-16-9)
	(clear loc-17-13)
	(clear loc-17-15)
	(clear loc-17-17)
	(clear loc-17-18)
	(clear loc-17-19)
	(clear loc-17-3)
	(clear loc-17-5)
	(clear loc-17-6)
	(clear loc-17-8)
	(clear loc-18-10)
	(clear loc-18-11)
	(clear loc-18-12)
	(clear loc-18-14)
	(clear loc-18-15)
	(clear loc-18-16)
	(clear loc-18-19)
	(clear loc-18-2)
	(clear loc-18-3)
	(clear loc-18-5)
	(clear loc-18-8)
	(clear loc-19-10)
	(clear loc-19-12)
	(clear loc-19-13)
	(clear loc-19-14)
	(clear loc-19-16)
	(clear loc-19-17)
	(clear loc-19-18)
	(clear loc-19-19)
	(clear loc-19-3)
	(clear loc-19-5)
	(clear loc-19-6)
	(clear loc-19-7)
	(clear loc-19-8)
	(clear loc-2-10)
	(clear loc-2-12)
	(clear loc-2-13)
	(clear loc-2-14)
	(clear loc-2-16)
	(clear loc-2-17)
	(clear loc-2-18)
	(clear loc-2-19)
	(clear loc-2-2)
	(clear loc-2-3)
	(clear loc-2-4)
	(clear loc-2-5)
	(clear loc-2-7)
	(clear loc-2-9)
	(clear loc-3-10)
	(clear loc-3-13)
	(clear loc-3-15)
	(clear loc-3-16)
	(clear loc-3-19)
	(clear loc-3-3)
	(clear loc-3-5)
	(clear loc-3-6)
	(clear loc-3-7)
	(clear loc-3-8)
	(clear loc-4-10)
	(clear loc-4-11)
	(clear loc-4-12)
	(clear loc-4-13)
	(clear loc-4-16)
	(clear loc-4-18)
	(clear loc-4-19)
	(clear loc-4-3)
	(clear loc-4-4)
	(clear loc-4-6)
	(clear loc-4-9)
	(clear loc-5-10)
	(clear loc-5-12)
	(clear loc-5-14)
	(clear loc-5-17)
	(clear loc-5-19)
	(clear loc-5-2)
	(clear loc-5-3)
	(clear loc-5-5)
	(clear loc-5-6)
	(clear loc-5-7)
	(clear loc-6-12)
	(clear loc-6-13)
	(clear loc-6-14)
	(clear loc-6-15)
	(clear loc-6-17)
	(clear loc-6-18)
	(clear loc-6-19)
	(clear loc-6-2)
	(clear loc-6-4)
	(clear loc-6-5)
	(clear loc-6-8)
	(clear loc-7-10)
	(clear loc-7-11)
	(clear loc-7-12)
	(clear loc-7-15)
	(clear loc-7-16)
	(clear loc-7-19)
	(clear loc-7-4)
	(clear loc-7-6)
	(clear loc-7-7)
	(clear loc-7-8)
	(clear loc-7-9)
	(clear loc-8-11)
	(clear loc-8-13)
	(clear loc-8-14)
	(clear loc-8-15)
	(clear loc-8-17)
	(clear loc-8-19)
	(clear loc-8-2)
	(clear loc-8-4)
	(clear loc-8-5)
	(clear loc-8-7)
	(clear loc-9-11)
	(clear loc-9-12)
	(clear loc-9-15)
	(clear loc-9-16)
	(clear loc-9-17)
	(clear loc-9-19)
	(clear loc-9-2)
	(clear loc-9-4)
	(clear loc-9-6)
	(clear loc-9-7)
	(clear loc-9-8)
	(clear loc-9-9)
	(is-goal loc-3-15)
	(move-dir-down loc-10-10 loc-11-10)
	(move-dir-down loc-10-13 loc-11-13)
	(move-dir-down loc-10-19 loc-11-19)
	(move-dir-down loc-10-3 loc-11-3)
	(move-dir-down loc-11-10 loc-12-10)
	(move-dir-down loc-11-13 loc-12-13)
	(move-dir-down loc-11-15 loc-12-15)
	(move-dir-down loc-11-19 loc-12-19)
	(move-dir-down loc-11-4 loc-12-4)
	(move-dir-down loc-11-8 loc-12-8)
	(move-dir-down loc-12-11 loc-13-11)
	(move-dir-down loc-12-13 loc-13-13)
	(move-dir-down loc-12-19 loc-13-19)
	(move-dir-down loc-12-2 loc-13-2)
	(move-dir-down loc-12-4 loc-13-4)
	(move-dir-down loc-12-8 loc-13-8)
	(move-dir-down loc-13-12 loc-14-12)
	(move-dir-down loc-13-14 loc-14-14)
	(move-dir-down loc-13-17 loc-14-17)
	(move-dir-down loc-13-19 loc-14-19)
	(move-dir-down loc-13-2 loc-14-2)
	(move-dir-down loc-13-8 loc-14-8)
	(move-dir-down loc-14-12 loc-15-12)
	(move-dir-down loc-14-14 loc-15-14)
	(move-dir-down loc-14-16 loc-15-16)
	(move-dir-down loc-14-19 loc-15-19)
	(move-dir-down loc-14-2 loc-15-2)
	(move-dir-down loc-14-6 loc-15-6)
	(move-dir-down loc-15-10 loc-16-10)
	(move-dir-down loc-15-12 loc-16-12)
	(move-dir-down loc-15-15 loc-16-15)
	(move-dir-down loc-15-2 loc-16-2)
	(move-dir-down loc-15-4 loc-16-4)
	(move-dir-down loc-15-7 loc-16-7)
	(move-dir-down loc-16-13 loc-17-13)
	(move-dir-down loc-16-15 loc-17-15)
	(move-dir-down loc-16-17 loc-17-17)
	(move-dir-down loc-16-3 loc-17-3)
	(move-dir-down loc-16-8 loc-17-8)
	(move-dir-down loc-17-15 loc-18-15)
	(move-dir-down loc-17-19 loc-18-19)
	(move-dir-down loc-17-3 loc-18-3)
	(move-dir-down loc-17-5 loc-18-5)
	(move-dir-down loc-17-8 loc-18-8)
	(move-dir-down loc-18-10 loc-19-10)
	(move-dir-down loc-18-12 loc-19-12)
	(move-dir-down loc-18-14 loc-19-14)
	(move-dir-down loc-18-16 loc-19-16)
	(move-dir-down loc-18-19 loc-19-19)
	(move-dir-down loc-18-3 loc-19-3)
	(move-dir-down loc-18-5 loc-19-5)
	(move-dir-down loc-18-8 loc-19-8)
	(move-dir-down loc-2-10 loc-3-10)
	(move-dir-down loc-2-13 loc-3-13)
	(move-dir-down loc-2-16 loc-3-16)
	(move-dir-down loc-2-19 loc-3-19)
	(move-dir-down loc-2-3 loc-3-3)
	(move-dir-down loc-2-5 loc-3-5)
	(move-dir-down loc-2-7 loc-3-7)
	(move-dir-down loc-3-10 loc-4-10)
	(move-dir-down loc-3-13 loc-4-13)
	(move-dir-down loc-3-16 loc-4-16)
	(move-dir-down loc-3-19 loc-4-19)
	(move-dir-down loc-3-3 loc-4-3)
	(move-dir-down loc-3-6 loc-4-6)
	(move-dir-down loc-4-10 loc-5-10)
	(move-dir-down loc-4-12 loc-5-12)
	(move-dir-down loc-4-19 loc-5-19)
	(move-dir-down loc-4-3 loc-5-3)
	(move-dir-down loc-4-6 loc-5-6)
	(move-dir-down loc-5-12 loc-6-12)
	(move-dir-down loc-5-14 loc-6-14)
	(move-dir-down loc-5-17 loc-6-17)
	(move-dir-down loc-5-19 loc-6-19)
	(move-dir-down loc-5-2 loc-6-2)
	(move-dir-down loc-5-5 loc-6-5)
	(move-dir-down loc-6-12 loc-7-12)
	(move-dir-down loc-6-15 loc-7-15)
	(move-dir-down loc-6-19 loc-7-19)
	(move-dir-down loc-6-4 loc-7-4)
	(move-dir-down loc-6-8 loc-7-8)
	(move-dir-down loc-7-11 loc-8-11)
	(move-dir-down loc-7-15 loc-8-15)
	(move-dir-down loc-7-19 loc-8-19)
	(move-dir-down loc-7-4 loc-8-4)
	(move-dir-down loc-7-7 loc-8-7)
	(move-dir-down loc-8-11 loc-9-11)
	(move-dir-down loc-8-15 loc-9-15)
	(move-dir-down loc-8-17 loc-9-17)
	(move-dir-down loc-8-19 loc-9-19)
	(move-dir-down loc-8-2 loc-9-2)
	(move-dir-down loc-8-4 loc-9-4)
	(move-dir-down loc-8-7 loc-9-7)
	(move-dir-down loc-9-11 loc-10-11)
	(move-dir-down loc-9-16 loc-10-16)
	(move-dir-down loc-9-19 loc-10-19)
	(move-dir-down loc-9-2 loc-10-2)
	(move-dir-down loc-9-6 loc-10-6)
	(move-dir-left loc-10-11 loc-10-10)
	(move-dir-left loc-10-3 loc-10-2)
	(move-dir-left loc-10-6 loc-10-5)
	(move-dir-left loc-11-13 loc-11-12)
	(move-dir-left loc-11-14 loc-11-13)
	(move-dir-left loc-11-15 loc-11-14)
	(move-dir-left loc-11-18 loc-11-17)
	(move-dir-left loc-11-19 loc-11-18)
	(move-dir-left loc-11-4 loc-11-3)
	(move-dir-left loc-11-8 loc-11-7)
	(move-dir-left loc-12-10 loc-12-9)
	(move-dir-left loc-12-11 loc-12-10)
	(move-dir-left loc-12-16 loc-12-15)
	(move-dir-left loc-12-5 loc-12-4)
	(move-dir-left loc-12-6 loc-12-5)
	(move-dir-left loc-12-9 loc-12-8)
	(move-dir-left loc-13-12 loc-13-11)
	(move-dir-left loc-13-13 loc-13-12)
	(move-dir-left loc-13-14 loc-13-13)
	(move-dir-left loc-13-18 loc-13-17)
	(move-dir-left loc-13-19 loc-13-18)
	(move-dir-left loc-13-3 loc-13-2)
	(move-dir-left loc-13-4 loc-13-3)
	(move-dir-left loc-13-8 loc-13-7)
	(move-dir-left loc-14-17 loc-14-16)
	(move-dir-left loc-14-9 loc-14-8)
	(move-dir-left loc-15-15 loc-15-14)
	(move-dir-left loc-15-16 loc-15-15)
	(move-dir-left loc-15-19 loc-15-18)
	(move-dir-left loc-15-5 loc-15-4)
	(move-dir-left loc-15-6 loc-15-5)
	(move-dir-left loc-15-7 loc-15-6)
	(move-dir-left loc-16-10 loc-16-9)
	(move-dir-left loc-16-11 loc-16-10)
	(move-dir-left loc-16-12 loc-16-11)
	(move-dir-left loc-16-13 loc-16-12)
	(move-dir-left loc-16-3 loc-16-2)
	(move-dir-left loc-16-4 loc-16-3)
	(move-dir-left loc-16-8 loc-16-7)
	(move-dir-left loc-16-9 loc-16-8)
	(move-dir-left loc-17-18 loc-17-17)
	(move-dir-left loc-17-19 loc-17-18)
	(move-dir-left loc-17-6 loc-17-5)
	(move-dir-left loc-18-11 loc-18-10)
	(move-dir-left loc-18-12 loc-18-11)
	(move-dir-left loc-18-15 loc-18-14)
	(move-dir-left loc-18-16 loc-18-15)
	(move-dir-left loc-18-3 loc-18-2)
	(move-dir-left loc-19-13 loc-19-12)
	(move-dir-left loc-19-14 loc-19-13)
	(move-dir-left loc-19-17 loc-19-16)
	(move-dir-left loc-19-18 loc-19-17)
	(move-dir-left loc-19-19 loc-19-18)
	(move-dir-left loc-19-6 loc-19-5)
	(move-dir-left loc-19-7 loc-19-6)
	(move-dir-left loc-19-8 loc-19-7)
	(move-dir-left loc-2-10 loc-2-9)
	(move-dir-left loc-2-13 loc-2-12)
	(move-dir-left loc-2-14 loc-2-13)
	(move-dir-left loc-2-17 loc-2-16)
	(move-dir-left loc-2-18 loc-2-17)
	(move-dir-left loc-2-19 loc-2-18)
	(move-dir-left loc-2-3 loc-2-2)
	(move-dir-left loc-2-4 loc-2-3)
	(move-dir-left loc-2-5 loc-2-4)
	(move-dir-left loc-3-16 loc-3-15)
	(move-dir-left loc-3-6 loc-3-5)
	(move-dir-left loc-3-7 loc-3-6)
	(move-dir-left loc-3-8 loc-3-7)
	(move-dir-left loc-4-10 loc-4-9)
	(move-dir-left loc-4-11 loc-4-10)
	(move-dir-left loc-4-12 loc-4-11)
	(move-dir-left loc-4-13 loc-4-12)
	(move-dir-left loc-4-19 loc-4-18)
	(move-dir-left loc-4-4 loc-4-3)
	(move-dir-left loc-5-3 loc-5-2)
	(move-dir-left loc-5-6 loc-5-5)
	(move-dir-left loc-5-7 loc-5-6)
	(move-dir-left loc-6-13 loc-6-12)
	(move-dir-left loc-6-14 loc-6-13)
	(move-dir-left loc-6-15 loc-6-14)
	(move-dir-left loc-6-18 loc-6-17)
	(move-dir-left loc-6-19 loc-6-18)
	(move-dir-left loc-6-5 loc-6-4)
	(move-dir-left loc-7-10 loc-7-9)
	(move-dir-left loc-7-11 loc-7-10)
	(move-dir-left loc-7-12 loc-7-11)
	(move-dir-left loc-7-16 loc-7-15)
	(move-dir-left loc-7-7 loc-7-6)
	(move-dir-left loc-7-8 loc-7-7)
	(move-dir-left loc-7-9 loc-7-8)
	(move-dir-left loc-8-14 loc-8-13)
	(move-dir-left loc-8-15 loc-8-14)
	(move-dir-left loc-8-3 loc-8-2)
	(move-dir-left loc-8-4 loc-8-3)
	(move-dir-left loc-8-5 loc-8-4)
	(move-dir-left loc-9-12 loc-9-11)
	(move-dir-left loc-9-16 loc-9-15)
	(move-dir-left loc-9-17 loc-9-16)
	(move-dir-left loc-9-7 loc-9-6)
	(move-dir-left loc-9-8 loc-9-7)
	(move-dir-left loc-9-9 loc-9-8)
	(move-dir-right loc-10-10 loc-10-11)
	(move-dir-right loc-10-2 loc-10-3)
	(move-dir-right loc-10-5 loc-10-6)
	(move-dir-right loc-11-12 loc-11-13)
	(move-dir-right loc-11-13 loc-11-14)
	(move-dir-right loc-11-14 loc-11-15)
	(move-dir-right loc-11-17 loc-11-18)
	(move-dir-right loc-11-18 loc-11-19)
	(move-dir-right loc-11-3 loc-11-4)
	(move-dir-right loc-11-7 loc-11-8)
	(move-dir-right loc-12-10 loc-12-11)
	(move-dir-right loc-12-15 loc-12-16)
	(move-dir-right loc-12-4 loc-12-5)
	(move-dir-right loc-12-5 loc-12-6)
	(move-dir-right loc-12-8 loc-12-9)
	(move-dir-right loc-12-9 loc-12-10)
	(move-dir-right loc-13-11 loc-13-12)
	(move-dir-right loc-13-12 loc-13-13)
	(move-dir-right loc-13-13 loc-13-14)
	(move-dir-right loc-13-17 loc-13-18)
	(move-dir-right loc-13-18 loc-13-19)
	(move-dir-right loc-13-2 loc-13-3)
	(move-dir-right loc-13-3 loc-13-4)
	(move-dir-right loc-13-7 loc-13-8)
	(move-dir-right loc-14-16 loc-14-17)
	(move-dir-right loc-14-8 loc-14-9)
	(move-dir-right loc-15-14 loc-15-15)
	(move-dir-right loc-15-15 loc-15-16)
	(move-dir-right loc-15-18 loc-15-19)
	(move-dir-right loc-15-4 loc-15-5)
	(move-dir-right loc-15-5 loc-15-6)
	(move-dir-right loc-15-6 loc-15-7)
	(move-dir-right loc-16-10 loc-16-11)
	(move-dir-right loc-16-11 loc-16-12)
	(move-dir-right loc-16-12 loc-16-13)
	(move-dir-right loc-16-2 loc-16-3)
	(move-dir-right loc-16-3 loc-16-4)
	(move-dir-right loc-16-7 loc-16-8)
	(move-dir-right loc-16-8 loc-16-9)
	(move-dir-right loc-16-9 loc-16-10)
	(move-dir-right loc-17-17 loc-17-18)
	(move-dir-right loc-17-18 loc-17-19)
	(move-dir-right loc-17-5 loc-17-6)
	(move-dir-right loc-18-10 loc-18-11)
	(move-dir-right loc-18-11 loc-18-12)
	(move-dir-right loc-18-14 loc-18-15)
	(move-dir-right loc-18-15 loc-18-16)
	(move-dir-right loc-18-2 loc-18-3)
	(move-dir-right loc-19-12 loc-19-13)
	(move-dir-right loc-19-13 loc-19-14)
	(move-dir-right loc-19-16 loc-19-17)
	(move-dir-right loc-19-17 loc-19-18)
	(move-dir-right loc-19-18 loc-19-19)
	(move-dir-right loc-19-5 loc-19-6)
	(move-dir-right loc-19-6 loc-19-7)
	(move-dir-right loc-19-7 loc-19-8)
	(move-dir-right loc-2-12 loc-2-13)
	(move-dir-right loc-2-13 loc-2-14)
	(move-dir-right loc-2-16 loc-2-17)
	(move-dir-right loc-2-17 loc-2-18)
	(move-dir-right loc-2-18 loc-2-19)
	(move-dir-right loc-2-2 loc-2-3)
	(move-dir-right loc-2-3 loc-2-4)
	(move-dir-right loc-2-4 loc-2-5)
	(move-dir-right loc-2-9 loc-2-10)
	(move-dir-right loc-3-15 loc-3-16)
	(move-dir-right loc-3-5 loc-3-6)
	(move-dir-right loc-3-6 loc-3-7)
	(move-dir-right loc-3-7 loc-3-8)
	(move-dir-right loc-4-10 loc-4-11)
	(move-dir-right loc-4-11 loc-4-12)
	(move-dir-right loc-4-12 loc-4-13)
	(move-dir-right loc-4-18 loc-4-19)
	(move-dir-right loc-4-3 loc-4-4)
	(move-dir-right loc-4-9 loc-4-10)
	(move-dir-right loc-5-2 loc-5-3)
	(move-dir-right loc-5-5 loc-5-6)
	(move-dir-right loc-5-6 loc-5-7)
	(move-dir-right loc-6-12 loc-6-13)
	(move-dir-right loc-6-13 loc-6-14)
	(move-dir-right loc-6-14 loc-6-15)
	(move-dir-right loc-6-17 loc-6-18)
	(move-dir-right loc-6-18 loc-6-19)
	(move-dir-right loc-6-4 loc-6-5)
	(move-dir-right loc-7-10 loc-7-11)
	(move-dir-right loc-7-11 loc-7-12)
	(move-dir-right loc-7-15 loc-7-16)
	(move-dir-right loc-7-6 loc-7-7)
	(move-dir-right loc-7-7 loc-7-8)
	(move-dir-right loc-7-8 loc-7-9)
	(move-dir-right loc-7-9 loc-7-10)
	(move-dir-right loc-8-13 loc-8-14)
	(move-dir-right loc-8-14 loc-8-15)
	(move-dir-right loc-8-2 loc-8-3)
	(move-dir-right loc-8-3 loc-8-4)
	(move-dir-right loc-8-4 loc-8-5)
	(move-dir-right loc-9-11 loc-9-12)
	(move-dir-right loc-9-15 loc-9-16)
	(move-dir-right loc-9-16 loc-9-17)
	(move-dir-right loc-9-6 loc-9-7)
	(move-dir-right loc-9-7 loc-9-8)
	(move-dir-right loc-9-8 loc-9-9)
	(move-dir-up loc-10-11 loc-9-11)
	(move-dir-up loc-10-16 loc-9-16)
	(move-dir-up loc-10-19 loc-9-19)
	(move-dir-up loc-10-2 loc-9-2)
	(move-dir-up loc-10-6 loc-9-6)
	(move-dir-up loc-11-10 loc-10-10)
	(move-dir-up loc-11-13 loc-10-13)
	(move-dir-up loc-11-19 loc-10-19)
	(move-dir-up loc-11-3 loc-10-3)
	(move-dir-up loc-12-10 loc-11-10)
	(move-dir-up loc-12-13 loc-11-13)
	(move-dir-up loc-12-15 loc-11-15)
	(move-dir-up loc-12-19 loc-11-19)
	(move-dir-up loc-12-4 loc-11-4)
	(move-dir-up loc-12-8 loc-11-8)
	(move-dir-up loc-13-11 loc-12-11)
	(move-dir-up loc-13-13 loc-12-13)
	(move-dir-up loc-13-19 loc-12-19)
	(move-dir-up loc-13-2 loc-12-2)
	(move-dir-up loc-13-4 loc-12-4)
	(move-dir-up loc-13-8 loc-12-8)
	(move-dir-up loc-14-12 loc-13-12)
	(move-dir-up loc-14-14 loc-13-14)
	(move-dir-up loc-14-17 loc-13-17)
	(move-dir-up loc-14-19 loc-13-19)
	(move-dir-up loc-14-2 loc-13-2)
	(move-dir-up loc-14-8 loc-13-8)
	(move-dir-up loc-15-12 loc-14-12)
	(move-dir-up loc-15-14 loc-14-14)
	(move-dir-up loc-15-16 loc-14-16)
	(move-dir-up loc-15-19 loc-14-19)
	(move-dir-up loc-15-2 loc-14-2)
	(move-dir-up loc-15-6 loc-14-6)
	(move-dir-up loc-16-10 loc-15-10)
	(move-dir-up loc-16-12 loc-15-12)
	(move-dir-up loc-16-15 loc-15-15)
	(move-dir-up loc-16-2 loc-15-2)
	(move-dir-up loc-16-4 loc-15-4)
	(move-dir-up loc-16-7 loc-15-7)
	(move-dir-up loc-17-13 loc-16-13)
	(move-dir-up loc-17-15 loc-16-15)
	(move-dir-up loc-17-17 loc-16-17)
	(move-dir-up loc-17-3 loc-16-3)
	(move-dir-up loc-17-8 loc-16-8)
	(move-dir-up loc-18-15 loc-17-15)
	(move-dir-up loc-18-19 loc-17-19)
	(move-dir-up loc-18-3 loc-17-3)
	(move-dir-up loc-18-5 loc-17-5)
	(move-dir-up loc-18-8 loc-17-8)
	(move-dir-up loc-19-10 loc-18-10)
	(move-dir-up loc-19-12 loc-18-12)
	(move-dir-up loc-19-14 loc-18-14)
	(move-dir-up loc-19-16 loc-18-16)
	(move-dir-up loc-19-19 loc-18-19)
	(move-dir-up loc-19-3 loc-18-3)
	(move-dir-up loc-19-5 loc-18-5)
	(move-dir-up loc-19-8 loc-18-8)
	(move-dir-up loc-3-10 loc-2-10)
	(move-dir-up loc-3-13 loc-2-13)
	(move-dir-up loc-3-16 loc-2-16)
	(move-dir-up loc-3-19 loc-2-19)
	(move-dir-up loc-3-3 loc-2-3)
	(move-dir-up loc-3-5 loc-2-5)
	(move-dir-up loc-3-7 loc-2-7)
	(move-dir-up loc-4-10 loc-3-10)
	(move-dir-up loc-4-13 loc-3-13)
	(move-dir-up loc-4-16 loc-3-16)
	(move-dir-up loc-4-19 loc-3-19)
	(move-dir-up loc-4-3 loc-3-3)
	(move-dir-up loc-4-6 loc-3-6)
	(move-dir-up loc-5-10 loc-4-10)
	(move-dir-up loc-5-12 loc-4-12)
	(move-dir-up loc-5-19 loc-4-19)
	(move-dir-up loc-5-3 loc-4-3)
	(move-dir-up loc-5-6 loc-4-6)
	(move-dir-up loc-6-12 loc-5-12)
	(move-dir-up loc-6-14 loc-5-14)
	(move-dir-up loc-6-17 loc-5-17)
	(move-dir-up loc-6-19 loc-5-19)
	(move-dir-up loc-6-2 loc-5-2)
	(move-dir-up loc-6-5 loc-5-5)
	(move-dir-up loc-7-12 loc-6-12)
	(move-dir-up loc-7-15 loc-6-15)
	(move-dir-up loc-7-19 loc-6-19)
	(move-dir-up loc-7-4 loc-6-4)
	(move-dir-up loc-7-8 loc-6-8)
	(move-dir-up loc-8-11 loc-7-11)
	(move-dir-up loc-8-15 loc-7-15)
	(move-dir-up loc-8-19 loc-7-19)
	(move-dir-up loc-8-4 loc-7-4)
	(move-dir-up loc-8-7 loc-7-7)
	(move-dir-up loc-9-11 loc-8-11)
	(move-dir-up loc-9-15 loc-8-15)
	(move-dir-up loc-9-17 loc-8-17)
	(move-dir-up loc-9-19 loc-8-19)
	(move-dir-up loc-9-2 loc-8-2)
	(move-dir-up loc-9-4 loc-8-4)
	(move-dir-up loc-9-7 loc-8-7)
	(oriented-left player-1)
  )
  (:goal (at player-1 loc-3-15))
)
