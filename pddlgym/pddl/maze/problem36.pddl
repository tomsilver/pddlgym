
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
	loc-1-24 - location
	loc-1-25 - location
	loc-1-26 - location
	loc-1-27 - location
	loc-1-28 - location
	loc-1-29 - location
	loc-1-3 - location
	loc-1-30 - location
	loc-1-31 - location
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
	loc-10-24 - location
	loc-10-25 - location
	loc-10-26 - location
	loc-10-27 - location
	loc-10-28 - location
	loc-10-29 - location
	loc-10-3 - location
	loc-10-30 - location
	loc-10-31 - location
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
	loc-11-24 - location
	loc-11-25 - location
	loc-11-26 - location
	loc-11-27 - location
	loc-11-28 - location
	loc-11-29 - location
	loc-11-3 - location
	loc-11-30 - location
	loc-11-31 - location
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
	loc-12-24 - location
	loc-12-25 - location
	loc-12-26 - location
	loc-12-27 - location
	loc-12-28 - location
	loc-12-29 - location
	loc-12-3 - location
	loc-12-30 - location
	loc-12-31 - location
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
	loc-13-24 - location
	loc-13-25 - location
	loc-13-26 - location
	loc-13-27 - location
	loc-13-28 - location
	loc-13-29 - location
	loc-13-3 - location
	loc-13-30 - location
	loc-13-31 - location
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
	loc-14-24 - location
	loc-14-25 - location
	loc-14-26 - location
	loc-14-27 - location
	loc-14-28 - location
	loc-14-29 - location
	loc-14-3 - location
	loc-14-30 - location
	loc-14-31 - location
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
	loc-15-24 - location
	loc-15-25 - location
	loc-15-26 - location
	loc-15-27 - location
	loc-15-28 - location
	loc-15-29 - location
	loc-15-3 - location
	loc-15-30 - location
	loc-15-31 - location
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
	loc-16-24 - location
	loc-16-25 - location
	loc-16-26 - location
	loc-16-27 - location
	loc-16-28 - location
	loc-16-29 - location
	loc-16-3 - location
	loc-16-30 - location
	loc-16-31 - location
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
	loc-17-24 - location
	loc-17-25 - location
	loc-17-26 - location
	loc-17-27 - location
	loc-17-28 - location
	loc-17-29 - location
	loc-17-3 - location
	loc-17-30 - location
	loc-17-31 - location
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
	loc-18-24 - location
	loc-18-25 - location
	loc-18-26 - location
	loc-18-27 - location
	loc-18-28 - location
	loc-18-29 - location
	loc-18-3 - location
	loc-18-30 - location
	loc-18-31 - location
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
	loc-19-24 - location
	loc-19-25 - location
	loc-19-26 - location
	loc-19-27 - location
	loc-19-28 - location
	loc-19-29 - location
	loc-19-3 - location
	loc-19-30 - location
	loc-19-31 - location
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
	loc-2-24 - location
	loc-2-25 - location
	loc-2-26 - location
	loc-2-27 - location
	loc-2-28 - location
	loc-2-29 - location
	loc-2-3 - location
	loc-2-30 - location
	loc-2-31 - location
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
	loc-20-24 - location
	loc-20-25 - location
	loc-20-26 - location
	loc-20-27 - location
	loc-20-28 - location
	loc-20-29 - location
	loc-20-3 - location
	loc-20-30 - location
	loc-20-31 - location
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
	loc-21-24 - location
	loc-21-25 - location
	loc-21-26 - location
	loc-21-27 - location
	loc-21-28 - location
	loc-21-29 - location
	loc-21-3 - location
	loc-21-30 - location
	loc-21-31 - location
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
	loc-22-24 - location
	loc-22-25 - location
	loc-22-26 - location
	loc-22-27 - location
	loc-22-28 - location
	loc-22-29 - location
	loc-22-3 - location
	loc-22-30 - location
	loc-22-31 - location
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
	loc-23-24 - location
	loc-23-25 - location
	loc-23-26 - location
	loc-23-27 - location
	loc-23-28 - location
	loc-23-29 - location
	loc-23-3 - location
	loc-23-30 - location
	loc-23-31 - location
	loc-23-4 - location
	loc-23-5 - location
	loc-23-6 - location
	loc-23-7 - location
	loc-23-8 - location
	loc-23-9 - location
	loc-24-1 - location
	loc-24-10 - location
	loc-24-11 - location
	loc-24-12 - location
	loc-24-13 - location
	loc-24-14 - location
	loc-24-15 - location
	loc-24-16 - location
	loc-24-17 - location
	loc-24-18 - location
	loc-24-19 - location
	loc-24-2 - location
	loc-24-20 - location
	loc-24-21 - location
	loc-24-22 - location
	loc-24-23 - location
	loc-24-24 - location
	loc-24-25 - location
	loc-24-26 - location
	loc-24-27 - location
	loc-24-28 - location
	loc-24-29 - location
	loc-24-3 - location
	loc-24-30 - location
	loc-24-31 - location
	loc-24-4 - location
	loc-24-5 - location
	loc-24-6 - location
	loc-24-7 - location
	loc-24-8 - location
	loc-24-9 - location
	loc-25-1 - location
	loc-25-10 - location
	loc-25-11 - location
	loc-25-12 - location
	loc-25-13 - location
	loc-25-14 - location
	loc-25-15 - location
	loc-25-16 - location
	loc-25-17 - location
	loc-25-18 - location
	loc-25-19 - location
	loc-25-2 - location
	loc-25-20 - location
	loc-25-21 - location
	loc-25-22 - location
	loc-25-23 - location
	loc-25-24 - location
	loc-25-25 - location
	loc-25-26 - location
	loc-25-27 - location
	loc-25-28 - location
	loc-25-29 - location
	loc-25-3 - location
	loc-25-30 - location
	loc-25-31 - location
	loc-25-4 - location
	loc-25-5 - location
	loc-25-6 - location
	loc-25-7 - location
	loc-25-8 - location
	loc-25-9 - location
	loc-26-1 - location
	loc-26-10 - location
	loc-26-11 - location
	loc-26-12 - location
	loc-26-13 - location
	loc-26-14 - location
	loc-26-15 - location
	loc-26-16 - location
	loc-26-17 - location
	loc-26-18 - location
	loc-26-19 - location
	loc-26-2 - location
	loc-26-20 - location
	loc-26-21 - location
	loc-26-22 - location
	loc-26-23 - location
	loc-26-24 - location
	loc-26-25 - location
	loc-26-26 - location
	loc-26-27 - location
	loc-26-28 - location
	loc-26-29 - location
	loc-26-3 - location
	loc-26-30 - location
	loc-26-31 - location
	loc-26-4 - location
	loc-26-5 - location
	loc-26-6 - location
	loc-26-7 - location
	loc-26-8 - location
	loc-26-9 - location
	loc-27-1 - location
	loc-27-10 - location
	loc-27-11 - location
	loc-27-12 - location
	loc-27-13 - location
	loc-27-14 - location
	loc-27-15 - location
	loc-27-16 - location
	loc-27-17 - location
	loc-27-18 - location
	loc-27-19 - location
	loc-27-2 - location
	loc-27-20 - location
	loc-27-21 - location
	loc-27-22 - location
	loc-27-23 - location
	loc-27-24 - location
	loc-27-25 - location
	loc-27-26 - location
	loc-27-27 - location
	loc-27-28 - location
	loc-27-29 - location
	loc-27-3 - location
	loc-27-30 - location
	loc-27-31 - location
	loc-27-4 - location
	loc-27-5 - location
	loc-27-6 - location
	loc-27-7 - location
	loc-27-8 - location
	loc-27-9 - location
	loc-28-1 - location
	loc-28-10 - location
	loc-28-11 - location
	loc-28-12 - location
	loc-28-13 - location
	loc-28-14 - location
	loc-28-15 - location
	loc-28-16 - location
	loc-28-17 - location
	loc-28-18 - location
	loc-28-19 - location
	loc-28-2 - location
	loc-28-20 - location
	loc-28-21 - location
	loc-28-22 - location
	loc-28-23 - location
	loc-28-24 - location
	loc-28-25 - location
	loc-28-26 - location
	loc-28-27 - location
	loc-28-28 - location
	loc-28-29 - location
	loc-28-3 - location
	loc-28-30 - location
	loc-28-31 - location
	loc-28-4 - location
	loc-28-5 - location
	loc-28-6 - location
	loc-28-7 - location
	loc-28-8 - location
	loc-28-9 - location
	loc-29-1 - location
	loc-29-10 - location
	loc-29-11 - location
	loc-29-12 - location
	loc-29-13 - location
	loc-29-14 - location
	loc-29-15 - location
	loc-29-16 - location
	loc-29-17 - location
	loc-29-18 - location
	loc-29-19 - location
	loc-29-2 - location
	loc-29-20 - location
	loc-29-21 - location
	loc-29-22 - location
	loc-29-23 - location
	loc-29-24 - location
	loc-29-25 - location
	loc-29-26 - location
	loc-29-27 - location
	loc-29-28 - location
	loc-29-29 - location
	loc-29-3 - location
	loc-29-30 - location
	loc-29-31 - location
	loc-29-4 - location
	loc-29-5 - location
	loc-29-6 - location
	loc-29-7 - location
	loc-29-8 - location
	loc-29-9 - location
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
	loc-3-24 - location
	loc-3-25 - location
	loc-3-26 - location
	loc-3-27 - location
	loc-3-28 - location
	loc-3-29 - location
	loc-3-3 - location
	loc-3-30 - location
	loc-3-31 - location
	loc-3-4 - location
	loc-3-5 - location
	loc-3-6 - location
	loc-3-7 - location
	loc-3-8 - location
	loc-3-9 - location
	loc-30-1 - location
	loc-30-10 - location
	loc-30-11 - location
	loc-30-12 - location
	loc-30-13 - location
	loc-30-14 - location
	loc-30-15 - location
	loc-30-16 - location
	loc-30-17 - location
	loc-30-18 - location
	loc-30-19 - location
	loc-30-2 - location
	loc-30-20 - location
	loc-30-21 - location
	loc-30-22 - location
	loc-30-23 - location
	loc-30-24 - location
	loc-30-25 - location
	loc-30-26 - location
	loc-30-27 - location
	loc-30-28 - location
	loc-30-29 - location
	loc-30-3 - location
	loc-30-30 - location
	loc-30-31 - location
	loc-30-4 - location
	loc-30-5 - location
	loc-30-6 - location
	loc-30-7 - location
	loc-30-8 - location
	loc-30-9 - location
	loc-31-1 - location
	loc-31-10 - location
	loc-31-11 - location
	loc-31-12 - location
	loc-31-13 - location
	loc-31-14 - location
	loc-31-15 - location
	loc-31-16 - location
	loc-31-17 - location
	loc-31-18 - location
	loc-31-19 - location
	loc-31-2 - location
	loc-31-20 - location
	loc-31-21 - location
	loc-31-22 - location
	loc-31-23 - location
	loc-31-24 - location
	loc-31-25 - location
	loc-31-26 - location
	loc-31-27 - location
	loc-31-28 - location
	loc-31-29 - location
	loc-31-3 - location
	loc-31-30 - location
	loc-31-31 - location
	loc-31-4 - location
	loc-31-5 - location
	loc-31-6 - location
	loc-31-7 - location
	loc-31-8 - location
	loc-31-9 - location
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
	loc-4-24 - location
	loc-4-25 - location
	loc-4-26 - location
	loc-4-27 - location
	loc-4-28 - location
	loc-4-29 - location
	loc-4-3 - location
	loc-4-30 - location
	loc-4-31 - location
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
	loc-5-24 - location
	loc-5-25 - location
	loc-5-26 - location
	loc-5-27 - location
	loc-5-28 - location
	loc-5-29 - location
	loc-5-3 - location
	loc-5-30 - location
	loc-5-31 - location
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
	loc-6-24 - location
	loc-6-25 - location
	loc-6-26 - location
	loc-6-27 - location
	loc-6-28 - location
	loc-6-29 - location
	loc-6-3 - location
	loc-6-30 - location
	loc-6-31 - location
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
	loc-7-24 - location
	loc-7-25 - location
	loc-7-26 - location
	loc-7-27 - location
	loc-7-28 - location
	loc-7-29 - location
	loc-7-3 - location
	loc-7-30 - location
	loc-7-31 - location
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
	loc-8-24 - location
	loc-8-25 - location
	loc-8-26 - location
	loc-8-27 - location
	loc-8-28 - location
	loc-8-29 - location
	loc-8-3 - location
	loc-8-30 - location
	loc-8-31 - location
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
	loc-9-24 - location
	loc-9-25 - location
	loc-9-26 - location
	loc-9-27 - location
	loc-9-28 - location
	loc-9-29 - location
	loc-9-3 - location
	loc-9-30 - location
	loc-9-31 - location
	loc-9-4 - location
	loc-9-5 - location
	loc-9-6 - location
	loc-9-7 - location
	loc-9-8 - location
	loc-9-9 - location
	player-1 - player
  )
  (:init 
	(at player-1 loc-5-25)
	(clear loc-10-10)
	(clear loc-10-11)
	(clear loc-10-12)
	(clear loc-10-13)
	(clear loc-10-15)
	(clear loc-10-18)
	(clear loc-10-19)
	(clear loc-10-20)
	(clear loc-10-21)
	(clear loc-10-23)
	(clear loc-10-25)
	(clear loc-10-26)
	(clear loc-10-27)
	(clear loc-10-2)
	(clear loc-10-30)
	(clear loc-10-4)
	(clear loc-10-6)
	(clear loc-10-8)
	(clear loc-11-11)
	(clear loc-11-15)
	(clear loc-11-17)
	(clear loc-11-19)
	(clear loc-11-22)
	(clear loc-11-24)
	(clear loc-11-26)
	(clear loc-11-28)
	(clear loc-11-2)
	(clear loc-11-30)
	(clear loc-11-3)
	(clear loc-11-4)
	(clear loc-11-6)
	(clear loc-11-8)
	(clear loc-11-9)
	(clear loc-12-10)
	(clear loc-12-11)
	(clear loc-12-12)
	(clear loc-12-13)
	(clear loc-12-14)
	(clear loc-12-16)
	(clear loc-12-17)
	(clear loc-12-19)
	(clear loc-12-21)
	(clear loc-12-22)
	(clear loc-12-24)
	(clear loc-12-25)
	(clear loc-12-26)
	(clear loc-12-28)
	(clear loc-12-2)
	(clear loc-12-30)
	(clear loc-12-5)
	(clear loc-12-6)
	(clear loc-12-7)
	(clear loc-12-8)
	(clear loc-13-10)
	(clear loc-13-14)
	(clear loc-13-15)
	(clear loc-13-17)
	(clear loc-13-18)
	(clear loc-13-19)
	(clear loc-13-21)
	(clear loc-13-23)
	(clear loc-13-24)
	(clear loc-13-27)
	(clear loc-13-28)
	(clear loc-13-2)
	(clear loc-13-30)
	(clear loc-13-4)
	(clear loc-13-5)
	(clear loc-13-7)
	(clear loc-13-9)
	(clear loc-14-11)
	(clear loc-14-12)
	(clear loc-14-15)
	(clear loc-14-17)
	(clear loc-14-19)
	(clear loc-14-20)
	(clear loc-14-21)
	(clear loc-14-22)
	(clear loc-14-24)
	(clear loc-14-27)
	(clear loc-14-29)
	(clear loc-14-2)
	(clear loc-14-30)
	(clear loc-14-5)
	(clear loc-14-7)
	(clear loc-14-9)
	(clear loc-15-10)
	(clear loc-15-12)
	(clear loc-15-13)
	(clear loc-15-14)
	(clear loc-15-17)
	(clear loc-15-19)
	(clear loc-15-22)
	(clear loc-15-23)
	(clear loc-15-24)
	(clear loc-15-25)
	(clear loc-15-26)
	(clear loc-15-27)
	(clear loc-15-2)
	(clear loc-15-30)
	(clear loc-15-3)
	(clear loc-15-4)
	(clear loc-15-6)
	(clear loc-15-7)
	(clear loc-15-8)
	(clear loc-16-10)
	(clear loc-16-14)
	(clear loc-16-15)
	(clear loc-16-16)
	(clear loc-16-18)
	(clear loc-16-19)
	(clear loc-16-20)
	(clear loc-16-22)
	(clear loc-16-24)
	(clear loc-16-27)
	(clear loc-16-28)
	(clear loc-16-30)
	(clear loc-16-3)
	(clear loc-16-5)
	(clear loc-16-6)
	(clear loc-16-9)
	(clear loc-17-10)
	(clear loc-17-11)
	(clear loc-17-12)
	(clear loc-17-13)
	(clear loc-17-14)
	(clear loc-17-16)
	(clear loc-17-17)
	(clear loc-17-19)
	(clear loc-17-21)
	(clear loc-17-22)
	(clear loc-17-23)
	(clear loc-17-25)
	(clear loc-17-26)
	(clear loc-17-28)
	(clear loc-17-29)
	(clear loc-17-2)
	(clear loc-17-3)
	(clear loc-17-4)
	(clear loc-17-6)
	(clear loc-17-8)
	(clear loc-18-10)
	(clear loc-18-14)
	(clear loc-18-17)
	(clear loc-18-18)
	(clear loc-18-20)
	(clear loc-18-22)
	(clear loc-18-24)
	(clear loc-18-26)
	(clear loc-18-27)
	(clear loc-18-28)
	(clear loc-18-30)
	(clear loc-18-3)
	(clear loc-18-6)
	(clear loc-18-7)
	(clear loc-18-8)
	(clear loc-19-10)
	(clear loc-19-11)
	(clear loc-19-12)
	(clear loc-19-14)
	(clear loc-19-15)
	(clear loc-19-16)
	(clear loc-19-19)
	(clear loc-19-20)
	(clear loc-19-22)
	(clear loc-19-24)
	(clear loc-19-25)
	(clear loc-19-28)
	(clear loc-19-29)
	(clear loc-19-2)
	(clear loc-19-30)
	(clear loc-19-3)
	(clear loc-19-4)
	(clear loc-19-5)
	(clear loc-19-9)
	(clear loc-2-10)
	(clear loc-2-11)
	(clear loc-2-12)
	(clear loc-2-14)
	(clear loc-2-15)
	(clear loc-2-17)
	(clear loc-2-19)
	(clear loc-2-21)
	(clear loc-2-22)
	(clear loc-2-23)
	(clear loc-2-24)
	(clear loc-2-26)
	(clear loc-2-29)
	(clear loc-2-2)
	(clear loc-2-30)
	(clear loc-2-4)
	(clear loc-2-6)
	(clear loc-2-7)
	(clear loc-2-8)
	(clear loc-2-9)
	(clear loc-20-12)
	(clear loc-20-13)
	(clear loc-20-15)
	(clear loc-20-17)
	(clear loc-20-18)
	(clear loc-20-20)
	(clear loc-20-21)
	(clear loc-20-22)
	(clear loc-20-23)
	(clear loc-20-25)
	(clear loc-20-26)
	(clear loc-20-28)
	(clear loc-20-2)
	(clear loc-20-30)
	(clear loc-20-5)
	(clear loc-20-7)
	(clear loc-20-9)
	(clear loc-21-11)
	(clear loc-21-12)
	(clear loc-21-14)
	(clear loc-21-15)
	(clear loc-21-16)
	(clear loc-21-18)
	(clear loc-21-19)
	(clear loc-21-20)
	(clear loc-21-23)
	(clear loc-21-26)
	(clear loc-21-27)
	(clear loc-21-28)
	(clear loc-21-29)
	(clear loc-21-2)
	(clear loc-21-3)
	(clear loc-21-4)
	(clear loc-21-6)
	(clear loc-21-7)
	(clear loc-21-9)
	(clear loc-22-10)
	(clear loc-22-12)
	(clear loc-22-14)
	(clear loc-22-16)
	(clear loc-22-17)
	(clear loc-22-19)
	(clear loc-22-21)
	(clear loc-22-22)
	(clear loc-22-24)
	(clear loc-22-25)
	(clear loc-22-29)
	(clear loc-22-2)
	(clear loc-22-30)
	(clear loc-22-5)
	(clear loc-22-6)
	(clear loc-22-8)
	(clear loc-22-9)
	(clear loc-23-10)
	(clear loc-23-11)
	(clear loc-23-13)
	(clear loc-23-15)
	(clear loc-23-18)
	(clear loc-23-19)
	(clear loc-23-20)
	(clear loc-23-22)
	(clear loc-23-23)
	(clear loc-23-24)
	(clear loc-23-26)
	(clear loc-23-27)
	(clear loc-23-2)
	(clear loc-23-30)
	(clear loc-23-3)
	(clear loc-23-4)
	(clear loc-23-5)
	(clear loc-23-7)
	(clear loc-24-11)
	(clear loc-24-12)
	(clear loc-24-13)
	(clear loc-24-14)
	(clear loc-24-15)
	(clear loc-24-17)
	(clear loc-24-21)
	(clear loc-24-24)
	(clear loc-24-25)
	(clear loc-24-27)
	(clear loc-24-28)
	(clear loc-24-29)
	(clear loc-24-30)
	(clear loc-24-3)
	(clear loc-24-5)
	(clear loc-24-6)
	(clear loc-24-7)
	(clear loc-24-8)
	(clear loc-24-9)
	(clear loc-25-10)
	(clear loc-25-11)
	(clear loc-25-14)
	(clear loc-25-16)
	(clear loc-25-17)
	(clear loc-25-18)
	(clear loc-25-19)
	(clear loc-25-21)
	(clear loc-25-23)
	(clear loc-25-25)
	(clear loc-25-27)
	(clear loc-25-2)
	(clear loc-25-30)
	(clear loc-25-4)
	(clear loc-25-6)
	(clear loc-25-9)
	(clear loc-26-15)
	(clear loc-26-16)
	(clear loc-26-18)
	(clear loc-26-20)
	(clear loc-26-21)
	(clear loc-26-22)
	(clear loc-26-23)
	(clear loc-26-25)
	(clear loc-26-26)
	(clear loc-26-27)
	(clear loc-26-28)
	(clear loc-26-2)
	(clear loc-26-30)
	(clear loc-26-3)
	(clear loc-26-4)
	(clear loc-26-6)
	(clear loc-26-8)
	(clear loc-26-9)
	(clear loc-27-10)
	(clear loc-27-11)
	(clear loc-27-14)
	(clear loc-27-18)
	(clear loc-27-19)
	(clear loc-27-20)
	(clear loc-27-22)
	(clear loc-27-25)
	(clear loc-27-27)
	(clear loc-27-29)
	(clear loc-27-2)
	(clear loc-27-30)
	(clear loc-27-4)
	(clear loc-27-5)
	(clear loc-27-6)
	(clear loc-27-7)
	(clear loc-27-9)
	(clear loc-28-11)
	(clear loc-28-12)
	(clear loc-28-13)
	(clear loc-28-14)
	(clear loc-28-15)
	(clear loc-28-16)
	(clear loc-28-17)
	(clear loc-28-19)
	(clear loc-28-22)
	(clear loc-28-24)
	(clear loc-28-25)
	(clear loc-28-28)
	(clear loc-28-29)
	(clear loc-28-2)
	(clear loc-28-3)
	(clear loc-28-5)
	(clear loc-28-8)
	(clear loc-28-9)
	(clear loc-29-11)
	(clear loc-29-15)
	(clear loc-29-17)
	(clear loc-29-18)
	(clear loc-29-19)
	(clear loc-29-20)
	(clear loc-29-21)
	(clear loc-29-23)
	(clear loc-29-25)
	(clear loc-29-26)
	(clear loc-29-27)
	(clear loc-29-29)
	(clear loc-29-30)
	(clear loc-29-3)
	(clear loc-29-4)
	(clear loc-29-6)
	(clear loc-29-7)
	(clear loc-29-9)
	(clear loc-3-11)
	(clear loc-3-13)
	(clear loc-3-14)
	(clear loc-3-17)
	(clear loc-3-18)
	(clear loc-3-19)
	(clear loc-3-20)
	(clear loc-3-24)
	(clear loc-3-25)
	(clear loc-3-26)
	(clear loc-3-27)
	(clear loc-3-28)
	(clear loc-3-29)
	(clear loc-3-2)
	(clear loc-3-3)
	(clear loc-3-4)
	(clear loc-3-5)
	(clear loc-3-8)
	(clear loc-30-11)
	(clear loc-30-13)
	(clear loc-30-14)
	(clear loc-30-15)
	(clear loc-30-16)
	(clear loc-30-18)
	(clear loc-30-21)
	(clear loc-30-22)
	(clear loc-30-23)
	(clear loc-30-24)
	(clear loc-30-25)
	(clear loc-30-27)
	(clear loc-30-28)
	(clear loc-30-30)
	(clear loc-30-4)
	(clear loc-30-5)
	(clear loc-30-6)
	(clear loc-30-8)
	(clear loc-30-9)
	(clear loc-4-10)
	(clear loc-4-12)
	(clear loc-4-14)
	(clear loc-4-15)
	(clear loc-4-16)
	(clear loc-4-17)
	(clear loc-4-20)
	(clear loc-4-21)
	(clear loc-4-22)
	(clear loc-4-23)
	(clear loc-4-24)
	(clear loc-4-26)
	(clear loc-4-29)
	(clear loc-4-2)
	(clear loc-4-6)
	(clear loc-4-8)
	(clear loc-4-9)
	(clear loc-5-10)
	(clear loc-5-11)
	(clear loc-5-12)
	(clear loc-5-13)
	(clear loc-5-15)
	(clear loc-5-18)
	(clear loc-5-19)
	(clear loc-5-22)
	(clear loc-5-24)
	(clear loc-5-27)
	(clear loc-5-28)
	(clear loc-5-29)
	(clear loc-5-2)
	(clear loc-5-30)
	(clear loc-5-3)
	(clear loc-5-4)
	(clear loc-5-5)
	(clear loc-5-6)
	(clear loc-5-7)
	(clear loc-6-10)
	(clear loc-6-13)
	(clear loc-6-15)
	(clear loc-6-16)
	(clear loc-6-17)
	(clear loc-6-19)
	(clear loc-6-20)
	(clear loc-6-22)
	(clear loc-6-23)
	(clear loc-6-25)
	(clear loc-6-27)
	(clear loc-6-2)
	(clear loc-6-30)
	(clear loc-6-4)
	(clear loc-6-6)
	(clear loc-6-8)
	(clear loc-6-9)
	(clear loc-7-10)
	(clear loc-7-12)
	(clear loc-7-13)
	(clear loc-7-14)
	(clear loc-7-16)
	(clear loc-7-18)
	(clear loc-7-20)
	(clear loc-7-23)
	(clear loc-7-24)
	(clear loc-7-26)
	(clear loc-7-28)
	(clear loc-7-2)
	(clear loc-7-30)
	(clear loc-7-3)
	(clear loc-7-5)
	(clear loc-7-6)
	(clear loc-7-7)
	(clear loc-7-8)
	(clear loc-8-11)
	(clear loc-8-12)
	(clear loc-8-15)
	(clear loc-8-17)
	(clear loc-8-18)
	(clear loc-8-19)
	(clear loc-8-20)
	(clear loc-8-21)
	(clear loc-8-23)
	(clear loc-8-25)
	(clear loc-8-26)
	(clear loc-8-27)
	(clear loc-8-28)
	(clear loc-8-2)
	(clear loc-8-30)
	(clear loc-8-4)
	(clear loc-8-5)
	(clear loc-8-7)
	(clear loc-8-9)
	(clear loc-9-12)
	(clear loc-9-14)
	(clear loc-9-15)
	(clear loc-9-16)
	(clear loc-9-17)
	(clear loc-9-21)
	(clear loc-9-23)
	(clear loc-9-25)
	(clear loc-9-28)
	(clear loc-9-29)
	(clear loc-9-2)
	(clear loc-9-30)
	(clear loc-9-3)
	(clear loc-9-5)
	(clear loc-9-7)
	(clear loc-9-8)
	(clear loc-9-9)
	(is-goal loc-26-23)
	(move-dir-down loc-10-11 loc-11-11)
	(move-dir-down loc-10-15 loc-11-15)
	(move-dir-down loc-10-19 loc-11-19)
	(move-dir-down loc-10-26 loc-11-26)
	(move-dir-down loc-10-2 loc-11-2)
	(move-dir-down loc-10-30 loc-11-30)
	(move-dir-down loc-10-4 loc-11-4)
	(move-dir-down loc-10-6 loc-11-6)
	(move-dir-down loc-10-8 loc-11-8)
	(move-dir-down loc-11-11 loc-12-11)
	(move-dir-down loc-11-17 loc-12-17)
	(move-dir-down loc-11-19 loc-12-19)
	(move-dir-down loc-11-22 loc-12-22)
	(move-dir-down loc-11-24 loc-12-24)
	(move-dir-down loc-11-26 loc-12-26)
	(move-dir-down loc-11-28 loc-12-28)
	(move-dir-down loc-11-2 loc-12-2)
	(move-dir-down loc-11-30 loc-12-30)
	(move-dir-down loc-11-6 loc-12-6)
	(move-dir-down loc-11-8 loc-12-8)
	(move-dir-down loc-12-10 loc-13-10)
	(move-dir-down loc-12-14 loc-13-14)
	(move-dir-down loc-12-17 loc-13-17)
	(move-dir-down loc-12-19 loc-13-19)
	(move-dir-down loc-12-21 loc-13-21)
	(move-dir-down loc-12-24 loc-13-24)
	(move-dir-down loc-12-28 loc-13-28)
	(move-dir-down loc-12-2 loc-13-2)
	(move-dir-down loc-12-30 loc-13-30)
	(move-dir-down loc-12-5 loc-13-5)
	(move-dir-down loc-12-7 loc-13-7)
	(move-dir-down loc-13-15 loc-14-15)
	(move-dir-down loc-13-17 loc-14-17)
	(move-dir-down loc-13-19 loc-14-19)
	(move-dir-down loc-13-21 loc-14-21)
	(move-dir-down loc-13-24 loc-14-24)
	(move-dir-down loc-13-27 loc-14-27)
	(move-dir-down loc-13-2 loc-14-2)
	(move-dir-down loc-13-30 loc-14-30)
	(move-dir-down loc-13-5 loc-14-5)
	(move-dir-down loc-13-7 loc-14-7)
	(move-dir-down loc-13-9 loc-14-9)
	(move-dir-down loc-14-12 loc-15-12)
	(move-dir-down loc-14-17 loc-15-17)
	(move-dir-down loc-14-19 loc-15-19)
	(move-dir-down loc-14-22 loc-15-22)
	(move-dir-down loc-14-24 loc-15-24)
	(move-dir-down loc-14-27 loc-15-27)
	(move-dir-down loc-14-2 loc-15-2)
	(move-dir-down loc-14-30 loc-15-30)
	(move-dir-down loc-14-7 loc-15-7)
	(move-dir-down loc-15-10 loc-16-10)
	(move-dir-down loc-15-14 loc-16-14)
	(move-dir-down loc-15-19 loc-16-19)
	(move-dir-down loc-15-22 loc-16-22)
	(move-dir-down loc-15-24 loc-16-24)
	(move-dir-down loc-15-27 loc-16-27)
	(move-dir-down loc-15-30 loc-16-30)
	(move-dir-down loc-15-3 loc-16-3)
	(move-dir-down loc-15-6 loc-16-6)
	(move-dir-down loc-16-10 loc-17-10)
	(move-dir-down loc-16-14 loc-17-14)
	(move-dir-down loc-16-16 loc-17-16)
	(move-dir-down loc-16-19 loc-17-19)
	(move-dir-down loc-16-22 loc-17-22)
	(move-dir-down loc-16-28 loc-17-28)
	(move-dir-down loc-16-3 loc-17-3)
	(move-dir-down loc-16-6 loc-17-6)
	(move-dir-down loc-17-10 loc-18-10)
	(move-dir-down loc-17-14 loc-18-14)
	(move-dir-down loc-17-17 loc-18-17)
	(move-dir-down loc-17-22 loc-18-22)
	(move-dir-down loc-17-26 loc-18-26)
	(move-dir-down loc-17-28 loc-18-28)
	(move-dir-down loc-17-3 loc-18-3)
	(move-dir-down loc-17-6 loc-18-6)
	(move-dir-down loc-17-8 loc-18-8)
	(move-dir-down loc-18-10 loc-19-10)
	(move-dir-down loc-18-14 loc-19-14)
	(move-dir-down loc-18-20 loc-19-20)
	(move-dir-down loc-18-22 loc-19-22)
	(move-dir-down loc-18-24 loc-19-24)
	(move-dir-down loc-18-28 loc-19-28)
	(move-dir-down loc-18-30 loc-19-30)
	(move-dir-down loc-18-3 loc-19-3)
	(move-dir-down loc-19-12 loc-20-12)
	(move-dir-down loc-19-15 loc-20-15)
	(move-dir-down loc-19-20 loc-20-20)
	(move-dir-down loc-19-22 loc-20-22)
	(move-dir-down loc-19-25 loc-20-25)
	(move-dir-down loc-19-28 loc-20-28)
	(move-dir-down loc-19-2 loc-20-2)
	(move-dir-down loc-19-30 loc-20-30)
	(move-dir-down loc-19-5 loc-20-5)
	(move-dir-down loc-19-9 loc-20-9)
	(move-dir-down loc-2-11 loc-3-11)
	(move-dir-down loc-2-14 loc-3-14)
	(move-dir-down loc-2-17 loc-3-17)
	(move-dir-down loc-2-19 loc-3-19)
	(move-dir-down loc-2-24 loc-3-24)
	(move-dir-down loc-2-26 loc-3-26)
	(move-dir-down loc-2-29 loc-3-29)
	(move-dir-down loc-2-2 loc-3-2)
	(move-dir-down loc-2-4 loc-3-4)
	(move-dir-down loc-2-8 loc-3-8)
	(move-dir-down loc-20-12 loc-21-12)
	(move-dir-down loc-20-15 loc-21-15)
	(move-dir-down loc-20-18 loc-21-18)
	(move-dir-down loc-20-20 loc-21-20)
	(move-dir-down loc-20-23 loc-21-23)
	(move-dir-down loc-20-26 loc-21-26)
	(move-dir-down loc-20-28 loc-21-28)
	(move-dir-down loc-20-2 loc-21-2)
	(move-dir-down loc-20-7 loc-21-7)
	(move-dir-down loc-20-9 loc-21-9)
	(move-dir-down loc-21-12 loc-22-12)
	(move-dir-down loc-21-14 loc-22-14)
	(move-dir-down loc-21-16 loc-22-16)
	(move-dir-down loc-21-19 loc-22-19)
	(move-dir-down loc-21-29 loc-22-29)
	(move-dir-down loc-21-2 loc-22-2)
	(move-dir-down loc-21-6 loc-22-6)
	(move-dir-down loc-21-9 loc-22-9)
	(move-dir-down loc-22-10 loc-23-10)
	(move-dir-down loc-22-19 loc-23-19)
	(move-dir-down loc-22-22 loc-23-22)
	(move-dir-down loc-22-24 loc-23-24)
	(move-dir-down loc-22-2 loc-23-2)
	(move-dir-down loc-22-30 loc-23-30)
	(move-dir-down loc-22-5 loc-23-5)
	(move-dir-down loc-23-11 loc-24-11)
	(move-dir-down loc-23-13 loc-24-13)
	(move-dir-down loc-23-15 loc-24-15)
	(move-dir-down loc-23-24 loc-24-24)
	(move-dir-down loc-23-27 loc-24-27)
	(move-dir-down loc-23-30 loc-24-30)
	(move-dir-down loc-23-3 loc-24-3)
	(move-dir-down loc-23-5 loc-24-5)
	(move-dir-down loc-23-7 loc-24-7)
	(move-dir-down loc-24-11 loc-25-11)
	(move-dir-down loc-24-14 loc-25-14)
	(move-dir-down loc-24-17 loc-25-17)
	(move-dir-down loc-24-21 loc-25-21)
	(move-dir-down loc-24-25 loc-25-25)
	(move-dir-down loc-24-27 loc-25-27)
	(move-dir-down loc-24-30 loc-25-30)
	(move-dir-down loc-24-6 loc-25-6)
	(move-dir-down loc-24-9 loc-25-9)
	(move-dir-down loc-25-16 loc-26-16)
	(move-dir-down loc-25-18 loc-26-18)
	(move-dir-down loc-25-21 loc-26-21)
	(move-dir-down loc-25-23 loc-26-23)
	(move-dir-down loc-25-25 loc-26-25)
	(move-dir-down loc-25-27 loc-26-27)
	(move-dir-down loc-25-2 loc-26-2)
	(move-dir-down loc-25-30 loc-26-30)
	(move-dir-down loc-25-4 loc-26-4)
	(move-dir-down loc-25-6 loc-26-6)
	(move-dir-down loc-25-9 loc-26-9)
	(move-dir-down loc-26-18 loc-27-18)
	(move-dir-down loc-26-20 loc-27-20)
	(move-dir-down loc-26-22 loc-27-22)
	(move-dir-down loc-26-25 loc-27-25)
	(move-dir-down loc-26-27 loc-27-27)
	(move-dir-down loc-26-2 loc-27-2)
	(move-dir-down loc-26-30 loc-27-30)
	(move-dir-down loc-26-4 loc-27-4)
	(move-dir-down loc-26-6 loc-27-6)
	(move-dir-down loc-26-9 loc-27-9)
	(move-dir-down loc-27-11 loc-28-11)
	(move-dir-down loc-27-14 loc-28-14)
	(move-dir-down loc-27-19 loc-28-19)
	(move-dir-down loc-27-22 loc-28-22)
	(move-dir-down loc-27-25 loc-28-25)
	(move-dir-down loc-27-29 loc-28-29)
	(move-dir-down loc-27-2 loc-28-2)
	(move-dir-down loc-27-5 loc-28-5)
	(move-dir-down loc-27-9 loc-28-9)
	(move-dir-down loc-28-11 loc-29-11)
	(move-dir-down loc-28-15 loc-29-15)
	(move-dir-down loc-28-17 loc-29-17)
	(move-dir-down loc-28-19 loc-29-19)
	(move-dir-down loc-28-25 loc-29-25)
	(move-dir-down loc-28-29 loc-29-29)
	(move-dir-down loc-28-3 loc-29-3)
	(move-dir-down loc-28-9 loc-29-9)
	(move-dir-down loc-29-11 loc-30-11)
	(move-dir-down loc-29-15 loc-30-15)
	(move-dir-down loc-29-18 loc-30-18)
	(move-dir-down loc-29-21 loc-30-21)
	(move-dir-down loc-29-23 loc-30-23)
	(move-dir-down loc-29-25 loc-30-25)
	(move-dir-down loc-29-27 loc-30-27)
	(move-dir-down loc-29-30 loc-30-30)
	(move-dir-down loc-29-4 loc-30-4)
	(move-dir-down loc-29-6 loc-30-6)
	(move-dir-down loc-29-9 loc-30-9)
	(move-dir-down loc-3-14 loc-4-14)
	(move-dir-down loc-3-17 loc-4-17)
	(move-dir-down loc-3-20 loc-4-20)
	(move-dir-down loc-3-24 loc-4-24)
	(move-dir-down loc-3-26 loc-4-26)
	(move-dir-down loc-3-29 loc-4-29)
	(move-dir-down loc-3-2 loc-4-2)
	(move-dir-down loc-3-8 loc-4-8)
	(move-dir-down loc-4-10 loc-5-10)
	(move-dir-down loc-4-12 loc-5-12)
	(move-dir-down loc-4-15 loc-5-15)
	(move-dir-down loc-4-22 loc-5-22)
	(move-dir-down loc-4-24 loc-5-24)
	(move-dir-down loc-4-29 loc-5-29)
	(move-dir-down loc-4-2 loc-5-2)
	(move-dir-down loc-4-6 loc-5-6)
	(move-dir-down loc-5-10 loc-6-10)
	(move-dir-down loc-5-13 loc-6-13)
	(move-dir-down loc-5-15 loc-6-15)
	(move-dir-down loc-5-19 loc-6-19)
	(move-dir-down loc-5-22 loc-6-22)
	(move-dir-down loc-5-25 loc-6-25)
	(move-dir-down loc-5-27 loc-6-27)
	(move-dir-down loc-5-2 loc-6-2)
	(move-dir-down loc-5-30 loc-6-30)
	(move-dir-down loc-5-4 loc-6-4)
	(move-dir-down loc-5-6 loc-6-6)
	(move-dir-down loc-6-10 loc-7-10)
	(move-dir-down loc-6-13 loc-7-13)
	(move-dir-down loc-6-16 loc-7-16)
	(move-dir-down loc-6-20 loc-7-20)
	(move-dir-down loc-6-23 loc-7-23)
	(move-dir-down loc-6-2 loc-7-2)
	(move-dir-down loc-6-30 loc-7-30)
	(move-dir-down loc-6-6 loc-7-6)
	(move-dir-down loc-6-8 loc-7-8)
	(move-dir-down loc-7-12 loc-8-12)
	(move-dir-down loc-7-18 loc-8-18)
	(move-dir-down loc-7-20 loc-8-20)
	(move-dir-down loc-7-23 loc-8-23)
	(move-dir-down loc-7-26 loc-8-26)
	(move-dir-down loc-7-28 loc-8-28)
	(move-dir-down loc-7-2 loc-8-2)
	(move-dir-down loc-7-30 loc-8-30)
	(move-dir-down loc-7-5 loc-8-5)
	(move-dir-down loc-7-7 loc-8-7)
	(move-dir-down loc-8-12 loc-9-12)
	(move-dir-down loc-8-15 loc-9-15)
	(move-dir-down loc-8-17 loc-9-17)
	(move-dir-down loc-8-21 loc-9-21)
	(move-dir-down loc-8-23 loc-9-23)
	(move-dir-down loc-8-25 loc-9-25)
	(move-dir-down loc-8-28 loc-9-28)
	(move-dir-down loc-8-2 loc-9-2)
	(move-dir-down loc-8-30 loc-9-30)
	(move-dir-down loc-8-5 loc-9-5)
	(move-dir-down loc-8-7 loc-9-7)
	(move-dir-down loc-8-9 loc-9-9)
	(move-dir-down loc-9-12 loc-10-12)
	(move-dir-down loc-9-15 loc-10-15)
	(move-dir-down loc-9-21 loc-10-21)
	(move-dir-down loc-9-23 loc-10-23)
	(move-dir-down loc-9-25 loc-10-25)
	(move-dir-down loc-9-2 loc-10-2)
	(move-dir-down loc-9-30 loc-10-30)
	(move-dir-down loc-9-8 loc-10-8)
	(move-dir-left loc-10-11 loc-10-10)
	(move-dir-left loc-10-12 loc-10-11)
	(move-dir-left loc-10-13 loc-10-12)
	(move-dir-left loc-10-19 loc-10-18)
	(move-dir-left loc-10-20 loc-10-19)
	(move-dir-left loc-10-21 loc-10-20)
	(move-dir-left loc-10-26 loc-10-25)
	(move-dir-left loc-10-27 loc-10-26)
	(move-dir-left loc-11-3 loc-11-2)
	(move-dir-left loc-11-4 loc-11-3)
	(move-dir-left loc-11-9 loc-11-8)
	(move-dir-left loc-12-11 loc-12-10)
	(move-dir-left loc-12-12 loc-12-11)
	(move-dir-left loc-12-13 loc-12-12)
	(move-dir-left loc-12-14 loc-12-13)
	(move-dir-left loc-12-17 loc-12-16)
	(move-dir-left loc-12-22 loc-12-21)
	(move-dir-left loc-12-25 loc-12-24)
	(move-dir-left loc-12-26 loc-12-25)
	(move-dir-left loc-12-6 loc-12-5)
	(move-dir-left loc-12-7 loc-12-6)
	(move-dir-left loc-12-8 loc-12-7)
	(move-dir-left loc-13-10 loc-13-9)
	(move-dir-left loc-13-15 loc-13-14)
	(move-dir-left loc-13-18 loc-13-17)
	(move-dir-left loc-13-19 loc-13-18)
	(move-dir-left loc-13-24 loc-13-23)
	(move-dir-left loc-13-28 loc-13-27)
	(move-dir-left loc-13-5 loc-13-4)
	(move-dir-left loc-14-12 loc-14-11)
	(move-dir-left loc-14-20 loc-14-19)
	(move-dir-left loc-14-21 loc-14-20)
	(move-dir-left loc-14-22 loc-14-21)
	(move-dir-left loc-14-30 loc-14-29)
	(move-dir-left loc-15-13 loc-15-12)
	(move-dir-left loc-15-14 loc-15-13)
	(move-dir-left loc-15-23 loc-15-22)
	(move-dir-left loc-15-24 loc-15-23)
	(move-dir-left loc-15-25 loc-15-24)
	(move-dir-left loc-15-26 loc-15-25)
	(move-dir-left loc-15-27 loc-15-26)
	(move-dir-left loc-15-3 loc-15-2)
	(move-dir-left loc-15-4 loc-15-3)
	(move-dir-left loc-15-7 loc-15-6)
	(move-dir-left loc-15-8 loc-15-7)
	(move-dir-left loc-16-10 loc-16-9)
	(move-dir-left loc-16-15 loc-16-14)
	(move-dir-left loc-16-16 loc-16-15)
	(move-dir-left loc-16-19 loc-16-18)
	(move-dir-left loc-16-20 loc-16-19)
	(move-dir-left loc-16-28 loc-16-27)
	(move-dir-left loc-16-6 loc-16-5)
	(move-dir-left loc-17-11 loc-17-10)
	(move-dir-left loc-17-12 loc-17-11)
	(move-dir-left loc-17-13 loc-17-12)
	(move-dir-left loc-17-14 loc-17-13)
	(move-dir-left loc-17-17 loc-17-16)
	(move-dir-left loc-17-22 loc-17-21)
	(move-dir-left loc-17-23 loc-17-22)
	(move-dir-left loc-17-26 loc-17-25)
	(move-dir-left loc-17-29 loc-17-28)
	(move-dir-left loc-17-3 loc-17-2)
	(move-dir-left loc-17-4 loc-17-3)
	(move-dir-left loc-18-18 loc-18-17)
	(move-dir-left loc-18-27 loc-18-26)
	(move-dir-left loc-18-28 loc-18-27)
	(move-dir-left loc-18-7 loc-18-6)
	(move-dir-left loc-18-8 loc-18-7)
	(move-dir-left loc-19-10 loc-19-9)
	(move-dir-left loc-19-11 loc-19-10)
	(move-dir-left loc-19-12 loc-19-11)
	(move-dir-left loc-19-15 loc-19-14)
	(move-dir-left loc-19-16 loc-19-15)
	(move-dir-left loc-19-20 loc-19-19)
	(move-dir-left loc-19-25 loc-19-24)
	(move-dir-left loc-19-29 loc-19-28)
	(move-dir-left loc-19-30 loc-19-29)
	(move-dir-left loc-19-3 loc-19-2)
	(move-dir-left loc-19-4 loc-19-3)
	(move-dir-left loc-19-5 loc-19-4)
	(move-dir-left loc-2-10 loc-2-9)
	(move-dir-left loc-2-11 loc-2-10)
	(move-dir-left loc-2-12 loc-2-11)
	(move-dir-left loc-2-15 loc-2-14)
	(move-dir-left loc-2-22 loc-2-21)
	(move-dir-left loc-2-23 loc-2-22)
	(move-dir-left loc-2-24 loc-2-23)
	(move-dir-left loc-2-30 loc-2-29)
	(move-dir-left loc-2-7 loc-2-6)
	(move-dir-left loc-2-8 loc-2-7)
	(move-dir-left loc-2-9 loc-2-8)
	(move-dir-left loc-20-13 loc-20-12)
	(move-dir-left loc-20-18 loc-20-17)
	(move-dir-left loc-20-21 loc-20-20)
	(move-dir-left loc-20-22 loc-20-21)
	(move-dir-left loc-20-23 loc-20-22)
	(move-dir-left loc-20-26 loc-20-25)
	(move-dir-left loc-21-12 loc-21-11)
	(move-dir-left loc-21-15 loc-21-14)
	(move-dir-left loc-21-16 loc-21-15)
	(move-dir-left loc-21-19 loc-21-18)
	(move-dir-left loc-21-20 loc-21-19)
	(move-dir-left loc-21-27 loc-21-26)
	(move-dir-left loc-21-28 loc-21-27)
	(move-dir-left loc-21-29 loc-21-28)
	(move-dir-left loc-21-3 loc-21-2)
	(move-dir-left loc-21-4 loc-21-3)
	(move-dir-left loc-21-7 loc-21-6)
	(move-dir-left loc-22-10 loc-22-9)
	(move-dir-left loc-22-17 loc-22-16)
	(move-dir-left loc-22-22 loc-22-21)
	(move-dir-left loc-22-25 loc-22-24)
	(move-dir-left loc-22-30 loc-22-29)
	(move-dir-left loc-22-6 loc-22-5)
	(move-dir-left loc-22-9 loc-22-8)
	(move-dir-left loc-23-11 loc-23-10)
	(move-dir-left loc-23-19 loc-23-18)
	(move-dir-left loc-23-20 loc-23-19)
	(move-dir-left loc-23-23 loc-23-22)
	(move-dir-left loc-23-24 loc-23-23)
	(move-dir-left loc-23-27 loc-23-26)
	(move-dir-left loc-23-3 loc-23-2)
	(move-dir-left loc-23-4 loc-23-3)
	(move-dir-left loc-23-5 loc-23-4)
	(move-dir-left loc-24-12 loc-24-11)
	(move-dir-left loc-24-13 loc-24-12)
	(move-dir-left loc-24-14 loc-24-13)
	(move-dir-left loc-24-15 loc-24-14)
	(move-dir-left loc-24-25 loc-24-24)
	(move-dir-left loc-24-28 loc-24-27)
	(move-dir-left loc-24-29 loc-24-28)
	(move-dir-left loc-24-30 loc-24-29)
	(move-dir-left loc-24-6 loc-24-5)
	(move-dir-left loc-24-7 loc-24-6)
	(move-dir-left loc-24-8 loc-24-7)
	(move-dir-left loc-24-9 loc-24-8)
	(move-dir-left loc-25-10 loc-25-9)
	(move-dir-left loc-25-11 loc-25-10)
	(move-dir-left loc-25-17 loc-25-16)
	(move-dir-left loc-25-18 loc-25-17)
	(move-dir-left loc-25-19 loc-25-18)
	(move-dir-left loc-26-16 loc-26-15)
	(move-dir-left loc-26-21 loc-26-20)
	(move-dir-left loc-26-22 loc-26-21)
	(move-dir-left loc-26-23 loc-26-22)
	(move-dir-left loc-26-26 loc-26-25)
	(move-dir-left loc-26-27 loc-26-26)
	(move-dir-left loc-26-28 loc-26-27)
	(move-dir-left loc-26-3 loc-26-2)
	(move-dir-left loc-26-4 loc-26-3)
	(move-dir-left loc-26-9 loc-26-8)
	(move-dir-left loc-27-10 loc-27-9)
	(move-dir-left loc-27-11 loc-27-10)
	(move-dir-left loc-27-19 loc-27-18)
	(move-dir-left loc-27-20 loc-27-19)
	(move-dir-left loc-27-30 loc-27-29)
	(move-dir-left loc-27-5 loc-27-4)
	(move-dir-left loc-27-6 loc-27-5)
	(move-dir-left loc-27-7 loc-27-6)
	(move-dir-left loc-28-12 loc-28-11)
	(move-dir-left loc-28-13 loc-28-12)
	(move-dir-left loc-28-14 loc-28-13)
	(move-dir-left loc-28-15 loc-28-14)
	(move-dir-left loc-28-16 loc-28-15)
	(move-dir-left loc-28-17 loc-28-16)
	(move-dir-left loc-28-25 loc-28-24)
	(move-dir-left loc-28-29 loc-28-28)
	(move-dir-left loc-28-3 loc-28-2)
	(move-dir-left loc-28-9 loc-28-8)
	(move-dir-left loc-29-18 loc-29-17)
	(move-dir-left loc-29-19 loc-29-18)
	(move-dir-left loc-29-20 loc-29-19)
	(move-dir-left loc-29-21 loc-29-20)
	(move-dir-left loc-29-26 loc-29-25)
	(move-dir-left loc-29-27 loc-29-26)
	(move-dir-left loc-29-30 loc-29-29)
	(move-dir-left loc-29-4 loc-29-3)
	(move-dir-left loc-29-7 loc-29-6)
	(move-dir-left loc-3-14 loc-3-13)
	(move-dir-left loc-3-18 loc-3-17)
	(move-dir-left loc-3-19 loc-3-18)
	(move-dir-left loc-3-20 loc-3-19)
	(move-dir-left loc-3-25 loc-3-24)
	(move-dir-left loc-3-26 loc-3-25)
	(move-dir-left loc-3-27 loc-3-26)
	(move-dir-left loc-3-28 loc-3-27)
	(move-dir-left loc-3-29 loc-3-28)
	(move-dir-left loc-3-3 loc-3-2)
	(move-dir-left loc-3-4 loc-3-3)
	(move-dir-left loc-3-5 loc-3-4)
	(move-dir-left loc-30-14 loc-30-13)
	(move-dir-left loc-30-15 loc-30-14)
	(move-dir-left loc-30-16 loc-30-15)
	(move-dir-left loc-30-22 loc-30-21)
	(move-dir-left loc-30-23 loc-30-22)
	(move-dir-left loc-30-24 loc-30-23)
	(move-dir-left loc-30-25 loc-30-24)
	(move-dir-left loc-30-28 loc-30-27)
	(move-dir-left loc-30-5 loc-30-4)
	(move-dir-left loc-30-6 loc-30-5)
	(move-dir-left loc-30-9 loc-30-8)
	(move-dir-left loc-4-10 loc-4-9)
	(move-dir-left loc-4-15 loc-4-14)
	(move-dir-left loc-4-16 loc-4-15)
	(move-dir-left loc-4-17 loc-4-16)
	(move-dir-left loc-4-21 loc-4-20)
	(move-dir-left loc-4-22 loc-4-21)
	(move-dir-left loc-4-23 loc-4-22)
	(move-dir-left loc-4-24 loc-4-23)
	(move-dir-left loc-4-9 loc-4-8)
	(move-dir-left loc-5-11 loc-5-10)
	(move-dir-left loc-5-12 loc-5-11)
	(move-dir-left loc-5-13 loc-5-12)
	(move-dir-left loc-5-19 loc-5-18)
	(move-dir-left loc-5-25 loc-5-24)
	(move-dir-left loc-5-28 loc-5-27)
	(move-dir-left loc-5-29 loc-5-28)
	(move-dir-left loc-5-30 loc-5-29)
	(move-dir-left loc-5-3 loc-5-2)
	(move-dir-left loc-5-4 loc-5-3)
	(move-dir-left loc-5-5 loc-5-4)
	(move-dir-left loc-5-6 loc-5-5)
	(move-dir-left loc-5-7 loc-5-6)
	(move-dir-left loc-6-10 loc-6-9)
	(move-dir-left loc-6-16 loc-6-15)
	(move-dir-left loc-6-17 loc-6-16)
	(move-dir-left loc-6-20 loc-6-19)
	(move-dir-left loc-6-23 loc-6-22)
	(move-dir-left loc-6-9 loc-6-8)
	(move-dir-left loc-7-13 loc-7-12)
	(move-dir-left loc-7-14 loc-7-13)
	(move-dir-left loc-7-24 loc-7-23)
	(move-dir-left loc-7-3 loc-7-2)
	(move-dir-left loc-7-6 loc-7-5)
	(move-dir-left loc-7-7 loc-7-6)
	(move-dir-left loc-7-8 loc-7-7)
	(move-dir-left loc-8-12 loc-8-11)
	(move-dir-left loc-8-18 loc-8-17)
	(move-dir-left loc-8-19 loc-8-18)
	(move-dir-left loc-8-20 loc-8-19)
	(move-dir-left loc-8-21 loc-8-20)
	(move-dir-left loc-8-26 loc-8-25)
	(move-dir-left loc-8-27 loc-8-26)
	(move-dir-left loc-8-28 loc-8-27)
	(move-dir-left loc-8-5 loc-8-4)
	(move-dir-left loc-9-15 loc-9-14)
	(move-dir-left loc-9-16 loc-9-15)
	(move-dir-left loc-9-17 loc-9-16)
	(move-dir-left loc-9-29 loc-9-28)
	(move-dir-left loc-9-30 loc-9-29)
	(move-dir-left loc-9-3 loc-9-2)
	(move-dir-left loc-9-8 loc-9-7)
	(move-dir-left loc-9-9 loc-9-8)
	(move-dir-right loc-10-10 loc-10-11)
	(move-dir-right loc-10-11 loc-10-12)
	(move-dir-right loc-10-12 loc-10-13)
	(move-dir-right loc-10-18 loc-10-19)
	(move-dir-right loc-10-19 loc-10-20)
	(move-dir-right loc-10-20 loc-10-21)
	(move-dir-right loc-10-25 loc-10-26)
	(move-dir-right loc-10-26 loc-10-27)
	(move-dir-right loc-11-2 loc-11-3)
	(move-dir-right loc-11-3 loc-11-4)
	(move-dir-right loc-11-8 loc-11-9)
	(move-dir-right loc-12-10 loc-12-11)
	(move-dir-right loc-12-11 loc-12-12)
	(move-dir-right loc-12-12 loc-12-13)
	(move-dir-right loc-12-13 loc-12-14)
	(move-dir-right loc-12-16 loc-12-17)
	(move-dir-right loc-12-21 loc-12-22)
	(move-dir-right loc-12-24 loc-12-25)
	(move-dir-right loc-12-25 loc-12-26)
	(move-dir-right loc-12-5 loc-12-6)
	(move-dir-right loc-12-6 loc-12-7)
	(move-dir-right loc-12-7 loc-12-8)
	(move-dir-right loc-13-14 loc-13-15)
	(move-dir-right loc-13-17 loc-13-18)
	(move-dir-right loc-13-18 loc-13-19)
	(move-dir-right loc-13-23 loc-13-24)
	(move-dir-right loc-13-27 loc-13-28)
	(move-dir-right loc-13-4 loc-13-5)
	(move-dir-right loc-13-9 loc-13-10)
	(move-dir-right loc-14-11 loc-14-12)
	(move-dir-right loc-14-19 loc-14-20)
	(move-dir-right loc-14-20 loc-14-21)
	(move-dir-right loc-14-21 loc-14-22)
	(move-dir-right loc-14-29 loc-14-30)
	(move-dir-right loc-15-12 loc-15-13)
	(move-dir-right loc-15-13 loc-15-14)
	(move-dir-right loc-15-22 loc-15-23)
	(move-dir-right loc-15-23 loc-15-24)
	(move-dir-right loc-15-24 loc-15-25)
	(move-dir-right loc-15-25 loc-15-26)
	(move-dir-right loc-15-26 loc-15-27)
	(move-dir-right loc-15-2 loc-15-3)
	(move-dir-right loc-15-3 loc-15-4)
	(move-dir-right loc-15-6 loc-15-7)
	(move-dir-right loc-15-7 loc-15-8)
	(move-dir-right loc-16-14 loc-16-15)
	(move-dir-right loc-16-15 loc-16-16)
	(move-dir-right loc-16-18 loc-16-19)
	(move-dir-right loc-16-19 loc-16-20)
	(move-dir-right loc-16-27 loc-16-28)
	(move-dir-right loc-16-5 loc-16-6)
	(move-dir-right loc-16-9 loc-16-10)
	(move-dir-right loc-17-10 loc-17-11)
	(move-dir-right loc-17-11 loc-17-12)
	(move-dir-right loc-17-12 loc-17-13)
	(move-dir-right loc-17-13 loc-17-14)
	(move-dir-right loc-17-16 loc-17-17)
	(move-dir-right loc-17-21 loc-17-22)
	(move-dir-right loc-17-22 loc-17-23)
	(move-dir-right loc-17-25 loc-17-26)
	(move-dir-right loc-17-28 loc-17-29)
	(move-dir-right loc-17-2 loc-17-3)
	(move-dir-right loc-17-3 loc-17-4)
	(move-dir-right loc-18-17 loc-18-18)
	(move-dir-right loc-18-26 loc-18-27)
	(move-dir-right loc-18-27 loc-18-28)
	(move-dir-right loc-18-6 loc-18-7)
	(move-dir-right loc-18-7 loc-18-8)
	(move-dir-right loc-19-10 loc-19-11)
	(move-dir-right loc-19-11 loc-19-12)
	(move-dir-right loc-19-14 loc-19-15)
	(move-dir-right loc-19-15 loc-19-16)
	(move-dir-right loc-19-19 loc-19-20)
	(move-dir-right loc-19-24 loc-19-25)
	(move-dir-right loc-19-28 loc-19-29)
	(move-dir-right loc-19-29 loc-19-30)
	(move-dir-right loc-19-2 loc-19-3)
	(move-dir-right loc-19-3 loc-19-4)
	(move-dir-right loc-19-4 loc-19-5)
	(move-dir-right loc-19-9 loc-19-10)
	(move-dir-right loc-2-10 loc-2-11)
	(move-dir-right loc-2-11 loc-2-12)
	(move-dir-right loc-2-14 loc-2-15)
	(move-dir-right loc-2-21 loc-2-22)
	(move-dir-right loc-2-22 loc-2-23)
	(move-dir-right loc-2-23 loc-2-24)
	(move-dir-right loc-2-29 loc-2-30)
	(move-dir-right loc-2-6 loc-2-7)
	(move-dir-right loc-2-7 loc-2-8)
	(move-dir-right loc-2-8 loc-2-9)
	(move-dir-right loc-2-9 loc-2-10)
	(move-dir-right loc-20-12 loc-20-13)
	(move-dir-right loc-20-17 loc-20-18)
	(move-dir-right loc-20-20 loc-20-21)
	(move-dir-right loc-20-21 loc-20-22)
	(move-dir-right loc-20-22 loc-20-23)
	(move-dir-right loc-20-25 loc-20-26)
	(move-dir-right loc-21-11 loc-21-12)
	(move-dir-right loc-21-14 loc-21-15)
	(move-dir-right loc-21-15 loc-21-16)
	(move-dir-right loc-21-18 loc-21-19)
	(move-dir-right loc-21-19 loc-21-20)
	(move-dir-right loc-21-26 loc-21-27)
	(move-dir-right loc-21-27 loc-21-28)
	(move-dir-right loc-21-28 loc-21-29)
	(move-dir-right loc-21-2 loc-21-3)
	(move-dir-right loc-21-3 loc-21-4)
	(move-dir-right loc-21-6 loc-21-7)
	(move-dir-right loc-22-16 loc-22-17)
	(move-dir-right loc-22-21 loc-22-22)
	(move-dir-right loc-22-24 loc-22-25)
	(move-dir-right loc-22-29 loc-22-30)
	(move-dir-right loc-22-5 loc-22-6)
	(move-dir-right loc-22-8 loc-22-9)
	(move-dir-right loc-22-9 loc-22-10)
	(move-dir-right loc-23-10 loc-23-11)
	(move-dir-right loc-23-18 loc-23-19)
	(move-dir-right loc-23-19 loc-23-20)
	(move-dir-right loc-23-22 loc-23-23)
	(move-dir-right loc-23-23 loc-23-24)
	(move-dir-right loc-23-26 loc-23-27)
	(move-dir-right loc-23-2 loc-23-3)
	(move-dir-right loc-23-3 loc-23-4)
	(move-dir-right loc-23-4 loc-23-5)
	(move-dir-right loc-24-11 loc-24-12)
	(move-dir-right loc-24-12 loc-24-13)
	(move-dir-right loc-24-13 loc-24-14)
	(move-dir-right loc-24-14 loc-24-15)
	(move-dir-right loc-24-24 loc-24-25)
	(move-dir-right loc-24-27 loc-24-28)
	(move-dir-right loc-24-28 loc-24-29)
	(move-dir-right loc-24-29 loc-24-30)
	(move-dir-right loc-24-5 loc-24-6)
	(move-dir-right loc-24-6 loc-24-7)
	(move-dir-right loc-24-7 loc-24-8)
	(move-dir-right loc-24-8 loc-24-9)
	(move-dir-right loc-25-10 loc-25-11)
	(move-dir-right loc-25-16 loc-25-17)
	(move-dir-right loc-25-17 loc-25-18)
	(move-dir-right loc-25-18 loc-25-19)
	(move-dir-right loc-25-9 loc-25-10)
	(move-dir-right loc-26-15 loc-26-16)
	(move-dir-right loc-26-20 loc-26-21)
	(move-dir-right loc-26-21 loc-26-22)
	(move-dir-right loc-26-22 loc-26-23)
	(move-dir-right loc-26-25 loc-26-26)
	(move-dir-right loc-26-26 loc-26-27)
	(move-dir-right loc-26-27 loc-26-28)
	(move-dir-right loc-26-2 loc-26-3)
	(move-dir-right loc-26-3 loc-26-4)
	(move-dir-right loc-26-8 loc-26-9)
	(move-dir-right loc-27-10 loc-27-11)
	(move-dir-right loc-27-18 loc-27-19)
	(move-dir-right loc-27-19 loc-27-20)
	(move-dir-right loc-27-29 loc-27-30)
	(move-dir-right loc-27-4 loc-27-5)
	(move-dir-right loc-27-5 loc-27-6)
	(move-dir-right loc-27-6 loc-27-7)
	(move-dir-right loc-27-9 loc-27-10)
	(move-dir-right loc-28-11 loc-28-12)
	(move-dir-right loc-28-12 loc-28-13)
	(move-dir-right loc-28-13 loc-28-14)
	(move-dir-right loc-28-14 loc-28-15)
	(move-dir-right loc-28-15 loc-28-16)
	(move-dir-right loc-28-16 loc-28-17)
	(move-dir-right loc-28-24 loc-28-25)
	(move-dir-right loc-28-28 loc-28-29)
	(move-dir-right loc-28-2 loc-28-3)
	(move-dir-right loc-28-8 loc-28-9)
	(move-dir-right loc-29-17 loc-29-18)
	(move-dir-right loc-29-18 loc-29-19)
	(move-dir-right loc-29-19 loc-29-20)
	(move-dir-right loc-29-20 loc-29-21)
	(move-dir-right loc-29-25 loc-29-26)
	(move-dir-right loc-29-26 loc-29-27)
	(move-dir-right loc-29-29 loc-29-30)
	(move-dir-right loc-29-3 loc-29-4)
	(move-dir-right loc-29-6 loc-29-7)
	(move-dir-right loc-3-13 loc-3-14)
	(move-dir-right loc-3-17 loc-3-18)
	(move-dir-right loc-3-18 loc-3-19)
	(move-dir-right loc-3-19 loc-3-20)
	(move-dir-right loc-3-24 loc-3-25)
	(move-dir-right loc-3-25 loc-3-26)
	(move-dir-right loc-3-26 loc-3-27)
	(move-dir-right loc-3-27 loc-3-28)
	(move-dir-right loc-3-28 loc-3-29)
	(move-dir-right loc-3-2 loc-3-3)
	(move-dir-right loc-3-3 loc-3-4)
	(move-dir-right loc-3-4 loc-3-5)
	(move-dir-right loc-30-13 loc-30-14)
	(move-dir-right loc-30-14 loc-30-15)
	(move-dir-right loc-30-15 loc-30-16)
	(move-dir-right loc-30-21 loc-30-22)
	(move-dir-right loc-30-22 loc-30-23)
	(move-dir-right loc-30-23 loc-30-24)
	(move-dir-right loc-30-24 loc-30-25)
	(move-dir-right loc-30-27 loc-30-28)
	(move-dir-right loc-30-4 loc-30-5)
	(move-dir-right loc-30-5 loc-30-6)
	(move-dir-right loc-30-8 loc-30-9)
	(move-dir-right loc-4-14 loc-4-15)
	(move-dir-right loc-4-15 loc-4-16)
	(move-dir-right loc-4-16 loc-4-17)
	(move-dir-right loc-4-20 loc-4-21)
	(move-dir-right loc-4-21 loc-4-22)
	(move-dir-right loc-4-22 loc-4-23)
	(move-dir-right loc-4-23 loc-4-24)
	(move-dir-right loc-4-8 loc-4-9)
	(move-dir-right loc-4-9 loc-4-10)
	(move-dir-right loc-5-10 loc-5-11)
	(move-dir-right loc-5-11 loc-5-12)
	(move-dir-right loc-5-12 loc-5-13)
	(move-dir-right loc-5-18 loc-5-19)
	(move-dir-right loc-5-24 loc-5-25)
	(move-dir-right loc-5-27 loc-5-28)
	(move-dir-right loc-5-28 loc-5-29)
	(move-dir-right loc-5-29 loc-5-30)
	(move-dir-right loc-5-2 loc-5-3)
	(move-dir-right loc-5-3 loc-5-4)
	(move-dir-right loc-5-4 loc-5-5)
	(move-dir-right loc-5-5 loc-5-6)
	(move-dir-right loc-5-6 loc-5-7)
	(move-dir-right loc-6-15 loc-6-16)
	(move-dir-right loc-6-16 loc-6-17)
	(move-dir-right loc-6-19 loc-6-20)
	(move-dir-right loc-6-22 loc-6-23)
	(move-dir-right loc-6-8 loc-6-9)
	(move-dir-right loc-6-9 loc-6-10)
	(move-dir-right loc-7-12 loc-7-13)
	(move-dir-right loc-7-13 loc-7-14)
	(move-dir-right loc-7-23 loc-7-24)
	(move-dir-right loc-7-2 loc-7-3)
	(move-dir-right loc-7-5 loc-7-6)
	(move-dir-right loc-7-6 loc-7-7)
	(move-dir-right loc-7-7 loc-7-8)
	(move-dir-right loc-8-11 loc-8-12)
	(move-dir-right loc-8-17 loc-8-18)
	(move-dir-right loc-8-18 loc-8-19)
	(move-dir-right loc-8-19 loc-8-20)
	(move-dir-right loc-8-20 loc-8-21)
	(move-dir-right loc-8-25 loc-8-26)
	(move-dir-right loc-8-26 loc-8-27)
	(move-dir-right loc-8-27 loc-8-28)
	(move-dir-right loc-8-4 loc-8-5)
	(move-dir-right loc-9-14 loc-9-15)
	(move-dir-right loc-9-15 loc-9-16)
	(move-dir-right loc-9-16 loc-9-17)
	(move-dir-right loc-9-28 loc-9-29)
	(move-dir-right loc-9-29 loc-9-30)
	(move-dir-right loc-9-2 loc-9-3)
	(move-dir-right loc-9-7 loc-9-8)
	(move-dir-right loc-9-8 loc-9-9)
	(move-dir-up loc-10-12 loc-9-12)
	(move-dir-up loc-10-15 loc-9-15)
	(move-dir-up loc-10-21 loc-9-21)
	(move-dir-up loc-10-23 loc-9-23)
	(move-dir-up loc-10-25 loc-9-25)
	(move-dir-up loc-10-2 loc-9-2)
	(move-dir-up loc-10-30 loc-9-30)
	(move-dir-up loc-10-8 loc-9-8)
	(move-dir-up loc-11-11 loc-10-11)
	(move-dir-up loc-11-15 loc-10-15)
	(move-dir-up loc-11-19 loc-10-19)
	(move-dir-up loc-11-26 loc-10-26)
	(move-dir-up loc-11-2 loc-10-2)
	(move-dir-up loc-11-30 loc-10-30)
	(move-dir-up loc-11-4 loc-10-4)
	(move-dir-up loc-11-6 loc-10-6)
	(move-dir-up loc-11-8 loc-10-8)
	(move-dir-up loc-12-11 loc-11-11)
	(move-dir-up loc-12-17 loc-11-17)
	(move-dir-up loc-12-19 loc-11-19)
	(move-dir-up loc-12-22 loc-11-22)
	(move-dir-up loc-12-24 loc-11-24)
	(move-dir-up loc-12-26 loc-11-26)
	(move-dir-up loc-12-28 loc-11-28)
	(move-dir-up loc-12-2 loc-11-2)
	(move-dir-up loc-12-30 loc-11-30)
	(move-dir-up loc-12-6 loc-11-6)
	(move-dir-up loc-12-8 loc-11-8)
	(move-dir-up loc-13-10 loc-12-10)
	(move-dir-up loc-13-14 loc-12-14)
	(move-dir-up loc-13-17 loc-12-17)
	(move-dir-up loc-13-19 loc-12-19)
	(move-dir-up loc-13-21 loc-12-21)
	(move-dir-up loc-13-24 loc-12-24)
	(move-dir-up loc-13-28 loc-12-28)
	(move-dir-up loc-13-2 loc-12-2)
	(move-dir-up loc-13-30 loc-12-30)
	(move-dir-up loc-13-5 loc-12-5)
	(move-dir-up loc-13-7 loc-12-7)
	(move-dir-up loc-14-15 loc-13-15)
	(move-dir-up loc-14-17 loc-13-17)
	(move-dir-up loc-14-19 loc-13-19)
	(move-dir-up loc-14-21 loc-13-21)
	(move-dir-up loc-14-24 loc-13-24)
	(move-dir-up loc-14-27 loc-13-27)
	(move-dir-up loc-14-2 loc-13-2)
	(move-dir-up loc-14-30 loc-13-30)
	(move-dir-up loc-14-5 loc-13-5)
	(move-dir-up loc-14-7 loc-13-7)
	(move-dir-up loc-14-9 loc-13-9)
	(move-dir-up loc-15-12 loc-14-12)
	(move-dir-up loc-15-17 loc-14-17)
	(move-dir-up loc-15-19 loc-14-19)
	(move-dir-up loc-15-22 loc-14-22)
	(move-dir-up loc-15-24 loc-14-24)
	(move-dir-up loc-15-27 loc-14-27)
	(move-dir-up loc-15-2 loc-14-2)
	(move-dir-up loc-15-30 loc-14-30)
	(move-dir-up loc-15-7 loc-14-7)
	(move-dir-up loc-16-10 loc-15-10)
	(move-dir-up loc-16-14 loc-15-14)
	(move-dir-up loc-16-19 loc-15-19)
	(move-dir-up loc-16-22 loc-15-22)
	(move-dir-up loc-16-24 loc-15-24)
	(move-dir-up loc-16-27 loc-15-27)
	(move-dir-up loc-16-30 loc-15-30)
	(move-dir-up loc-16-3 loc-15-3)
	(move-dir-up loc-16-6 loc-15-6)
	(move-dir-up loc-17-10 loc-16-10)
	(move-dir-up loc-17-14 loc-16-14)
	(move-dir-up loc-17-16 loc-16-16)
	(move-dir-up loc-17-19 loc-16-19)
	(move-dir-up loc-17-22 loc-16-22)
	(move-dir-up loc-17-28 loc-16-28)
	(move-dir-up loc-17-3 loc-16-3)
	(move-dir-up loc-17-6 loc-16-6)
	(move-dir-up loc-18-10 loc-17-10)
	(move-dir-up loc-18-14 loc-17-14)
	(move-dir-up loc-18-17 loc-17-17)
	(move-dir-up loc-18-22 loc-17-22)
	(move-dir-up loc-18-26 loc-17-26)
	(move-dir-up loc-18-28 loc-17-28)
	(move-dir-up loc-18-3 loc-17-3)
	(move-dir-up loc-18-6 loc-17-6)
	(move-dir-up loc-18-8 loc-17-8)
	(move-dir-up loc-19-10 loc-18-10)
	(move-dir-up loc-19-14 loc-18-14)
	(move-dir-up loc-19-20 loc-18-20)
	(move-dir-up loc-19-22 loc-18-22)
	(move-dir-up loc-19-24 loc-18-24)
	(move-dir-up loc-19-28 loc-18-28)
	(move-dir-up loc-19-30 loc-18-30)
	(move-dir-up loc-19-3 loc-18-3)
	(move-dir-up loc-20-12 loc-19-12)
	(move-dir-up loc-20-15 loc-19-15)
	(move-dir-up loc-20-20 loc-19-20)
	(move-dir-up loc-20-22 loc-19-22)
	(move-dir-up loc-20-25 loc-19-25)
	(move-dir-up loc-20-28 loc-19-28)
	(move-dir-up loc-20-2 loc-19-2)
	(move-dir-up loc-20-30 loc-19-30)
	(move-dir-up loc-20-5 loc-19-5)
	(move-dir-up loc-20-9 loc-19-9)
	(move-dir-up loc-21-12 loc-20-12)
	(move-dir-up loc-21-15 loc-20-15)
	(move-dir-up loc-21-18 loc-20-18)
	(move-dir-up loc-21-20 loc-20-20)
	(move-dir-up loc-21-23 loc-20-23)
	(move-dir-up loc-21-26 loc-20-26)
	(move-dir-up loc-21-28 loc-20-28)
	(move-dir-up loc-21-2 loc-20-2)
	(move-dir-up loc-21-7 loc-20-7)
	(move-dir-up loc-21-9 loc-20-9)
	(move-dir-up loc-22-12 loc-21-12)
	(move-dir-up loc-22-14 loc-21-14)
	(move-dir-up loc-22-16 loc-21-16)
	(move-dir-up loc-22-19 loc-21-19)
	(move-dir-up loc-22-29 loc-21-29)
	(move-dir-up loc-22-2 loc-21-2)
	(move-dir-up loc-22-6 loc-21-6)
	(move-dir-up loc-22-9 loc-21-9)
	(move-dir-up loc-23-10 loc-22-10)
	(move-dir-up loc-23-19 loc-22-19)
	(move-dir-up loc-23-22 loc-22-22)
	(move-dir-up loc-23-24 loc-22-24)
	(move-dir-up loc-23-2 loc-22-2)
	(move-dir-up loc-23-30 loc-22-30)
	(move-dir-up loc-23-5 loc-22-5)
	(move-dir-up loc-24-11 loc-23-11)
	(move-dir-up loc-24-13 loc-23-13)
	(move-dir-up loc-24-15 loc-23-15)
	(move-dir-up loc-24-24 loc-23-24)
	(move-dir-up loc-24-27 loc-23-27)
	(move-dir-up loc-24-30 loc-23-30)
	(move-dir-up loc-24-3 loc-23-3)
	(move-dir-up loc-24-5 loc-23-5)
	(move-dir-up loc-24-7 loc-23-7)
	(move-dir-up loc-25-11 loc-24-11)
	(move-dir-up loc-25-14 loc-24-14)
	(move-dir-up loc-25-17 loc-24-17)
	(move-dir-up loc-25-21 loc-24-21)
	(move-dir-up loc-25-25 loc-24-25)
	(move-dir-up loc-25-27 loc-24-27)
	(move-dir-up loc-25-30 loc-24-30)
	(move-dir-up loc-25-6 loc-24-6)
	(move-dir-up loc-25-9 loc-24-9)
	(move-dir-up loc-26-16 loc-25-16)
	(move-dir-up loc-26-18 loc-25-18)
	(move-dir-up loc-26-21 loc-25-21)
	(move-dir-up loc-26-23 loc-25-23)
	(move-dir-up loc-26-25 loc-25-25)
	(move-dir-up loc-26-27 loc-25-27)
	(move-dir-up loc-26-2 loc-25-2)
	(move-dir-up loc-26-30 loc-25-30)
	(move-dir-up loc-26-4 loc-25-4)
	(move-dir-up loc-26-6 loc-25-6)
	(move-dir-up loc-26-9 loc-25-9)
	(move-dir-up loc-27-18 loc-26-18)
	(move-dir-up loc-27-20 loc-26-20)
	(move-dir-up loc-27-22 loc-26-22)
	(move-dir-up loc-27-25 loc-26-25)
	(move-dir-up loc-27-27 loc-26-27)
	(move-dir-up loc-27-2 loc-26-2)
	(move-dir-up loc-27-30 loc-26-30)
	(move-dir-up loc-27-4 loc-26-4)
	(move-dir-up loc-27-6 loc-26-6)
	(move-dir-up loc-27-9 loc-26-9)
	(move-dir-up loc-28-11 loc-27-11)
	(move-dir-up loc-28-14 loc-27-14)
	(move-dir-up loc-28-19 loc-27-19)
	(move-dir-up loc-28-22 loc-27-22)
	(move-dir-up loc-28-25 loc-27-25)
	(move-dir-up loc-28-29 loc-27-29)
	(move-dir-up loc-28-2 loc-27-2)
	(move-dir-up loc-28-5 loc-27-5)
	(move-dir-up loc-28-9 loc-27-9)
	(move-dir-up loc-29-11 loc-28-11)
	(move-dir-up loc-29-15 loc-28-15)
	(move-dir-up loc-29-17 loc-28-17)
	(move-dir-up loc-29-19 loc-28-19)
	(move-dir-up loc-29-25 loc-28-25)
	(move-dir-up loc-29-29 loc-28-29)
	(move-dir-up loc-29-3 loc-28-3)
	(move-dir-up loc-29-9 loc-28-9)
	(move-dir-up loc-3-11 loc-2-11)
	(move-dir-up loc-3-14 loc-2-14)
	(move-dir-up loc-3-17 loc-2-17)
	(move-dir-up loc-3-19 loc-2-19)
	(move-dir-up loc-3-24 loc-2-24)
	(move-dir-up loc-3-26 loc-2-26)
	(move-dir-up loc-3-29 loc-2-29)
	(move-dir-up loc-3-2 loc-2-2)
	(move-dir-up loc-3-4 loc-2-4)
	(move-dir-up loc-3-8 loc-2-8)
	(move-dir-up loc-30-11 loc-29-11)
	(move-dir-up loc-30-15 loc-29-15)
	(move-dir-up loc-30-18 loc-29-18)
	(move-dir-up loc-30-21 loc-29-21)
	(move-dir-up loc-30-23 loc-29-23)
	(move-dir-up loc-30-25 loc-29-25)
	(move-dir-up loc-30-27 loc-29-27)
	(move-dir-up loc-30-30 loc-29-30)
	(move-dir-up loc-30-4 loc-29-4)
	(move-dir-up loc-30-6 loc-29-6)
	(move-dir-up loc-30-9 loc-29-9)
	(move-dir-up loc-4-14 loc-3-14)
	(move-dir-up loc-4-17 loc-3-17)
	(move-dir-up loc-4-20 loc-3-20)
	(move-dir-up loc-4-24 loc-3-24)
	(move-dir-up loc-4-26 loc-3-26)
	(move-dir-up loc-4-29 loc-3-29)
	(move-dir-up loc-4-2 loc-3-2)
	(move-dir-up loc-4-8 loc-3-8)
	(move-dir-up loc-5-10 loc-4-10)
	(move-dir-up loc-5-12 loc-4-12)
	(move-dir-up loc-5-15 loc-4-15)
	(move-dir-up loc-5-22 loc-4-22)
	(move-dir-up loc-5-24 loc-4-24)
	(move-dir-up loc-5-29 loc-4-29)
	(move-dir-up loc-5-2 loc-4-2)
	(move-dir-up loc-5-6 loc-4-6)
	(move-dir-up loc-6-10 loc-5-10)
	(move-dir-up loc-6-13 loc-5-13)
	(move-dir-up loc-6-15 loc-5-15)
	(move-dir-up loc-6-19 loc-5-19)
	(move-dir-up loc-6-22 loc-5-22)
	(move-dir-up loc-6-25 loc-5-25)
	(move-dir-up loc-6-27 loc-5-27)
	(move-dir-up loc-6-2 loc-5-2)
	(move-dir-up loc-6-30 loc-5-30)
	(move-dir-up loc-6-4 loc-5-4)
	(move-dir-up loc-6-6 loc-5-6)
	(move-dir-up loc-7-10 loc-6-10)
	(move-dir-up loc-7-13 loc-6-13)
	(move-dir-up loc-7-16 loc-6-16)
	(move-dir-up loc-7-20 loc-6-20)
	(move-dir-up loc-7-23 loc-6-23)
	(move-dir-up loc-7-2 loc-6-2)
	(move-dir-up loc-7-30 loc-6-30)
	(move-dir-up loc-7-6 loc-6-6)
	(move-dir-up loc-7-8 loc-6-8)
	(move-dir-up loc-8-12 loc-7-12)
	(move-dir-up loc-8-18 loc-7-18)
	(move-dir-up loc-8-20 loc-7-20)
	(move-dir-up loc-8-23 loc-7-23)
	(move-dir-up loc-8-26 loc-7-26)
	(move-dir-up loc-8-28 loc-7-28)
	(move-dir-up loc-8-2 loc-7-2)
	(move-dir-up loc-8-30 loc-7-30)
	(move-dir-up loc-8-5 loc-7-5)
	(move-dir-up loc-8-7 loc-7-7)
	(move-dir-up loc-9-12 loc-8-12)
	(move-dir-up loc-9-15 loc-8-15)
	(move-dir-up loc-9-17 loc-8-17)
	(move-dir-up loc-9-21 loc-8-21)
	(move-dir-up loc-9-23 loc-8-23)
	(move-dir-up loc-9-25 loc-8-25)
	(move-dir-up loc-9-28 loc-8-28)
	(move-dir-up loc-9-2 loc-8-2)
	(move-dir-up loc-9-30 loc-8-30)
	(move-dir-up loc-9-5 loc-8-5)
	(move-dir-up loc-9-7 loc-8-7)
	(move-dir-up loc-9-9 loc-8-9)
	(oriented-left player-1)
  )
  (:goal (at player-1 loc-26-23))
)
