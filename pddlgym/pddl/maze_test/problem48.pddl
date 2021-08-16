
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
	loc-1-32 - location
	loc-1-33 - location
	loc-1-34 - location
	loc-1-35 - location
	loc-1-36 - location
	loc-1-37 - location
	loc-1-38 - location
	loc-1-39 - location
	loc-1-4 - location
	loc-1-40 - location
	loc-1-41 - location
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
	loc-10-32 - location
	loc-10-33 - location
	loc-10-34 - location
	loc-10-35 - location
	loc-10-36 - location
	loc-10-37 - location
	loc-10-38 - location
	loc-10-39 - location
	loc-10-4 - location
	loc-10-40 - location
	loc-10-41 - location
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
	loc-11-32 - location
	loc-11-33 - location
	loc-11-34 - location
	loc-11-35 - location
	loc-11-36 - location
	loc-11-37 - location
	loc-11-38 - location
	loc-11-39 - location
	loc-11-4 - location
	loc-11-40 - location
	loc-11-41 - location
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
	loc-12-32 - location
	loc-12-33 - location
	loc-12-34 - location
	loc-12-35 - location
	loc-12-36 - location
	loc-12-37 - location
	loc-12-38 - location
	loc-12-39 - location
	loc-12-4 - location
	loc-12-40 - location
	loc-12-41 - location
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
	loc-13-32 - location
	loc-13-33 - location
	loc-13-34 - location
	loc-13-35 - location
	loc-13-36 - location
	loc-13-37 - location
	loc-13-38 - location
	loc-13-39 - location
	loc-13-4 - location
	loc-13-40 - location
	loc-13-41 - location
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
	loc-14-32 - location
	loc-14-33 - location
	loc-14-34 - location
	loc-14-35 - location
	loc-14-36 - location
	loc-14-37 - location
	loc-14-38 - location
	loc-14-39 - location
	loc-14-4 - location
	loc-14-40 - location
	loc-14-41 - location
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
	loc-15-32 - location
	loc-15-33 - location
	loc-15-34 - location
	loc-15-35 - location
	loc-15-36 - location
	loc-15-37 - location
	loc-15-38 - location
	loc-15-39 - location
	loc-15-4 - location
	loc-15-40 - location
	loc-15-41 - location
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
	loc-16-32 - location
	loc-16-33 - location
	loc-16-34 - location
	loc-16-35 - location
	loc-16-36 - location
	loc-16-37 - location
	loc-16-38 - location
	loc-16-39 - location
	loc-16-4 - location
	loc-16-40 - location
	loc-16-41 - location
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
	loc-17-32 - location
	loc-17-33 - location
	loc-17-34 - location
	loc-17-35 - location
	loc-17-36 - location
	loc-17-37 - location
	loc-17-38 - location
	loc-17-39 - location
	loc-17-4 - location
	loc-17-40 - location
	loc-17-41 - location
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
	loc-18-32 - location
	loc-18-33 - location
	loc-18-34 - location
	loc-18-35 - location
	loc-18-36 - location
	loc-18-37 - location
	loc-18-38 - location
	loc-18-39 - location
	loc-18-4 - location
	loc-18-40 - location
	loc-18-41 - location
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
	loc-19-32 - location
	loc-19-33 - location
	loc-19-34 - location
	loc-19-35 - location
	loc-19-36 - location
	loc-19-37 - location
	loc-19-38 - location
	loc-19-39 - location
	loc-19-4 - location
	loc-19-40 - location
	loc-19-41 - location
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
	loc-2-32 - location
	loc-2-33 - location
	loc-2-34 - location
	loc-2-35 - location
	loc-2-36 - location
	loc-2-37 - location
	loc-2-38 - location
	loc-2-39 - location
	loc-2-4 - location
	loc-2-40 - location
	loc-2-41 - location
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
	loc-20-32 - location
	loc-20-33 - location
	loc-20-34 - location
	loc-20-35 - location
	loc-20-36 - location
	loc-20-37 - location
	loc-20-38 - location
	loc-20-39 - location
	loc-20-4 - location
	loc-20-40 - location
	loc-20-41 - location
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
	loc-21-32 - location
	loc-21-33 - location
	loc-21-34 - location
	loc-21-35 - location
	loc-21-36 - location
	loc-21-37 - location
	loc-21-38 - location
	loc-21-39 - location
	loc-21-4 - location
	loc-21-40 - location
	loc-21-41 - location
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
	loc-22-32 - location
	loc-22-33 - location
	loc-22-34 - location
	loc-22-35 - location
	loc-22-36 - location
	loc-22-37 - location
	loc-22-38 - location
	loc-22-39 - location
	loc-22-4 - location
	loc-22-40 - location
	loc-22-41 - location
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
	loc-23-32 - location
	loc-23-33 - location
	loc-23-34 - location
	loc-23-35 - location
	loc-23-36 - location
	loc-23-37 - location
	loc-23-38 - location
	loc-23-39 - location
	loc-23-4 - location
	loc-23-40 - location
	loc-23-41 - location
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
	loc-24-32 - location
	loc-24-33 - location
	loc-24-34 - location
	loc-24-35 - location
	loc-24-36 - location
	loc-24-37 - location
	loc-24-38 - location
	loc-24-39 - location
	loc-24-4 - location
	loc-24-40 - location
	loc-24-41 - location
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
	loc-25-32 - location
	loc-25-33 - location
	loc-25-34 - location
	loc-25-35 - location
	loc-25-36 - location
	loc-25-37 - location
	loc-25-38 - location
	loc-25-39 - location
	loc-25-4 - location
	loc-25-40 - location
	loc-25-41 - location
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
	loc-26-32 - location
	loc-26-33 - location
	loc-26-34 - location
	loc-26-35 - location
	loc-26-36 - location
	loc-26-37 - location
	loc-26-38 - location
	loc-26-39 - location
	loc-26-4 - location
	loc-26-40 - location
	loc-26-41 - location
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
	loc-27-32 - location
	loc-27-33 - location
	loc-27-34 - location
	loc-27-35 - location
	loc-27-36 - location
	loc-27-37 - location
	loc-27-38 - location
	loc-27-39 - location
	loc-27-4 - location
	loc-27-40 - location
	loc-27-41 - location
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
	loc-28-32 - location
	loc-28-33 - location
	loc-28-34 - location
	loc-28-35 - location
	loc-28-36 - location
	loc-28-37 - location
	loc-28-38 - location
	loc-28-39 - location
	loc-28-4 - location
	loc-28-40 - location
	loc-28-41 - location
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
	loc-29-32 - location
	loc-29-33 - location
	loc-29-34 - location
	loc-29-35 - location
	loc-29-36 - location
	loc-29-37 - location
	loc-29-38 - location
	loc-29-39 - location
	loc-29-4 - location
	loc-29-40 - location
	loc-29-41 - location
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
	loc-3-32 - location
	loc-3-33 - location
	loc-3-34 - location
	loc-3-35 - location
	loc-3-36 - location
	loc-3-37 - location
	loc-3-38 - location
	loc-3-39 - location
	loc-3-4 - location
	loc-3-40 - location
	loc-3-41 - location
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
	loc-30-32 - location
	loc-30-33 - location
	loc-30-34 - location
	loc-30-35 - location
	loc-30-36 - location
	loc-30-37 - location
	loc-30-38 - location
	loc-30-39 - location
	loc-30-4 - location
	loc-30-40 - location
	loc-30-41 - location
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
	loc-31-32 - location
	loc-31-33 - location
	loc-31-34 - location
	loc-31-35 - location
	loc-31-36 - location
	loc-31-37 - location
	loc-31-38 - location
	loc-31-39 - location
	loc-31-4 - location
	loc-31-40 - location
	loc-31-41 - location
	loc-31-5 - location
	loc-31-6 - location
	loc-31-7 - location
	loc-31-8 - location
	loc-31-9 - location
	loc-32-1 - location
	loc-32-10 - location
	loc-32-11 - location
	loc-32-12 - location
	loc-32-13 - location
	loc-32-14 - location
	loc-32-15 - location
	loc-32-16 - location
	loc-32-17 - location
	loc-32-18 - location
	loc-32-19 - location
	loc-32-2 - location
	loc-32-20 - location
	loc-32-21 - location
	loc-32-22 - location
	loc-32-23 - location
	loc-32-24 - location
	loc-32-25 - location
	loc-32-26 - location
	loc-32-27 - location
	loc-32-28 - location
	loc-32-29 - location
	loc-32-3 - location
	loc-32-30 - location
	loc-32-31 - location
	loc-32-32 - location
	loc-32-33 - location
	loc-32-34 - location
	loc-32-35 - location
	loc-32-36 - location
	loc-32-37 - location
	loc-32-38 - location
	loc-32-39 - location
	loc-32-4 - location
	loc-32-40 - location
	loc-32-41 - location
	loc-32-5 - location
	loc-32-6 - location
	loc-32-7 - location
	loc-32-8 - location
	loc-32-9 - location
	loc-33-1 - location
	loc-33-10 - location
	loc-33-11 - location
	loc-33-12 - location
	loc-33-13 - location
	loc-33-14 - location
	loc-33-15 - location
	loc-33-16 - location
	loc-33-17 - location
	loc-33-18 - location
	loc-33-19 - location
	loc-33-2 - location
	loc-33-20 - location
	loc-33-21 - location
	loc-33-22 - location
	loc-33-23 - location
	loc-33-24 - location
	loc-33-25 - location
	loc-33-26 - location
	loc-33-27 - location
	loc-33-28 - location
	loc-33-29 - location
	loc-33-3 - location
	loc-33-30 - location
	loc-33-31 - location
	loc-33-32 - location
	loc-33-33 - location
	loc-33-34 - location
	loc-33-35 - location
	loc-33-36 - location
	loc-33-37 - location
	loc-33-38 - location
	loc-33-39 - location
	loc-33-4 - location
	loc-33-40 - location
	loc-33-41 - location
	loc-33-5 - location
	loc-33-6 - location
	loc-33-7 - location
	loc-33-8 - location
	loc-33-9 - location
	loc-34-1 - location
	loc-34-10 - location
	loc-34-11 - location
	loc-34-12 - location
	loc-34-13 - location
	loc-34-14 - location
	loc-34-15 - location
	loc-34-16 - location
	loc-34-17 - location
	loc-34-18 - location
	loc-34-19 - location
	loc-34-2 - location
	loc-34-20 - location
	loc-34-21 - location
	loc-34-22 - location
	loc-34-23 - location
	loc-34-24 - location
	loc-34-25 - location
	loc-34-26 - location
	loc-34-27 - location
	loc-34-28 - location
	loc-34-29 - location
	loc-34-3 - location
	loc-34-30 - location
	loc-34-31 - location
	loc-34-32 - location
	loc-34-33 - location
	loc-34-34 - location
	loc-34-35 - location
	loc-34-36 - location
	loc-34-37 - location
	loc-34-38 - location
	loc-34-39 - location
	loc-34-4 - location
	loc-34-40 - location
	loc-34-41 - location
	loc-34-5 - location
	loc-34-6 - location
	loc-34-7 - location
	loc-34-8 - location
	loc-34-9 - location
	loc-35-1 - location
	loc-35-10 - location
	loc-35-11 - location
	loc-35-12 - location
	loc-35-13 - location
	loc-35-14 - location
	loc-35-15 - location
	loc-35-16 - location
	loc-35-17 - location
	loc-35-18 - location
	loc-35-19 - location
	loc-35-2 - location
	loc-35-20 - location
	loc-35-21 - location
	loc-35-22 - location
	loc-35-23 - location
	loc-35-24 - location
	loc-35-25 - location
	loc-35-26 - location
	loc-35-27 - location
	loc-35-28 - location
	loc-35-29 - location
	loc-35-3 - location
	loc-35-30 - location
	loc-35-31 - location
	loc-35-32 - location
	loc-35-33 - location
	loc-35-34 - location
	loc-35-35 - location
	loc-35-36 - location
	loc-35-37 - location
	loc-35-38 - location
	loc-35-39 - location
	loc-35-4 - location
	loc-35-40 - location
	loc-35-41 - location
	loc-35-5 - location
	loc-35-6 - location
	loc-35-7 - location
	loc-35-8 - location
	loc-35-9 - location
	loc-36-1 - location
	loc-36-10 - location
	loc-36-11 - location
	loc-36-12 - location
	loc-36-13 - location
	loc-36-14 - location
	loc-36-15 - location
	loc-36-16 - location
	loc-36-17 - location
	loc-36-18 - location
	loc-36-19 - location
	loc-36-2 - location
	loc-36-20 - location
	loc-36-21 - location
	loc-36-22 - location
	loc-36-23 - location
	loc-36-24 - location
	loc-36-25 - location
	loc-36-26 - location
	loc-36-27 - location
	loc-36-28 - location
	loc-36-29 - location
	loc-36-3 - location
	loc-36-30 - location
	loc-36-31 - location
	loc-36-32 - location
	loc-36-33 - location
	loc-36-34 - location
	loc-36-35 - location
	loc-36-36 - location
	loc-36-37 - location
	loc-36-38 - location
	loc-36-39 - location
	loc-36-4 - location
	loc-36-40 - location
	loc-36-41 - location
	loc-36-5 - location
	loc-36-6 - location
	loc-36-7 - location
	loc-36-8 - location
	loc-36-9 - location
	loc-37-1 - location
	loc-37-10 - location
	loc-37-11 - location
	loc-37-12 - location
	loc-37-13 - location
	loc-37-14 - location
	loc-37-15 - location
	loc-37-16 - location
	loc-37-17 - location
	loc-37-18 - location
	loc-37-19 - location
	loc-37-2 - location
	loc-37-20 - location
	loc-37-21 - location
	loc-37-22 - location
	loc-37-23 - location
	loc-37-24 - location
	loc-37-25 - location
	loc-37-26 - location
	loc-37-27 - location
	loc-37-28 - location
	loc-37-29 - location
	loc-37-3 - location
	loc-37-30 - location
	loc-37-31 - location
	loc-37-32 - location
	loc-37-33 - location
	loc-37-34 - location
	loc-37-35 - location
	loc-37-36 - location
	loc-37-37 - location
	loc-37-38 - location
	loc-37-39 - location
	loc-37-4 - location
	loc-37-40 - location
	loc-37-41 - location
	loc-37-5 - location
	loc-37-6 - location
	loc-37-7 - location
	loc-37-8 - location
	loc-37-9 - location
	loc-38-1 - location
	loc-38-10 - location
	loc-38-11 - location
	loc-38-12 - location
	loc-38-13 - location
	loc-38-14 - location
	loc-38-15 - location
	loc-38-16 - location
	loc-38-17 - location
	loc-38-18 - location
	loc-38-19 - location
	loc-38-2 - location
	loc-38-20 - location
	loc-38-21 - location
	loc-38-22 - location
	loc-38-23 - location
	loc-38-24 - location
	loc-38-25 - location
	loc-38-26 - location
	loc-38-27 - location
	loc-38-28 - location
	loc-38-29 - location
	loc-38-3 - location
	loc-38-30 - location
	loc-38-31 - location
	loc-38-32 - location
	loc-38-33 - location
	loc-38-34 - location
	loc-38-35 - location
	loc-38-36 - location
	loc-38-37 - location
	loc-38-38 - location
	loc-38-39 - location
	loc-38-4 - location
	loc-38-40 - location
	loc-38-41 - location
	loc-38-5 - location
	loc-38-6 - location
	loc-38-7 - location
	loc-38-8 - location
	loc-38-9 - location
	loc-39-1 - location
	loc-39-10 - location
	loc-39-11 - location
	loc-39-12 - location
	loc-39-13 - location
	loc-39-14 - location
	loc-39-15 - location
	loc-39-16 - location
	loc-39-17 - location
	loc-39-18 - location
	loc-39-19 - location
	loc-39-2 - location
	loc-39-20 - location
	loc-39-21 - location
	loc-39-22 - location
	loc-39-23 - location
	loc-39-24 - location
	loc-39-25 - location
	loc-39-26 - location
	loc-39-27 - location
	loc-39-28 - location
	loc-39-29 - location
	loc-39-3 - location
	loc-39-30 - location
	loc-39-31 - location
	loc-39-32 - location
	loc-39-33 - location
	loc-39-34 - location
	loc-39-35 - location
	loc-39-36 - location
	loc-39-37 - location
	loc-39-38 - location
	loc-39-39 - location
	loc-39-4 - location
	loc-39-40 - location
	loc-39-41 - location
	loc-39-5 - location
	loc-39-6 - location
	loc-39-7 - location
	loc-39-8 - location
	loc-39-9 - location
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
	loc-4-32 - location
	loc-4-33 - location
	loc-4-34 - location
	loc-4-35 - location
	loc-4-36 - location
	loc-4-37 - location
	loc-4-38 - location
	loc-4-39 - location
	loc-4-4 - location
	loc-4-40 - location
	loc-4-41 - location
	loc-4-5 - location
	loc-4-6 - location
	loc-4-7 - location
	loc-4-8 - location
	loc-4-9 - location
	loc-40-1 - location
	loc-40-10 - location
	loc-40-11 - location
	loc-40-12 - location
	loc-40-13 - location
	loc-40-14 - location
	loc-40-15 - location
	loc-40-16 - location
	loc-40-17 - location
	loc-40-18 - location
	loc-40-19 - location
	loc-40-2 - location
	loc-40-20 - location
	loc-40-21 - location
	loc-40-22 - location
	loc-40-23 - location
	loc-40-24 - location
	loc-40-25 - location
	loc-40-26 - location
	loc-40-27 - location
	loc-40-28 - location
	loc-40-29 - location
	loc-40-3 - location
	loc-40-30 - location
	loc-40-31 - location
	loc-40-32 - location
	loc-40-33 - location
	loc-40-34 - location
	loc-40-35 - location
	loc-40-36 - location
	loc-40-37 - location
	loc-40-38 - location
	loc-40-39 - location
	loc-40-4 - location
	loc-40-40 - location
	loc-40-41 - location
	loc-40-5 - location
	loc-40-6 - location
	loc-40-7 - location
	loc-40-8 - location
	loc-40-9 - location
	loc-41-1 - location
	loc-41-10 - location
	loc-41-11 - location
	loc-41-12 - location
	loc-41-13 - location
	loc-41-14 - location
	loc-41-15 - location
	loc-41-16 - location
	loc-41-17 - location
	loc-41-18 - location
	loc-41-19 - location
	loc-41-2 - location
	loc-41-20 - location
	loc-41-21 - location
	loc-41-22 - location
	loc-41-23 - location
	loc-41-24 - location
	loc-41-25 - location
	loc-41-26 - location
	loc-41-27 - location
	loc-41-28 - location
	loc-41-29 - location
	loc-41-3 - location
	loc-41-30 - location
	loc-41-31 - location
	loc-41-32 - location
	loc-41-33 - location
	loc-41-34 - location
	loc-41-35 - location
	loc-41-36 - location
	loc-41-37 - location
	loc-41-38 - location
	loc-41-39 - location
	loc-41-4 - location
	loc-41-40 - location
	loc-41-41 - location
	loc-41-5 - location
	loc-41-6 - location
	loc-41-7 - location
	loc-41-8 - location
	loc-41-9 - location
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
	loc-5-32 - location
	loc-5-33 - location
	loc-5-34 - location
	loc-5-35 - location
	loc-5-36 - location
	loc-5-37 - location
	loc-5-38 - location
	loc-5-39 - location
	loc-5-4 - location
	loc-5-40 - location
	loc-5-41 - location
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
	loc-6-32 - location
	loc-6-33 - location
	loc-6-34 - location
	loc-6-35 - location
	loc-6-36 - location
	loc-6-37 - location
	loc-6-38 - location
	loc-6-39 - location
	loc-6-4 - location
	loc-6-40 - location
	loc-6-41 - location
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
	loc-7-32 - location
	loc-7-33 - location
	loc-7-34 - location
	loc-7-35 - location
	loc-7-36 - location
	loc-7-37 - location
	loc-7-38 - location
	loc-7-39 - location
	loc-7-4 - location
	loc-7-40 - location
	loc-7-41 - location
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
	loc-8-32 - location
	loc-8-33 - location
	loc-8-34 - location
	loc-8-35 - location
	loc-8-36 - location
	loc-8-37 - location
	loc-8-38 - location
	loc-8-39 - location
	loc-8-4 - location
	loc-8-40 - location
	loc-8-41 - location
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
	loc-9-32 - location
	loc-9-33 - location
	loc-9-34 - location
	loc-9-35 - location
	loc-9-36 - location
	loc-9-37 - location
	loc-9-38 - location
	loc-9-39 - location
	loc-9-4 - location
	loc-9-40 - location
	loc-9-41 - location
	loc-9-5 - location
	loc-9-6 - location
	loc-9-7 - location
	loc-9-8 - location
	loc-9-9 - location
	player-1 - player
  )
  (:init 
	(at player-1 loc-24-36)
	(clear loc-10-10)
	(clear loc-10-12)
	(clear loc-10-13)
	(clear loc-10-14)
	(clear loc-10-15)
	(clear loc-10-16)
	(clear loc-10-17)
	(clear loc-10-18)
	(clear loc-10-20)
	(clear loc-10-21)
	(clear loc-10-22)
	(clear loc-10-23)
	(clear loc-10-24)
	(clear loc-10-26)
	(clear loc-10-28)
	(clear loc-10-2)
	(clear loc-10-30)
	(clear loc-10-34)
	(clear loc-10-35)
	(clear loc-10-37)
	(clear loc-10-38)
	(clear loc-10-39)
	(clear loc-10-3)
	(clear loc-10-40)
	(clear loc-10-4)
	(clear loc-10-5)
	(clear loc-10-7)
	(clear loc-10-9)
	(clear loc-11-10)
	(clear loc-11-12)
	(clear loc-11-14)
	(clear loc-11-17)
	(clear loc-11-21)
	(clear loc-11-25)
	(clear loc-11-27)
	(clear loc-11-28)
	(clear loc-11-29)
	(clear loc-11-2)
	(clear loc-11-31)
	(clear loc-11-32)
	(clear loc-11-34)
	(clear loc-11-36)
	(clear loc-11-37)
	(clear loc-11-39)
	(clear loc-11-5)
	(clear loc-11-6)
	(clear loc-11-7)
	(clear loc-11-8)
	(clear loc-12-10)
	(clear loc-12-12)
	(clear loc-12-13)
	(clear loc-12-15)
	(clear loc-12-16)
	(clear loc-12-17)
	(clear loc-12-20)
	(clear loc-12-21)
	(clear loc-12-23)
	(clear loc-12-24)
	(clear loc-12-25)
	(clear loc-12-26)
	(clear loc-12-27)
	(clear loc-12-2)
	(clear loc-12-30)
	(clear loc-12-31)
	(clear loc-12-33)
	(clear loc-12-35)
	(clear loc-12-36)
	(clear loc-12-39)
	(clear loc-12-3)
	(clear loc-12-40)
	(clear loc-12-4)
	(clear loc-12-6)
	(clear loc-12-8)
	(clear loc-13-10)
	(clear loc-13-11)
	(clear loc-13-14)
	(clear loc-13-15)
	(clear loc-13-18)
	(clear loc-13-19)
	(clear loc-13-20)
	(clear loc-13-22)
	(clear loc-13-23)
	(clear loc-13-25)
	(clear loc-13-28)
	(clear loc-13-29)
	(clear loc-13-2)
	(clear loc-13-31)
	(clear loc-13-32)
	(clear loc-13-33)
	(clear loc-13-36)
	(clear loc-13-37)
	(clear loc-13-38)
	(clear loc-13-40)
	(clear loc-13-5)
	(clear loc-13-6)
	(clear loc-13-7)
	(clear loc-13-9)
	(clear loc-14-11)
	(clear loc-14-12)
	(clear loc-14-14)
	(clear loc-14-17)
	(clear loc-14-18)
	(clear loc-14-21)
	(clear loc-14-22)
	(clear loc-14-24)
	(clear loc-14-25)
	(clear loc-14-26)
	(clear loc-14-29)
	(clear loc-14-2)
	(clear loc-14-30)
	(clear loc-14-31)
	(clear loc-14-34)
	(clear loc-14-36)
	(clear loc-14-38)
	(clear loc-14-4)
	(clear loc-14-5)
	(clear loc-14-7)
	(clear loc-14-9)
	(clear loc-15-10)
	(clear loc-15-12)
	(clear loc-15-15)
	(clear loc-15-16)
	(clear loc-15-17)
	(clear loc-15-19)
	(clear loc-15-20)
	(clear loc-15-23)
	(clear loc-15-25)
	(clear loc-15-27)
	(clear loc-15-28)
	(clear loc-15-31)
	(clear loc-15-32)
	(clear loc-15-33)
	(clear loc-15-34)
	(clear loc-15-36)
	(clear loc-15-39)
	(clear loc-15-3)
	(clear loc-15-40)
	(clear loc-15-7)
	(clear loc-15-8)
	(clear loc-15-9)
	(clear loc-16-10)
	(clear loc-16-11)
	(clear loc-16-13)
	(clear loc-16-14)
	(clear loc-16-15)
	(clear loc-16-18)
	(clear loc-16-20)
	(clear loc-16-21)
	(clear loc-16-23)
	(clear loc-16-25)
	(clear loc-16-26)
	(clear loc-16-27)
	(clear loc-16-2)
	(clear loc-16-31)
	(clear loc-16-33)
	(clear loc-16-35)
	(clear loc-16-37)
	(clear loc-16-38)
	(clear loc-16-39)
	(clear loc-16-3)
	(clear loc-16-4)
	(clear loc-16-5)
	(clear loc-16-6)
	(clear loc-16-7)
	(clear loc-17-10)
	(clear loc-17-12)
	(clear loc-17-13)
	(clear loc-17-15)
	(clear loc-17-16)
	(clear loc-17-18)
	(clear loc-17-20)
	(clear loc-17-22)
	(clear loc-17-23)
	(clear loc-17-25)
	(clear loc-17-27)
	(clear loc-17-28)
	(clear loc-17-2)
	(clear loc-17-30)
	(clear loc-17-33)
	(clear loc-17-34)
	(clear loc-17-35)
	(clear loc-17-36)
	(clear loc-17-38)
	(clear loc-17-40)
	(clear loc-17-4)
	(clear loc-17-6)
	(clear loc-17-8)
	(clear loc-17-9)
	(clear loc-18-10)
	(clear loc-18-11)
	(clear loc-18-13)
	(clear loc-18-14)
	(clear loc-18-16)
	(clear loc-18-18)
	(clear loc-18-20)
	(clear loc-18-21)
	(clear loc-18-23)
	(clear loc-18-24)
	(clear loc-18-25)
	(clear loc-18-28)
	(clear loc-18-2)
	(clear loc-18-30)
	(clear loc-18-31)
	(clear loc-18-32)
	(clear loc-18-33)
	(clear loc-18-36)
	(clear loc-18-38)
	(clear loc-18-39)
	(clear loc-18-3)
	(clear loc-18-40)
	(clear loc-18-5)
	(clear loc-18-8)
	(clear loc-19-11)
	(clear loc-19-12)
	(clear loc-19-16)
	(clear loc-19-18)
	(clear loc-19-19)
	(clear loc-19-21)
	(clear loc-19-22)
	(clear loc-19-24)
	(clear loc-19-26)
	(clear loc-19-29)
	(clear loc-19-2)
	(clear loc-19-31)
	(clear loc-19-35)
	(clear loc-19-36)
	(clear loc-19-37)
	(clear loc-19-38)
	(clear loc-19-40)
	(clear loc-19-4)
	(clear loc-19-5)
	(clear loc-19-6)
	(clear loc-19-7)
	(clear loc-19-8)
	(clear loc-2-10)
	(clear loc-2-11)
	(clear loc-2-14)
	(clear loc-2-15)
	(clear loc-2-16)
	(clear loc-2-17)
	(clear loc-2-18)
	(clear loc-2-19)
	(clear loc-2-21)
	(clear loc-2-22)
	(clear loc-2-25)
	(clear loc-2-27)
	(clear loc-2-28)
	(clear loc-2-29)
	(clear loc-2-2)
	(clear loc-2-30)
	(clear loc-2-31)
	(clear loc-2-32)
	(clear loc-2-34)
	(clear loc-2-35)
	(clear loc-2-36)
	(clear loc-2-37)
	(clear loc-2-38)
	(clear loc-2-3)
	(clear loc-2-40)
	(clear loc-2-5)
	(clear loc-2-7)
	(clear loc-20-10)
	(clear loc-20-12)
	(clear loc-20-13)
	(clear loc-20-14)
	(clear loc-20-15)
	(clear loc-20-16)
	(clear loc-20-17)
	(clear loc-20-19)
	(clear loc-20-20)
	(clear loc-20-21)
	(clear loc-20-23)
	(clear loc-20-24)
	(clear loc-20-26)
	(clear loc-20-27)
	(clear loc-20-29)
	(clear loc-20-30)
	(clear loc-20-32)
	(clear loc-20-33)
	(clear loc-20-34)
	(clear loc-20-35)
	(clear loc-20-38)
	(clear loc-20-39)
	(clear loc-20-3)
	(clear loc-20-4)
	(clear loc-20-6)
	(clear loc-20-8)
	(clear loc-20-9)
	(clear loc-21-10)
	(clear loc-21-11)
	(clear loc-21-14)
	(clear loc-21-17)
	(clear loc-21-18)
	(clear loc-21-19)
	(clear loc-21-22)
	(clear loc-21-23)
	(clear loc-21-25)
	(clear loc-21-27)
	(clear loc-21-28)
	(clear loc-21-29)
	(clear loc-21-2)
	(clear loc-21-31)
	(clear loc-21-34)
	(clear loc-21-36)
	(clear loc-21-37)
	(clear loc-21-39)
	(clear loc-21-40)
	(clear loc-21-7)
	(clear loc-21-8)
	(clear loc-22-10)
	(clear loc-22-12)
	(clear loc-22-14)
	(clear loc-22-16)
	(clear loc-22-17)
	(clear loc-22-19)
	(clear loc-22-20)
	(clear loc-22-22)
	(clear loc-22-24)
	(clear loc-22-25)
	(clear loc-22-27)
	(clear loc-22-2)
	(clear loc-22-30)
	(clear loc-22-31)
	(clear loc-22-32)
	(clear loc-22-33)
	(clear loc-22-34)
	(clear loc-22-35)
	(clear loc-22-36)
	(clear loc-22-3)
	(clear loc-22-40)
	(clear loc-22-4)
	(clear loc-22-6)
	(clear loc-22-7)
	(clear loc-22-9)
	(clear loc-23-12)
	(clear loc-23-14)
	(clear loc-23-15)
	(clear loc-23-18)
	(clear loc-23-21)
	(clear loc-23-22)
	(clear loc-23-23)
	(clear loc-23-24)
	(clear loc-23-26)
	(clear loc-23-27)
	(clear loc-23-28)
	(clear loc-23-2)
	(clear loc-23-33)
	(clear loc-23-36)
	(clear loc-23-37)
	(clear loc-23-39)
	(clear loc-23-40)
	(clear loc-23-4)
	(clear loc-23-6)
	(clear loc-23-8)
	(clear loc-24-10)
	(clear loc-24-11)
	(clear loc-24-12)
	(clear loc-24-15)
	(clear loc-24-16)
	(clear loc-24-17)
	(clear loc-24-18)
	(clear loc-24-19)
	(clear loc-24-21)
	(clear loc-24-23)
	(clear loc-24-26)
	(clear loc-24-28)
	(clear loc-24-29)
	(clear loc-24-2)
	(clear loc-24-30)
	(clear loc-24-31)
	(clear loc-24-32)
	(clear loc-24-33)
	(clear loc-24-34)
	(clear loc-24-38)
	(clear loc-24-3)
	(clear loc-24-40)
	(clear loc-24-5)
	(clear loc-24-6)
	(clear loc-24-7)
	(clear loc-24-8)
	(clear loc-25-10)
	(clear loc-25-12)
	(clear loc-25-13)
	(clear loc-25-14)
	(clear loc-25-16)
	(clear loc-25-19)
	(clear loc-25-21)
	(clear loc-25-22)
	(clear loc-25-24)
	(clear loc-25-25)
	(clear loc-25-26)
	(clear loc-25-27)
	(clear loc-25-30)
	(clear loc-25-35)
	(clear loc-25-36)
	(clear loc-25-37)
	(clear loc-25-38)
	(clear loc-25-3)
	(clear loc-25-40)
	(clear loc-25-4)
	(clear loc-25-7)
	(clear loc-26-11)
	(clear loc-26-13)
	(clear loc-26-15)
	(clear loc-26-16)
	(clear loc-26-18)
	(clear loc-26-19)
	(clear loc-26-21)
	(clear loc-26-23)
	(clear loc-26-25)
	(clear loc-26-27)
	(clear loc-26-29)
	(clear loc-26-2)
	(clear loc-26-30)
	(clear loc-26-32)
	(clear loc-26-33)
	(clear loc-26-3)
	(clear loc-26-40)
	(clear loc-26-7)
	(clear loc-26-9)
	(clear loc-27-10)
	(clear loc-27-11)
	(clear loc-27-12)
	(clear loc-27-13)
	(clear loc-27-14)
	(clear loc-27-15)
	(clear loc-27-19)
	(clear loc-27-21)
	(clear loc-27-23)
	(clear loc-27-24)
	(clear loc-27-26)
	(clear loc-27-27)
	(clear loc-27-28)
	(clear loc-27-2)
	(clear loc-27-30)
	(clear loc-27-31)
	(clear loc-27-32)
	(clear loc-27-34)
	(clear loc-27-35)
	(clear loc-27-36)
	(clear loc-27-37)
	(clear loc-27-38)
	(clear loc-27-39)
	(clear loc-27-40)
	(clear loc-27-6)
	(clear loc-27-9)
	(clear loc-28-13)
	(clear loc-28-15)
	(clear loc-28-16)
	(clear loc-28-18)
	(clear loc-28-20)
	(clear loc-28-21)
	(clear loc-28-22)
	(clear loc-28-24)
	(clear loc-28-26)
	(clear loc-28-29)
	(clear loc-28-2)
	(clear loc-28-30)
	(clear loc-28-32)
	(clear loc-28-33)
	(clear loc-28-36)
	(clear loc-28-40)
	(clear loc-28-5)
	(clear loc-28-6)
	(clear loc-28-7)
	(clear loc-28-8)
	(clear loc-28-9)
	(clear loc-29-10)
	(clear loc-29-11)
	(clear loc-29-14)
	(clear loc-29-17)
	(clear loc-29-18)
	(clear loc-29-19)
	(clear loc-29-20)
	(clear loc-29-22)
	(clear loc-29-24)
	(clear loc-29-26)
	(clear loc-29-28)
	(clear loc-29-29)
	(clear loc-29-2)
	(clear loc-29-31)
	(clear loc-29-33)
	(clear loc-29-35)
	(clear loc-29-38)
	(clear loc-29-39)
	(clear loc-29-3)
	(clear loc-29-40)
	(clear loc-29-4)
	(clear loc-29-6)
	(clear loc-29-8)
	(clear loc-3-11)
	(clear loc-3-12)
	(clear loc-3-13)
	(clear loc-3-14)
	(clear loc-3-16)
	(clear loc-3-18)
	(clear loc-3-20)
	(clear loc-3-22)
	(clear loc-3-23)
	(clear loc-3-24)
	(clear loc-3-25)
	(clear loc-3-26)
	(clear loc-3-27)
	(clear loc-3-30)
	(clear loc-3-32)
	(clear loc-3-33)
	(clear loc-3-34)
	(clear loc-3-36)
	(clear loc-3-38)
	(clear loc-3-39)
	(clear loc-3-3)
	(clear loc-3-40)
	(clear loc-3-4)
	(clear loc-3-5)
	(clear loc-3-7)
	(clear loc-3-8)
	(clear loc-3-9)
	(clear loc-30-10)
	(clear loc-30-12)
	(clear loc-30-13)
	(clear loc-30-14)
	(clear loc-30-15)
	(clear loc-30-16)
	(clear loc-30-18)
	(clear loc-30-20)
	(clear loc-30-22)
	(clear loc-30-24)
	(clear loc-30-25)
	(clear loc-30-28)
	(clear loc-30-2)
	(clear loc-30-31)
	(clear loc-30-32)
	(clear loc-30-34)
	(clear loc-30-35)
	(clear loc-30-36)
	(clear loc-30-37)
	(clear loc-30-39)
	(clear loc-30-4)
	(clear loc-30-5)
	(clear loc-30-6)
	(clear loc-30-8)
	(clear loc-30-9)
	(clear loc-31-10)
	(clear loc-31-12)
	(clear loc-31-16)
	(clear loc-31-17)
	(clear loc-31-18)
	(clear loc-31-20)
	(clear loc-31-22)
	(clear loc-31-23)
	(clear loc-31-25)
	(clear loc-31-26)
	(clear loc-31-27)
	(clear loc-31-28)
	(clear loc-31-29)
	(clear loc-31-2)
	(clear loc-31-30)
	(clear loc-31-32)
	(clear loc-31-33)
	(clear loc-31-35)
	(clear loc-31-37)
	(clear loc-31-38)
	(clear loc-31-39)
	(clear loc-31-3)
	(clear loc-31-40)
	(clear loc-31-6)
	(clear loc-31-8)
	(clear loc-32-10)
	(clear loc-32-11)
	(clear loc-32-13)
	(clear loc-32-14)
	(clear loc-32-16)
	(clear loc-32-18)
	(clear loc-32-21)
	(clear loc-32-22)
	(clear loc-32-25)
	(clear loc-32-27)
	(clear loc-32-29)
	(clear loc-32-2)
	(clear loc-32-31)
	(clear loc-32-32)
	(clear loc-32-34)
	(clear loc-32-35)
	(clear loc-32-37)
	(clear loc-32-40)
	(clear loc-32-4)
	(clear loc-32-5)
	(clear loc-32-7)
	(clear loc-32-9)
	(clear loc-33-10)
	(clear loc-33-12)
	(clear loc-33-14)
	(clear loc-33-16)
	(clear loc-33-17)
	(clear loc-33-19)
	(clear loc-33-20)
	(clear loc-33-22)
	(clear loc-33-23)
	(clear loc-33-24)
	(clear loc-33-26)
	(clear loc-33-27)
	(clear loc-33-2)
	(clear loc-33-30)
	(clear loc-33-31)
	(clear loc-33-33)
	(clear loc-33-34)
	(clear loc-33-36)
	(clear loc-33-37)
	(clear loc-33-38)
	(clear loc-33-40)
	(clear loc-33-4)
	(clear loc-33-7)
	(clear loc-33-8)
	(clear loc-34-11)
	(clear loc-34-12)
	(clear loc-34-14)
	(clear loc-34-15)
	(clear loc-34-19)
	(clear loc-34-21)
	(clear loc-34-24)
	(clear loc-34-25)
	(clear loc-34-26)
	(clear loc-34-28)
	(clear loc-34-2)
	(clear loc-34-30)
	(clear loc-34-32)
	(clear loc-34-34)
	(clear loc-34-36)
	(clear loc-34-38)
	(clear loc-34-4)
	(clear loc-34-5)
	(clear loc-34-6)
	(clear loc-34-8)
	(clear loc-34-9)
	(clear loc-35-10)
	(clear loc-35-11)
	(clear loc-35-13)
	(clear loc-35-15)
	(clear loc-35-16)
	(clear loc-35-17)
	(clear loc-35-18)
	(clear loc-35-19)
	(clear loc-35-20)
	(clear loc-35-21)
	(clear loc-35-22)
	(clear loc-35-23)
	(clear loc-35-24)
	(clear loc-35-27)
	(clear loc-35-28)
	(clear loc-35-29)
	(clear loc-35-2)
	(clear loc-35-30)
	(clear loc-35-31)
	(clear loc-35-32)
	(clear loc-35-33)
	(clear loc-35-35)
	(clear loc-35-38)
	(clear loc-35-39)
	(clear loc-35-40)
	(clear loc-35-6)
	(clear loc-35-7)
	(clear loc-35-9)
	(clear loc-36-10)
	(clear loc-36-12)
	(clear loc-36-13)
	(clear loc-36-14)
	(clear loc-36-17)
	(clear loc-36-20)
	(clear loc-36-23)
	(clear loc-36-26)
	(clear loc-36-27)
	(clear loc-36-29)
	(clear loc-36-2)
	(clear loc-36-31)
	(clear loc-36-33)
	(clear loc-36-34)
	(clear loc-36-35)
	(clear loc-36-36)
	(clear loc-36-37)
	(clear loc-36-38)
	(clear loc-36-3)
	(clear loc-36-40)
	(clear loc-36-4)
	(clear loc-36-5)
	(clear loc-36-7)
	(clear loc-36-8)
	(clear loc-37-10)
	(clear loc-37-14)
	(clear loc-37-16)
	(clear loc-37-17)
	(clear loc-37-18)
	(clear loc-37-20)
	(clear loc-37-21)
	(clear loc-37-23)
	(clear loc-37-25)
	(clear loc-37-26)
	(clear loc-37-28)
	(clear loc-37-31)
	(clear loc-37-33)
	(clear loc-37-36)
	(clear loc-37-38)
	(clear loc-37-39)
	(clear loc-37-4)
	(clear loc-37-7)
	(clear loc-38-10)
	(clear loc-38-11)
	(clear loc-38-12)
	(clear loc-38-13)
	(clear loc-38-14)
	(clear loc-38-15)
	(clear loc-38-18)
	(clear loc-38-19)
	(clear loc-38-22)
	(clear loc-38-24)
	(clear loc-38-25)
	(clear loc-38-27)
	(clear loc-38-28)
	(clear loc-38-29)
	(clear loc-38-2)
	(clear loc-38-30)
	(clear loc-38-31)
	(clear loc-38-33)
	(clear loc-38-34)
	(clear loc-38-38)
	(clear loc-38-3)
	(clear loc-38-40)
	(clear loc-38-4)
	(clear loc-38-5)
	(clear loc-38-6)
	(clear loc-38-7)
	(clear loc-38-8)
	(clear loc-38-9)
	(clear loc-39-11)
	(clear loc-39-13)
	(clear loc-39-15)
	(clear loc-39-16)
	(clear loc-39-20)
	(clear loc-39-21)
	(clear loc-39-22)
	(clear loc-39-25)
	(clear loc-39-26)
	(clear loc-39-2)
	(clear loc-39-31)
	(clear loc-39-32)
	(clear loc-39-35)
	(clear loc-39-36)
	(clear loc-39-37)
	(clear loc-39-38)
	(clear loc-39-39)
	(clear loc-39-40)
	(clear loc-39-7)
	(clear loc-39-9)
	(clear loc-4-10)
	(clear loc-4-13)
	(clear loc-4-15)
	(clear loc-4-17)
	(clear loc-4-18)
	(clear loc-4-19)
	(clear loc-4-20)
	(clear loc-4-21)
	(clear loc-4-24)
	(clear loc-4-27)
	(clear loc-4-29)
	(clear loc-4-30)
	(clear loc-4-32)
	(clear loc-4-34)
	(clear loc-4-35)
	(clear loc-4-37)
	(clear loc-4-38)
	(clear loc-4-3)
	(clear loc-4-40)
	(clear loc-4-5)
	(clear loc-4-6)
	(clear loc-4-9)
	(clear loc-40-10)
	(clear loc-40-12)
	(clear loc-40-13)
	(clear loc-40-14)
	(clear loc-40-16)
	(clear loc-40-17)
	(clear loc-40-18)
	(clear loc-40-19)
	(clear loc-40-20)
	(clear loc-40-22)
	(clear loc-40-23)
	(clear loc-40-24)
	(clear loc-40-26)
	(clear loc-40-27)
	(clear loc-40-28)
	(clear loc-40-29)
	(clear loc-40-30)
	(clear loc-40-32)
	(clear loc-40-33)
	(clear loc-40-34)
	(clear loc-40-36)
	(clear loc-40-39)
	(clear loc-40-3)
	(clear loc-40-4)
	(clear loc-40-5)
	(clear loc-40-6)
	(clear loc-40-7)
	(clear loc-40-9)
	(clear loc-5-10)
	(clear loc-5-12)
	(clear loc-5-14)
	(clear loc-5-15)
	(clear loc-5-16)
	(clear loc-5-20)
	(clear loc-5-22)
	(clear loc-5-23)
	(clear loc-5-24)
	(clear loc-5-25)
	(clear loc-5-28)
	(clear loc-5-29)
	(clear loc-5-2)
	(clear loc-5-31)
	(clear loc-5-33)
	(clear loc-5-34)
	(clear loc-5-38)
	(clear loc-5-40)
	(clear loc-5-6)
	(clear loc-5-8)
	(clear loc-6-10)
	(clear loc-6-11)
	(clear loc-6-12)
	(clear loc-6-13)
	(clear loc-6-14)
	(clear loc-6-17)
	(clear loc-6-18)
	(clear loc-6-19)
	(clear loc-6-20)
	(clear loc-6-21)
	(clear loc-6-22)
	(clear loc-6-25)
	(clear loc-6-26)
	(clear loc-6-27)
	(clear loc-6-29)
	(clear loc-6-2)
	(clear loc-6-31)
	(clear loc-6-32)
	(clear loc-6-33)
	(clear loc-6-35)
	(clear loc-6-37)
	(clear loc-6-40)
	(clear loc-6-5)
	(clear loc-6-6)
	(clear loc-6-8)
	(clear loc-6-9)
	(clear loc-7-11)
	(clear loc-7-14)
	(clear loc-7-15)
	(clear loc-7-16)
	(clear loc-7-17)
	(clear loc-7-20)
	(clear loc-7-22)
	(clear loc-7-24)
	(clear loc-7-25)
	(clear loc-7-28)
	(clear loc-7-29)
	(clear loc-7-2)
	(clear loc-7-31)
	(clear loc-7-33)
	(clear loc-7-35)
	(clear loc-7-36)
	(clear loc-7-37)
	(clear loc-7-38)
	(clear loc-7-39)
	(clear loc-7-3)
	(clear loc-7-40)
	(clear loc-7-4)
	(clear loc-7-6)
	(clear loc-7-8)
	(clear loc-8-10)
	(clear loc-8-11)
	(clear loc-8-12)
	(clear loc-8-13)
	(clear loc-8-16)
	(clear loc-8-18)
	(clear loc-8-19)
	(clear loc-8-20)
	(clear loc-8-22)
	(clear loc-8-23)
	(clear loc-8-25)
	(clear loc-8-27)
	(clear loc-8-29)
	(clear loc-8-32)
	(clear loc-8-34)
	(clear loc-8-37)
	(clear loc-8-39)
	(clear loc-8-4)
	(clear loc-8-6)
	(clear loc-8-8)
	(clear loc-9-11)
	(clear loc-9-14)
	(clear loc-9-16)
	(clear loc-9-19)
	(clear loc-9-22)
	(clear loc-9-24)
	(clear loc-9-26)
	(clear loc-9-27)
	(clear loc-9-28)
	(clear loc-9-29)
	(clear loc-9-2)
	(clear loc-9-30)
	(clear loc-9-31)
	(clear loc-9-32)
	(clear loc-9-33)
	(clear loc-9-34)
	(clear loc-9-36)
	(clear loc-9-37)
	(clear loc-9-40)
	(clear loc-9-4)
	(clear loc-9-6)
	(clear loc-9-7)
	(clear loc-9-9)
	(is-goal loc-30-4)
	(move-dir-down loc-10-10 loc-11-10)
	(move-dir-down loc-10-12 loc-11-12)
	(move-dir-down loc-10-14 loc-11-14)
	(move-dir-down loc-10-17 loc-11-17)
	(move-dir-down loc-10-21 loc-11-21)
	(move-dir-down loc-10-28 loc-11-28)
	(move-dir-down loc-10-2 loc-11-2)
	(move-dir-down loc-10-34 loc-11-34)
	(move-dir-down loc-10-37 loc-11-37)
	(move-dir-down loc-10-39 loc-11-39)
	(move-dir-down loc-10-5 loc-11-5)
	(move-dir-down loc-10-7 loc-11-7)
	(move-dir-down loc-11-10 loc-12-10)
	(move-dir-down loc-11-12 loc-12-12)
	(move-dir-down loc-11-17 loc-12-17)
	(move-dir-down loc-11-21 loc-12-21)
	(move-dir-down loc-11-25 loc-12-25)
	(move-dir-down loc-11-27 loc-12-27)
	(move-dir-down loc-11-2 loc-12-2)
	(move-dir-down loc-11-31 loc-12-31)
	(move-dir-down loc-11-36 loc-12-36)
	(move-dir-down loc-11-39 loc-12-39)
	(move-dir-down loc-11-6 loc-12-6)
	(move-dir-down loc-11-8 loc-12-8)
	(move-dir-down loc-12-10 loc-13-10)
	(move-dir-down loc-12-15 loc-13-15)
	(move-dir-down loc-12-20 loc-13-20)
	(move-dir-down loc-12-23 loc-13-23)
	(move-dir-down loc-12-25 loc-13-25)
	(move-dir-down loc-12-2 loc-13-2)
	(move-dir-down loc-12-31 loc-13-31)
	(move-dir-down loc-12-33 loc-13-33)
	(move-dir-down loc-12-36 loc-13-36)
	(move-dir-down loc-12-40 loc-13-40)
	(move-dir-down loc-12-6 loc-13-6)
	(move-dir-down loc-13-11 loc-14-11)
	(move-dir-down loc-13-14 loc-14-14)
	(move-dir-down loc-13-18 loc-14-18)
	(move-dir-down loc-13-22 loc-14-22)
	(move-dir-down loc-13-25 loc-14-25)
	(move-dir-down loc-13-29 loc-14-29)
	(move-dir-down loc-13-2 loc-14-2)
	(move-dir-down loc-13-31 loc-14-31)
	(move-dir-down loc-13-36 loc-14-36)
	(move-dir-down loc-13-38 loc-14-38)
	(move-dir-down loc-13-5 loc-14-5)
	(move-dir-down loc-13-7 loc-14-7)
	(move-dir-down loc-13-9 loc-14-9)
	(move-dir-down loc-14-12 loc-15-12)
	(move-dir-down loc-14-17 loc-15-17)
	(move-dir-down loc-14-25 loc-15-25)
	(move-dir-down loc-14-31 loc-15-31)
	(move-dir-down loc-14-34 loc-15-34)
	(move-dir-down loc-14-36 loc-15-36)
	(move-dir-down loc-14-7 loc-15-7)
	(move-dir-down loc-14-9 loc-15-9)
	(move-dir-down loc-15-10 loc-16-10)
	(move-dir-down loc-15-15 loc-16-15)
	(move-dir-down loc-15-20 loc-16-20)
	(move-dir-down loc-15-23 loc-16-23)
	(move-dir-down loc-15-25 loc-16-25)
	(move-dir-down loc-15-27 loc-16-27)
	(move-dir-down loc-15-31 loc-16-31)
	(move-dir-down loc-15-33 loc-16-33)
	(move-dir-down loc-15-39 loc-16-39)
	(move-dir-down loc-15-3 loc-16-3)
	(move-dir-down loc-15-7 loc-16-7)
	(move-dir-down loc-16-10 loc-17-10)
	(move-dir-down loc-16-13 loc-17-13)
	(move-dir-down loc-16-15 loc-17-15)
	(move-dir-down loc-16-18 loc-17-18)
	(move-dir-down loc-16-20 loc-17-20)
	(move-dir-down loc-16-23 loc-17-23)
	(move-dir-down loc-16-25 loc-17-25)
	(move-dir-down loc-16-27 loc-17-27)
	(move-dir-down loc-16-2 loc-17-2)
	(move-dir-down loc-16-33 loc-17-33)
	(move-dir-down loc-16-35 loc-17-35)
	(move-dir-down loc-16-38 loc-17-38)
	(move-dir-down loc-16-4 loc-17-4)
	(move-dir-down loc-16-6 loc-17-6)
	(move-dir-down loc-17-10 loc-18-10)
	(move-dir-down loc-17-13 loc-18-13)
	(move-dir-down loc-17-16 loc-18-16)
	(move-dir-down loc-17-18 loc-18-18)
	(move-dir-down loc-17-20 loc-18-20)
	(move-dir-down loc-17-23 loc-18-23)
	(move-dir-down loc-17-25 loc-18-25)
	(move-dir-down loc-17-28 loc-18-28)
	(move-dir-down loc-17-2 loc-18-2)
	(move-dir-down loc-17-30 loc-18-30)
	(move-dir-down loc-17-33 loc-18-33)
	(move-dir-down loc-17-36 loc-18-36)
	(move-dir-down loc-17-38 loc-18-38)
	(move-dir-down loc-17-40 loc-18-40)
	(move-dir-down loc-17-8 loc-18-8)
	(move-dir-down loc-18-11 loc-19-11)
	(move-dir-down loc-18-16 loc-19-16)
	(move-dir-down loc-18-18 loc-19-18)
	(move-dir-down loc-18-21 loc-19-21)
	(move-dir-down loc-18-24 loc-19-24)
	(move-dir-down loc-18-2 loc-19-2)
	(move-dir-down loc-18-31 loc-19-31)
	(move-dir-down loc-18-36 loc-19-36)
	(move-dir-down loc-18-38 loc-19-38)
	(move-dir-down loc-18-40 loc-19-40)
	(move-dir-down loc-18-5 loc-19-5)
	(move-dir-down loc-18-8 loc-19-8)
	(move-dir-down loc-19-12 loc-20-12)
	(move-dir-down loc-19-16 loc-20-16)
	(move-dir-down loc-19-19 loc-20-19)
	(move-dir-down loc-19-21 loc-20-21)
	(move-dir-down loc-19-24 loc-20-24)
	(move-dir-down loc-19-26 loc-20-26)
	(move-dir-down loc-19-29 loc-20-29)
	(move-dir-down loc-19-35 loc-20-35)
	(move-dir-down loc-19-38 loc-20-38)
	(move-dir-down loc-19-4 loc-20-4)
	(move-dir-down loc-19-6 loc-20-6)
	(move-dir-down loc-19-8 loc-20-8)
	(move-dir-down loc-2-11 loc-3-11)
	(move-dir-down loc-2-14 loc-3-14)
	(move-dir-down loc-2-16 loc-3-16)
	(move-dir-down loc-2-18 loc-3-18)
	(move-dir-down loc-2-22 loc-3-22)
	(move-dir-down loc-2-25 loc-3-25)
	(move-dir-down loc-2-27 loc-3-27)
	(move-dir-down loc-2-30 loc-3-30)
	(move-dir-down loc-2-32 loc-3-32)
	(move-dir-down loc-2-34 loc-3-34)
	(move-dir-down loc-2-36 loc-3-36)
	(move-dir-down loc-2-38 loc-3-38)
	(move-dir-down loc-2-3 loc-3-3)
	(move-dir-down loc-2-40 loc-3-40)
	(move-dir-down loc-2-5 loc-3-5)
	(move-dir-down loc-2-7 loc-3-7)
	(move-dir-down loc-20-10 loc-21-10)
	(move-dir-down loc-20-14 loc-21-14)
	(move-dir-down loc-20-17 loc-21-17)
	(move-dir-down loc-20-19 loc-21-19)
	(move-dir-down loc-20-23 loc-21-23)
	(move-dir-down loc-20-27 loc-21-27)
	(move-dir-down loc-20-29 loc-21-29)
	(move-dir-down loc-20-34 loc-21-34)
	(move-dir-down loc-20-39 loc-21-39)
	(move-dir-down loc-20-8 loc-21-8)
	(move-dir-down loc-21-10 loc-22-10)
	(move-dir-down loc-21-14 loc-22-14)
	(move-dir-down loc-21-17 loc-22-17)
	(move-dir-down loc-21-19 loc-22-19)
	(move-dir-down loc-21-22 loc-22-22)
	(move-dir-down loc-21-25 loc-22-25)
	(move-dir-down loc-21-27 loc-22-27)
	(move-dir-down loc-21-2 loc-22-2)
	(move-dir-down loc-21-31 loc-22-31)
	(move-dir-down loc-21-34 loc-22-34)
	(move-dir-down loc-21-36 loc-22-36)
	(move-dir-down loc-21-40 loc-22-40)
	(move-dir-down loc-21-7 loc-22-7)
	(move-dir-down loc-22-12 loc-23-12)
	(move-dir-down loc-22-14 loc-23-14)
	(move-dir-down loc-22-22 loc-23-22)
	(move-dir-down loc-22-24 loc-23-24)
	(move-dir-down loc-22-27 loc-23-27)
	(move-dir-down loc-22-2 loc-23-2)
	(move-dir-down loc-22-33 loc-23-33)
	(move-dir-down loc-22-36 loc-23-36)
	(move-dir-down loc-22-40 loc-23-40)
	(move-dir-down loc-22-4 loc-23-4)
	(move-dir-down loc-22-6 loc-23-6)
	(move-dir-down loc-23-12 loc-24-12)
	(move-dir-down loc-23-15 loc-24-15)
	(move-dir-down loc-23-18 loc-24-18)
	(move-dir-down loc-23-21 loc-24-21)
	(move-dir-down loc-23-23 loc-24-23)
	(move-dir-down loc-23-26 loc-24-26)
	(move-dir-down loc-23-28 loc-24-28)
	(move-dir-down loc-23-2 loc-24-2)
	(move-dir-down loc-23-33 loc-24-33)
	(move-dir-down loc-23-36 loc-24-36)
	(move-dir-down loc-23-40 loc-24-40)
	(move-dir-down loc-23-6 loc-24-6)
	(move-dir-down loc-23-8 loc-24-8)
	(move-dir-down loc-24-10 loc-25-10)
	(move-dir-down loc-24-12 loc-25-12)
	(move-dir-down loc-24-16 loc-25-16)
	(move-dir-down loc-24-19 loc-25-19)
	(move-dir-down loc-24-21 loc-25-21)
	(move-dir-down loc-24-26 loc-25-26)
	(move-dir-down loc-24-30 loc-25-30)
	(move-dir-down loc-24-36 loc-25-36)
	(move-dir-down loc-24-38 loc-25-38)
	(move-dir-down loc-24-3 loc-25-3)
	(move-dir-down loc-24-40 loc-25-40)
	(move-dir-down loc-24-7 loc-25-7)
	(move-dir-down loc-25-13 loc-26-13)
	(move-dir-down loc-25-16 loc-26-16)
	(move-dir-down loc-25-19 loc-26-19)
	(move-dir-down loc-25-21 loc-26-21)
	(move-dir-down loc-25-25 loc-26-25)
	(move-dir-down loc-25-27 loc-26-27)
	(move-dir-down loc-25-30 loc-26-30)
	(move-dir-down loc-25-3 loc-26-3)
	(move-dir-down loc-25-40 loc-26-40)
	(move-dir-down loc-25-7 loc-26-7)
	(move-dir-down loc-26-11 loc-27-11)
	(move-dir-down loc-26-13 loc-27-13)
	(move-dir-down loc-26-15 loc-27-15)
	(move-dir-down loc-26-19 loc-27-19)
	(move-dir-down loc-26-21 loc-27-21)
	(move-dir-down loc-26-23 loc-27-23)
	(move-dir-down loc-26-27 loc-27-27)
	(move-dir-down loc-26-2 loc-27-2)
	(move-dir-down loc-26-30 loc-27-30)
	(move-dir-down loc-26-32 loc-27-32)
	(move-dir-down loc-26-40 loc-27-40)
	(move-dir-down loc-26-9 loc-27-9)
	(move-dir-down loc-27-13 loc-28-13)
	(move-dir-down loc-27-15 loc-28-15)
	(move-dir-down loc-27-21 loc-28-21)
	(move-dir-down loc-27-24 loc-28-24)
	(move-dir-down loc-27-26 loc-28-26)
	(move-dir-down loc-27-2 loc-28-2)
	(move-dir-down loc-27-30 loc-28-30)
	(move-dir-down loc-27-32 loc-28-32)
	(move-dir-down loc-27-36 loc-28-36)
	(move-dir-down loc-27-40 loc-28-40)
	(move-dir-down loc-27-6 loc-28-6)
	(move-dir-down loc-27-9 loc-28-9)
	(move-dir-down loc-28-18 loc-29-18)
	(move-dir-down loc-28-20 loc-29-20)
	(move-dir-down loc-28-22 loc-29-22)
	(move-dir-down loc-28-24 loc-29-24)
	(move-dir-down loc-28-26 loc-29-26)
	(move-dir-down loc-28-29 loc-29-29)
	(move-dir-down loc-28-2 loc-29-2)
	(move-dir-down loc-28-33 loc-29-33)
	(move-dir-down loc-28-40 loc-29-40)
	(move-dir-down loc-28-6 loc-29-6)
	(move-dir-down loc-28-8 loc-29-8)
	(move-dir-down loc-29-10 loc-30-10)
	(move-dir-down loc-29-14 loc-30-14)
	(move-dir-down loc-29-18 loc-30-18)
	(move-dir-down loc-29-20 loc-30-20)
	(move-dir-down loc-29-22 loc-30-22)
	(move-dir-down loc-29-24 loc-30-24)
	(move-dir-down loc-29-28 loc-30-28)
	(move-dir-down loc-29-2 loc-30-2)
	(move-dir-down loc-29-31 loc-30-31)
	(move-dir-down loc-29-35 loc-30-35)
	(move-dir-down loc-29-39 loc-30-39)
	(move-dir-down loc-29-4 loc-30-4)
	(move-dir-down loc-29-6 loc-30-6)
	(move-dir-down loc-29-8 loc-30-8)
	(move-dir-down loc-3-13 loc-4-13)
	(move-dir-down loc-3-18 loc-4-18)
	(move-dir-down loc-3-20 loc-4-20)
	(move-dir-down loc-3-24 loc-4-24)
	(move-dir-down loc-3-27 loc-4-27)
	(move-dir-down loc-3-30 loc-4-30)
	(move-dir-down loc-3-32 loc-4-32)
	(move-dir-down loc-3-34 loc-4-34)
	(move-dir-down loc-3-38 loc-4-38)
	(move-dir-down loc-3-3 loc-4-3)
	(move-dir-down loc-3-40 loc-4-40)
	(move-dir-down loc-3-5 loc-4-5)
	(move-dir-down loc-3-9 loc-4-9)
	(move-dir-down loc-30-10 loc-31-10)
	(move-dir-down loc-30-12 loc-31-12)
	(move-dir-down loc-30-16 loc-31-16)
	(move-dir-down loc-30-18 loc-31-18)
	(move-dir-down loc-30-20 loc-31-20)
	(move-dir-down loc-30-22 loc-31-22)
	(move-dir-down loc-30-25 loc-31-25)
	(move-dir-down loc-30-28 loc-31-28)
	(move-dir-down loc-30-2 loc-31-2)
	(move-dir-down loc-30-32 loc-31-32)
	(move-dir-down loc-30-35 loc-31-35)
	(move-dir-down loc-30-37 loc-31-37)
	(move-dir-down loc-30-39 loc-31-39)
	(move-dir-down loc-30-6 loc-31-6)
	(move-dir-down loc-30-8 loc-31-8)
	(move-dir-down loc-31-10 loc-32-10)
	(move-dir-down loc-31-16 loc-32-16)
	(move-dir-down loc-31-18 loc-32-18)
	(move-dir-down loc-31-22 loc-32-22)
	(move-dir-down loc-31-25 loc-32-25)
	(move-dir-down loc-31-27 loc-32-27)
	(move-dir-down loc-31-29 loc-32-29)
	(move-dir-down loc-31-2 loc-32-2)
	(move-dir-down loc-31-32 loc-32-32)
	(move-dir-down loc-31-35 loc-32-35)
	(move-dir-down loc-31-37 loc-32-37)
	(move-dir-down loc-31-40 loc-32-40)
	(move-dir-down loc-32-10 loc-33-10)
	(move-dir-down loc-32-14 loc-33-14)
	(move-dir-down loc-32-16 loc-33-16)
	(move-dir-down loc-32-22 loc-33-22)
	(move-dir-down loc-32-27 loc-33-27)
	(move-dir-down loc-32-2 loc-33-2)
	(move-dir-down loc-32-31 loc-33-31)
	(move-dir-down loc-32-34 loc-33-34)
	(move-dir-down loc-32-37 loc-33-37)
	(move-dir-down loc-32-40 loc-33-40)
	(move-dir-down loc-32-4 loc-33-4)
	(move-dir-down loc-32-7 loc-33-7)
	(move-dir-down loc-33-12 loc-34-12)
	(move-dir-down loc-33-14 loc-34-14)
	(move-dir-down loc-33-19 loc-34-19)
	(move-dir-down loc-33-24 loc-34-24)
	(move-dir-down loc-33-26 loc-34-26)
	(move-dir-down loc-33-2 loc-34-2)
	(move-dir-down loc-33-30 loc-34-30)
	(move-dir-down loc-33-34 loc-34-34)
	(move-dir-down loc-33-36 loc-34-36)
	(move-dir-down loc-33-38 loc-34-38)
	(move-dir-down loc-33-4 loc-34-4)
	(move-dir-down loc-33-8 loc-34-8)
	(move-dir-down loc-34-11 loc-35-11)
	(move-dir-down loc-34-15 loc-35-15)
	(move-dir-down loc-34-19 loc-35-19)
	(move-dir-down loc-34-21 loc-35-21)
	(move-dir-down loc-34-24 loc-35-24)
	(move-dir-down loc-34-28 loc-35-28)
	(move-dir-down loc-34-2 loc-35-2)
	(move-dir-down loc-34-30 loc-35-30)
	(move-dir-down loc-34-32 loc-35-32)
	(move-dir-down loc-34-38 loc-35-38)
	(move-dir-down loc-34-6 loc-35-6)
	(move-dir-down loc-34-9 loc-35-9)
	(move-dir-down loc-35-10 loc-36-10)
	(move-dir-down loc-35-13 loc-36-13)
	(move-dir-down loc-35-17 loc-36-17)
	(move-dir-down loc-35-20 loc-36-20)
	(move-dir-down loc-35-23 loc-36-23)
	(move-dir-down loc-35-27 loc-36-27)
	(move-dir-down loc-35-29 loc-36-29)
	(move-dir-down loc-35-2 loc-36-2)
	(move-dir-down loc-35-31 loc-36-31)
	(move-dir-down loc-35-33 loc-36-33)
	(move-dir-down loc-35-35 loc-36-35)
	(move-dir-down loc-35-38 loc-36-38)
	(move-dir-down loc-35-40 loc-36-40)
	(move-dir-down loc-35-7 loc-36-7)
	(move-dir-down loc-36-10 loc-37-10)
	(move-dir-down loc-36-14 loc-37-14)
	(move-dir-down loc-36-17 loc-37-17)
	(move-dir-down loc-36-20 loc-37-20)
	(move-dir-down loc-36-23 loc-37-23)
	(move-dir-down loc-36-26 loc-37-26)
	(move-dir-down loc-36-31 loc-37-31)
	(move-dir-down loc-36-33 loc-37-33)
	(move-dir-down loc-36-36 loc-37-36)
	(move-dir-down loc-36-38 loc-37-38)
	(move-dir-down loc-36-4 loc-37-4)
	(move-dir-down loc-36-7 loc-37-7)
	(move-dir-down loc-37-10 loc-38-10)
	(move-dir-down loc-37-14 loc-38-14)
	(move-dir-down loc-37-18 loc-38-18)
	(move-dir-down loc-37-25 loc-38-25)
	(move-dir-down loc-37-28 loc-38-28)
	(move-dir-down loc-37-31 loc-38-31)
	(move-dir-down loc-37-33 loc-38-33)
	(move-dir-down loc-37-38 loc-38-38)
	(move-dir-down loc-37-4 loc-38-4)
	(move-dir-down loc-37-7 loc-38-7)
	(move-dir-down loc-38-11 loc-39-11)
	(move-dir-down loc-38-13 loc-39-13)
	(move-dir-down loc-38-15 loc-39-15)
	(move-dir-down loc-38-22 loc-39-22)
	(move-dir-down loc-38-25 loc-39-25)
	(move-dir-down loc-38-2 loc-39-2)
	(move-dir-down loc-38-31 loc-39-31)
	(move-dir-down loc-38-38 loc-39-38)
	(move-dir-down loc-38-40 loc-39-40)
	(move-dir-down loc-38-7 loc-39-7)
	(move-dir-down loc-38-9 loc-39-9)
	(move-dir-down loc-39-13 loc-40-13)
	(move-dir-down loc-39-16 loc-40-16)
	(move-dir-down loc-39-20 loc-40-20)
	(move-dir-down loc-39-22 loc-40-22)
	(move-dir-down loc-39-26 loc-40-26)
	(move-dir-down loc-39-32 loc-40-32)
	(move-dir-down loc-39-36 loc-40-36)
	(move-dir-down loc-39-39 loc-40-39)
	(move-dir-down loc-39-7 loc-40-7)
	(move-dir-down loc-39-9 loc-40-9)
	(move-dir-down loc-4-10 loc-5-10)
	(move-dir-down loc-4-15 loc-5-15)
	(move-dir-down loc-4-20 loc-5-20)
	(move-dir-down loc-4-24 loc-5-24)
	(move-dir-down loc-4-29 loc-5-29)
	(move-dir-down loc-4-34 loc-5-34)
	(move-dir-down loc-4-38 loc-5-38)
	(move-dir-down loc-4-40 loc-5-40)
	(move-dir-down loc-4-6 loc-5-6)
	(move-dir-down loc-5-10 loc-6-10)
	(move-dir-down loc-5-12 loc-6-12)
	(move-dir-down loc-5-14 loc-6-14)
	(move-dir-down loc-5-20 loc-6-20)
	(move-dir-down loc-5-22 loc-6-22)
	(move-dir-down loc-5-25 loc-6-25)
	(move-dir-down loc-5-29 loc-6-29)
	(move-dir-down loc-5-2 loc-6-2)
	(move-dir-down loc-5-31 loc-6-31)
	(move-dir-down loc-5-33 loc-6-33)
	(move-dir-down loc-5-40 loc-6-40)
	(move-dir-down loc-5-6 loc-6-6)
	(move-dir-down loc-5-8 loc-6-8)
	(move-dir-down loc-6-11 loc-7-11)
	(move-dir-down loc-6-14 loc-7-14)
	(move-dir-down loc-6-17 loc-7-17)
	(move-dir-down loc-6-20 loc-7-20)
	(move-dir-down loc-6-22 loc-7-22)
	(move-dir-down loc-6-25 loc-7-25)
	(move-dir-down loc-6-29 loc-7-29)
	(move-dir-down loc-6-2 loc-7-2)
	(move-dir-down loc-6-31 loc-7-31)
	(move-dir-down loc-6-33 loc-7-33)
	(move-dir-down loc-6-35 loc-7-35)
	(move-dir-down loc-6-37 loc-7-37)
	(move-dir-down loc-6-40 loc-7-40)
	(move-dir-down loc-6-6 loc-7-6)
	(move-dir-down loc-6-8 loc-7-8)
	(move-dir-down loc-7-11 loc-8-11)
	(move-dir-down loc-7-16 loc-8-16)
	(move-dir-down loc-7-20 loc-8-20)
	(move-dir-down loc-7-22 loc-8-22)
	(move-dir-down loc-7-25 loc-8-25)
	(move-dir-down loc-7-29 loc-8-29)
	(move-dir-down loc-7-37 loc-8-37)
	(move-dir-down loc-7-39 loc-8-39)
	(move-dir-down loc-7-4 loc-8-4)
	(move-dir-down loc-7-6 loc-8-6)
	(move-dir-down loc-7-8 loc-8-8)
	(move-dir-down loc-8-11 loc-9-11)
	(move-dir-down loc-8-16 loc-9-16)
	(move-dir-down loc-8-19 loc-9-19)
	(move-dir-down loc-8-22 loc-9-22)
	(move-dir-down loc-8-27 loc-9-27)
	(move-dir-down loc-8-29 loc-9-29)
	(move-dir-down loc-8-32 loc-9-32)
	(move-dir-down loc-8-34 loc-9-34)
	(move-dir-down loc-8-37 loc-9-37)
	(move-dir-down loc-8-4 loc-9-4)
	(move-dir-down loc-8-6 loc-9-6)
	(move-dir-down loc-9-14 loc-10-14)
	(move-dir-down loc-9-16 loc-10-16)
	(move-dir-down loc-9-22 loc-10-22)
	(move-dir-down loc-9-24 loc-10-24)
	(move-dir-down loc-9-26 loc-10-26)
	(move-dir-down loc-9-28 loc-10-28)
	(move-dir-down loc-9-2 loc-10-2)
	(move-dir-down loc-9-30 loc-10-30)
	(move-dir-down loc-9-34 loc-10-34)
	(move-dir-down loc-9-37 loc-10-37)
	(move-dir-down loc-9-40 loc-10-40)
	(move-dir-down loc-9-4 loc-10-4)
	(move-dir-down loc-9-7 loc-10-7)
	(move-dir-down loc-9-9 loc-10-9)
	(move-dir-left loc-10-10 loc-10-9)
	(move-dir-left loc-10-13 loc-10-12)
	(move-dir-left loc-10-14 loc-10-13)
	(move-dir-left loc-10-15 loc-10-14)
	(move-dir-left loc-10-16 loc-10-15)
	(move-dir-left loc-10-17 loc-10-16)
	(move-dir-left loc-10-18 loc-10-17)
	(move-dir-left loc-10-21 loc-10-20)
	(move-dir-left loc-10-22 loc-10-21)
	(move-dir-left loc-10-23 loc-10-22)
	(move-dir-left loc-10-24 loc-10-23)
	(move-dir-left loc-10-35 loc-10-34)
	(move-dir-left loc-10-38 loc-10-37)
	(move-dir-left loc-10-39 loc-10-38)
	(move-dir-left loc-10-3 loc-10-2)
	(move-dir-left loc-10-40 loc-10-39)
	(move-dir-left loc-10-4 loc-10-3)
	(move-dir-left loc-10-5 loc-10-4)
	(move-dir-left loc-11-28 loc-11-27)
	(move-dir-left loc-11-29 loc-11-28)
	(move-dir-left loc-11-32 loc-11-31)
	(move-dir-left loc-11-37 loc-11-36)
	(move-dir-left loc-11-6 loc-11-5)
	(move-dir-left loc-11-7 loc-11-6)
	(move-dir-left loc-11-8 loc-11-7)
	(move-dir-left loc-12-13 loc-12-12)
	(move-dir-left loc-12-16 loc-12-15)
	(move-dir-left loc-12-17 loc-12-16)
	(move-dir-left loc-12-21 loc-12-20)
	(move-dir-left loc-12-24 loc-12-23)
	(move-dir-left loc-12-25 loc-12-24)
	(move-dir-left loc-12-26 loc-12-25)
	(move-dir-left loc-12-27 loc-12-26)
	(move-dir-left loc-12-31 loc-12-30)
	(move-dir-left loc-12-36 loc-12-35)
	(move-dir-left loc-12-3 loc-12-2)
	(move-dir-left loc-12-40 loc-12-39)
	(move-dir-left loc-12-4 loc-12-3)
	(move-dir-left loc-13-10 loc-13-9)
	(move-dir-left loc-13-11 loc-13-10)
	(move-dir-left loc-13-15 loc-13-14)
	(move-dir-left loc-13-19 loc-13-18)
	(move-dir-left loc-13-20 loc-13-19)
	(move-dir-left loc-13-23 loc-13-22)
	(move-dir-left loc-13-29 loc-13-28)
	(move-dir-left loc-13-32 loc-13-31)
	(move-dir-left loc-13-33 loc-13-32)
	(move-dir-left loc-13-37 loc-13-36)
	(move-dir-left loc-13-38 loc-13-37)
	(move-dir-left loc-13-6 loc-13-5)
	(move-dir-left loc-13-7 loc-13-6)
	(move-dir-left loc-14-12 loc-14-11)
	(move-dir-left loc-14-18 loc-14-17)
	(move-dir-left loc-14-22 loc-14-21)
	(move-dir-left loc-14-25 loc-14-24)
	(move-dir-left loc-14-26 loc-14-25)
	(move-dir-left loc-14-30 loc-14-29)
	(move-dir-left loc-14-31 loc-14-30)
	(move-dir-left loc-14-5 loc-14-4)
	(move-dir-left loc-15-10 loc-15-9)
	(move-dir-left loc-15-16 loc-15-15)
	(move-dir-left loc-15-17 loc-15-16)
	(move-dir-left loc-15-20 loc-15-19)
	(move-dir-left loc-15-28 loc-15-27)
	(move-dir-left loc-15-32 loc-15-31)
	(move-dir-left loc-15-33 loc-15-32)
	(move-dir-left loc-15-34 loc-15-33)
	(move-dir-left loc-15-40 loc-15-39)
	(move-dir-left loc-15-8 loc-15-7)
	(move-dir-left loc-15-9 loc-15-8)
	(move-dir-left loc-16-11 loc-16-10)
	(move-dir-left loc-16-14 loc-16-13)
	(move-dir-left loc-16-15 loc-16-14)
	(move-dir-left loc-16-21 loc-16-20)
	(move-dir-left loc-16-26 loc-16-25)
	(move-dir-left loc-16-27 loc-16-26)
	(move-dir-left loc-16-38 loc-16-37)
	(move-dir-left loc-16-39 loc-16-38)
	(move-dir-left loc-16-3 loc-16-2)
	(move-dir-left loc-16-4 loc-16-3)
	(move-dir-left loc-16-5 loc-16-4)
	(move-dir-left loc-16-6 loc-16-5)
	(move-dir-left loc-16-7 loc-16-6)
	(move-dir-left loc-17-10 loc-17-9)
	(move-dir-left loc-17-13 loc-17-12)
	(move-dir-left loc-17-16 loc-17-15)
	(move-dir-left loc-17-23 loc-17-22)
	(move-dir-left loc-17-28 loc-17-27)
	(move-dir-left loc-17-34 loc-17-33)
	(move-dir-left loc-17-35 loc-17-34)
	(move-dir-left loc-17-36 loc-17-35)
	(move-dir-left loc-17-9 loc-17-8)
	(move-dir-left loc-18-11 loc-18-10)
	(move-dir-left loc-18-14 loc-18-13)
	(move-dir-left loc-18-21 loc-18-20)
	(move-dir-left loc-18-24 loc-18-23)
	(move-dir-left loc-18-25 loc-18-24)
	(move-dir-left loc-18-31 loc-18-30)
	(move-dir-left loc-18-32 loc-18-31)
	(move-dir-left loc-18-33 loc-18-32)
	(move-dir-left loc-18-39 loc-18-38)
	(move-dir-left loc-18-3 loc-18-2)
	(move-dir-left loc-18-40 loc-18-39)
	(move-dir-left loc-19-12 loc-19-11)
	(move-dir-left loc-19-19 loc-19-18)
	(move-dir-left loc-19-22 loc-19-21)
	(move-dir-left loc-19-36 loc-19-35)
	(move-dir-left loc-19-37 loc-19-36)
	(move-dir-left loc-19-38 loc-19-37)
	(move-dir-left loc-19-5 loc-19-4)
	(move-dir-left loc-19-6 loc-19-5)
	(move-dir-left loc-19-7 loc-19-6)
	(move-dir-left loc-19-8 loc-19-7)
	(move-dir-left loc-2-11 loc-2-10)
	(move-dir-left loc-2-15 loc-2-14)
	(move-dir-left loc-2-16 loc-2-15)
	(move-dir-left loc-2-17 loc-2-16)
	(move-dir-left loc-2-18 loc-2-17)
	(move-dir-left loc-2-19 loc-2-18)
	(move-dir-left loc-2-22 loc-2-21)
	(move-dir-left loc-2-28 loc-2-27)
	(move-dir-left loc-2-29 loc-2-28)
	(move-dir-left loc-2-30 loc-2-29)
	(move-dir-left loc-2-31 loc-2-30)
	(move-dir-left loc-2-32 loc-2-31)
	(move-dir-left loc-2-35 loc-2-34)
	(move-dir-left loc-2-36 loc-2-35)
	(move-dir-left loc-2-37 loc-2-36)
	(move-dir-left loc-2-38 loc-2-37)
	(move-dir-left loc-2-3 loc-2-2)
	(move-dir-left loc-20-10 loc-20-9)
	(move-dir-left loc-20-13 loc-20-12)
	(move-dir-left loc-20-14 loc-20-13)
	(move-dir-left loc-20-15 loc-20-14)
	(move-dir-left loc-20-16 loc-20-15)
	(move-dir-left loc-20-17 loc-20-16)
	(move-dir-left loc-20-20 loc-20-19)
	(move-dir-left loc-20-21 loc-20-20)
	(move-dir-left loc-20-24 loc-20-23)
	(move-dir-left loc-20-27 loc-20-26)
	(move-dir-left loc-20-30 loc-20-29)
	(move-dir-left loc-20-33 loc-20-32)
	(move-dir-left loc-20-34 loc-20-33)
	(move-dir-left loc-20-35 loc-20-34)
	(move-dir-left loc-20-39 loc-20-38)
	(move-dir-left loc-20-4 loc-20-3)
	(move-dir-left loc-20-9 loc-20-8)
	(move-dir-left loc-21-11 loc-21-10)
	(move-dir-left loc-21-18 loc-21-17)
	(move-dir-left loc-21-19 loc-21-18)
	(move-dir-left loc-21-23 loc-21-22)
	(move-dir-left loc-21-28 loc-21-27)
	(move-dir-left loc-21-29 loc-21-28)
	(move-dir-left loc-21-37 loc-21-36)
	(move-dir-left loc-21-40 loc-21-39)
	(move-dir-left loc-21-8 loc-21-7)
	(move-dir-left loc-22-10 loc-22-9)
	(move-dir-left loc-22-17 loc-22-16)
	(move-dir-left loc-22-20 loc-22-19)
	(move-dir-left loc-22-25 loc-22-24)
	(move-dir-left loc-22-31 loc-22-30)
	(move-dir-left loc-22-32 loc-22-31)
	(move-dir-left loc-22-33 loc-22-32)
	(move-dir-left loc-22-34 loc-22-33)
	(move-dir-left loc-22-35 loc-22-34)
	(move-dir-left loc-22-36 loc-22-35)
	(move-dir-left loc-22-3 loc-22-2)
	(move-dir-left loc-22-4 loc-22-3)
	(move-dir-left loc-22-7 loc-22-6)
	(move-dir-left loc-23-15 loc-23-14)
	(move-dir-left loc-23-22 loc-23-21)
	(move-dir-left loc-23-23 loc-23-22)
	(move-dir-left loc-23-24 loc-23-23)
	(move-dir-left loc-23-27 loc-23-26)
	(move-dir-left loc-23-28 loc-23-27)
	(move-dir-left loc-23-37 loc-23-36)
	(move-dir-left loc-23-40 loc-23-39)
	(move-dir-left loc-24-11 loc-24-10)
	(move-dir-left loc-24-12 loc-24-11)
	(move-dir-left loc-24-16 loc-24-15)
	(move-dir-left loc-24-17 loc-24-16)
	(move-dir-left loc-24-18 loc-24-17)
	(move-dir-left loc-24-19 loc-24-18)
	(move-dir-left loc-24-29 loc-24-28)
	(move-dir-left loc-24-30 loc-24-29)
	(move-dir-left loc-24-31 loc-24-30)
	(move-dir-left loc-24-32 loc-24-31)
	(move-dir-left loc-24-33 loc-24-32)
	(move-dir-left loc-24-34 loc-24-33)
	(move-dir-left loc-24-3 loc-24-2)
	(move-dir-left loc-24-6 loc-24-5)
	(move-dir-left loc-24-7 loc-24-6)
	(move-dir-left loc-24-8 loc-24-7)
	(move-dir-left loc-25-13 loc-25-12)
	(move-dir-left loc-25-14 loc-25-13)
	(move-dir-left loc-25-22 loc-25-21)
	(move-dir-left loc-25-25 loc-25-24)
	(move-dir-left loc-25-26 loc-25-25)
	(move-dir-left loc-25-27 loc-25-26)
	(move-dir-left loc-25-36 loc-25-35)
	(move-dir-left loc-25-37 loc-25-36)
	(move-dir-left loc-25-38 loc-25-37)
	(move-dir-left loc-25-4 loc-25-3)
	(move-dir-left loc-26-16 loc-26-15)
	(move-dir-left loc-26-19 loc-26-18)
	(move-dir-left loc-26-30 loc-26-29)
	(move-dir-left loc-26-33 loc-26-32)
	(move-dir-left loc-26-3 loc-26-2)
	(move-dir-left loc-27-10 loc-27-9)
	(move-dir-left loc-27-11 loc-27-10)
	(move-dir-left loc-27-12 loc-27-11)
	(move-dir-left loc-27-13 loc-27-12)
	(move-dir-left loc-27-14 loc-27-13)
	(move-dir-left loc-27-15 loc-27-14)
	(move-dir-left loc-27-24 loc-27-23)
	(move-dir-left loc-27-27 loc-27-26)
	(move-dir-left loc-27-28 loc-27-27)
	(move-dir-left loc-27-31 loc-27-30)
	(move-dir-left loc-27-32 loc-27-31)
	(move-dir-left loc-27-35 loc-27-34)
	(move-dir-left loc-27-36 loc-27-35)
	(move-dir-left loc-27-37 loc-27-36)
	(move-dir-left loc-27-38 loc-27-37)
	(move-dir-left loc-27-39 loc-27-38)
	(move-dir-left loc-27-40 loc-27-39)
	(move-dir-left loc-28-16 loc-28-15)
	(move-dir-left loc-28-21 loc-28-20)
	(move-dir-left loc-28-22 loc-28-21)
	(move-dir-left loc-28-30 loc-28-29)
	(move-dir-left loc-28-33 loc-28-32)
	(move-dir-left loc-28-6 loc-28-5)
	(move-dir-left loc-28-7 loc-28-6)
	(move-dir-left loc-28-8 loc-28-7)
	(move-dir-left loc-28-9 loc-28-8)
	(move-dir-left loc-29-11 loc-29-10)
	(move-dir-left loc-29-18 loc-29-17)
	(move-dir-left loc-29-19 loc-29-18)
	(move-dir-left loc-29-20 loc-29-19)
	(move-dir-left loc-29-29 loc-29-28)
	(move-dir-left loc-29-39 loc-29-38)
	(move-dir-left loc-29-3 loc-29-2)
	(move-dir-left loc-29-40 loc-29-39)
	(move-dir-left loc-29-4 loc-29-3)
	(move-dir-left loc-3-12 loc-3-11)
	(move-dir-left loc-3-13 loc-3-12)
	(move-dir-left loc-3-14 loc-3-13)
	(move-dir-left loc-3-23 loc-3-22)
	(move-dir-left loc-3-24 loc-3-23)
	(move-dir-left loc-3-25 loc-3-24)
	(move-dir-left loc-3-26 loc-3-25)
	(move-dir-left loc-3-27 loc-3-26)
	(move-dir-left loc-3-33 loc-3-32)
	(move-dir-left loc-3-34 loc-3-33)
	(move-dir-left loc-3-39 loc-3-38)
	(move-dir-left loc-3-40 loc-3-39)
	(move-dir-left loc-3-4 loc-3-3)
	(move-dir-left loc-3-5 loc-3-4)
	(move-dir-left loc-3-8 loc-3-7)
	(move-dir-left loc-3-9 loc-3-8)
	(move-dir-left loc-30-10 loc-30-9)
	(move-dir-left loc-30-13 loc-30-12)
	(move-dir-left loc-30-14 loc-30-13)
	(move-dir-left loc-30-15 loc-30-14)
	(move-dir-left loc-30-16 loc-30-15)
	(move-dir-left loc-30-25 loc-30-24)
	(move-dir-left loc-30-32 loc-30-31)
	(move-dir-left loc-30-35 loc-30-34)
	(move-dir-left loc-30-36 loc-30-35)
	(move-dir-left loc-30-37 loc-30-36)
	(move-dir-left loc-30-5 loc-30-4)
	(move-dir-left loc-30-6 loc-30-5)
	(move-dir-left loc-30-9 loc-30-8)
	(move-dir-left loc-31-17 loc-31-16)
	(move-dir-left loc-31-18 loc-31-17)
	(move-dir-left loc-31-23 loc-31-22)
	(move-dir-left loc-31-26 loc-31-25)
	(move-dir-left loc-31-27 loc-31-26)
	(move-dir-left loc-31-28 loc-31-27)
	(move-dir-left loc-31-29 loc-31-28)
	(move-dir-left loc-31-30 loc-31-29)
	(move-dir-left loc-31-33 loc-31-32)
	(move-dir-left loc-31-38 loc-31-37)
	(move-dir-left loc-31-39 loc-31-38)
	(move-dir-left loc-31-3 loc-31-2)
	(move-dir-left loc-31-40 loc-31-39)
	(move-dir-left loc-32-10 loc-32-9)
	(move-dir-left loc-32-11 loc-32-10)
	(move-dir-left loc-32-14 loc-32-13)
	(move-dir-left loc-32-22 loc-32-21)
	(move-dir-left loc-32-32 loc-32-31)
	(move-dir-left loc-32-35 loc-32-34)
	(move-dir-left loc-32-5 loc-32-4)
	(move-dir-left loc-33-17 loc-33-16)
	(move-dir-left loc-33-20 loc-33-19)
	(move-dir-left loc-33-23 loc-33-22)
	(move-dir-left loc-33-24 loc-33-23)
	(move-dir-left loc-33-27 loc-33-26)
	(move-dir-left loc-33-31 loc-33-30)
	(move-dir-left loc-33-34 loc-33-33)
	(move-dir-left loc-33-37 loc-33-36)
	(move-dir-left loc-33-38 loc-33-37)
	(move-dir-left loc-33-8 loc-33-7)
	(move-dir-left loc-34-12 loc-34-11)
	(move-dir-left loc-34-15 loc-34-14)
	(move-dir-left loc-34-25 loc-34-24)
	(move-dir-left loc-34-26 loc-34-25)
	(move-dir-left loc-34-5 loc-34-4)
	(move-dir-left loc-34-6 loc-34-5)
	(move-dir-left loc-34-9 loc-34-8)
	(move-dir-left loc-35-10 loc-35-9)
	(move-dir-left loc-35-11 loc-35-10)
	(move-dir-left loc-35-16 loc-35-15)
	(move-dir-left loc-35-17 loc-35-16)
	(move-dir-left loc-35-18 loc-35-17)
	(move-dir-left loc-35-19 loc-35-18)
	(move-dir-left loc-35-20 loc-35-19)
	(move-dir-left loc-35-21 loc-35-20)
	(move-dir-left loc-35-22 loc-35-21)
	(move-dir-left loc-35-23 loc-35-22)
	(move-dir-left loc-35-24 loc-35-23)
	(move-dir-left loc-35-28 loc-35-27)
	(move-dir-left loc-35-29 loc-35-28)
	(move-dir-left loc-35-30 loc-35-29)
	(move-dir-left loc-35-31 loc-35-30)
	(move-dir-left loc-35-32 loc-35-31)
	(move-dir-left loc-35-33 loc-35-32)
	(move-dir-left loc-35-39 loc-35-38)
	(move-dir-left loc-35-40 loc-35-39)
	(move-dir-left loc-35-7 loc-35-6)
	(move-dir-left loc-36-13 loc-36-12)
	(move-dir-left loc-36-14 loc-36-13)
	(move-dir-left loc-36-27 loc-36-26)
	(move-dir-left loc-36-34 loc-36-33)
	(move-dir-left loc-36-35 loc-36-34)
	(move-dir-left loc-36-36 loc-36-35)
	(move-dir-left loc-36-37 loc-36-36)
	(move-dir-left loc-36-38 loc-36-37)
	(move-dir-left loc-36-3 loc-36-2)
	(move-dir-left loc-36-4 loc-36-3)
	(move-dir-left loc-36-5 loc-36-4)
	(move-dir-left loc-36-8 loc-36-7)
	(move-dir-left loc-37-17 loc-37-16)
	(move-dir-left loc-37-18 loc-37-17)
	(move-dir-left loc-37-21 loc-37-20)
	(move-dir-left loc-37-26 loc-37-25)
	(move-dir-left loc-37-39 loc-37-38)
	(move-dir-left loc-38-10 loc-38-9)
	(move-dir-left loc-38-11 loc-38-10)
	(move-dir-left loc-38-12 loc-38-11)
	(move-dir-left loc-38-13 loc-38-12)
	(move-dir-left loc-38-14 loc-38-13)
	(move-dir-left loc-38-15 loc-38-14)
	(move-dir-left loc-38-19 loc-38-18)
	(move-dir-left loc-38-25 loc-38-24)
	(move-dir-left loc-38-28 loc-38-27)
	(move-dir-left loc-38-29 loc-38-28)
	(move-dir-left loc-38-30 loc-38-29)
	(move-dir-left loc-38-31 loc-38-30)
	(move-dir-left loc-38-34 loc-38-33)
	(move-dir-left loc-38-3 loc-38-2)
	(move-dir-left loc-38-4 loc-38-3)
	(move-dir-left loc-38-5 loc-38-4)
	(move-dir-left loc-38-6 loc-38-5)
	(move-dir-left loc-38-7 loc-38-6)
	(move-dir-left loc-38-8 loc-38-7)
	(move-dir-left loc-38-9 loc-38-8)
	(move-dir-left loc-39-16 loc-39-15)
	(move-dir-left loc-39-21 loc-39-20)
	(move-dir-left loc-39-22 loc-39-21)
	(move-dir-left loc-39-26 loc-39-25)
	(move-dir-left loc-39-32 loc-39-31)
	(move-dir-left loc-39-36 loc-39-35)
	(move-dir-left loc-39-37 loc-39-36)
	(move-dir-left loc-39-38 loc-39-37)
	(move-dir-left loc-39-39 loc-39-38)
	(move-dir-left loc-39-40 loc-39-39)
	(move-dir-left loc-4-10 loc-4-9)
	(move-dir-left loc-4-18 loc-4-17)
	(move-dir-left loc-4-19 loc-4-18)
	(move-dir-left loc-4-20 loc-4-19)
	(move-dir-left loc-4-21 loc-4-20)
	(move-dir-left loc-4-30 loc-4-29)
	(move-dir-left loc-4-35 loc-4-34)
	(move-dir-left loc-4-38 loc-4-37)
	(move-dir-left loc-4-6 loc-4-5)
	(move-dir-left loc-40-10 loc-40-9)
	(move-dir-left loc-40-13 loc-40-12)
	(move-dir-left loc-40-14 loc-40-13)
	(move-dir-left loc-40-17 loc-40-16)
	(move-dir-left loc-40-18 loc-40-17)
	(move-dir-left loc-40-19 loc-40-18)
	(move-dir-left loc-40-20 loc-40-19)
	(move-dir-left loc-40-23 loc-40-22)
	(move-dir-left loc-40-24 loc-40-23)
	(move-dir-left loc-40-27 loc-40-26)
	(move-dir-left loc-40-28 loc-40-27)
	(move-dir-left loc-40-29 loc-40-28)
	(move-dir-left loc-40-30 loc-40-29)
	(move-dir-left loc-40-33 loc-40-32)
	(move-dir-left loc-40-34 loc-40-33)
	(move-dir-left loc-40-4 loc-40-3)
	(move-dir-left loc-40-5 loc-40-4)
	(move-dir-left loc-40-6 loc-40-5)
	(move-dir-left loc-40-7 loc-40-6)
	(move-dir-left loc-5-15 loc-5-14)
	(move-dir-left loc-5-16 loc-5-15)
	(move-dir-left loc-5-23 loc-5-22)
	(move-dir-left loc-5-24 loc-5-23)
	(move-dir-left loc-5-25 loc-5-24)
	(move-dir-left loc-5-29 loc-5-28)
	(move-dir-left loc-5-34 loc-5-33)
	(move-dir-left loc-6-10 loc-6-9)
	(move-dir-left loc-6-11 loc-6-10)
	(move-dir-left loc-6-12 loc-6-11)
	(move-dir-left loc-6-13 loc-6-12)
	(move-dir-left loc-6-14 loc-6-13)
	(move-dir-left loc-6-18 loc-6-17)
	(move-dir-left loc-6-19 loc-6-18)
	(move-dir-left loc-6-20 loc-6-19)
	(move-dir-left loc-6-21 loc-6-20)
	(move-dir-left loc-6-22 loc-6-21)
	(move-dir-left loc-6-26 loc-6-25)
	(move-dir-left loc-6-27 loc-6-26)
	(move-dir-left loc-6-32 loc-6-31)
	(move-dir-left loc-6-33 loc-6-32)
	(move-dir-left loc-6-6 loc-6-5)
	(move-dir-left loc-6-9 loc-6-8)
	(move-dir-left loc-7-15 loc-7-14)
	(move-dir-left loc-7-16 loc-7-15)
	(move-dir-left loc-7-17 loc-7-16)
	(move-dir-left loc-7-25 loc-7-24)
	(move-dir-left loc-7-29 loc-7-28)
	(move-dir-left loc-7-36 loc-7-35)
	(move-dir-left loc-7-37 loc-7-36)
	(move-dir-left loc-7-38 loc-7-37)
	(move-dir-left loc-7-39 loc-7-38)
	(move-dir-left loc-7-3 loc-7-2)
	(move-dir-left loc-7-40 loc-7-39)
	(move-dir-left loc-7-4 loc-7-3)
	(move-dir-left loc-8-11 loc-8-10)
	(move-dir-left loc-8-12 loc-8-11)
	(move-dir-left loc-8-13 loc-8-12)
	(move-dir-left loc-8-19 loc-8-18)
	(move-dir-left loc-8-20 loc-8-19)
	(move-dir-left loc-8-23 loc-8-22)
	(move-dir-left loc-9-27 loc-9-26)
	(move-dir-left loc-9-28 loc-9-27)
	(move-dir-left loc-9-29 loc-9-28)
	(move-dir-left loc-9-30 loc-9-29)
	(move-dir-left loc-9-31 loc-9-30)
	(move-dir-left loc-9-32 loc-9-31)
	(move-dir-left loc-9-33 loc-9-32)
	(move-dir-left loc-9-34 loc-9-33)
	(move-dir-left loc-9-37 loc-9-36)
	(move-dir-left loc-9-7 loc-9-6)
	(move-dir-right loc-10-12 loc-10-13)
	(move-dir-right loc-10-13 loc-10-14)
	(move-dir-right loc-10-14 loc-10-15)
	(move-dir-right loc-10-15 loc-10-16)
	(move-dir-right loc-10-16 loc-10-17)
	(move-dir-right loc-10-17 loc-10-18)
	(move-dir-right loc-10-20 loc-10-21)
	(move-dir-right loc-10-21 loc-10-22)
	(move-dir-right loc-10-22 loc-10-23)
	(move-dir-right loc-10-23 loc-10-24)
	(move-dir-right loc-10-2 loc-10-3)
	(move-dir-right loc-10-34 loc-10-35)
	(move-dir-right loc-10-37 loc-10-38)
	(move-dir-right loc-10-38 loc-10-39)
	(move-dir-right loc-10-39 loc-10-40)
	(move-dir-right loc-10-3 loc-10-4)
	(move-dir-right loc-10-4 loc-10-5)
	(move-dir-right loc-10-9 loc-10-10)
	(move-dir-right loc-11-27 loc-11-28)
	(move-dir-right loc-11-28 loc-11-29)
	(move-dir-right loc-11-31 loc-11-32)
	(move-dir-right loc-11-36 loc-11-37)
	(move-dir-right loc-11-5 loc-11-6)
	(move-dir-right loc-11-6 loc-11-7)
	(move-dir-right loc-11-7 loc-11-8)
	(move-dir-right loc-12-12 loc-12-13)
	(move-dir-right loc-12-15 loc-12-16)
	(move-dir-right loc-12-16 loc-12-17)
	(move-dir-right loc-12-20 loc-12-21)
	(move-dir-right loc-12-23 loc-12-24)
	(move-dir-right loc-12-24 loc-12-25)
	(move-dir-right loc-12-25 loc-12-26)
	(move-dir-right loc-12-26 loc-12-27)
	(move-dir-right loc-12-2 loc-12-3)
	(move-dir-right loc-12-30 loc-12-31)
	(move-dir-right loc-12-35 loc-12-36)
	(move-dir-right loc-12-39 loc-12-40)
	(move-dir-right loc-12-3 loc-12-4)
	(move-dir-right loc-13-10 loc-13-11)
	(move-dir-right loc-13-14 loc-13-15)
	(move-dir-right loc-13-18 loc-13-19)
	(move-dir-right loc-13-19 loc-13-20)
	(move-dir-right loc-13-22 loc-13-23)
	(move-dir-right loc-13-28 loc-13-29)
	(move-dir-right loc-13-31 loc-13-32)
	(move-dir-right loc-13-32 loc-13-33)
	(move-dir-right loc-13-36 loc-13-37)
	(move-dir-right loc-13-37 loc-13-38)
	(move-dir-right loc-13-5 loc-13-6)
	(move-dir-right loc-13-6 loc-13-7)
	(move-dir-right loc-13-9 loc-13-10)
	(move-dir-right loc-14-11 loc-14-12)
	(move-dir-right loc-14-17 loc-14-18)
	(move-dir-right loc-14-21 loc-14-22)
	(move-dir-right loc-14-24 loc-14-25)
	(move-dir-right loc-14-25 loc-14-26)
	(move-dir-right loc-14-29 loc-14-30)
	(move-dir-right loc-14-30 loc-14-31)
	(move-dir-right loc-14-4 loc-14-5)
	(move-dir-right loc-15-15 loc-15-16)
	(move-dir-right loc-15-16 loc-15-17)
	(move-dir-right loc-15-19 loc-15-20)
	(move-dir-right loc-15-27 loc-15-28)
	(move-dir-right loc-15-31 loc-15-32)
	(move-dir-right loc-15-32 loc-15-33)
	(move-dir-right loc-15-33 loc-15-34)
	(move-dir-right loc-15-39 loc-15-40)
	(move-dir-right loc-15-7 loc-15-8)
	(move-dir-right loc-15-8 loc-15-9)
	(move-dir-right loc-15-9 loc-15-10)
	(move-dir-right loc-16-10 loc-16-11)
	(move-dir-right loc-16-13 loc-16-14)
	(move-dir-right loc-16-14 loc-16-15)
	(move-dir-right loc-16-20 loc-16-21)
	(move-dir-right loc-16-25 loc-16-26)
	(move-dir-right loc-16-26 loc-16-27)
	(move-dir-right loc-16-2 loc-16-3)
	(move-dir-right loc-16-37 loc-16-38)
	(move-dir-right loc-16-38 loc-16-39)
	(move-dir-right loc-16-3 loc-16-4)
	(move-dir-right loc-16-4 loc-16-5)
	(move-dir-right loc-16-5 loc-16-6)
	(move-dir-right loc-16-6 loc-16-7)
	(move-dir-right loc-17-12 loc-17-13)
	(move-dir-right loc-17-15 loc-17-16)
	(move-dir-right loc-17-22 loc-17-23)
	(move-dir-right loc-17-27 loc-17-28)
	(move-dir-right loc-17-33 loc-17-34)
	(move-dir-right loc-17-34 loc-17-35)
	(move-dir-right loc-17-35 loc-17-36)
	(move-dir-right loc-17-8 loc-17-9)
	(move-dir-right loc-17-9 loc-17-10)
	(move-dir-right loc-18-10 loc-18-11)
	(move-dir-right loc-18-13 loc-18-14)
	(move-dir-right loc-18-20 loc-18-21)
	(move-dir-right loc-18-23 loc-18-24)
	(move-dir-right loc-18-24 loc-18-25)
	(move-dir-right loc-18-2 loc-18-3)
	(move-dir-right loc-18-30 loc-18-31)
	(move-dir-right loc-18-31 loc-18-32)
	(move-dir-right loc-18-32 loc-18-33)
	(move-dir-right loc-18-38 loc-18-39)
	(move-dir-right loc-18-39 loc-18-40)
	(move-dir-right loc-19-11 loc-19-12)
	(move-dir-right loc-19-18 loc-19-19)
	(move-dir-right loc-19-21 loc-19-22)
	(move-dir-right loc-19-35 loc-19-36)
	(move-dir-right loc-19-36 loc-19-37)
	(move-dir-right loc-19-37 loc-19-38)
	(move-dir-right loc-19-4 loc-19-5)
	(move-dir-right loc-19-5 loc-19-6)
	(move-dir-right loc-19-6 loc-19-7)
	(move-dir-right loc-19-7 loc-19-8)
	(move-dir-right loc-2-10 loc-2-11)
	(move-dir-right loc-2-14 loc-2-15)
	(move-dir-right loc-2-15 loc-2-16)
	(move-dir-right loc-2-16 loc-2-17)
	(move-dir-right loc-2-17 loc-2-18)
	(move-dir-right loc-2-18 loc-2-19)
	(move-dir-right loc-2-21 loc-2-22)
	(move-dir-right loc-2-27 loc-2-28)
	(move-dir-right loc-2-28 loc-2-29)
	(move-dir-right loc-2-29 loc-2-30)
	(move-dir-right loc-2-2 loc-2-3)
	(move-dir-right loc-2-30 loc-2-31)
	(move-dir-right loc-2-31 loc-2-32)
	(move-dir-right loc-2-34 loc-2-35)
	(move-dir-right loc-2-35 loc-2-36)
	(move-dir-right loc-2-36 loc-2-37)
	(move-dir-right loc-2-37 loc-2-38)
	(move-dir-right loc-20-12 loc-20-13)
	(move-dir-right loc-20-13 loc-20-14)
	(move-dir-right loc-20-14 loc-20-15)
	(move-dir-right loc-20-15 loc-20-16)
	(move-dir-right loc-20-16 loc-20-17)
	(move-dir-right loc-20-19 loc-20-20)
	(move-dir-right loc-20-20 loc-20-21)
	(move-dir-right loc-20-23 loc-20-24)
	(move-dir-right loc-20-26 loc-20-27)
	(move-dir-right loc-20-29 loc-20-30)
	(move-dir-right loc-20-32 loc-20-33)
	(move-dir-right loc-20-33 loc-20-34)
	(move-dir-right loc-20-34 loc-20-35)
	(move-dir-right loc-20-38 loc-20-39)
	(move-dir-right loc-20-3 loc-20-4)
	(move-dir-right loc-20-8 loc-20-9)
	(move-dir-right loc-20-9 loc-20-10)
	(move-dir-right loc-21-10 loc-21-11)
	(move-dir-right loc-21-17 loc-21-18)
	(move-dir-right loc-21-18 loc-21-19)
	(move-dir-right loc-21-22 loc-21-23)
	(move-dir-right loc-21-27 loc-21-28)
	(move-dir-right loc-21-28 loc-21-29)
	(move-dir-right loc-21-36 loc-21-37)
	(move-dir-right loc-21-39 loc-21-40)
	(move-dir-right loc-21-7 loc-21-8)
	(move-dir-right loc-22-16 loc-22-17)
	(move-dir-right loc-22-19 loc-22-20)
	(move-dir-right loc-22-24 loc-22-25)
	(move-dir-right loc-22-2 loc-22-3)
	(move-dir-right loc-22-30 loc-22-31)
	(move-dir-right loc-22-31 loc-22-32)
	(move-dir-right loc-22-32 loc-22-33)
	(move-dir-right loc-22-33 loc-22-34)
	(move-dir-right loc-22-34 loc-22-35)
	(move-dir-right loc-22-35 loc-22-36)
	(move-dir-right loc-22-3 loc-22-4)
	(move-dir-right loc-22-6 loc-22-7)
	(move-dir-right loc-22-9 loc-22-10)
	(move-dir-right loc-23-14 loc-23-15)
	(move-dir-right loc-23-21 loc-23-22)
	(move-dir-right loc-23-22 loc-23-23)
	(move-dir-right loc-23-23 loc-23-24)
	(move-dir-right loc-23-26 loc-23-27)
	(move-dir-right loc-23-27 loc-23-28)
	(move-dir-right loc-23-36 loc-23-37)
	(move-dir-right loc-23-39 loc-23-40)
	(move-dir-right loc-24-10 loc-24-11)
	(move-dir-right loc-24-11 loc-24-12)
	(move-dir-right loc-24-15 loc-24-16)
	(move-dir-right loc-24-16 loc-24-17)
	(move-dir-right loc-24-17 loc-24-18)
	(move-dir-right loc-24-18 loc-24-19)
	(move-dir-right loc-24-28 loc-24-29)
	(move-dir-right loc-24-29 loc-24-30)
	(move-dir-right loc-24-2 loc-24-3)
	(move-dir-right loc-24-30 loc-24-31)
	(move-dir-right loc-24-31 loc-24-32)
	(move-dir-right loc-24-32 loc-24-33)
	(move-dir-right loc-24-33 loc-24-34)
	(move-dir-right loc-24-5 loc-24-6)
	(move-dir-right loc-24-6 loc-24-7)
	(move-dir-right loc-24-7 loc-24-8)
	(move-dir-right loc-25-12 loc-25-13)
	(move-dir-right loc-25-13 loc-25-14)
	(move-dir-right loc-25-21 loc-25-22)
	(move-dir-right loc-25-24 loc-25-25)
	(move-dir-right loc-25-25 loc-25-26)
	(move-dir-right loc-25-26 loc-25-27)
	(move-dir-right loc-25-35 loc-25-36)
	(move-dir-right loc-25-36 loc-25-37)
	(move-dir-right loc-25-37 loc-25-38)
	(move-dir-right loc-25-3 loc-25-4)
	(move-dir-right loc-26-15 loc-26-16)
	(move-dir-right loc-26-18 loc-26-19)
	(move-dir-right loc-26-29 loc-26-30)
	(move-dir-right loc-26-2 loc-26-3)
	(move-dir-right loc-26-32 loc-26-33)
	(move-dir-right loc-27-10 loc-27-11)
	(move-dir-right loc-27-11 loc-27-12)
	(move-dir-right loc-27-12 loc-27-13)
	(move-dir-right loc-27-13 loc-27-14)
	(move-dir-right loc-27-14 loc-27-15)
	(move-dir-right loc-27-23 loc-27-24)
	(move-dir-right loc-27-26 loc-27-27)
	(move-dir-right loc-27-27 loc-27-28)
	(move-dir-right loc-27-30 loc-27-31)
	(move-dir-right loc-27-31 loc-27-32)
	(move-dir-right loc-27-34 loc-27-35)
	(move-dir-right loc-27-35 loc-27-36)
	(move-dir-right loc-27-36 loc-27-37)
	(move-dir-right loc-27-37 loc-27-38)
	(move-dir-right loc-27-38 loc-27-39)
	(move-dir-right loc-27-39 loc-27-40)
	(move-dir-right loc-27-9 loc-27-10)
	(move-dir-right loc-28-15 loc-28-16)
	(move-dir-right loc-28-20 loc-28-21)
	(move-dir-right loc-28-21 loc-28-22)
	(move-dir-right loc-28-29 loc-28-30)
	(move-dir-right loc-28-32 loc-28-33)
	(move-dir-right loc-28-5 loc-28-6)
	(move-dir-right loc-28-6 loc-28-7)
	(move-dir-right loc-28-7 loc-28-8)
	(move-dir-right loc-28-8 loc-28-9)
	(move-dir-right loc-29-10 loc-29-11)
	(move-dir-right loc-29-17 loc-29-18)
	(move-dir-right loc-29-18 loc-29-19)
	(move-dir-right loc-29-19 loc-29-20)
	(move-dir-right loc-29-28 loc-29-29)
	(move-dir-right loc-29-2 loc-29-3)
	(move-dir-right loc-29-38 loc-29-39)
	(move-dir-right loc-29-39 loc-29-40)
	(move-dir-right loc-29-3 loc-29-4)
	(move-dir-right loc-3-11 loc-3-12)
	(move-dir-right loc-3-12 loc-3-13)
	(move-dir-right loc-3-13 loc-3-14)
	(move-dir-right loc-3-22 loc-3-23)
	(move-dir-right loc-3-23 loc-3-24)
	(move-dir-right loc-3-24 loc-3-25)
	(move-dir-right loc-3-25 loc-3-26)
	(move-dir-right loc-3-26 loc-3-27)
	(move-dir-right loc-3-32 loc-3-33)
	(move-dir-right loc-3-33 loc-3-34)
	(move-dir-right loc-3-38 loc-3-39)
	(move-dir-right loc-3-39 loc-3-40)
	(move-dir-right loc-3-3 loc-3-4)
	(move-dir-right loc-3-4 loc-3-5)
	(move-dir-right loc-3-7 loc-3-8)
	(move-dir-right loc-3-8 loc-3-9)
	(move-dir-right loc-30-12 loc-30-13)
	(move-dir-right loc-30-13 loc-30-14)
	(move-dir-right loc-30-14 loc-30-15)
	(move-dir-right loc-30-15 loc-30-16)
	(move-dir-right loc-30-24 loc-30-25)
	(move-dir-right loc-30-31 loc-30-32)
	(move-dir-right loc-30-34 loc-30-35)
	(move-dir-right loc-30-35 loc-30-36)
	(move-dir-right loc-30-36 loc-30-37)
	(move-dir-right loc-30-4 loc-30-5)
	(move-dir-right loc-30-5 loc-30-6)
	(move-dir-right loc-30-8 loc-30-9)
	(move-dir-right loc-30-9 loc-30-10)
	(move-dir-right loc-31-16 loc-31-17)
	(move-dir-right loc-31-17 loc-31-18)
	(move-dir-right loc-31-22 loc-31-23)
	(move-dir-right loc-31-25 loc-31-26)
	(move-dir-right loc-31-26 loc-31-27)
	(move-dir-right loc-31-27 loc-31-28)
	(move-dir-right loc-31-28 loc-31-29)
	(move-dir-right loc-31-29 loc-31-30)
	(move-dir-right loc-31-2 loc-31-3)
	(move-dir-right loc-31-32 loc-31-33)
	(move-dir-right loc-31-37 loc-31-38)
	(move-dir-right loc-31-38 loc-31-39)
	(move-dir-right loc-31-39 loc-31-40)
	(move-dir-right loc-32-10 loc-32-11)
	(move-dir-right loc-32-13 loc-32-14)
	(move-dir-right loc-32-21 loc-32-22)
	(move-dir-right loc-32-31 loc-32-32)
	(move-dir-right loc-32-34 loc-32-35)
	(move-dir-right loc-32-4 loc-32-5)
	(move-dir-right loc-32-9 loc-32-10)
	(move-dir-right loc-33-16 loc-33-17)
	(move-dir-right loc-33-19 loc-33-20)
	(move-dir-right loc-33-22 loc-33-23)
	(move-dir-right loc-33-23 loc-33-24)
	(move-dir-right loc-33-26 loc-33-27)
	(move-dir-right loc-33-30 loc-33-31)
	(move-dir-right loc-33-33 loc-33-34)
	(move-dir-right loc-33-36 loc-33-37)
	(move-dir-right loc-33-37 loc-33-38)
	(move-dir-right loc-33-7 loc-33-8)
	(move-dir-right loc-34-11 loc-34-12)
	(move-dir-right loc-34-14 loc-34-15)
	(move-dir-right loc-34-24 loc-34-25)
	(move-dir-right loc-34-25 loc-34-26)
	(move-dir-right loc-34-4 loc-34-5)
	(move-dir-right loc-34-5 loc-34-6)
	(move-dir-right loc-34-8 loc-34-9)
	(move-dir-right loc-35-10 loc-35-11)
	(move-dir-right loc-35-15 loc-35-16)
	(move-dir-right loc-35-16 loc-35-17)
	(move-dir-right loc-35-17 loc-35-18)
	(move-dir-right loc-35-18 loc-35-19)
	(move-dir-right loc-35-19 loc-35-20)
	(move-dir-right loc-35-20 loc-35-21)
	(move-dir-right loc-35-21 loc-35-22)
	(move-dir-right loc-35-22 loc-35-23)
	(move-dir-right loc-35-23 loc-35-24)
	(move-dir-right loc-35-27 loc-35-28)
	(move-dir-right loc-35-28 loc-35-29)
	(move-dir-right loc-35-29 loc-35-30)
	(move-dir-right loc-35-30 loc-35-31)
	(move-dir-right loc-35-31 loc-35-32)
	(move-dir-right loc-35-32 loc-35-33)
	(move-dir-right loc-35-38 loc-35-39)
	(move-dir-right loc-35-39 loc-35-40)
	(move-dir-right loc-35-6 loc-35-7)
	(move-dir-right loc-35-9 loc-35-10)
	(move-dir-right loc-36-12 loc-36-13)
	(move-dir-right loc-36-13 loc-36-14)
	(move-dir-right loc-36-26 loc-36-27)
	(move-dir-right loc-36-2 loc-36-3)
	(move-dir-right loc-36-33 loc-36-34)
	(move-dir-right loc-36-34 loc-36-35)
	(move-dir-right loc-36-35 loc-36-36)
	(move-dir-right loc-36-36 loc-36-37)
	(move-dir-right loc-36-37 loc-36-38)
	(move-dir-right loc-36-3 loc-36-4)
	(move-dir-right loc-36-4 loc-36-5)
	(move-dir-right loc-36-7 loc-36-8)
	(move-dir-right loc-37-16 loc-37-17)
	(move-dir-right loc-37-17 loc-37-18)
	(move-dir-right loc-37-20 loc-37-21)
	(move-dir-right loc-37-25 loc-37-26)
	(move-dir-right loc-37-38 loc-37-39)
	(move-dir-right loc-38-10 loc-38-11)
	(move-dir-right loc-38-11 loc-38-12)
	(move-dir-right loc-38-12 loc-38-13)
	(move-dir-right loc-38-13 loc-38-14)
	(move-dir-right loc-38-14 loc-38-15)
	(move-dir-right loc-38-18 loc-38-19)
	(move-dir-right loc-38-24 loc-38-25)
	(move-dir-right loc-38-27 loc-38-28)
	(move-dir-right loc-38-28 loc-38-29)
	(move-dir-right loc-38-29 loc-38-30)
	(move-dir-right loc-38-2 loc-38-3)
	(move-dir-right loc-38-30 loc-38-31)
	(move-dir-right loc-38-33 loc-38-34)
	(move-dir-right loc-38-3 loc-38-4)
	(move-dir-right loc-38-4 loc-38-5)
	(move-dir-right loc-38-5 loc-38-6)
	(move-dir-right loc-38-6 loc-38-7)
	(move-dir-right loc-38-7 loc-38-8)
	(move-dir-right loc-38-8 loc-38-9)
	(move-dir-right loc-38-9 loc-38-10)
	(move-dir-right loc-39-15 loc-39-16)
	(move-dir-right loc-39-20 loc-39-21)
	(move-dir-right loc-39-21 loc-39-22)
	(move-dir-right loc-39-25 loc-39-26)
	(move-dir-right loc-39-31 loc-39-32)
	(move-dir-right loc-39-35 loc-39-36)
	(move-dir-right loc-39-36 loc-39-37)
	(move-dir-right loc-39-37 loc-39-38)
	(move-dir-right loc-39-38 loc-39-39)
	(move-dir-right loc-39-39 loc-39-40)
	(move-dir-right loc-4-17 loc-4-18)
	(move-dir-right loc-4-18 loc-4-19)
	(move-dir-right loc-4-19 loc-4-20)
	(move-dir-right loc-4-20 loc-4-21)
	(move-dir-right loc-4-29 loc-4-30)
	(move-dir-right loc-4-34 loc-4-35)
	(move-dir-right loc-4-37 loc-4-38)
	(move-dir-right loc-4-5 loc-4-6)
	(move-dir-right loc-4-9 loc-4-10)
	(move-dir-right loc-40-12 loc-40-13)
	(move-dir-right loc-40-13 loc-40-14)
	(move-dir-right loc-40-16 loc-40-17)
	(move-dir-right loc-40-17 loc-40-18)
	(move-dir-right loc-40-18 loc-40-19)
	(move-dir-right loc-40-19 loc-40-20)
	(move-dir-right loc-40-22 loc-40-23)
	(move-dir-right loc-40-23 loc-40-24)
	(move-dir-right loc-40-26 loc-40-27)
	(move-dir-right loc-40-27 loc-40-28)
	(move-dir-right loc-40-28 loc-40-29)
	(move-dir-right loc-40-29 loc-40-30)
	(move-dir-right loc-40-32 loc-40-33)
	(move-dir-right loc-40-33 loc-40-34)
	(move-dir-right loc-40-3 loc-40-4)
	(move-dir-right loc-40-4 loc-40-5)
	(move-dir-right loc-40-5 loc-40-6)
	(move-dir-right loc-40-6 loc-40-7)
	(move-dir-right loc-40-9 loc-40-10)
	(move-dir-right loc-5-14 loc-5-15)
	(move-dir-right loc-5-15 loc-5-16)
	(move-dir-right loc-5-22 loc-5-23)
	(move-dir-right loc-5-23 loc-5-24)
	(move-dir-right loc-5-24 loc-5-25)
	(move-dir-right loc-5-28 loc-5-29)
	(move-dir-right loc-5-33 loc-5-34)
	(move-dir-right loc-6-10 loc-6-11)
	(move-dir-right loc-6-11 loc-6-12)
	(move-dir-right loc-6-12 loc-6-13)
	(move-dir-right loc-6-13 loc-6-14)
	(move-dir-right loc-6-17 loc-6-18)
	(move-dir-right loc-6-18 loc-6-19)
	(move-dir-right loc-6-19 loc-6-20)
	(move-dir-right loc-6-20 loc-6-21)
	(move-dir-right loc-6-21 loc-6-22)
	(move-dir-right loc-6-25 loc-6-26)
	(move-dir-right loc-6-26 loc-6-27)
	(move-dir-right loc-6-31 loc-6-32)
	(move-dir-right loc-6-32 loc-6-33)
	(move-dir-right loc-6-5 loc-6-6)
	(move-dir-right loc-6-8 loc-6-9)
	(move-dir-right loc-6-9 loc-6-10)
	(move-dir-right loc-7-14 loc-7-15)
	(move-dir-right loc-7-15 loc-7-16)
	(move-dir-right loc-7-16 loc-7-17)
	(move-dir-right loc-7-24 loc-7-25)
	(move-dir-right loc-7-28 loc-7-29)
	(move-dir-right loc-7-2 loc-7-3)
	(move-dir-right loc-7-35 loc-7-36)
	(move-dir-right loc-7-36 loc-7-37)
	(move-dir-right loc-7-37 loc-7-38)
	(move-dir-right loc-7-38 loc-7-39)
	(move-dir-right loc-7-39 loc-7-40)
	(move-dir-right loc-7-3 loc-7-4)
	(move-dir-right loc-8-10 loc-8-11)
	(move-dir-right loc-8-11 loc-8-12)
	(move-dir-right loc-8-12 loc-8-13)
	(move-dir-right loc-8-18 loc-8-19)
	(move-dir-right loc-8-19 loc-8-20)
	(move-dir-right loc-8-22 loc-8-23)
	(move-dir-right loc-9-26 loc-9-27)
	(move-dir-right loc-9-27 loc-9-28)
	(move-dir-right loc-9-28 loc-9-29)
	(move-dir-right loc-9-29 loc-9-30)
	(move-dir-right loc-9-30 loc-9-31)
	(move-dir-right loc-9-31 loc-9-32)
	(move-dir-right loc-9-32 loc-9-33)
	(move-dir-right loc-9-33 loc-9-34)
	(move-dir-right loc-9-36 loc-9-37)
	(move-dir-right loc-9-6 loc-9-7)
	(move-dir-up loc-10-14 loc-9-14)
	(move-dir-up loc-10-16 loc-9-16)
	(move-dir-up loc-10-22 loc-9-22)
	(move-dir-up loc-10-24 loc-9-24)
	(move-dir-up loc-10-26 loc-9-26)
	(move-dir-up loc-10-28 loc-9-28)
	(move-dir-up loc-10-2 loc-9-2)
	(move-dir-up loc-10-30 loc-9-30)
	(move-dir-up loc-10-34 loc-9-34)
	(move-dir-up loc-10-37 loc-9-37)
	(move-dir-up loc-10-40 loc-9-40)
	(move-dir-up loc-10-4 loc-9-4)
	(move-dir-up loc-10-7 loc-9-7)
	(move-dir-up loc-10-9 loc-9-9)
	(move-dir-up loc-11-10 loc-10-10)
	(move-dir-up loc-11-12 loc-10-12)
	(move-dir-up loc-11-14 loc-10-14)
	(move-dir-up loc-11-17 loc-10-17)
	(move-dir-up loc-11-21 loc-10-21)
	(move-dir-up loc-11-28 loc-10-28)
	(move-dir-up loc-11-2 loc-10-2)
	(move-dir-up loc-11-34 loc-10-34)
	(move-dir-up loc-11-37 loc-10-37)
	(move-dir-up loc-11-39 loc-10-39)
	(move-dir-up loc-11-5 loc-10-5)
	(move-dir-up loc-11-7 loc-10-7)
	(move-dir-up loc-12-10 loc-11-10)
	(move-dir-up loc-12-12 loc-11-12)
	(move-dir-up loc-12-17 loc-11-17)
	(move-dir-up loc-12-21 loc-11-21)
	(move-dir-up loc-12-25 loc-11-25)
	(move-dir-up loc-12-27 loc-11-27)
	(move-dir-up loc-12-2 loc-11-2)
	(move-dir-up loc-12-31 loc-11-31)
	(move-dir-up loc-12-36 loc-11-36)
	(move-dir-up loc-12-39 loc-11-39)
	(move-dir-up loc-12-6 loc-11-6)
	(move-dir-up loc-12-8 loc-11-8)
	(move-dir-up loc-13-10 loc-12-10)
	(move-dir-up loc-13-15 loc-12-15)
	(move-dir-up loc-13-20 loc-12-20)
	(move-dir-up loc-13-23 loc-12-23)
	(move-dir-up loc-13-25 loc-12-25)
	(move-dir-up loc-13-2 loc-12-2)
	(move-dir-up loc-13-31 loc-12-31)
	(move-dir-up loc-13-33 loc-12-33)
	(move-dir-up loc-13-36 loc-12-36)
	(move-dir-up loc-13-40 loc-12-40)
	(move-dir-up loc-13-6 loc-12-6)
	(move-dir-up loc-14-11 loc-13-11)
	(move-dir-up loc-14-14 loc-13-14)
	(move-dir-up loc-14-18 loc-13-18)
	(move-dir-up loc-14-22 loc-13-22)
	(move-dir-up loc-14-25 loc-13-25)
	(move-dir-up loc-14-29 loc-13-29)
	(move-dir-up loc-14-2 loc-13-2)
	(move-dir-up loc-14-31 loc-13-31)
	(move-dir-up loc-14-36 loc-13-36)
	(move-dir-up loc-14-38 loc-13-38)
	(move-dir-up loc-14-5 loc-13-5)
	(move-dir-up loc-14-7 loc-13-7)
	(move-dir-up loc-14-9 loc-13-9)
	(move-dir-up loc-15-12 loc-14-12)
	(move-dir-up loc-15-17 loc-14-17)
	(move-dir-up loc-15-25 loc-14-25)
	(move-dir-up loc-15-31 loc-14-31)
	(move-dir-up loc-15-34 loc-14-34)
	(move-dir-up loc-15-36 loc-14-36)
	(move-dir-up loc-15-7 loc-14-7)
	(move-dir-up loc-15-9 loc-14-9)
	(move-dir-up loc-16-10 loc-15-10)
	(move-dir-up loc-16-15 loc-15-15)
	(move-dir-up loc-16-20 loc-15-20)
	(move-dir-up loc-16-23 loc-15-23)
	(move-dir-up loc-16-25 loc-15-25)
	(move-dir-up loc-16-27 loc-15-27)
	(move-dir-up loc-16-31 loc-15-31)
	(move-dir-up loc-16-33 loc-15-33)
	(move-dir-up loc-16-39 loc-15-39)
	(move-dir-up loc-16-3 loc-15-3)
	(move-dir-up loc-16-7 loc-15-7)
	(move-dir-up loc-17-10 loc-16-10)
	(move-dir-up loc-17-13 loc-16-13)
	(move-dir-up loc-17-15 loc-16-15)
	(move-dir-up loc-17-18 loc-16-18)
	(move-dir-up loc-17-20 loc-16-20)
	(move-dir-up loc-17-23 loc-16-23)
	(move-dir-up loc-17-25 loc-16-25)
	(move-dir-up loc-17-27 loc-16-27)
	(move-dir-up loc-17-2 loc-16-2)
	(move-dir-up loc-17-33 loc-16-33)
	(move-dir-up loc-17-35 loc-16-35)
	(move-dir-up loc-17-38 loc-16-38)
	(move-dir-up loc-17-4 loc-16-4)
	(move-dir-up loc-17-6 loc-16-6)
	(move-dir-up loc-18-10 loc-17-10)
	(move-dir-up loc-18-13 loc-17-13)
	(move-dir-up loc-18-16 loc-17-16)
	(move-dir-up loc-18-18 loc-17-18)
	(move-dir-up loc-18-20 loc-17-20)
	(move-dir-up loc-18-23 loc-17-23)
	(move-dir-up loc-18-25 loc-17-25)
	(move-dir-up loc-18-28 loc-17-28)
	(move-dir-up loc-18-2 loc-17-2)
	(move-dir-up loc-18-30 loc-17-30)
	(move-dir-up loc-18-33 loc-17-33)
	(move-dir-up loc-18-36 loc-17-36)
	(move-dir-up loc-18-38 loc-17-38)
	(move-dir-up loc-18-40 loc-17-40)
	(move-dir-up loc-18-8 loc-17-8)
	(move-dir-up loc-19-11 loc-18-11)
	(move-dir-up loc-19-16 loc-18-16)
	(move-dir-up loc-19-18 loc-18-18)
	(move-dir-up loc-19-21 loc-18-21)
	(move-dir-up loc-19-24 loc-18-24)
	(move-dir-up loc-19-2 loc-18-2)
	(move-dir-up loc-19-31 loc-18-31)
	(move-dir-up loc-19-36 loc-18-36)
	(move-dir-up loc-19-38 loc-18-38)
	(move-dir-up loc-19-40 loc-18-40)
	(move-dir-up loc-19-5 loc-18-5)
	(move-dir-up loc-19-8 loc-18-8)
	(move-dir-up loc-20-12 loc-19-12)
	(move-dir-up loc-20-16 loc-19-16)
	(move-dir-up loc-20-19 loc-19-19)
	(move-dir-up loc-20-21 loc-19-21)
	(move-dir-up loc-20-24 loc-19-24)
	(move-dir-up loc-20-26 loc-19-26)
	(move-dir-up loc-20-29 loc-19-29)
	(move-dir-up loc-20-35 loc-19-35)
	(move-dir-up loc-20-38 loc-19-38)
	(move-dir-up loc-20-4 loc-19-4)
	(move-dir-up loc-20-6 loc-19-6)
	(move-dir-up loc-20-8 loc-19-8)
	(move-dir-up loc-21-10 loc-20-10)
	(move-dir-up loc-21-14 loc-20-14)
	(move-dir-up loc-21-17 loc-20-17)
	(move-dir-up loc-21-19 loc-20-19)
	(move-dir-up loc-21-23 loc-20-23)
	(move-dir-up loc-21-27 loc-20-27)
	(move-dir-up loc-21-29 loc-20-29)
	(move-dir-up loc-21-34 loc-20-34)
	(move-dir-up loc-21-39 loc-20-39)
	(move-dir-up loc-21-8 loc-20-8)
	(move-dir-up loc-22-10 loc-21-10)
	(move-dir-up loc-22-14 loc-21-14)
	(move-dir-up loc-22-17 loc-21-17)
	(move-dir-up loc-22-19 loc-21-19)
	(move-dir-up loc-22-22 loc-21-22)
	(move-dir-up loc-22-25 loc-21-25)
	(move-dir-up loc-22-27 loc-21-27)
	(move-dir-up loc-22-2 loc-21-2)
	(move-dir-up loc-22-31 loc-21-31)
	(move-dir-up loc-22-34 loc-21-34)
	(move-dir-up loc-22-36 loc-21-36)
	(move-dir-up loc-22-40 loc-21-40)
	(move-dir-up loc-22-7 loc-21-7)
	(move-dir-up loc-23-12 loc-22-12)
	(move-dir-up loc-23-14 loc-22-14)
	(move-dir-up loc-23-22 loc-22-22)
	(move-dir-up loc-23-24 loc-22-24)
	(move-dir-up loc-23-27 loc-22-27)
	(move-dir-up loc-23-2 loc-22-2)
	(move-dir-up loc-23-33 loc-22-33)
	(move-dir-up loc-23-36 loc-22-36)
	(move-dir-up loc-23-40 loc-22-40)
	(move-dir-up loc-23-4 loc-22-4)
	(move-dir-up loc-23-6 loc-22-6)
	(move-dir-up loc-24-12 loc-23-12)
	(move-dir-up loc-24-15 loc-23-15)
	(move-dir-up loc-24-18 loc-23-18)
	(move-dir-up loc-24-21 loc-23-21)
	(move-dir-up loc-24-23 loc-23-23)
	(move-dir-up loc-24-26 loc-23-26)
	(move-dir-up loc-24-28 loc-23-28)
	(move-dir-up loc-24-2 loc-23-2)
	(move-dir-up loc-24-33 loc-23-33)
	(move-dir-up loc-24-36 loc-23-36)
	(move-dir-up loc-24-40 loc-23-40)
	(move-dir-up loc-24-6 loc-23-6)
	(move-dir-up loc-24-8 loc-23-8)
	(move-dir-up loc-25-10 loc-24-10)
	(move-dir-up loc-25-12 loc-24-12)
	(move-dir-up loc-25-16 loc-24-16)
	(move-dir-up loc-25-19 loc-24-19)
	(move-dir-up loc-25-21 loc-24-21)
	(move-dir-up loc-25-26 loc-24-26)
	(move-dir-up loc-25-30 loc-24-30)
	(move-dir-up loc-25-36 loc-24-36)
	(move-dir-up loc-25-38 loc-24-38)
	(move-dir-up loc-25-3 loc-24-3)
	(move-dir-up loc-25-40 loc-24-40)
	(move-dir-up loc-25-7 loc-24-7)
	(move-dir-up loc-26-13 loc-25-13)
	(move-dir-up loc-26-16 loc-25-16)
	(move-dir-up loc-26-19 loc-25-19)
	(move-dir-up loc-26-21 loc-25-21)
	(move-dir-up loc-26-25 loc-25-25)
	(move-dir-up loc-26-27 loc-25-27)
	(move-dir-up loc-26-30 loc-25-30)
	(move-dir-up loc-26-3 loc-25-3)
	(move-dir-up loc-26-40 loc-25-40)
	(move-dir-up loc-26-7 loc-25-7)
	(move-dir-up loc-27-11 loc-26-11)
	(move-dir-up loc-27-13 loc-26-13)
	(move-dir-up loc-27-15 loc-26-15)
	(move-dir-up loc-27-19 loc-26-19)
	(move-dir-up loc-27-21 loc-26-21)
	(move-dir-up loc-27-23 loc-26-23)
	(move-dir-up loc-27-27 loc-26-27)
	(move-dir-up loc-27-2 loc-26-2)
	(move-dir-up loc-27-30 loc-26-30)
	(move-dir-up loc-27-32 loc-26-32)
	(move-dir-up loc-27-40 loc-26-40)
	(move-dir-up loc-27-9 loc-26-9)
	(move-dir-up loc-28-13 loc-27-13)
	(move-dir-up loc-28-15 loc-27-15)
	(move-dir-up loc-28-21 loc-27-21)
	(move-dir-up loc-28-24 loc-27-24)
	(move-dir-up loc-28-26 loc-27-26)
	(move-dir-up loc-28-2 loc-27-2)
	(move-dir-up loc-28-30 loc-27-30)
	(move-dir-up loc-28-32 loc-27-32)
	(move-dir-up loc-28-36 loc-27-36)
	(move-dir-up loc-28-40 loc-27-40)
	(move-dir-up loc-28-6 loc-27-6)
	(move-dir-up loc-28-9 loc-27-9)
	(move-dir-up loc-29-18 loc-28-18)
	(move-dir-up loc-29-20 loc-28-20)
	(move-dir-up loc-29-22 loc-28-22)
	(move-dir-up loc-29-24 loc-28-24)
	(move-dir-up loc-29-26 loc-28-26)
	(move-dir-up loc-29-29 loc-28-29)
	(move-dir-up loc-29-2 loc-28-2)
	(move-dir-up loc-29-33 loc-28-33)
	(move-dir-up loc-29-40 loc-28-40)
	(move-dir-up loc-29-6 loc-28-6)
	(move-dir-up loc-29-8 loc-28-8)
	(move-dir-up loc-3-11 loc-2-11)
	(move-dir-up loc-3-14 loc-2-14)
	(move-dir-up loc-3-16 loc-2-16)
	(move-dir-up loc-3-18 loc-2-18)
	(move-dir-up loc-3-22 loc-2-22)
	(move-dir-up loc-3-25 loc-2-25)
	(move-dir-up loc-3-27 loc-2-27)
	(move-dir-up loc-3-30 loc-2-30)
	(move-dir-up loc-3-32 loc-2-32)
	(move-dir-up loc-3-34 loc-2-34)
	(move-dir-up loc-3-36 loc-2-36)
	(move-dir-up loc-3-38 loc-2-38)
	(move-dir-up loc-3-3 loc-2-3)
	(move-dir-up loc-3-40 loc-2-40)
	(move-dir-up loc-3-5 loc-2-5)
	(move-dir-up loc-3-7 loc-2-7)
	(move-dir-up loc-30-10 loc-29-10)
	(move-dir-up loc-30-14 loc-29-14)
	(move-dir-up loc-30-18 loc-29-18)
	(move-dir-up loc-30-20 loc-29-20)
	(move-dir-up loc-30-22 loc-29-22)
	(move-dir-up loc-30-24 loc-29-24)
	(move-dir-up loc-30-28 loc-29-28)
	(move-dir-up loc-30-2 loc-29-2)
	(move-dir-up loc-30-31 loc-29-31)
	(move-dir-up loc-30-35 loc-29-35)
	(move-dir-up loc-30-39 loc-29-39)
	(move-dir-up loc-30-4 loc-29-4)
	(move-dir-up loc-30-6 loc-29-6)
	(move-dir-up loc-30-8 loc-29-8)
	(move-dir-up loc-31-10 loc-30-10)
	(move-dir-up loc-31-12 loc-30-12)
	(move-dir-up loc-31-16 loc-30-16)
	(move-dir-up loc-31-18 loc-30-18)
	(move-dir-up loc-31-20 loc-30-20)
	(move-dir-up loc-31-22 loc-30-22)
	(move-dir-up loc-31-25 loc-30-25)
	(move-dir-up loc-31-28 loc-30-28)
	(move-dir-up loc-31-2 loc-30-2)
	(move-dir-up loc-31-32 loc-30-32)
	(move-dir-up loc-31-35 loc-30-35)
	(move-dir-up loc-31-37 loc-30-37)
	(move-dir-up loc-31-39 loc-30-39)
	(move-dir-up loc-31-6 loc-30-6)
	(move-dir-up loc-31-8 loc-30-8)
	(move-dir-up loc-32-10 loc-31-10)
	(move-dir-up loc-32-16 loc-31-16)
	(move-dir-up loc-32-18 loc-31-18)
	(move-dir-up loc-32-22 loc-31-22)
	(move-dir-up loc-32-25 loc-31-25)
	(move-dir-up loc-32-27 loc-31-27)
	(move-dir-up loc-32-29 loc-31-29)
	(move-dir-up loc-32-2 loc-31-2)
	(move-dir-up loc-32-32 loc-31-32)
	(move-dir-up loc-32-35 loc-31-35)
	(move-dir-up loc-32-37 loc-31-37)
	(move-dir-up loc-32-40 loc-31-40)
	(move-dir-up loc-33-10 loc-32-10)
	(move-dir-up loc-33-14 loc-32-14)
	(move-dir-up loc-33-16 loc-32-16)
	(move-dir-up loc-33-22 loc-32-22)
	(move-dir-up loc-33-27 loc-32-27)
	(move-dir-up loc-33-2 loc-32-2)
	(move-dir-up loc-33-31 loc-32-31)
	(move-dir-up loc-33-34 loc-32-34)
	(move-dir-up loc-33-37 loc-32-37)
	(move-dir-up loc-33-40 loc-32-40)
	(move-dir-up loc-33-4 loc-32-4)
	(move-dir-up loc-33-7 loc-32-7)
	(move-dir-up loc-34-12 loc-33-12)
	(move-dir-up loc-34-14 loc-33-14)
	(move-dir-up loc-34-19 loc-33-19)
	(move-dir-up loc-34-24 loc-33-24)
	(move-dir-up loc-34-26 loc-33-26)
	(move-dir-up loc-34-2 loc-33-2)
	(move-dir-up loc-34-30 loc-33-30)
	(move-dir-up loc-34-34 loc-33-34)
	(move-dir-up loc-34-36 loc-33-36)
	(move-dir-up loc-34-38 loc-33-38)
	(move-dir-up loc-34-4 loc-33-4)
	(move-dir-up loc-34-8 loc-33-8)
	(move-dir-up loc-35-11 loc-34-11)
	(move-dir-up loc-35-15 loc-34-15)
	(move-dir-up loc-35-19 loc-34-19)
	(move-dir-up loc-35-21 loc-34-21)
	(move-dir-up loc-35-24 loc-34-24)
	(move-dir-up loc-35-28 loc-34-28)
	(move-dir-up loc-35-2 loc-34-2)
	(move-dir-up loc-35-30 loc-34-30)
	(move-dir-up loc-35-32 loc-34-32)
	(move-dir-up loc-35-38 loc-34-38)
	(move-dir-up loc-35-6 loc-34-6)
	(move-dir-up loc-35-9 loc-34-9)
	(move-dir-up loc-36-10 loc-35-10)
	(move-dir-up loc-36-13 loc-35-13)
	(move-dir-up loc-36-17 loc-35-17)
	(move-dir-up loc-36-20 loc-35-20)
	(move-dir-up loc-36-23 loc-35-23)
	(move-dir-up loc-36-27 loc-35-27)
	(move-dir-up loc-36-29 loc-35-29)
	(move-dir-up loc-36-2 loc-35-2)
	(move-dir-up loc-36-31 loc-35-31)
	(move-dir-up loc-36-33 loc-35-33)
	(move-dir-up loc-36-35 loc-35-35)
	(move-dir-up loc-36-38 loc-35-38)
	(move-dir-up loc-36-40 loc-35-40)
	(move-dir-up loc-36-7 loc-35-7)
	(move-dir-up loc-37-10 loc-36-10)
	(move-dir-up loc-37-14 loc-36-14)
	(move-dir-up loc-37-17 loc-36-17)
	(move-dir-up loc-37-20 loc-36-20)
	(move-dir-up loc-37-23 loc-36-23)
	(move-dir-up loc-37-26 loc-36-26)
	(move-dir-up loc-37-31 loc-36-31)
	(move-dir-up loc-37-33 loc-36-33)
	(move-dir-up loc-37-36 loc-36-36)
	(move-dir-up loc-37-38 loc-36-38)
	(move-dir-up loc-37-4 loc-36-4)
	(move-dir-up loc-37-7 loc-36-7)
	(move-dir-up loc-38-10 loc-37-10)
	(move-dir-up loc-38-14 loc-37-14)
	(move-dir-up loc-38-18 loc-37-18)
	(move-dir-up loc-38-25 loc-37-25)
	(move-dir-up loc-38-28 loc-37-28)
	(move-dir-up loc-38-31 loc-37-31)
	(move-dir-up loc-38-33 loc-37-33)
	(move-dir-up loc-38-38 loc-37-38)
	(move-dir-up loc-38-4 loc-37-4)
	(move-dir-up loc-38-7 loc-37-7)
	(move-dir-up loc-39-11 loc-38-11)
	(move-dir-up loc-39-13 loc-38-13)
	(move-dir-up loc-39-15 loc-38-15)
	(move-dir-up loc-39-22 loc-38-22)
	(move-dir-up loc-39-25 loc-38-25)
	(move-dir-up loc-39-2 loc-38-2)
	(move-dir-up loc-39-31 loc-38-31)
	(move-dir-up loc-39-38 loc-38-38)
	(move-dir-up loc-39-40 loc-38-40)
	(move-dir-up loc-39-7 loc-38-7)
	(move-dir-up loc-39-9 loc-38-9)
	(move-dir-up loc-4-13 loc-3-13)
	(move-dir-up loc-4-18 loc-3-18)
	(move-dir-up loc-4-20 loc-3-20)
	(move-dir-up loc-4-24 loc-3-24)
	(move-dir-up loc-4-27 loc-3-27)
	(move-dir-up loc-4-30 loc-3-30)
	(move-dir-up loc-4-32 loc-3-32)
	(move-dir-up loc-4-34 loc-3-34)
	(move-dir-up loc-4-38 loc-3-38)
	(move-dir-up loc-4-3 loc-3-3)
	(move-dir-up loc-4-40 loc-3-40)
	(move-dir-up loc-4-5 loc-3-5)
	(move-dir-up loc-4-9 loc-3-9)
	(move-dir-up loc-40-13 loc-39-13)
	(move-dir-up loc-40-16 loc-39-16)
	(move-dir-up loc-40-20 loc-39-20)
	(move-dir-up loc-40-22 loc-39-22)
	(move-dir-up loc-40-26 loc-39-26)
	(move-dir-up loc-40-32 loc-39-32)
	(move-dir-up loc-40-36 loc-39-36)
	(move-dir-up loc-40-39 loc-39-39)
	(move-dir-up loc-40-7 loc-39-7)
	(move-dir-up loc-40-9 loc-39-9)
	(move-dir-up loc-5-10 loc-4-10)
	(move-dir-up loc-5-15 loc-4-15)
	(move-dir-up loc-5-20 loc-4-20)
	(move-dir-up loc-5-24 loc-4-24)
	(move-dir-up loc-5-29 loc-4-29)
	(move-dir-up loc-5-34 loc-4-34)
	(move-dir-up loc-5-38 loc-4-38)
	(move-dir-up loc-5-40 loc-4-40)
	(move-dir-up loc-5-6 loc-4-6)
	(move-dir-up loc-6-10 loc-5-10)
	(move-dir-up loc-6-12 loc-5-12)
	(move-dir-up loc-6-14 loc-5-14)
	(move-dir-up loc-6-20 loc-5-20)
	(move-dir-up loc-6-22 loc-5-22)
	(move-dir-up loc-6-25 loc-5-25)
	(move-dir-up loc-6-29 loc-5-29)
	(move-dir-up loc-6-2 loc-5-2)
	(move-dir-up loc-6-31 loc-5-31)
	(move-dir-up loc-6-33 loc-5-33)
	(move-dir-up loc-6-40 loc-5-40)
	(move-dir-up loc-6-6 loc-5-6)
	(move-dir-up loc-6-8 loc-5-8)
	(move-dir-up loc-7-11 loc-6-11)
	(move-dir-up loc-7-14 loc-6-14)
	(move-dir-up loc-7-17 loc-6-17)
	(move-dir-up loc-7-20 loc-6-20)
	(move-dir-up loc-7-22 loc-6-22)
	(move-dir-up loc-7-25 loc-6-25)
	(move-dir-up loc-7-29 loc-6-29)
	(move-dir-up loc-7-2 loc-6-2)
	(move-dir-up loc-7-31 loc-6-31)
	(move-dir-up loc-7-33 loc-6-33)
	(move-dir-up loc-7-35 loc-6-35)
	(move-dir-up loc-7-37 loc-6-37)
	(move-dir-up loc-7-40 loc-6-40)
	(move-dir-up loc-7-6 loc-6-6)
	(move-dir-up loc-7-8 loc-6-8)
	(move-dir-up loc-8-11 loc-7-11)
	(move-dir-up loc-8-16 loc-7-16)
	(move-dir-up loc-8-20 loc-7-20)
	(move-dir-up loc-8-22 loc-7-22)
	(move-dir-up loc-8-25 loc-7-25)
	(move-dir-up loc-8-29 loc-7-29)
	(move-dir-up loc-8-37 loc-7-37)
	(move-dir-up loc-8-39 loc-7-39)
	(move-dir-up loc-8-4 loc-7-4)
	(move-dir-up loc-8-6 loc-7-6)
	(move-dir-up loc-8-8 loc-7-8)
	(move-dir-up loc-9-11 loc-8-11)
	(move-dir-up loc-9-16 loc-8-16)
	(move-dir-up loc-9-19 loc-8-19)
	(move-dir-up loc-9-22 loc-8-22)
	(move-dir-up loc-9-27 loc-8-27)
	(move-dir-up loc-9-29 loc-8-29)
	(move-dir-up loc-9-32 loc-8-32)
	(move-dir-up loc-9-34 loc-8-34)
	(move-dir-up loc-9-37 loc-8-37)
	(move-dir-up loc-9-4 loc-8-4)
	(move-dir-up loc-9-6 loc-8-6)
	(oriented-right player-1)
  )
  (:goal (at player-1 loc-30-4))
)
