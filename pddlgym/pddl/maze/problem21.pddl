
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
	loc-1-21 - location
	loc-1-22 - location
	loc-1-23 - location
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
	loc-10-21 - location
	loc-10-22 - location
	loc-10-23 - location
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
	loc-11-21 - location
	loc-11-22 - location
	loc-11-23 - location
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
	loc-12-21 - location
	loc-12-22 - location
	loc-12-23 - location
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
	loc-13-21 - location
	loc-13-22 - location
	loc-13-23 - location
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
	loc-14-21 - location
	loc-14-22 - location
	loc-14-23 - location
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
	loc-15-21 - location
	loc-15-22 - location
	loc-15-23 - location
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
	loc-16-21 - location
	loc-16-22 - location
	loc-16-23 - location
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
	loc-17-21 - location
	loc-17-22 - location
	loc-17-23 - location
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
	loc-18-21 - location
	loc-18-22 - location
	loc-18-23 - location
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
	loc-19-21 - location
	loc-19-22 - location
	loc-19-23 - location
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
	loc-2-21 - location
	loc-2-22 - location
	loc-2-23 - location
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
	loc-20-21 - location
	loc-20-22 - location
	loc-20-23 - location
	loc-20-3 - location
	loc-20-4 - location
	loc-20-5 - location
	loc-20-6 - location
	loc-20-7 - location
	loc-20-8 - location
	loc-20-9 - location
	loc-21-1 - location
	loc-21-10 - location
	loc-21-11 - location
	loc-21-12 - location
	loc-21-13 - location
	loc-21-14 - location
	loc-21-15 - location
	loc-21-16 - location
	loc-21-17 - location
	loc-21-18 - location
	loc-21-19 - location
	loc-21-2 - location
	loc-21-20 - location
	loc-21-21 - location
	loc-21-22 - location
	loc-21-23 - location
	loc-21-3 - location
	loc-21-4 - location
	loc-21-5 - location
	loc-21-6 - location
	loc-21-7 - location
	loc-21-8 - location
	loc-21-9 - location
	loc-22-1 - location
	loc-22-10 - location
	loc-22-11 - location
	loc-22-12 - location
	loc-22-13 - location
	loc-22-14 - location
	loc-22-15 - location
	loc-22-16 - location
	loc-22-17 - location
	loc-22-18 - location
	loc-22-19 - location
	loc-22-2 - location
	loc-22-20 - location
	loc-22-21 - location
	loc-22-22 - location
	loc-22-23 - location
	loc-22-3 - location
	loc-22-4 - location
	loc-22-5 - location
	loc-22-6 - location
	loc-22-7 - location
	loc-22-8 - location
	loc-22-9 - location
	loc-23-1 - location
	loc-23-10 - location
	loc-23-11 - location
	loc-23-12 - location
	loc-23-13 - location
	loc-23-14 - location
	loc-23-15 - location
	loc-23-16 - location
	loc-23-17 - location
	loc-23-18 - location
	loc-23-19 - location
	loc-23-2 - location
	loc-23-20 - location
	loc-23-21 - location
	loc-23-22 - location
	loc-23-23 - location
	loc-23-3 - location
	loc-23-4 - location
	loc-23-5 - location
	loc-23-6 - location
	loc-23-7 - location
	loc-23-8 - location
	loc-23-9 - location
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
	loc-3-21 - location
	loc-3-22 - location
	loc-3-23 - location
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
	loc-4-21 - location
	loc-4-22 - location
	loc-4-23 - location
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
	loc-5-21 - location
	loc-5-22 - location
	loc-5-23 - location
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
	loc-6-21 - location
	loc-6-22 - location
	loc-6-23 - location
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
	loc-7-21 - location
	loc-7-22 - location
	loc-7-23 - location
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
	loc-8-21 - location
	loc-8-22 - location
	loc-8-23 - location
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
	loc-9-21 - location
	loc-9-22 - location
	loc-9-23 - location
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
	(at player-1 loc-2-7)
	(clear loc-10-10)
	(clear loc-10-11)
	(clear loc-10-12)
	(clear loc-10-13)
	(clear loc-10-14)
	(clear loc-10-16)
	(clear loc-10-17)
	(clear loc-10-19)
	(clear loc-10-21)
	(clear loc-10-22)
	(clear loc-10-4)
	(clear loc-10-8)
	(clear loc-11-10)
	(clear loc-11-12)
	(clear loc-11-14)
	(clear loc-11-16)
	(clear loc-11-18)
	(clear loc-11-19)
	(clear loc-11-20)
	(clear loc-11-22)
	(clear loc-11-2)
	(clear loc-11-3)
	(clear loc-11-4)
	(clear loc-11-6)
	(clear loc-11-7)
	(clear loc-11-8)
	(clear loc-12-10)
	(clear loc-12-12)
	(clear loc-12-15)
	(clear loc-12-16)
	(clear loc-12-17)
	(clear loc-12-21)
	(clear loc-12-22)
	(clear loc-12-4)
	(clear loc-12-6)
	(clear loc-12-9)
	(clear loc-13-11)
	(clear loc-13-12)
	(clear loc-13-13)
	(clear loc-13-15)
	(clear loc-13-17)
	(clear loc-13-18)
	(clear loc-13-19)
	(clear loc-13-20)
	(clear loc-13-21)
	(clear loc-13-2)
	(clear loc-13-3)
	(clear loc-13-4)
	(clear loc-13-5)
	(clear loc-13-6)
	(clear loc-13-7)
	(clear loc-13-8)
	(clear loc-13-9)
	(clear loc-14-10)
	(clear loc-14-15)
	(clear loc-14-16)
	(clear loc-14-18)
	(clear loc-14-21)
	(clear loc-14-2)
	(clear loc-14-6)
	(clear loc-14-9)
	(clear loc-15-11)
	(clear loc-15-12)
	(clear loc-15-13)
	(clear loc-15-14)
	(clear loc-15-16)
	(clear loc-15-17)
	(clear loc-15-20)
	(clear loc-15-21)
	(clear loc-15-22)
	(clear loc-15-4)
	(clear loc-15-6)
	(clear loc-15-8)
	(clear loc-15-9)
	(clear loc-16-11)
	(clear loc-16-15)
	(clear loc-16-17)
	(clear loc-16-19)
	(clear loc-16-22)
	(clear loc-16-2)
	(clear loc-16-3)
	(clear loc-16-4)
	(clear loc-16-5)
	(clear loc-16-6)
	(clear loc-16-8)
	(clear loc-17-10)
	(clear loc-17-11)
	(clear loc-17-12)
	(clear loc-17-13)
	(clear loc-17-14)
	(clear loc-17-15)
	(clear loc-17-16)
	(clear loc-17-18)
	(clear loc-17-19)
	(clear loc-17-21)
	(clear loc-17-22)
	(clear loc-17-4)
	(clear loc-17-7)
	(clear loc-17-9)
	(clear loc-18-11)
	(clear loc-18-13)
	(clear loc-18-16)
	(clear loc-18-17)
	(clear loc-18-18)
	(clear loc-18-20)
	(clear loc-18-22)
	(clear loc-18-2)
	(clear loc-18-3)
	(clear loc-18-4)
	(clear loc-18-5)
	(clear loc-18-7)
	(clear loc-18-8)
	(clear loc-19-10)
	(clear loc-19-11)
	(clear loc-19-12)
	(clear loc-19-14)
	(clear loc-19-16)
	(clear loc-19-19)
	(clear loc-19-20)
	(clear loc-19-21)
	(clear loc-19-3)
	(clear loc-19-7)
	(clear loc-19-9)
	(clear loc-2-11)
	(clear loc-2-12)
	(clear loc-2-13)
	(clear loc-2-15)
	(clear loc-2-16)
	(clear loc-2-17)
	(clear loc-2-18)
	(clear loc-2-19)
	(clear loc-2-21)
	(clear loc-2-22)
	(clear loc-2-3)
	(clear loc-2-4)
	(clear loc-2-5)
	(clear loc-2-8)
	(clear loc-2-9)
	(clear loc-20-13)
	(clear loc-20-14)
	(clear loc-20-16)
	(clear loc-20-19)
	(clear loc-20-21)
	(clear loc-20-22)
	(clear loc-20-2)
	(clear loc-20-3)
	(clear loc-20-4)
	(clear loc-20-5)
	(clear loc-20-6)
	(clear loc-20-7)
	(clear loc-20-9)
	(clear loc-21-11)
	(clear loc-21-13)
	(clear loc-21-15)
	(clear loc-21-16)
	(clear loc-21-17)
	(clear loc-21-18)
	(clear loc-21-19)
	(clear loc-21-20)
	(clear loc-21-22)
	(clear loc-21-2)
	(clear loc-21-5)
	(clear loc-21-7)
	(clear loc-21-8)
	(clear loc-21-9)
	(clear loc-22-10)
	(clear loc-22-11)
	(clear loc-22-12)
	(clear loc-22-13)
	(clear loc-22-15)
	(clear loc-22-17)
	(clear loc-22-19)
	(clear loc-22-21)
	(clear loc-22-22)
	(clear loc-22-2)
	(clear loc-22-3)
	(clear loc-22-4)
	(clear loc-22-6)
	(clear loc-22-7)
	(clear loc-22-9)
	(clear loc-3-10)
	(clear loc-3-13)
	(clear loc-3-14)
	(clear loc-3-15)
	(clear loc-3-18)
	(clear loc-3-20)
	(clear loc-3-22)
	(clear loc-3-2)
	(clear loc-3-3)
	(clear loc-3-6)
	(clear loc-3-7)
	(clear loc-4-10)
	(clear loc-4-11)
	(clear loc-4-12)
	(clear loc-4-14)
	(clear loc-4-16)
	(clear loc-4-17)
	(clear loc-4-18)
	(clear loc-4-20)
	(clear loc-4-22)
	(clear loc-4-2)
	(clear loc-4-5)
	(clear loc-4-7)
	(clear loc-5-10)
	(clear loc-5-13)
	(clear loc-5-14)
	(clear loc-5-16)
	(clear loc-5-18)
	(clear loc-5-20)
	(clear loc-5-21)
	(clear loc-5-22)
	(clear loc-5-2)
	(clear loc-5-3)
	(clear loc-5-4)
	(clear loc-5-5)
	(clear loc-5-7)
	(clear loc-5-8)
	(clear loc-5-9)
	(clear loc-6-10)
	(clear loc-6-11)
	(clear loc-6-12)
	(clear loc-6-13)
	(clear loc-6-15)
	(clear loc-6-16)
	(clear loc-6-18)
	(clear loc-6-19)
	(clear loc-6-21)
	(clear loc-6-2)
	(clear loc-6-6)
	(clear loc-6-8)
	(clear loc-7-10)
	(clear loc-7-13)
	(clear loc-7-14)
	(clear loc-7-16)
	(clear loc-7-17)
	(clear loc-7-19)
	(clear loc-7-20)
	(clear loc-7-21)
	(clear loc-7-22)
	(clear loc-7-2)
	(clear loc-7-4)
	(clear loc-7-5)
	(clear loc-7-6)
	(clear loc-7-7)
	(clear loc-7-8)
	(clear loc-8-11)
	(clear loc-8-12)
	(clear loc-8-14)
	(clear loc-8-15)
	(clear loc-8-17)
	(clear loc-8-20)
	(clear loc-8-2)
	(clear loc-8-3)
	(clear loc-8-4)
	(clear loc-8-8)
	(clear loc-8-9)
	(clear loc-9-11)
	(clear loc-9-13)
	(clear loc-9-15)
	(clear loc-9-16)
	(clear loc-9-18)
	(clear loc-9-19)
	(clear loc-9-20)
	(clear loc-9-22)
	(clear loc-9-2)
	(clear loc-9-4)
	(clear loc-9-5)
	(clear loc-9-6)
	(clear loc-9-7)
	(clear loc-9-9)
	(is-goal loc-8-15)
	(move-dir-down loc-10-10 loc-11-10)
	(move-dir-down loc-10-12 loc-11-12)
	(move-dir-down loc-10-14 loc-11-14)
	(move-dir-down loc-10-16 loc-11-16)
	(move-dir-down loc-10-19 loc-11-19)
	(move-dir-down loc-10-22 loc-11-22)
	(move-dir-down loc-10-4 loc-11-4)
	(move-dir-down loc-10-8 loc-11-8)
	(move-dir-down loc-11-10 loc-12-10)
	(move-dir-down loc-11-12 loc-12-12)
	(move-dir-down loc-11-16 loc-12-16)
	(move-dir-down loc-11-22 loc-12-22)
	(move-dir-down loc-11-4 loc-12-4)
	(move-dir-down loc-11-6 loc-12-6)
	(move-dir-down loc-12-12 loc-13-12)
	(move-dir-down loc-12-15 loc-13-15)
	(move-dir-down loc-12-17 loc-13-17)
	(move-dir-down loc-12-21 loc-13-21)
	(move-dir-down loc-12-4 loc-13-4)
	(move-dir-down loc-12-6 loc-13-6)
	(move-dir-down loc-12-9 loc-13-9)
	(move-dir-down loc-13-15 loc-14-15)
	(move-dir-down loc-13-18 loc-14-18)
	(move-dir-down loc-13-21 loc-14-21)
	(move-dir-down loc-13-2 loc-14-2)
	(move-dir-down loc-13-6 loc-14-6)
	(move-dir-down loc-13-9 loc-14-9)
	(move-dir-down loc-14-16 loc-15-16)
	(move-dir-down loc-14-21 loc-15-21)
	(move-dir-down loc-14-6 loc-15-6)
	(move-dir-down loc-14-9 loc-15-9)
	(move-dir-down loc-15-11 loc-16-11)
	(move-dir-down loc-15-17 loc-16-17)
	(move-dir-down loc-15-22 loc-16-22)
	(move-dir-down loc-15-4 loc-16-4)
	(move-dir-down loc-15-6 loc-16-6)
	(move-dir-down loc-15-8 loc-16-8)
	(move-dir-down loc-16-11 loc-17-11)
	(move-dir-down loc-16-15 loc-17-15)
	(move-dir-down loc-16-19 loc-17-19)
	(move-dir-down loc-16-22 loc-17-22)
	(move-dir-down loc-16-4 loc-17-4)
	(move-dir-down loc-17-11 loc-18-11)
	(move-dir-down loc-17-13 loc-18-13)
	(move-dir-down loc-17-16 loc-18-16)
	(move-dir-down loc-17-18 loc-18-18)
	(move-dir-down loc-17-22 loc-18-22)
	(move-dir-down loc-17-4 loc-18-4)
	(move-dir-down loc-17-7 loc-18-7)
	(move-dir-down loc-18-11 loc-19-11)
	(move-dir-down loc-18-16 loc-19-16)
	(move-dir-down loc-18-20 loc-19-20)
	(move-dir-down loc-18-3 loc-19-3)
	(move-dir-down loc-18-7 loc-19-7)
	(move-dir-down loc-19-14 loc-20-14)
	(move-dir-down loc-19-16 loc-20-16)
	(move-dir-down loc-19-19 loc-20-19)
	(move-dir-down loc-19-21 loc-20-21)
	(move-dir-down loc-19-3 loc-20-3)
	(move-dir-down loc-19-7 loc-20-7)
	(move-dir-down loc-19-9 loc-20-9)
	(move-dir-down loc-2-13 loc-3-13)
	(move-dir-down loc-2-15 loc-3-15)
	(move-dir-down loc-2-18 loc-3-18)
	(move-dir-down loc-2-22 loc-3-22)
	(move-dir-down loc-2-3 loc-3-3)
	(move-dir-down loc-2-7 loc-3-7)
	(move-dir-down loc-20-13 loc-21-13)
	(move-dir-down loc-20-16 loc-21-16)
	(move-dir-down loc-20-19 loc-21-19)
	(move-dir-down loc-20-22 loc-21-22)
	(move-dir-down loc-20-2 loc-21-2)
	(move-dir-down loc-20-5 loc-21-5)
	(move-dir-down loc-20-7 loc-21-7)
	(move-dir-down loc-20-9 loc-21-9)
	(move-dir-down loc-21-11 loc-22-11)
	(move-dir-down loc-21-13 loc-22-13)
	(move-dir-down loc-21-15 loc-22-15)
	(move-dir-down loc-21-17 loc-22-17)
	(move-dir-down loc-21-19 loc-22-19)
	(move-dir-down loc-21-22 loc-22-22)
	(move-dir-down loc-21-2 loc-22-2)
	(move-dir-down loc-21-7 loc-22-7)
	(move-dir-down loc-21-9 loc-22-9)
	(move-dir-down loc-3-10 loc-4-10)
	(move-dir-down loc-3-14 loc-4-14)
	(move-dir-down loc-3-18 loc-4-18)
	(move-dir-down loc-3-20 loc-4-20)
	(move-dir-down loc-3-22 loc-4-22)
	(move-dir-down loc-3-2 loc-4-2)
	(move-dir-down loc-3-7 loc-4-7)
	(move-dir-down loc-4-10 loc-5-10)
	(move-dir-down loc-4-14 loc-5-14)
	(move-dir-down loc-4-16 loc-5-16)
	(move-dir-down loc-4-18 loc-5-18)
	(move-dir-down loc-4-20 loc-5-20)
	(move-dir-down loc-4-22 loc-5-22)
	(move-dir-down loc-4-2 loc-5-2)
	(move-dir-down loc-4-5 loc-5-5)
	(move-dir-down loc-4-7 loc-5-7)
	(move-dir-down loc-5-10 loc-6-10)
	(move-dir-down loc-5-13 loc-6-13)
	(move-dir-down loc-5-16 loc-6-16)
	(move-dir-down loc-5-18 loc-6-18)
	(move-dir-down loc-5-21 loc-6-21)
	(move-dir-down loc-5-2 loc-6-2)
	(move-dir-down loc-5-8 loc-6-8)
	(move-dir-down loc-6-10 loc-7-10)
	(move-dir-down loc-6-13 loc-7-13)
	(move-dir-down loc-6-16 loc-7-16)
	(move-dir-down loc-6-19 loc-7-19)
	(move-dir-down loc-6-21 loc-7-21)
	(move-dir-down loc-6-2 loc-7-2)
	(move-dir-down loc-6-6 loc-7-6)
	(move-dir-down loc-6-8 loc-7-8)
	(move-dir-down loc-7-14 loc-8-14)
	(move-dir-down loc-7-17 loc-8-17)
	(move-dir-down loc-7-20 loc-8-20)
	(move-dir-down loc-7-2 loc-8-2)
	(move-dir-down loc-7-4 loc-8-4)
	(move-dir-down loc-7-8 loc-8-8)
	(move-dir-down loc-8-11 loc-9-11)
	(move-dir-down loc-8-15 loc-9-15)
	(move-dir-down loc-8-20 loc-9-20)
	(move-dir-down loc-8-2 loc-9-2)
	(move-dir-down loc-8-4 loc-9-4)
	(move-dir-down loc-8-9 loc-9-9)
	(move-dir-down loc-9-11 loc-10-11)
	(move-dir-down loc-9-13 loc-10-13)
	(move-dir-down loc-9-16 loc-10-16)
	(move-dir-down loc-9-19 loc-10-19)
	(move-dir-down loc-9-22 loc-10-22)
	(move-dir-down loc-9-4 loc-10-4)
	(move-dir-left loc-10-11 loc-10-10)
	(move-dir-left loc-10-12 loc-10-11)
	(move-dir-left loc-10-13 loc-10-12)
	(move-dir-left loc-10-14 loc-10-13)
	(move-dir-left loc-10-17 loc-10-16)
	(move-dir-left loc-10-22 loc-10-21)
	(move-dir-left loc-11-19 loc-11-18)
	(move-dir-left loc-11-20 loc-11-19)
	(move-dir-left loc-11-3 loc-11-2)
	(move-dir-left loc-11-4 loc-11-3)
	(move-dir-left loc-11-7 loc-11-6)
	(move-dir-left loc-11-8 loc-11-7)
	(move-dir-left loc-12-10 loc-12-9)
	(move-dir-left loc-12-16 loc-12-15)
	(move-dir-left loc-12-17 loc-12-16)
	(move-dir-left loc-12-22 loc-12-21)
	(move-dir-left loc-13-12 loc-13-11)
	(move-dir-left loc-13-13 loc-13-12)
	(move-dir-left loc-13-18 loc-13-17)
	(move-dir-left loc-13-19 loc-13-18)
	(move-dir-left loc-13-20 loc-13-19)
	(move-dir-left loc-13-21 loc-13-20)
	(move-dir-left loc-13-3 loc-13-2)
	(move-dir-left loc-13-4 loc-13-3)
	(move-dir-left loc-13-5 loc-13-4)
	(move-dir-left loc-13-6 loc-13-5)
	(move-dir-left loc-13-7 loc-13-6)
	(move-dir-left loc-13-8 loc-13-7)
	(move-dir-left loc-13-9 loc-13-8)
	(move-dir-left loc-14-10 loc-14-9)
	(move-dir-left loc-14-16 loc-14-15)
	(move-dir-left loc-15-12 loc-15-11)
	(move-dir-left loc-15-13 loc-15-12)
	(move-dir-left loc-15-14 loc-15-13)
	(move-dir-left loc-15-17 loc-15-16)
	(move-dir-left loc-15-21 loc-15-20)
	(move-dir-left loc-15-22 loc-15-21)
	(move-dir-left loc-15-9 loc-15-8)
	(move-dir-left loc-16-3 loc-16-2)
	(move-dir-left loc-16-4 loc-16-3)
	(move-dir-left loc-16-5 loc-16-4)
	(move-dir-left loc-16-6 loc-16-5)
	(move-dir-left loc-17-10 loc-17-9)
	(move-dir-left loc-17-11 loc-17-10)
	(move-dir-left loc-17-12 loc-17-11)
	(move-dir-left loc-17-13 loc-17-12)
	(move-dir-left loc-17-14 loc-17-13)
	(move-dir-left loc-17-15 loc-17-14)
	(move-dir-left loc-17-16 loc-17-15)
	(move-dir-left loc-17-19 loc-17-18)
	(move-dir-left loc-17-22 loc-17-21)
	(move-dir-left loc-18-17 loc-18-16)
	(move-dir-left loc-18-18 loc-18-17)
	(move-dir-left loc-18-3 loc-18-2)
	(move-dir-left loc-18-4 loc-18-3)
	(move-dir-left loc-18-5 loc-18-4)
	(move-dir-left loc-18-8 loc-18-7)
	(move-dir-left loc-19-10 loc-19-9)
	(move-dir-left loc-19-11 loc-19-10)
	(move-dir-left loc-19-12 loc-19-11)
	(move-dir-left loc-19-20 loc-19-19)
	(move-dir-left loc-19-21 loc-19-20)
	(move-dir-left loc-2-12 loc-2-11)
	(move-dir-left loc-2-13 loc-2-12)
	(move-dir-left loc-2-16 loc-2-15)
	(move-dir-left loc-2-17 loc-2-16)
	(move-dir-left loc-2-18 loc-2-17)
	(move-dir-left loc-2-19 loc-2-18)
	(move-dir-left loc-2-22 loc-2-21)
	(move-dir-left loc-2-4 loc-2-3)
	(move-dir-left loc-2-5 loc-2-4)
	(move-dir-left loc-2-8 loc-2-7)
	(move-dir-left loc-2-9 loc-2-8)
	(move-dir-left loc-20-14 loc-20-13)
	(move-dir-left loc-20-22 loc-20-21)
	(move-dir-left loc-20-3 loc-20-2)
	(move-dir-left loc-20-4 loc-20-3)
	(move-dir-left loc-20-5 loc-20-4)
	(move-dir-left loc-20-6 loc-20-5)
	(move-dir-left loc-20-7 loc-20-6)
	(move-dir-left loc-21-16 loc-21-15)
	(move-dir-left loc-21-17 loc-21-16)
	(move-dir-left loc-21-18 loc-21-17)
	(move-dir-left loc-21-19 loc-21-18)
	(move-dir-left loc-21-20 loc-21-19)
	(move-dir-left loc-21-8 loc-21-7)
	(move-dir-left loc-21-9 loc-21-8)
	(move-dir-left loc-22-10 loc-22-9)
	(move-dir-left loc-22-11 loc-22-10)
	(move-dir-left loc-22-12 loc-22-11)
	(move-dir-left loc-22-13 loc-22-12)
	(move-dir-left loc-22-22 loc-22-21)
	(move-dir-left loc-22-3 loc-22-2)
	(move-dir-left loc-22-4 loc-22-3)
	(move-dir-left loc-22-7 loc-22-6)
	(move-dir-left loc-3-14 loc-3-13)
	(move-dir-left loc-3-15 loc-3-14)
	(move-dir-left loc-3-3 loc-3-2)
	(move-dir-left loc-3-7 loc-3-6)
	(move-dir-left loc-4-11 loc-4-10)
	(move-dir-left loc-4-12 loc-4-11)
	(move-dir-left loc-4-17 loc-4-16)
	(move-dir-left loc-4-18 loc-4-17)
	(move-dir-left loc-5-10 loc-5-9)
	(move-dir-left loc-5-14 loc-5-13)
	(move-dir-left loc-5-21 loc-5-20)
	(move-dir-left loc-5-22 loc-5-21)
	(move-dir-left loc-5-3 loc-5-2)
	(move-dir-left loc-5-4 loc-5-3)
	(move-dir-left loc-5-5 loc-5-4)
	(move-dir-left loc-5-8 loc-5-7)
	(move-dir-left loc-5-9 loc-5-8)
	(move-dir-left loc-6-11 loc-6-10)
	(move-dir-left loc-6-12 loc-6-11)
	(move-dir-left loc-6-13 loc-6-12)
	(move-dir-left loc-6-16 loc-6-15)
	(move-dir-left loc-6-19 loc-6-18)
	(move-dir-left loc-7-14 loc-7-13)
	(move-dir-left loc-7-17 loc-7-16)
	(move-dir-left loc-7-20 loc-7-19)
	(move-dir-left loc-7-21 loc-7-20)
	(move-dir-left loc-7-22 loc-7-21)
	(move-dir-left loc-7-5 loc-7-4)
	(move-dir-left loc-7-6 loc-7-5)
	(move-dir-left loc-7-7 loc-7-6)
	(move-dir-left loc-7-8 loc-7-7)
	(move-dir-left loc-8-12 loc-8-11)
	(move-dir-left loc-8-15 loc-8-14)
	(move-dir-left loc-8-3 loc-8-2)
	(move-dir-left loc-8-4 loc-8-3)
	(move-dir-left loc-8-9 loc-8-8)
	(move-dir-left loc-9-16 loc-9-15)
	(move-dir-left loc-9-19 loc-9-18)
	(move-dir-left loc-9-20 loc-9-19)
	(move-dir-left loc-9-5 loc-9-4)
	(move-dir-left loc-9-6 loc-9-5)
	(move-dir-left loc-9-7 loc-9-6)
	(move-dir-right loc-10-10 loc-10-11)
	(move-dir-right loc-10-11 loc-10-12)
	(move-dir-right loc-10-12 loc-10-13)
	(move-dir-right loc-10-13 loc-10-14)
	(move-dir-right loc-10-16 loc-10-17)
	(move-dir-right loc-10-21 loc-10-22)
	(move-dir-right loc-11-18 loc-11-19)
	(move-dir-right loc-11-19 loc-11-20)
	(move-dir-right loc-11-2 loc-11-3)
	(move-dir-right loc-11-3 loc-11-4)
	(move-dir-right loc-11-6 loc-11-7)
	(move-dir-right loc-11-7 loc-11-8)
	(move-dir-right loc-12-15 loc-12-16)
	(move-dir-right loc-12-16 loc-12-17)
	(move-dir-right loc-12-21 loc-12-22)
	(move-dir-right loc-12-9 loc-12-10)
	(move-dir-right loc-13-11 loc-13-12)
	(move-dir-right loc-13-12 loc-13-13)
	(move-dir-right loc-13-17 loc-13-18)
	(move-dir-right loc-13-18 loc-13-19)
	(move-dir-right loc-13-19 loc-13-20)
	(move-dir-right loc-13-20 loc-13-21)
	(move-dir-right loc-13-2 loc-13-3)
	(move-dir-right loc-13-3 loc-13-4)
	(move-dir-right loc-13-4 loc-13-5)
	(move-dir-right loc-13-5 loc-13-6)
	(move-dir-right loc-13-6 loc-13-7)
	(move-dir-right loc-13-7 loc-13-8)
	(move-dir-right loc-13-8 loc-13-9)
	(move-dir-right loc-14-15 loc-14-16)
	(move-dir-right loc-14-9 loc-14-10)
	(move-dir-right loc-15-11 loc-15-12)
	(move-dir-right loc-15-12 loc-15-13)
	(move-dir-right loc-15-13 loc-15-14)
	(move-dir-right loc-15-16 loc-15-17)
	(move-dir-right loc-15-20 loc-15-21)
	(move-dir-right loc-15-21 loc-15-22)
	(move-dir-right loc-15-8 loc-15-9)
	(move-dir-right loc-16-2 loc-16-3)
	(move-dir-right loc-16-3 loc-16-4)
	(move-dir-right loc-16-4 loc-16-5)
	(move-dir-right loc-16-5 loc-16-6)
	(move-dir-right loc-17-10 loc-17-11)
	(move-dir-right loc-17-11 loc-17-12)
	(move-dir-right loc-17-12 loc-17-13)
	(move-dir-right loc-17-13 loc-17-14)
	(move-dir-right loc-17-14 loc-17-15)
	(move-dir-right loc-17-15 loc-17-16)
	(move-dir-right loc-17-18 loc-17-19)
	(move-dir-right loc-17-21 loc-17-22)
	(move-dir-right loc-17-9 loc-17-10)
	(move-dir-right loc-18-16 loc-18-17)
	(move-dir-right loc-18-17 loc-18-18)
	(move-dir-right loc-18-2 loc-18-3)
	(move-dir-right loc-18-3 loc-18-4)
	(move-dir-right loc-18-4 loc-18-5)
	(move-dir-right loc-18-7 loc-18-8)
	(move-dir-right loc-19-10 loc-19-11)
	(move-dir-right loc-19-11 loc-19-12)
	(move-dir-right loc-19-19 loc-19-20)
	(move-dir-right loc-19-20 loc-19-21)
	(move-dir-right loc-19-9 loc-19-10)
	(move-dir-right loc-2-11 loc-2-12)
	(move-dir-right loc-2-12 loc-2-13)
	(move-dir-right loc-2-15 loc-2-16)
	(move-dir-right loc-2-16 loc-2-17)
	(move-dir-right loc-2-17 loc-2-18)
	(move-dir-right loc-2-18 loc-2-19)
	(move-dir-right loc-2-21 loc-2-22)
	(move-dir-right loc-2-3 loc-2-4)
	(move-dir-right loc-2-4 loc-2-5)
	(move-dir-right loc-2-7 loc-2-8)
	(move-dir-right loc-2-8 loc-2-9)
	(move-dir-right loc-20-13 loc-20-14)
	(move-dir-right loc-20-21 loc-20-22)
	(move-dir-right loc-20-2 loc-20-3)
	(move-dir-right loc-20-3 loc-20-4)
	(move-dir-right loc-20-4 loc-20-5)
	(move-dir-right loc-20-5 loc-20-6)
	(move-dir-right loc-20-6 loc-20-7)
	(move-dir-right loc-21-15 loc-21-16)
	(move-dir-right loc-21-16 loc-21-17)
	(move-dir-right loc-21-17 loc-21-18)
	(move-dir-right loc-21-18 loc-21-19)
	(move-dir-right loc-21-19 loc-21-20)
	(move-dir-right loc-21-7 loc-21-8)
	(move-dir-right loc-21-8 loc-21-9)
	(move-dir-right loc-22-10 loc-22-11)
	(move-dir-right loc-22-11 loc-22-12)
	(move-dir-right loc-22-12 loc-22-13)
	(move-dir-right loc-22-21 loc-22-22)
	(move-dir-right loc-22-2 loc-22-3)
	(move-dir-right loc-22-3 loc-22-4)
	(move-dir-right loc-22-6 loc-22-7)
	(move-dir-right loc-22-9 loc-22-10)
	(move-dir-right loc-3-13 loc-3-14)
	(move-dir-right loc-3-14 loc-3-15)
	(move-dir-right loc-3-2 loc-3-3)
	(move-dir-right loc-3-6 loc-3-7)
	(move-dir-right loc-4-10 loc-4-11)
	(move-dir-right loc-4-11 loc-4-12)
	(move-dir-right loc-4-16 loc-4-17)
	(move-dir-right loc-4-17 loc-4-18)
	(move-dir-right loc-5-13 loc-5-14)
	(move-dir-right loc-5-20 loc-5-21)
	(move-dir-right loc-5-21 loc-5-22)
	(move-dir-right loc-5-2 loc-5-3)
	(move-dir-right loc-5-3 loc-5-4)
	(move-dir-right loc-5-4 loc-5-5)
	(move-dir-right loc-5-7 loc-5-8)
	(move-dir-right loc-5-8 loc-5-9)
	(move-dir-right loc-5-9 loc-5-10)
	(move-dir-right loc-6-10 loc-6-11)
	(move-dir-right loc-6-11 loc-6-12)
	(move-dir-right loc-6-12 loc-6-13)
	(move-dir-right loc-6-15 loc-6-16)
	(move-dir-right loc-6-18 loc-6-19)
	(move-dir-right loc-7-13 loc-7-14)
	(move-dir-right loc-7-16 loc-7-17)
	(move-dir-right loc-7-19 loc-7-20)
	(move-dir-right loc-7-20 loc-7-21)
	(move-dir-right loc-7-21 loc-7-22)
	(move-dir-right loc-7-4 loc-7-5)
	(move-dir-right loc-7-5 loc-7-6)
	(move-dir-right loc-7-6 loc-7-7)
	(move-dir-right loc-7-7 loc-7-8)
	(move-dir-right loc-8-11 loc-8-12)
	(move-dir-right loc-8-14 loc-8-15)
	(move-dir-right loc-8-2 loc-8-3)
	(move-dir-right loc-8-3 loc-8-4)
	(move-dir-right loc-8-8 loc-8-9)
	(move-dir-right loc-9-15 loc-9-16)
	(move-dir-right loc-9-18 loc-9-19)
	(move-dir-right loc-9-19 loc-9-20)
	(move-dir-right loc-9-4 loc-9-5)
	(move-dir-right loc-9-5 loc-9-6)
	(move-dir-right loc-9-6 loc-9-7)
	(move-dir-up loc-10-11 loc-9-11)
	(move-dir-up loc-10-13 loc-9-13)
	(move-dir-up loc-10-16 loc-9-16)
	(move-dir-up loc-10-19 loc-9-19)
	(move-dir-up loc-10-22 loc-9-22)
	(move-dir-up loc-10-4 loc-9-4)
	(move-dir-up loc-11-10 loc-10-10)
	(move-dir-up loc-11-12 loc-10-12)
	(move-dir-up loc-11-14 loc-10-14)
	(move-dir-up loc-11-16 loc-10-16)
	(move-dir-up loc-11-19 loc-10-19)
	(move-dir-up loc-11-22 loc-10-22)
	(move-dir-up loc-11-4 loc-10-4)
	(move-dir-up loc-11-8 loc-10-8)
	(move-dir-up loc-12-10 loc-11-10)
	(move-dir-up loc-12-12 loc-11-12)
	(move-dir-up loc-12-16 loc-11-16)
	(move-dir-up loc-12-22 loc-11-22)
	(move-dir-up loc-12-4 loc-11-4)
	(move-dir-up loc-12-6 loc-11-6)
	(move-dir-up loc-13-12 loc-12-12)
	(move-dir-up loc-13-15 loc-12-15)
	(move-dir-up loc-13-17 loc-12-17)
	(move-dir-up loc-13-21 loc-12-21)
	(move-dir-up loc-13-4 loc-12-4)
	(move-dir-up loc-13-6 loc-12-6)
	(move-dir-up loc-13-9 loc-12-9)
	(move-dir-up loc-14-15 loc-13-15)
	(move-dir-up loc-14-18 loc-13-18)
	(move-dir-up loc-14-21 loc-13-21)
	(move-dir-up loc-14-2 loc-13-2)
	(move-dir-up loc-14-6 loc-13-6)
	(move-dir-up loc-14-9 loc-13-9)
	(move-dir-up loc-15-16 loc-14-16)
	(move-dir-up loc-15-21 loc-14-21)
	(move-dir-up loc-15-6 loc-14-6)
	(move-dir-up loc-15-9 loc-14-9)
	(move-dir-up loc-16-11 loc-15-11)
	(move-dir-up loc-16-17 loc-15-17)
	(move-dir-up loc-16-22 loc-15-22)
	(move-dir-up loc-16-4 loc-15-4)
	(move-dir-up loc-16-6 loc-15-6)
	(move-dir-up loc-16-8 loc-15-8)
	(move-dir-up loc-17-11 loc-16-11)
	(move-dir-up loc-17-15 loc-16-15)
	(move-dir-up loc-17-19 loc-16-19)
	(move-dir-up loc-17-22 loc-16-22)
	(move-dir-up loc-17-4 loc-16-4)
	(move-dir-up loc-18-11 loc-17-11)
	(move-dir-up loc-18-13 loc-17-13)
	(move-dir-up loc-18-16 loc-17-16)
	(move-dir-up loc-18-18 loc-17-18)
	(move-dir-up loc-18-22 loc-17-22)
	(move-dir-up loc-18-4 loc-17-4)
	(move-dir-up loc-18-7 loc-17-7)
	(move-dir-up loc-19-11 loc-18-11)
	(move-dir-up loc-19-16 loc-18-16)
	(move-dir-up loc-19-20 loc-18-20)
	(move-dir-up loc-19-3 loc-18-3)
	(move-dir-up loc-19-7 loc-18-7)
	(move-dir-up loc-20-14 loc-19-14)
	(move-dir-up loc-20-16 loc-19-16)
	(move-dir-up loc-20-19 loc-19-19)
	(move-dir-up loc-20-21 loc-19-21)
	(move-dir-up loc-20-3 loc-19-3)
	(move-dir-up loc-20-7 loc-19-7)
	(move-dir-up loc-20-9 loc-19-9)
	(move-dir-up loc-21-13 loc-20-13)
	(move-dir-up loc-21-16 loc-20-16)
	(move-dir-up loc-21-19 loc-20-19)
	(move-dir-up loc-21-22 loc-20-22)
	(move-dir-up loc-21-2 loc-20-2)
	(move-dir-up loc-21-5 loc-20-5)
	(move-dir-up loc-21-7 loc-20-7)
	(move-dir-up loc-21-9 loc-20-9)
	(move-dir-up loc-22-11 loc-21-11)
	(move-dir-up loc-22-13 loc-21-13)
	(move-dir-up loc-22-15 loc-21-15)
	(move-dir-up loc-22-17 loc-21-17)
	(move-dir-up loc-22-19 loc-21-19)
	(move-dir-up loc-22-22 loc-21-22)
	(move-dir-up loc-22-2 loc-21-2)
	(move-dir-up loc-22-7 loc-21-7)
	(move-dir-up loc-22-9 loc-21-9)
	(move-dir-up loc-3-13 loc-2-13)
	(move-dir-up loc-3-15 loc-2-15)
	(move-dir-up loc-3-18 loc-2-18)
	(move-dir-up loc-3-22 loc-2-22)
	(move-dir-up loc-3-3 loc-2-3)
	(move-dir-up loc-3-7 loc-2-7)
	(move-dir-up loc-4-10 loc-3-10)
	(move-dir-up loc-4-14 loc-3-14)
	(move-dir-up loc-4-18 loc-3-18)
	(move-dir-up loc-4-20 loc-3-20)
	(move-dir-up loc-4-22 loc-3-22)
	(move-dir-up loc-4-2 loc-3-2)
	(move-dir-up loc-4-7 loc-3-7)
	(move-dir-up loc-5-10 loc-4-10)
	(move-dir-up loc-5-14 loc-4-14)
	(move-dir-up loc-5-16 loc-4-16)
	(move-dir-up loc-5-18 loc-4-18)
	(move-dir-up loc-5-20 loc-4-20)
	(move-dir-up loc-5-22 loc-4-22)
	(move-dir-up loc-5-2 loc-4-2)
	(move-dir-up loc-5-5 loc-4-5)
	(move-dir-up loc-5-7 loc-4-7)
	(move-dir-up loc-6-10 loc-5-10)
	(move-dir-up loc-6-13 loc-5-13)
	(move-dir-up loc-6-16 loc-5-16)
	(move-dir-up loc-6-18 loc-5-18)
	(move-dir-up loc-6-21 loc-5-21)
	(move-dir-up loc-6-2 loc-5-2)
	(move-dir-up loc-6-8 loc-5-8)
	(move-dir-up loc-7-10 loc-6-10)
	(move-dir-up loc-7-13 loc-6-13)
	(move-dir-up loc-7-16 loc-6-16)
	(move-dir-up loc-7-19 loc-6-19)
	(move-dir-up loc-7-21 loc-6-21)
	(move-dir-up loc-7-2 loc-6-2)
	(move-dir-up loc-7-6 loc-6-6)
	(move-dir-up loc-7-8 loc-6-8)
	(move-dir-up loc-8-14 loc-7-14)
	(move-dir-up loc-8-17 loc-7-17)
	(move-dir-up loc-8-20 loc-7-20)
	(move-dir-up loc-8-2 loc-7-2)
	(move-dir-up loc-8-4 loc-7-4)
	(move-dir-up loc-8-8 loc-7-8)
	(move-dir-up loc-9-11 loc-8-11)
	(move-dir-up loc-9-15 loc-8-15)
	(move-dir-up loc-9-20 loc-8-20)
	(move-dir-up loc-9-2 loc-8-2)
	(move-dir-up loc-9-4 loc-8-4)
	(move-dir-up loc-9-9 loc-8-9)
	(oriented-up player-1)
  )
  (:goal (at player-1 loc-8-15))
)
