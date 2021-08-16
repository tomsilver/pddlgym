
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
	loc-1-42 - location
	loc-1-43 - location
	loc-1-44 - location
	loc-1-45 - location
	loc-1-46 - location
	loc-1-47 - location
	loc-1-48 - location
	loc-1-49 - location
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
	loc-10-42 - location
	loc-10-43 - location
	loc-10-44 - location
	loc-10-45 - location
	loc-10-46 - location
	loc-10-47 - location
	loc-10-48 - location
	loc-10-49 - location
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
	loc-11-42 - location
	loc-11-43 - location
	loc-11-44 - location
	loc-11-45 - location
	loc-11-46 - location
	loc-11-47 - location
	loc-11-48 - location
	loc-11-49 - location
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
	loc-12-42 - location
	loc-12-43 - location
	loc-12-44 - location
	loc-12-45 - location
	loc-12-46 - location
	loc-12-47 - location
	loc-12-48 - location
	loc-12-49 - location
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
	loc-13-42 - location
	loc-13-43 - location
	loc-13-44 - location
	loc-13-45 - location
	loc-13-46 - location
	loc-13-47 - location
	loc-13-48 - location
	loc-13-49 - location
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
	loc-14-42 - location
	loc-14-43 - location
	loc-14-44 - location
	loc-14-45 - location
	loc-14-46 - location
	loc-14-47 - location
	loc-14-48 - location
	loc-14-49 - location
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
	loc-15-42 - location
	loc-15-43 - location
	loc-15-44 - location
	loc-15-45 - location
	loc-15-46 - location
	loc-15-47 - location
	loc-15-48 - location
	loc-15-49 - location
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
	loc-16-42 - location
	loc-16-43 - location
	loc-16-44 - location
	loc-16-45 - location
	loc-16-46 - location
	loc-16-47 - location
	loc-16-48 - location
	loc-16-49 - location
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
	loc-17-42 - location
	loc-17-43 - location
	loc-17-44 - location
	loc-17-45 - location
	loc-17-46 - location
	loc-17-47 - location
	loc-17-48 - location
	loc-17-49 - location
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
	loc-18-42 - location
	loc-18-43 - location
	loc-18-44 - location
	loc-18-45 - location
	loc-18-46 - location
	loc-18-47 - location
	loc-18-48 - location
	loc-18-49 - location
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
	loc-19-42 - location
	loc-19-43 - location
	loc-19-44 - location
	loc-19-45 - location
	loc-19-46 - location
	loc-19-47 - location
	loc-19-48 - location
	loc-19-49 - location
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
	loc-2-42 - location
	loc-2-43 - location
	loc-2-44 - location
	loc-2-45 - location
	loc-2-46 - location
	loc-2-47 - location
	loc-2-48 - location
	loc-2-49 - location
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
	loc-20-42 - location
	loc-20-43 - location
	loc-20-44 - location
	loc-20-45 - location
	loc-20-46 - location
	loc-20-47 - location
	loc-20-48 - location
	loc-20-49 - location
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
	loc-21-42 - location
	loc-21-43 - location
	loc-21-44 - location
	loc-21-45 - location
	loc-21-46 - location
	loc-21-47 - location
	loc-21-48 - location
	loc-21-49 - location
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
	loc-22-42 - location
	loc-22-43 - location
	loc-22-44 - location
	loc-22-45 - location
	loc-22-46 - location
	loc-22-47 - location
	loc-22-48 - location
	loc-22-49 - location
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
	loc-23-42 - location
	loc-23-43 - location
	loc-23-44 - location
	loc-23-45 - location
	loc-23-46 - location
	loc-23-47 - location
	loc-23-48 - location
	loc-23-49 - location
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
	loc-24-42 - location
	loc-24-43 - location
	loc-24-44 - location
	loc-24-45 - location
	loc-24-46 - location
	loc-24-47 - location
	loc-24-48 - location
	loc-24-49 - location
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
	loc-25-42 - location
	loc-25-43 - location
	loc-25-44 - location
	loc-25-45 - location
	loc-25-46 - location
	loc-25-47 - location
	loc-25-48 - location
	loc-25-49 - location
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
	loc-26-42 - location
	loc-26-43 - location
	loc-26-44 - location
	loc-26-45 - location
	loc-26-46 - location
	loc-26-47 - location
	loc-26-48 - location
	loc-26-49 - location
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
	loc-27-42 - location
	loc-27-43 - location
	loc-27-44 - location
	loc-27-45 - location
	loc-27-46 - location
	loc-27-47 - location
	loc-27-48 - location
	loc-27-49 - location
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
	loc-28-42 - location
	loc-28-43 - location
	loc-28-44 - location
	loc-28-45 - location
	loc-28-46 - location
	loc-28-47 - location
	loc-28-48 - location
	loc-28-49 - location
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
	loc-29-42 - location
	loc-29-43 - location
	loc-29-44 - location
	loc-29-45 - location
	loc-29-46 - location
	loc-29-47 - location
	loc-29-48 - location
	loc-29-49 - location
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
	loc-3-42 - location
	loc-3-43 - location
	loc-3-44 - location
	loc-3-45 - location
	loc-3-46 - location
	loc-3-47 - location
	loc-3-48 - location
	loc-3-49 - location
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
	loc-30-42 - location
	loc-30-43 - location
	loc-30-44 - location
	loc-30-45 - location
	loc-30-46 - location
	loc-30-47 - location
	loc-30-48 - location
	loc-30-49 - location
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
	loc-31-42 - location
	loc-31-43 - location
	loc-31-44 - location
	loc-31-45 - location
	loc-31-46 - location
	loc-31-47 - location
	loc-31-48 - location
	loc-31-49 - location
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
	loc-32-42 - location
	loc-32-43 - location
	loc-32-44 - location
	loc-32-45 - location
	loc-32-46 - location
	loc-32-47 - location
	loc-32-48 - location
	loc-32-49 - location
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
	loc-33-42 - location
	loc-33-43 - location
	loc-33-44 - location
	loc-33-45 - location
	loc-33-46 - location
	loc-33-47 - location
	loc-33-48 - location
	loc-33-49 - location
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
	loc-34-42 - location
	loc-34-43 - location
	loc-34-44 - location
	loc-34-45 - location
	loc-34-46 - location
	loc-34-47 - location
	loc-34-48 - location
	loc-34-49 - location
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
	loc-35-42 - location
	loc-35-43 - location
	loc-35-44 - location
	loc-35-45 - location
	loc-35-46 - location
	loc-35-47 - location
	loc-35-48 - location
	loc-35-49 - location
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
	loc-36-42 - location
	loc-36-43 - location
	loc-36-44 - location
	loc-36-45 - location
	loc-36-46 - location
	loc-36-47 - location
	loc-36-48 - location
	loc-36-49 - location
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
	loc-37-42 - location
	loc-37-43 - location
	loc-37-44 - location
	loc-37-45 - location
	loc-37-46 - location
	loc-37-47 - location
	loc-37-48 - location
	loc-37-49 - location
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
	loc-38-42 - location
	loc-38-43 - location
	loc-38-44 - location
	loc-38-45 - location
	loc-38-46 - location
	loc-38-47 - location
	loc-38-48 - location
	loc-38-49 - location
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
	loc-39-42 - location
	loc-39-43 - location
	loc-39-44 - location
	loc-39-45 - location
	loc-39-46 - location
	loc-39-47 - location
	loc-39-48 - location
	loc-39-49 - location
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
	loc-4-42 - location
	loc-4-43 - location
	loc-4-44 - location
	loc-4-45 - location
	loc-4-46 - location
	loc-4-47 - location
	loc-4-48 - location
	loc-4-49 - location
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
	loc-40-42 - location
	loc-40-43 - location
	loc-40-44 - location
	loc-40-45 - location
	loc-40-46 - location
	loc-40-47 - location
	loc-40-48 - location
	loc-40-49 - location
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
	loc-41-42 - location
	loc-41-43 - location
	loc-41-44 - location
	loc-41-45 - location
	loc-41-46 - location
	loc-41-47 - location
	loc-41-48 - location
	loc-41-49 - location
	loc-41-5 - location
	loc-41-6 - location
	loc-41-7 - location
	loc-41-8 - location
	loc-41-9 - location
	loc-42-1 - location
	loc-42-10 - location
	loc-42-11 - location
	loc-42-12 - location
	loc-42-13 - location
	loc-42-14 - location
	loc-42-15 - location
	loc-42-16 - location
	loc-42-17 - location
	loc-42-18 - location
	loc-42-19 - location
	loc-42-2 - location
	loc-42-20 - location
	loc-42-21 - location
	loc-42-22 - location
	loc-42-23 - location
	loc-42-24 - location
	loc-42-25 - location
	loc-42-26 - location
	loc-42-27 - location
	loc-42-28 - location
	loc-42-29 - location
	loc-42-3 - location
	loc-42-30 - location
	loc-42-31 - location
	loc-42-32 - location
	loc-42-33 - location
	loc-42-34 - location
	loc-42-35 - location
	loc-42-36 - location
	loc-42-37 - location
	loc-42-38 - location
	loc-42-39 - location
	loc-42-4 - location
	loc-42-40 - location
	loc-42-41 - location
	loc-42-42 - location
	loc-42-43 - location
	loc-42-44 - location
	loc-42-45 - location
	loc-42-46 - location
	loc-42-47 - location
	loc-42-48 - location
	loc-42-49 - location
	loc-42-5 - location
	loc-42-6 - location
	loc-42-7 - location
	loc-42-8 - location
	loc-42-9 - location
	loc-43-1 - location
	loc-43-10 - location
	loc-43-11 - location
	loc-43-12 - location
	loc-43-13 - location
	loc-43-14 - location
	loc-43-15 - location
	loc-43-16 - location
	loc-43-17 - location
	loc-43-18 - location
	loc-43-19 - location
	loc-43-2 - location
	loc-43-20 - location
	loc-43-21 - location
	loc-43-22 - location
	loc-43-23 - location
	loc-43-24 - location
	loc-43-25 - location
	loc-43-26 - location
	loc-43-27 - location
	loc-43-28 - location
	loc-43-29 - location
	loc-43-3 - location
	loc-43-30 - location
	loc-43-31 - location
	loc-43-32 - location
	loc-43-33 - location
	loc-43-34 - location
	loc-43-35 - location
	loc-43-36 - location
	loc-43-37 - location
	loc-43-38 - location
	loc-43-39 - location
	loc-43-4 - location
	loc-43-40 - location
	loc-43-41 - location
	loc-43-42 - location
	loc-43-43 - location
	loc-43-44 - location
	loc-43-45 - location
	loc-43-46 - location
	loc-43-47 - location
	loc-43-48 - location
	loc-43-49 - location
	loc-43-5 - location
	loc-43-6 - location
	loc-43-7 - location
	loc-43-8 - location
	loc-43-9 - location
	loc-44-1 - location
	loc-44-10 - location
	loc-44-11 - location
	loc-44-12 - location
	loc-44-13 - location
	loc-44-14 - location
	loc-44-15 - location
	loc-44-16 - location
	loc-44-17 - location
	loc-44-18 - location
	loc-44-19 - location
	loc-44-2 - location
	loc-44-20 - location
	loc-44-21 - location
	loc-44-22 - location
	loc-44-23 - location
	loc-44-24 - location
	loc-44-25 - location
	loc-44-26 - location
	loc-44-27 - location
	loc-44-28 - location
	loc-44-29 - location
	loc-44-3 - location
	loc-44-30 - location
	loc-44-31 - location
	loc-44-32 - location
	loc-44-33 - location
	loc-44-34 - location
	loc-44-35 - location
	loc-44-36 - location
	loc-44-37 - location
	loc-44-38 - location
	loc-44-39 - location
	loc-44-4 - location
	loc-44-40 - location
	loc-44-41 - location
	loc-44-42 - location
	loc-44-43 - location
	loc-44-44 - location
	loc-44-45 - location
	loc-44-46 - location
	loc-44-47 - location
	loc-44-48 - location
	loc-44-49 - location
	loc-44-5 - location
	loc-44-6 - location
	loc-44-7 - location
	loc-44-8 - location
	loc-44-9 - location
	loc-45-1 - location
	loc-45-10 - location
	loc-45-11 - location
	loc-45-12 - location
	loc-45-13 - location
	loc-45-14 - location
	loc-45-15 - location
	loc-45-16 - location
	loc-45-17 - location
	loc-45-18 - location
	loc-45-19 - location
	loc-45-2 - location
	loc-45-20 - location
	loc-45-21 - location
	loc-45-22 - location
	loc-45-23 - location
	loc-45-24 - location
	loc-45-25 - location
	loc-45-26 - location
	loc-45-27 - location
	loc-45-28 - location
	loc-45-29 - location
	loc-45-3 - location
	loc-45-30 - location
	loc-45-31 - location
	loc-45-32 - location
	loc-45-33 - location
	loc-45-34 - location
	loc-45-35 - location
	loc-45-36 - location
	loc-45-37 - location
	loc-45-38 - location
	loc-45-39 - location
	loc-45-4 - location
	loc-45-40 - location
	loc-45-41 - location
	loc-45-42 - location
	loc-45-43 - location
	loc-45-44 - location
	loc-45-45 - location
	loc-45-46 - location
	loc-45-47 - location
	loc-45-48 - location
	loc-45-49 - location
	loc-45-5 - location
	loc-45-6 - location
	loc-45-7 - location
	loc-45-8 - location
	loc-45-9 - location
	loc-46-1 - location
	loc-46-10 - location
	loc-46-11 - location
	loc-46-12 - location
	loc-46-13 - location
	loc-46-14 - location
	loc-46-15 - location
	loc-46-16 - location
	loc-46-17 - location
	loc-46-18 - location
	loc-46-19 - location
	loc-46-2 - location
	loc-46-20 - location
	loc-46-21 - location
	loc-46-22 - location
	loc-46-23 - location
	loc-46-24 - location
	loc-46-25 - location
	loc-46-26 - location
	loc-46-27 - location
	loc-46-28 - location
	loc-46-29 - location
	loc-46-3 - location
	loc-46-30 - location
	loc-46-31 - location
	loc-46-32 - location
	loc-46-33 - location
	loc-46-34 - location
	loc-46-35 - location
	loc-46-36 - location
	loc-46-37 - location
	loc-46-38 - location
	loc-46-39 - location
	loc-46-4 - location
	loc-46-40 - location
	loc-46-41 - location
	loc-46-42 - location
	loc-46-43 - location
	loc-46-44 - location
	loc-46-45 - location
	loc-46-46 - location
	loc-46-47 - location
	loc-46-48 - location
	loc-46-49 - location
	loc-46-5 - location
	loc-46-6 - location
	loc-46-7 - location
	loc-46-8 - location
	loc-46-9 - location
	loc-47-1 - location
	loc-47-10 - location
	loc-47-11 - location
	loc-47-12 - location
	loc-47-13 - location
	loc-47-14 - location
	loc-47-15 - location
	loc-47-16 - location
	loc-47-17 - location
	loc-47-18 - location
	loc-47-19 - location
	loc-47-2 - location
	loc-47-20 - location
	loc-47-21 - location
	loc-47-22 - location
	loc-47-23 - location
	loc-47-24 - location
	loc-47-25 - location
	loc-47-26 - location
	loc-47-27 - location
	loc-47-28 - location
	loc-47-29 - location
	loc-47-3 - location
	loc-47-30 - location
	loc-47-31 - location
	loc-47-32 - location
	loc-47-33 - location
	loc-47-34 - location
	loc-47-35 - location
	loc-47-36 - location
	loc-47-37 - location
	loc-47-38 - location
	loc-47-39 - location
	loc-47-4 - location
	loc-47-40 - location
	loc-47-41 - location
	loc-47-42 - location
	loc-47-43 - location
	loc-47-44 - location
	loc-47-45 - location
	loc-47-46 - location
	loc-47-47 - location
	loc-47-48 - location
	loc-47-49 - location
	loc-47-5 - location
	loc-47-6 - location
	loc-47-7 - location
	loc-47-8 - location
	loc-47-9 - location
	loc-48-1 - location
	loc-48-10 - location
	loc-48-11 - location
	loc-48-12 - location
	loc-48-13 - location
	loc-48-14 - location
	loc-48-15 - location
	loc-48-16 - location
	loc-48-17 - location
	loc-48-18 - location
	loc-48-19 - location
	loc-48-2 - location
	loc-48-20 - location
	loc-48-21 - location
	loc-48-22 - location
	loc-48-23 - location
	loc-48-24 - location
	loc-48-25 - location
	loc-48-26 - location
	loc-48-27 - location
	loc-48-28 - location
	loc-48-29 - location
	loc-48-3 - location
	loc-48-30 - location
	loc-48-31 - location
	loc-48-32 - location
	loc-48-33 - location
	loc-48-34 - location
	loc-48-35 - location
	loc-48-36 - location
	loc-48-37 - location
	loc-48-38 - location
	loc-48-39 - location
	loc-48-4 - location
	loc-48-40 - location
	loc-48-41 - location
	loc-48-42 - location
	loc-48-43 - location
	loc-48-44 - location
	loc-48-45 - location
	loc-48-46 - location
	loc-48-47 - location
	loc-48-48 - location
	loc-48-49 - location
	loc-48-5 - location
	loc-48-6 - location
	loc-48-7 - location
	loc-48-8 - location
	loc-48-9 - location
	loc-49-1 - location
	loc-49-10 - location
	loc-49-11 - location
	loc-49-12 - location
	loc-49-13 - location
	loc-49-14 - location
	loc-49-15 - location
	loc-49-16 - location
	loc-49-17 - location
	loc-49-18 - location
	loc-49-19 - location
	loc-49-2 - location
	loc-49-20 - location
	loc-49-21 - location
	loc-49-22 - location
	loc-49-23 - location
	loc-49-24 - location
	loc-49-25 - location
	loc-49-26 - location
	loc-49-27 - location
	loc-49-28 - location
	loc-49-29 - location
	loc-49-3 - location
	loc-49-30 - location
	loc-49-31 - location
	loc-49-32 - location
	loc-49-33 - location
	loc-49-34 - location
	loc-49-35 - location
	loc-49-36 - location
	loc-49-37 - location
	loc-49-38 - location
	loc-49-39 - location
	loc-49-4 - location
	loc-49-40 - location
	loc-49-41 - location
	loc-49-42 - location
	loc-49-43 - location
	loc-49-44 - location
	loc-49-45 - location
	loc-49-46 - location
	loc-49-47 - location
	loc-49-48 - location
	loc-49-49 - location
	loc-49-5 - location
	loc-49-6 - location
	loc-49-7 - location
	loc-49-8 - location
	loc-49-9 - location
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
	loc-5-42 - location
	loc-5-43 - location
	loc-5-44 - location
	loc-5-45 - location
	loc-5-46 - location
	loc-5-47 - location
	loc-5-48 - location
	loc-5-49 - location
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
	loc-6-42 - location
	loc-6-43 - location
	loc-6-44 - location
	loc-6-45 - location
	loc-6-46 - location
	loc-6-47 - location
	loc-6-48 - location
	loc-6-49 - location
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
	loc-7-42 - location
	loc-7-43 - location
	loc-7-44 - location
	loc-7-45 - location
	loc-7-46 - location
	loc-7-47 - location
	loc-7-48 - location
	loc-7-49 - location
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
	loc-8-42 - location
	loc-8-43 - location
	loc-8-44 - location
	loc-8-45 - location
	loc-8-46 - location
	loc-8-47 - location
	loc-8-48 - location
	loc-8-49 - location
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
	loc-9-42 - location
	loc-9-43 - location
	loc-9-44 - location
	loc-9-45 - location
	loc-9-46 - location
	loc-9-47 - location
	loc-9-48 - location
	loc-9-49 - location
	loc-9-5 - location
	loc-9-6 - location
	loc-9-7 - location
	loc-9-8 - location
	loc-9-9 - location
	player-1 - player
  )
  (:init 
	(at player-1 loc-2-13)
	(clear loc-10-11)
	(clear loc-10-12)
	(clear loc-10-13)
	(clear loc-10-15)
	(clear loc-10-17)
	(clear loc-10-18)
	(clear loc-10-19)
	(clear loc-10-21)
	(clear loc-10-22)
	(clear loc-10-24)
	(clear loc-10-28)
	(clear loc-10-29)
	(clear loc-10-2)
	(clear loc-10-30)
	(clear loc-10-32)
	(clear loc-10-34)
	(clear loc-10-38)
	(clear loc-10-39)
	(clear loc-10-40)
	(clear loc-10-42)
	(clear loc-10-43)
	(clear loc-10-45)
	(clear loc-10-46)
	(clear loc-10-47)
	(clear loc-10-48)
	(clear loc-10-4)
	(clear loc-10-6)
	(clear loc-10-9)
	(clear loc-11-13)
	(clear loc-11-15)
	(clear loc-11-16)
	(clear loc-11-17)
	(clear loc-11-20)
	(clear loc-11-21)
	(clear loc-11-23)
	(clear loc-11-24)
	(clear loc-11-26)
	(clear loc-11-29)
	(clear loc-11-2)
	(clear loc-11-32)
	(clear loc-11-33)
	(clear loc-11-34)
	(clear loc-11-35)
	(clear loc-11-37)
	(clear loc-11-38)
	(clear loc-11-3)
	(clear loc-11-41)
	(clear loc-11-42)
	(clear loc-11-44)
	(clear loc-11-48)
	(clear loc-11-4)
	(clear loc-11-6)
	(clear loc-11-8)
	(clear loc-11-9)
	(clear loc-12-10)
	(clear loc-12-11)
	(clear loc-12-12)
	(clear loc-12-14)
	(clear loc-12-15)
	(clear loc-12-18)
	(clear loc-12-19)
	(clear loc-12-20)
	(clear loc-12-22)
	(clear loc-12-23)
	(clear loc-12-25)
	(clear loc-12-26)
	(clear loc-12-27)
	(clear loc-12-29)
	(clear loc-12-2)
	(clear loc-12-31)
	(clear loc-12-33)
	(clear loc-12-35)
	(clear loc-12-36)
	(clear loc-12-37)
	(clear loc-12-39)
	(clear loc-12-41)
	(clear loc-12-43)
	(clear loc-12-44)
	(clear loc-12-45)
	(clear loc-12-46)
	(clear loc-12-4)
	(clear loc-12-5)
	(clear loc-12-7)
	(clear loc-12-9)
	(clear loc-13-12)
	(clear loc-13-14)
	(clear loc-13-16)
	(clear loc-13-17)
	(clear loc-13-18)
	(clear loc-13-20)
	(clear loc-13-23)
	(clear loc-13-27)
	(clear loc-13-2)
	(clear loc-13-31)
	(clear loc-13-32)
	(clear loc-13-35)
	(clear loc-13-37)
	(clear loc-13-38)
	(clear loc-13-39)
	(clear loc-13-41)
	(clear loc-13-42)
	(clear loc-13-44)
	(clear loc-13-46)
	(clear loc-13-47)
	(clear loc-13-48)
	(clear loc-13-4)
	(clear loc-13-6)
	(clear loc-13-7)
	(clear loc-13-8)
	(clear loc-13-9)
	(clear loc-14-10)
	(clear loc-14-12)
	(clear loc-14-14)
	(clear loc-14-15)
	(clear loc-14-17)
	(clear loc-14-20)
	(clear loc-14-21)
	(clear loc-14-23)
	(clear loc-14-24)
	(clear loc-14-25)
	(clear loc-14-27)
	(clear loc-14-28)
	(clear loc-14-29)
	(clear loc-14-2)
	(clear loc-14-30)
	(clear loc-14-32)
	(clear loc-14-34)
	(clear loc-14-35)
	(clear loc-14-36)
	(clear loc-14-38)
	(clear loc-14-40)
	(clear loc-14-42)
	(clear loc-14-43)
	(clear loc-14-45)
	(clear loc-14-47)
	(clear loc-14-5)
	(clear loc-14-6)
	(clear loc-14-9)
	(clear loc-15-11)
	(clear loc-15-14)
	(clear loc-15-17)
	(clear loc-15-19)
	(clear loc-15-20)
	(clear loc-15-22)
	(clear loc-15-25)
	(clear loc-15-27)
	(clear loc-15-2)
	(clear loc-15-30)
	(clear loc-15-31)
	(clear loc-15-32)
	(clear loc-15-35)
	(clear loc-15-37)
	(clear loc-15-38)
	(clear loc-15-3)
	(clear loc-15-40)
	(clear loc-15-41)
	(clear loc-15-43)
	(clear loc-15-45)
	(clear loc-15-46)
	(clear loc-15-47)
	(clear loc-15-48)
	(clear loc-15-4)
	(clear loc-15-6)
	(clear loc-15-7)
	(clear loc-15-8)
	(clear loc-16-11)
	(clear loc-16-12)
	(clear loc-16-13)
	(clear loc-16-14)
	(clear loc-16-16)
	(clear loc-16-17)
	(clear loc-16-18)
	(clear loc-16-20)
	(clear loc-16-22)
	(clear loc-16-23)
	(clear loc-16-24)
	(clear loc-16-25)
	(clear loc-16-26)
	(clear loc-16-30)
	(clear loc-16-32)
	(clear loc-16-33)
	(clear loc-16-34)
	(clear loc-16-36)
	(clear loc-16-38)
	(clear loc-16-39)
	(clear loc-16-3)
	(clear loc-16-40)
	(clear loc-16-42)
	(clear loc-16-43)
	(clear loc-16-44)
	(clear loc-16-45)
	(clear loc-16-48)
	(clear loc-16-5)
	(clear loc-16-8)
	(clear loc-16-9)
	(clear loc-17-10)
	(clear loc-17-15)
	(clear loc-17-16)
	(clear loc-17-18)
	(clear loc-17-21)
	(clear loc-17-22)
	(clear loc-17-26)
	(clear loc-17-27)
	(clear loc-17-29)
	(clear loc-17-30)
	(clear loc-17-31)
	(clear loc-17-35)
	(clear loc-17-36)
	(clear loc-17-37)
	(clear loc-17-38)
	(clear loc-17-3)
	(clear loc-17-40)
	(clear loc-17-42)
	(clear loc-17-45)
	(clear loc-17-47)
	(clear loc-17-48)
	(clear loc-17-4)
	(clear loc-17-5)
	(clear loc-17-6)
	(clear loc-17-7)
	(clear loc-18-10)
	(clear loc-18-11)
	(clear loc-18-12)
	(clear loc-18-13)
	(clear loc-18-14)
	(clear loc-18-16)
	(clear loc-18-19)
	(clear loc-18-21)
	(clear loc-18-23)
	(clear loc-18-24)
	(clear loc-18-28)
	(clear loc-18-29)
	(clear loc-18-2)
	(clear loc-18-31)
	(clear loc-18-33)
	(clear loc-18-34)
	(clear loc-18-36)
	(clear loc-18-38)
	(clear loc-18-3)
	(clear loc-18-40)
	(clear loc-18-41)
	(clear loc-18-43)
	(clear loc-18-44)
	(clear loc-18-45)
	(clear loc-18-46)
	(clear loc-18-48)
	(clear loc-18-8)
	(clear loc-19-10)
	(clear loc-19-12)
	(clear loc-19-15)
	(clear loc-19-17)
	(clear loc-19-18)
	(clear loc-19-19)
	(clear loc-19-20)
	(clear loc-19-21)
	(clear loc-19-22)
	(clear loc-19-24)
	(clear loc-19-25)
	(clear loc-19-26)
	(clear loc-19-27)
	(clear loc-19-28)
	(clear loc-19-2)
	(clear loc-19-30)
	(clear loc-19-32)
	(clear loc-19-33)
	(clear loc-19-35)
	(clear loc-19-36)
	(clear loc-19-37)
	(clear loc-19-39)
	(clear loc-19-40)
	(clear loc-19-42)
	(clear loc-19-45)
	(clear loc-19-47)
	(clear loc-19-4)
	(clear loc-19-5)
	(clear loc-19-6)
	(clear loc-19-7)
	(clear loc-19-8)
	(clear loc-19-9)
	(clear loc-2-11)
	(clear loc-2-14)
	(clear loc-2-15)
	(clear loc-2-17)
	(clear loc-2-18)
	(clear loc-2-20)
	(clear loc-2-21)
	(clear loc-2-22)
	(clear loc-2-23)
	(clear loc-2-24)
	(clear loc-2-25)
	(clear loc-2-26)
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
	(clear loc-2-41)
	(clear loc-2-42)
	(clear loc-2-43)
	(clear loc-2-45)
	(clear loc-2-46)
	(clear loc-2-47)
	(clear loc-2-48)
	(clear loc-2-4)
	(clear loc-2-5)
	(clear loc-2-7)
	(clear loc-2-8)
	(clear loc-2-9)
	(clear loc-20-13)
	(clear loc-20-14)
	(clear loc-20-15)
	(clear loc-20-17)
	(clear loc-20-22)
	(clear loc-20-27)
	(clear loc-20-2)
	(clear loc-20-30)
	(clear loc-20-31)
	(clear loc-20-32)
	(clear loc-20-35)
	(clear loc-20-37)
	(clear loc-20-39)
	(clear loc-20-41)
	(clear loc-20-42)
	(clear loc-20-44)
	(clear loc-20-45)
	(clear loc-20-46)
	(clear loc-20-47)
	(clear loc-20-5)
	(clear loc-20-7)
	(clear loc-20-9)
	(clear loc-21-12)
	(clear loc-21-14)
	(clear loc-21-16)
	(clear loc-21-18)
	(clear loc-21-19)
	(clear loc-21-20)
	(clear loc-21-23)
	(clear loc-21-24)
	(clear loc-21-25)
	(clear loc-21-26)
	(clear loc-21-27)
	(clear loc-21-28)
	(clear loc-21-29)
	(clear loc-21-2)
	(clear loc-21-30)
	(clear loc-21-32)
	(clear loc-21-34)
	(clear loc-21-38)
	(clear loc-21-39)
	(clear loc-21-3)
	(clear loc-21-40)
	(clear loc-21-42)
	(clear loc-21-43)
	(clear loc-21-44)
	(clear loc-21-47)
	(clear loc-21-48)
	(clear loc-21-4)
	(clear loc-21-6)
	(clear loc-21-7)
	(clear loc-22-11)
	(clear loc-22-12)
	(clear loc-22-13)
	(clear loc-22-14)
	(clear loc-22-15)
	(clear loc-22-16)
	(clear loc-22-17)
	(clear loc-22-18)
	(clear loc-22-21)
	(clear loc-22-22)
	(clear loc-22-23)
	(clear loc-22-26)
	(clear loc-22-28)
	(clear loc-22-2)
	(clear loc-22-30)
	(clear loc-22-32)
	(clear loc-22-34)
	(clear loc-22-35)
	(clear loc-22-37)
	(clear loc-22-40)
	(clear loc-22-44)
	(clear loc-22-45)
	(clear loc-22-46)
	(clear loc-22-48)
	(clear loc-22-4)
	(clear loc-22-5)
	(clear loc-22-7)
	(clear loc-22-8)
	(clear loc-22-9)
	(clear loc-23-10)
	(clear loc-23-11)
	(clear loc-23-14)
	(clear loc-23-16)
	(clear loc-23-18)
	(clear loc-23-19)
	(clear loc-23-21)
	(clear loc-23-23)
	(clear loc-23-24)
	(clear loc-23-27)
	(clear loc-23-29)
	(clear loc-23-2)
	(clear loc-23-30)
	(clear loc-23-32)
	(clear loc-23-35)
	(clear loc-23-37)
	(clear loc-23-38)
	(clear loc-23-39)
	(clear loc-23-3)
	(clear loc-23-40)
	(clear loc-23-41)
	(clear loc-23-42)
	(clear loc-23-43)
	(clear loc-23-44)
	(clear loc-23-48)
	(clear loc-23-5)
	(clear loc-23-6)
	(clear loc-23-8)
	(clear loc-24-10)
	(clear loc-24-12)
	(clear loc-24-13)
	(clear loc-24-15)
	(clear loc-24-17)
	(clear loc-24-19)
	(clear loc-24-20)
	(clear loc-24-22)
	(clear loc-24-23)
	(clear loc-24-25)
	(clear loc-24-26)
	(clear loc-24-27)
	(clear loc-24-28)
	(clear loc-24-29)
	(clear loc-24-31)
	(clear loc-24-32)
	(clear loc-24-33)
	(clear loc-24-35)
	(clear loc-24-36)
	(clear loc-24-3)
	(clear loc-24-44)
	(clear loc-24-45)
	(clear loc-24-46)
	(clear loc-24-47)
	(clear loc-24-4)
	(clear loc-24-6)
	(clear loc-24-7)
	(clear loc-24-8)
	(clear loc-24-9)
	(clear loc-25-10)
	(clear loc-25-13)
	(clear loc-25-14)
	(clear loc-25-15)
	(clear loc-25-17)
	(clear loc-25-18)
	(clear loc-25-20)
	(clear loc-25-23)
	(clear loc-25-25)
	(clear loc-25-27)
	(clear loc-25-29)
	(clear loc-25-2)
	(clear loc-25-31)
	(clear loc-25-33)
	(clear loc-25-34)
	(clear loc-25-36)
	(clear loc-25-37)
	(clear loc-25-38)
	(clear loc-25-39)
	(clear loc-25-3)
	(clear loc-25-40)
	(clear loc-25-41)
	(clear loc-25-42)
	(clear loc-25-43)
	(clear loc-25-44)
	(clear loc-25-47)
	(clear loc-25-5)
	(clear loc-25-8)
	(clear loc-26-11)
	(clear loc-26-12)
	(clear loc-26-14)
	(clear loc-26-16)
	(clear loc-26-18)
	(clear loc-26-20)
	(clear loc-26-21)
	(clear loc-26-23)
	(clear loc-26-24)
	(clear loc-26-26)
	(clear loc-26-27)
	(clear loc-26-29)
	(clear loc-26-2)
	(clear loc-26-30)
	(clear loc-26-35)
	(clear loc-26-36)
	(clear loc-26-39)
	(clear loc-26-41)
	(clear loc-26-44)
	(clear loc-26-46)
	(clear loc-26-47)
	(clear loc-26-48)
	(clear loc-26-4)
	(clear loc-26-5)
	(clear loc-26-6)
	(clear loc-26-7)
	(clear loc-26-8)
	(clear loc-26-9)
	(clear loc-27-10)
	(clear loc-27-12)
	(clear loc-27-14)
	(clear loc-27-16)
	(clear loc-27-18)
	(clear loc-27-20)
	(clear loc-27-22)
	(clear loc-27-25)
	(clear loc-27-26)
	(clear loc-27-28)
	(clear loc-27-2)
	(clear loc-27-30)
	(clear loc-27-31)
	(clear loc-27-33)
	(clear loc-27-34)
	(clear loc-27-35)
	(clear loc-27-39)
	(clear loc-27-3)
	(clear loc-27-40)
	(clear loc-27-42)
	(clear loc-27-43)
	(clear loc-27-44)
	(clear loc-27-45)
	(clear loc-27-48)
	(clear loc-27-6)
	(clear loc-27-8)
	(clear loc-28-10)
	(clear loc-28-11)
	(clear loc-28-12)
	(clear loc-28-14)
	(clear loc-28-15)
	(clear loc-28-16)
	(clear loc-28-18)
	(clear loc-28-19)
	(clear loc-28-20)
	(clear loc-28-21)
	(clear loc-28-22)
	(clear loc-28-23)
	(clear loc-28-26)
	(clear loc-28-28)
	(clear loc-28-29)
	(clear loc-28-31)
	(clear loc-28-33)
	(clear loc-28-36)
	(clear loc-28-38)
	(clear loc-28-3)
	(clear loc-28-41)
	(clear loc-28-43)
	(clear loc-28-45)
	(clear loc-28-46)
	(clear loc-28-48)
	(clear loc-28-5)
	(clear loc-28-7)
	(clear loc-28-8)
	(clear loc-29-11)
	(clear loc-29-13)
	(clear loc-29-14)
	(clear loc-29-16)
	(clear loc-29-17)
	(clear loc-29-18)
	(clear loc-29-20)
	(clear loc-29-22)
	(clear loc-29-24)
	(clear loc-29-25)
	(clear loc-29-26)
	(clear loc-29-28)
	(clear loc-29-2)
	(clear loc-29-30)
	(clear loc-29-32)
	(clear loc-29-33)
	(clear loc-29-34)
	(clear loc-29-35)
	(clear loc-29-36)
	(clear loc-29-37)
	(clear loc-29-38)
	(clear loc-29-3)
	(clear loc-29-40)
	(clear loc-29-41)
	(clear loc-29-42)
	(clear loc-29-44)
	(clear loc-29-45)
	(clear loc-29-47)
	(clear loc-29-48)
	(clear loc-29-4)
	(clear loc-29-5)
	(clear loc-29-8)
	(clear loc-29-9)
	(clear loc-3-10)
	(clear loc-3-11)
	(clear loc-3-12)
	(clear loc-3-13)
	(clear loc-3-15)
	(clear loc-3-16)
	(clear loc-3-17)
	(clear loc-3-21)
	(clear loc-3-24)
	(clear loc-3-27)
	(clear loc-3-29)
	(clear loc-3-32)
	(clear loc-3-33)
	(clear loc-3-34)
	(clear loc-3-36)
	(clear loc-3-38)
	(clear loc-3-39)
	(clear loc-3-3)
	(clear loc-3-41)
	(clear loc-3-43)
	(clear loc-3-44)
	(clear loc-3-47)
	(clear loc-3-6)
	(clear loc-3-7)
	(clear loc-3-9)
	(clear loc-30-10)
	(clear loc-30-11)
	(clear loc-30-12)
	(clear loc-30-13)
	(clear loc-30-15)
	(clear loc-30-16)
	(clear loc-30-18)
	(clear loc-30-20)
	(clear loc-30-21)
	(clear loc-30-23)
	(clear loc-30-24)
	(clear loc-30-26)
	(clear loc-30-28)
	(clear loc-30-29)
	(clear loc-30-30)
	(clear loc-30-31)
	(clear loc-30-32)
	(clear loc-30-36)
	(clear loc-30-39)
	(clear loc-30-3)
	(clear loc-30-42)
	(clear loc-30-43)
	(clear loc-30-45)
	(clear loc-30-46)
	(clear loc-30-48)
	(clear loc-30-5)
	(clear loc-30-6)
	(clear loc-30-7)
	(clear loc-31-10)
	(clear loc-31-12)
	(clear loc-31-14)
	(clear loc-31-15)
	(clear loc-31-17)
	(clear loc-31-21)
	(clear loc-31-22)
	(clear loc-31-23)
	(clear loc-31-27)
	(clear loc-31-2)
	(clear loc-31-30)
	(clear loc-31-32)
	(clear loc-31-33)
	(clear loc-31-34)
	(clear loc-31-35)
	(clear loc-31-38)
	(clear loc-31-39)
	(clear loc-31-3)
	(clear loc-31-40)
	(clear loc-31-41)
	(clear loc-31-42)
	(clear loc-31-44)
	(clear loc-31-47)
	(clear loc-31-48)
	(clear loc-31-4)
	(clear loc-31-8)
	(clear loc-31-9)
	(clear loc-32-12)
	(clear loc-32-15)
	(clear loc-32-17)
	(clear loc-32-18)
	(clear loc-32-20)
	(clear loc-32-21)
	(clear loc-32-24)
	(clear loc-32-26)
	(clear loc-32-27)
	(clear loc-32-28)
	(clear loc-32-2)
	(clear loc-32-30)
	(clear loc-32-32)
	(clear loc-32-35)
	(clear loc-32-36)
	(clear loc-32-37)
	(clear loc-32-39)
	(clear loc-32-42)
	(clear loc-32-43)
	(clear loc-32-44)
	(clear loc-32-46)
	(clear loc-32-47)
	(clear loc-32-6)
	(clear loc-32-7)
	(clear loc-32-8)
	(clear loc-33-10)
	(clear loc-33-11)
	(clear loc-33-12)
	(clear loc-33-13)
	(clear loc-33-14)
	(clear loc-33-16)
	(clear loc-33-17)
	(clear loc-33-19)
	(clear loc-33-21)
	(clear loc-33-22)
	(clear loc-33-23)
	(clear loc-33-24)
	(clear loc-33-26)
	(clear loc-33-29)
	(clear loc-33-2)
	(clear loc-33-31)
	(clear loc-33-32)
	(clear loc-33-33)
	(clear loc-33-34)
	(clear loc-33-36)
	(clear loc-33-39)
	(clear loc-33-3)
	(clear loc-33-41)
	(clear loc-33-44)
	(clear loc-33-45)
	(clear loc-33-47)
	(clear loc-33-4)
	(clear loc-33-5)
	(clear loc-33-7)
	(clear loc-33-9)
	(clear loc-34-11)
	(clear loc-34-14)
	(clear loc-34-15)
	(clear loc-34-17)
	(clear loc-34-19)
	(clear loc-34-20)
	(clear loc-34-23)
	(clear loc-34-25)
	(clear loc-34-26)
	(clear loc-34-27)
	(clear loc-34-28)
	(clear loc-34-29)
	(clear loc-34-2)
	(clear loc-34-30)
	(clear loc-34-33)
	(clear loc-34-35)
	(clear loc-34-36)
	(clear loc-34-37)
	(clear loc-34-38)
	(clear loc-34-39)
	(clear loc-34-41)
	(clear loc-34-42)
	(clear loc-34-43)
	(clear loc-34-46)
	(clear loc-34-47)
	(clear loc-34-48)
	(clear loc-34-6)
	(clear loc-34-7)
	(clear loc-34-9)
	(clear loc-35-12)
	(clear loc-35-13)
	(clear loc-35-14)
	(clear loc-35-17)
	(clear loc-35-20)
	(clear loc-35-21)
	(clear loc-35-22)
	(clear loc-35-23)
	(clear loc-35-24)
	(clear loc-35-25)
	(clear loc-35-27)
	(clear loc-35-29)
	(clear loc-35-2)
	(clear loc-35-31)
	(clear loc-35-32)
	(clear loc-35-33)
	(clear loc-35-34)
	(clear loc-35-37)
	(clear loc-35-3)
	(clear loc-35-40)
	(clear loc-35-42)
	(clear loc-35-44)
	(clear loc-35-45)
	(clear loc-35-48)
	(clear loc-35-4)
	(clear loc-35-5)
	(clear loc-35-9)
	(clear loc-36-10)
	(clear loc-36-12)
	(clear loc-36-14)
	(clear loc-36-15)
	(clear loc-36-16)
	(clear loc-36-17)
	(clear loc-36-18)
	(clear loc-36-19)
	(clear loc-36-21)
	(clear loc-36-23)
	(clear loc-36-25)
	(clear loc-36-28)
	(clear loc-36-29)
	(clear loc-36-34)
	(clear loc-36-35)
	(clear loc-36-36)
	(clear loc-36-38)
	(clear loc-36-3)
	(clear loc-36-40)
	(clear loc-36-41)
	(clear loc-36-42)
	(clear loc-36-43)
	(clear loc-36-45)
	(clear loc-36-47)
	(clear loc-36-48)
	(clear loc-36-6)
	(clear loc-36-7)
	(clear loc-36-8)
	(clear loc-36-9)
	(clear loc-37-10)
	(clear loc-37-13)
	(clear loc-37-14)
	(clear loc-37-16)
	(clear loc-37-20)
	(clear loc-37-21)
	(clear loc-37-22)
	(clear loc-37-24)
	(clear loc-37-25)
	(clear loc-37-26)
	(clear loc-37-29)
	(clear loc-37-2)
	(clear loc-37-30)
	(clear loc-37-31)
	(clear loc-37-32)
	(clear loc-37-33)
	(clear loc-37-35)
	(clear loc-37-37)
	(clear loc-37-38)
	(clear loc-37-39)
	(clear loc-37-40)
	(clear loc-37-45)
	(clear loc-37-48)
	(clear loc-37-4)
	(clear loc-37-5)
	(clear loc-37-6)
	(clear loc-37-8)
	(clear loc-38-10)
	(clear loc-38-11)
	(clear loc-38-12)
	(clear loc-38-14)
	(clear loc-38-15)
	(clear loc-38-17)
	(clear loc-38-18)
	(clear loc-38-19)
	(clear loc-38-20)
	(clear loc-38-25)
	(clear loc-38-27)
	(clear loc-38-28)
	(clear loc-38-2)
	(clear loc-38-31)
	(clear loc-38-34)
	(clear loc-38-36)
	(clear loc-38-37)
	(clear loc-38-39)
	(clear loc-38-3)
	(clear loc-38-41)
	(clear loc-38-42)
	(clear loc-38-43)
	(clear loc-38-44)
	(clear loc-38-45)
	(clear loc-38-46)
	(clear loc-38-47)
	(clear loc-38-48)
	(clear loc-38-4)
	(clear loc-38-6)
	(clear loc-38-7)
	(clear loc-38-9)
	(clear loc-39-11)
	(clear loc-39-13)
	(clear loc-39-15)
	(clear loc-39-17)
	(clear loc-39-20)
	(clear loc-39-21)
	(clear loc-39-22)
	(clear loc-39-26)
	(clear loc-39-28)
	(clear loc-39-29)
	(clear loc-39-31)
	(clear loc-39-33)
	(clear loc-39-34)
	(clear loc-39-35)
	(clear loc-39-36)
	(clear loc-39-38)
	(clear loc-39-39)
	(clear loc-39-41)
	(clear loc-39-44)
	(clear loc-39-46)
	(clear loc-39-48)
	(clear loc-39-4)
	(clear loc-39-7)
	(clear loc-39-9)
	(clear loc-4-11)
	(clear loc-4-13)
	(clear loc-4-15)
	(clear loc-4-17)
	(clear loc-4-18)
	(clear loc-4-20)
	(clear loc-4-21)
	(clear loc-4-22)
	(clear loc-4-23)
	(clear loc-4-25)
	(clear loc-4-26)
	(clear loc-4-27)
	(clear loc-4-28)
	(clear loc-4-29)
	(clear loc-4-2)
	(clear loc-4-30)
	(clear loc-4-31)
	(clear loc-4-33)
	(clear loc-4-35)
	(clear loc-4-36)
	(clear loc-4-38)
	(clear loc-4-3)
	(clear loc-4-40)
	(clear loc-4-41)
	(clear loc-4-42)
	(clear loc-4-44)
	(clear loc-4-45)
	(clear loc-4-46)
	(clear loc-4-47)
	(clear loc-4-48)
	(clear loc-4-5)
	(clear loc-4-7)
	(clear loc-4-9)
	(clear loc-40-10)
	(clear loc-40-12)
	(clear loc-40-13)
	(clear loc-40-17)
	(clear loc-40-18)
	(clear loc-40-20)
	(clear loc-40-22)
	(clear loc-40-23)
	(clear loc-40-25)
	(clear loc-40-26)
	(clear loc-40-27)
	(clear loc-40-29)
	(clear loc-40-2)
	(clear loc-40-30)
	(clear loc-40-31)
	(clear loc-40-32)
	(clear loc-40-34)
	(clear loc-40-36)
	(clear loc-40-39)
	(clear loc-40-40)
	(clear loc-40-43)
	(clear loc-40-44)
	(clear loc-40-45)
	(clear loc-40-47)
	(clear loc-40-48)
	(clear loc-40-4)
	(clear loc-40-5)
	(clear loc-40-7)
	(clear loc-40-8)
	(clear loc-41-10)
	(clear loc-41-13)
	(clear loc-41-14)
	(clear loc-41-15)
	(clear loc-41-16)
	(clear loc-41-18)
	(clear loc-41-20)
	(clear loc-41-21)
	(clear loc-41-23)
	(clear loc-41-24)
	(clear loc-41-25)
	(clear loc-41-27)
	(clear loc-41-28)
	(clear loc-41-2)
	(clear loc-41-31)
	(clear loc-41-34)
	(clear loc-41-37)
	(clear loc-41-39)
	(clear loc-41-3)
	(clear loc-41-41)
	(clear loc-41-42)
	(clear loc-41-43)
	(clear loc-41-45)
	(clear loc-41-47)
	(clear loc-41-4)
	(clear loc-41-6)
	(clear loc-41-8)
	(clear loc-41-9)
	(clear loc-42-10)
	(clear loc-42-11)
	(clear loc-42-12)
	(clear loc-42-13)
	(clear loc-42-16)
	(clear loc-42-20)
	(clear loc-42-22)
	(clear loc-42-24)
	(clear loc-42-26)
	(clear loc-42-27)
	(clear loc-42-29)
	(clear loc-42-2)
	(clear loc-42-32)
	(clear loc-42-33)
	(clear loc-42-34)
	(clear loc-42-35)
	(clear loc-42-37)
	(clear loc-42-38)
	(clear loc-42-39)
	(clear loc-42-41)
	(clear loc-42-45)
	(clear loc-42-47)
	(clear loc-42-6)
	(clear loc-42-8)
	(clear loc-43-10)
	(clear loc-43-15)
	(clear loc-43-16)
	(clear loc-43-17)
	(clear loc-43-18)
	(clear loc-43-19)
	(clear loc-43-22)
	(clear loc-43-24)
	(clear loc-43-25)
	(clear loc-43-28)
	(clear loc-43-29)
	(clear loc-43-2)
	(clear loc-43-30)
	(clear loc-43-31)
	(clear loc-43-32)
	(clear loc-43-35)
	(clear loc-43-37)
	(clear loc-43-39)
	(clear loc-43-40)
	(clear loc-43-42)
	(clear loc-43-43)
	(clear loc-43-44)
	(clear loc-43-47)
	(clear loc-43-48)
	(clear loc-43-4)
	(clear loc-43-5)
	(clear loc-43-6)
	(clear loc-43-7)
	(clear loc-43-8)
	(clear loc-44-10)
	(clear loc-44-12)
	(clear loc-44-13)
	(clear loc-44-14)
	(clear loc-44-15)
	(clear loc-44-17)
	(clear loc-44-19)
	(clear loc-44-21)
	(clear loc-44-22)
	(clear loc-44-23)
	(clear loc-44-24)
	(clear loc-44-26)
	(clear loc-44-27)
	(clear loc-44-29)
	(clear loc-44-31)
	(clear loc-44-35)
	(clear loc-44-37)
	(clear loc-44-38)
	(clear loc-44-3)
	(clear loc-44-40)
	(clear loc-44-42)
	(clear loc-44-44)
	(clear loc-44-46)
	(clear loc-44-47)
	(clear loc-44-4)
	(clear loc-44-6)
	(clear loc-44-9)
	(clear loc-45-10)
	(clear loc-45-12)
	(clear loc-45-15)
	(clear loc-45-16)
	(clear loc-45-18)
	(clear loc-45-21)
	(clear loc-45-23)
	(clear loc-45-25)
	(clear loc-45-27)
	(clear loc-45-28)
	(clear loc-45-2)
	(clear loc-45-31)
	(clear loc-45-34)
	(clear loc-45-35)
	(clear loc-45-36)
	(clear loc-45-38)
	(clear loc-45-3)
	(clear loc-45-41)
	(clear loc-45-43)
	(clear loc-45-44)
	(clear loc-45-46)
	(clear loc-45-48)
	(clear loc-45-5)
	(clear loc-45-6)
	(clear loc-45-7)
	(clear loc-45-8)
	(clear loc-46-11)
	(clear loc-46-12)
	(clear loc-46-13)
	(clear loc-46-15)
	(clear loc-46-17)
	(clear loc-46-18)
	(clear loc-46-20)
	(clear loc-46-21)
	(clear loc-46-23)
	(clear loc-46-24)
	(clear loc-46-25)
	(clear loc-46-26)
	(clear loc-46-28)
	(clear loc-46-2)
	(clear loc-46-30)
	(clear loc-46-31)
	(clear loc-46-32)
	(clear loc-46-33)
	(clear loc-46-37)
	(clear loc-46-39)
	(clear loc-46-40)
	(clear loc-46-41)
	(clear loc-46-44)
	(clear loc-46-45)
	(clear loc-46-46)
	(clear loc-46-48)
	(clear loc-46-4)
	(clear loc-46-6)
	(clear loc-46-9)
	(clear loc-47-10)
	(clear loc-47-11)
	(clear loc-47-13)
	(clear loc-47-15)
	(clear loc-47-18)
	(clear loc-47-19)
	(clear loc-47-20)
	(clear loc-47-22)
	(clear loc-47-24)
	(clear loc-47-26)
	(clear loc-47-28)
	(clear loc-47-29)
	(clear loc-47-2)
	(clear loc-47-30)
	(clear loc-47-32)
	(clear loc-47-34)
	(clear loc-47-35)
	(clear loc-47-36)
	(clear loc-47-37)
	(clear loc-47-38)
	(clear loc-47-39)
	(clear loc-47-41)
	(clear loc-47-42)
	(clear loc-47-46)
	(clear loc-47-48)
	(clear loc-47-4)
	(clear loc-47-6)
	(clear loc-47-8)
	(clear loc-47-9)
	(clear loc-48-11)
	(clear loc-48-13)
	(clear loc-48-14)
	(clear loc-48-16)
	(clear loc-48-17)
	(clear loc-48-18)
	(clear loc-48-20)
	(clear loc-48-21)
	(clear loc-48-22)
	(clear loc-48-23)
	(clear loc-48-25)
	(clear loc-48-26)
	(clear loc-48-27)
	(clear loc-48-28)
	(clear loc-48-31)
	(clear loc-48-32)
	(clear loc-48-33)
	(clear loc-48-34)
	(clear loc-48-37)
	(clear loc-48-39)
	(clear loc-48-3)
	(clear loc-48-40)
	(clear loc-48-42)
	(clear loc-48-43)
	(clear loc-48-44)
	(clear loc-48-45)
	(clear loc-48-46)
	(clear loc-48-47)
	(clear loc-48-48)
	(clear loc-48-4)
	(clear loc-48-5)
	(clear loc-48-6)
	(clear loc-48-7)
	(clear loc-48-9)
	(clear loc-5-10)
	(clear loc-5-11)
	(clear loc-5-12)
	(clear loc-5-14)
	(clear loc-5-16)
	(clear loc-5-18)
	(clear loc-5-20)
	(clear loc-5-24)
	(clear loc-5-28)
	(clear loc-5-31)
	(clear loc-5-33)
	(clear loc-5-34)
	(clear loc-5-36)
	(clear loc-5-38)
	(clear loc-5-3)
	(clear loc-5-40)
	(clear loc-5-44)
	(clear loc-5-5)
	(clear loc-5-7)
	(clear loc-5-8)
	(clear loc-6-10)
	(clear loc-6-12)
	(clear loc-6-14)
	(clear loc-6-15)
	(clear loc-6-16)
	(clear loc-6-17)
	(clear loc-6-18)
	(clear loc-6-19)
	(clear loc-6-20)
	(clear loc-6-22)
	(clear loc-6-23)
	(clear loc-6-24)
	(clear loc-6-25)
	(clear loc-6-26)
	(clear loc-6-27)
	(clear loc-6-28)
	(clear loc-6-2)
	(clear loc-6-30)
	(clear loc-6-33)
	(clear loc-6-35)
	(clear loc-6-36)
	(clear loc-6-39)
	(clear loc-6-3)
	(clear loc-6-40)
	(clear loc-6-42)
	(clear loc-6-43)
	(clear loc-6-44)
	(clear loc-6-45)
	(clear loc-6-46)
	(clear loc-6-47)
	(clear loc-6-48)
	(clear loc-6-4)
	(clear loc-6-5)
	(clear loc-6-6)
	(clear loc-6-8)
	(clear loc-7-11)
	(clear loc-7-13)
	(clear loc-7-15)
	(clear loc-7-17)
	(clear loc-7-19)
	(clear loc-7-21)
	(clear loc-7-23)
	(clear loc-7-25)
	(clear loc-7-27)
	(clear loc-7-2)
	(clear loc-7-30)
	(clear loc-7-31)
	(clear loc-7-32)
	(clear loc-7-36)
	(clear loc-7-37)
	(clear loc-7-38)
	(clear loc-7-41)
	(clear loc-7-46)
	(clear loc-7-48)
	(clear loc-7-5)
	(clear loc-7-7)
	(clear loc-7-9)
	(clear loc-8-11)
	(clear loc-8-12)
	(clear loc-8-13)
	(clear loc-8-14)
	(clear loc-8-15)
	(clear loc-8-16)
	(clear loc-8-18)
	(clear loc-8-19)
	(clear loc-8-20)
	(clear loc-8-21)
	(clear loc-8-22)
	(clear loc-8-23)
	(clear loc-8-24)
	(clear loc-8-26)
	(clear loc-8-28)
	(clear loc-8-29)
	(clear loc-8-2)
	(clear loc-8-32)
	(clear loc-8-33)
	(clear loc-8-35)
	(clear loc-8-36)
	(clear loc-8-38)
	(clear loc-8-40)
	(clear loc-8-41)
	(clear loc-8-42)
	(clear loc-8-43)
	(clear loc-8-44)
	(clear loc-8-47)
	(clear loc-8-48)
	(clear loc-8-4)
	(clear loc-8-7)
	(clear loc-8-8)
	(clear loc-8-9)
	(clear loc-9-10)
	(clear loc-9-12)
	(clear loc-9-15)
	(clear loc-9-17)
	(clear loc-9-20)
	(clear loc-9-22)
	(clear loc-9-24)
	(clear loc-9-25)
	(clear loc-9-26)
	(clear loc-9-27)
	(clear loc-9-28)
	(clear loc-9-2)
	(clear loc-9-30)
	(clear loc-9-31)
	(clear loc-9-33)
	(clear loc-9-34)
	(clear loc-9-37)
	(clear loc-9-38)
	(clear loc-9-40)
	(clear loc-9-44)
	(clear loc-9-45)
	(clear loc-9-48)
	(clear loc-9-4)
	(clear loc-9-5)
	(clear loc-9-6)
	(clear loc-9-7)
	(clear loc-9-9)
	(is-goal loc-38-34)
	(move-dir-down loc-10-13 loc-11-13)
	(move-dir-down loc-10-15 loc-11-15)
	(move-dir-down loc-10-17 loc-11-17)
	(move-dir-down loc-10-21 loc-11-21)
	(move-dir-down loc-10-24 loc-11-24)
	(move-dir-down loc-10-29 loc-11-29)
	(move-dir-down loc-10-2 loc-11-2)
	(move-dir-down loc-10-32 loc-11-32)
	(move-dir-down loc-10-34 loc-11-34)
	(move-dir-down loc-10-38 loc-11-38)
	(move-dir-down loc-10-42 loc-11-42)
	(move-dir-down loc-10-48 loc-11-48)
	(move-dir-down loc-10-4 loc-11-4)
	(move-dir-down loc-10-6 loc-11-6)
	(move-dir-down loc-10-9 loc-11-9)
	(move-dir-down loc-11-15 loc-12-15)
	(move-dir-down loc-11-20 loc-12-20)
	(move-dir-down loc-11-23 loc-12-23)
	(move-dir-down loc-11-26 loc-12-26)
	(move-dir-down loc-11-29 loc-12-29)
	(move-dir-down loc-11-2 loc-12-2)
	(move-dir-down loc-11-33 loc-12-33)
	(move-dir-down loc-11-35 loc-12-35)
	(move-dir-down loc-11-37 loc-12-37)
	(move-dir-down loc-11-41 loc-12-41)
	(move-dir-down loc-11-44 loc-12-44)
	(move-dir-down loc-11-4 loc-12-4)
	(move-dir-down loc-11-9 loc-12-9)
	(move-dir-down loc-12-12 loc-13-12)
	(move-dir-down loc-12-14 loc-13-14)
	(move-dir-down loc-12-18 loc-13-18)
	(move-dir-down loc-12-20 loc-13-20)
	(move-dir-down loc-12-23 loc-13-23)
	(move-dir-down loc-12-27 loc-13-27)
	(move-dir-down loc-12-2 loc-13-2)
	(move-dir-down loc-12-31 loc-13-31)
	(move-dir-down loc-12-35 loc-13-35)
	(move-dir-down loc-12-37 loc-13-37)
	(move-dir-down loc-12-39 loc-13-39)
	(move-dir-down loc-12-41 loc-13-41)
	(move-dir-down loc-12-44 loc-13-44)
	(move-dir-down loc-12-46 loc-13-46)
	(move-dir-down loc-12-4 loc-13-4)
	(move-dir-down loc-12-7 loc-13-7)
	(move-dir-down loc-12-9 loc-13-9)
	(move-dir-down loc-13-12 loc-14-12)
	(move-dir-down loc-13-14 loc-14-14)
	(move-dir-down loc-13-17 loc-14-17)
	(move-dir-down loc-13-20 loc-14-20)
	(move-dir-down loc-13-23 loc-14-23)
	(move-dir-down loc-13-27 loc-14-27)
	(move-dir-down loc-13-2 loc-14-2)
	(move-dir-down loc-13-32 loc-14-32)
	(move-dir-down loc-13-35 loc-14-35)
	(move-dir-down loc-13-38 loc-14-38)
	(move-dir-down loc-13-42 loc-14-42)
	(move-dir-down loc-13-47 loc-14-47)
	(move-dir-down loc-13-6 loc-14-6)
	(move-dir-down loc-13-9 loc-14-9)
	(move-dir-down loc-14-14 loc-15-14)
	(move-dir-down loc-14-17 loc-15-17)
	(move-dir-down loc-14-20 loc-15-20)
	(move-dir-down loc-14-25 loc-15-25)
	(move-dir-down loc-14-27 loc-15-27)
	(move-dir-down loc-14-2 loc-15-2)
	(move-dir-down loc-14-30 loc-15-30)
	(move-dir-down loc-14-32 loc-15-32)
	(move-dir-down loc-14-35 loc-15-35)
	(move-dir-down loc-14-38 loc-15-38)
	(move-dir-down loc-14-40 loc-15-40)
	(move-dir-down loc-14-43 loc-15-43)
	(move-dir-down loc-14-45 loc-15-45)
	(move-dir-down loc-14-47 loc-15-47)
	(move-dir-down loc-14-6 loc-15-6)
	(move-dir-down loc-15-11 loc-16-11)
	(move-dir-down loc-15-14 loc-16-14)
	(move-dir-down loc-15-17 loc-16-17)
	(move-dir-down loc-15-20 loc-16-20)
	(move-dir-down loc-15-22 loc-16-22)
	(move-dir-down loc-15-25 loc-16-25)
	(move-dir-down loc-15-30 loc-16-30)
	(move-dir-down loc-15-32 loc-16-32)
	(move-dir-down loc-15-38 loc-16-38)
	(move-dir-down loc-15-3 loc-16-3)
	(move-dir-down loc-15-40 loc-16-40)
	(move-dir-down loc-15-43 loc-16-43)
	(move-dir-down loc-15-45 loc-16-45)
	(move-dir-down loc-15-48 loc-16-48)
	(move-dir-down loc-15-8 loc-16-8)
	(move-dir-down loc-16-16 loc-17-16)
	(move-dir-down loc-16-18 loc-17-18)
	(move-dir-down loc-16-22 loc-17-22)
	(move-dir-down loc-16-26 loc-17-26)
	(move-dir-down loc-16-30 loc-17-30)
	(move-dir-down loc-16-36 loc-17-36)
	(move-dir-down loc-16-38 loc-17-38)
	(move-dir-down loc-16-3 loc-17-3)
	(move-dir-down loc-16-40 loc-17-40)
	(move-dir-down loc-16-42 loc-17-42)
	(move-dir-down loc-16-45 loc-17-45)
	(move-dir-down loc-16-48 loc-17-48)
	(move-dir-down loc-16-5 loc-17-5)
	(move-dir-down loc-17-10 loc-18-10)
	(move-dir-down loc-17-16 loc-18-16)
	(move-dir-down loc-17-21 loc-18-21)
	(move-dir-down loc-17-29 loc-18-29)
	(move-dir-down loc-17-31 loc-18-31)
	(move-dir-down loc-17-36 loc-18-36)
	(move-dir-down loc-17-38 loc-18-38)
	(move-dir-down loc-17-3 loc-18-3)
	(move-dir-down loc-17-40 loc-18-40)
	(move-dir-down loc-17-45 loc-18-45)
	(move-dir-down loc-17-48 loc-18-48)
	(move-dir-down loc-18-10 loc-19-10)
	(move-dir-down loc-18-12 loc-19-12)
	(move-dir-down loc-18-19 loc-19-19)
	(move-dir-down loc-18-21 loc-19-21)
	(move-dir-down loc-18-24 loc-19-24)
	(move-dir-down loc-18-28 loc-19-28)
	(move-dir-down loc-18-2 loc-19-2)
	(move-dir-down loc-18-33 loc-19-33)
	(move-dir-down loc-18-36 loc-19-36)
	(move-dir-down loc-18-40 loc-19-40)
	(move-dir-down loc-18-45 loc-19-45)
	(move-dir-down loc-18-8 loc-19-8)
	(move-dir-down loc-19-15 loc-20-15)
	(move-dir-down loc-19-17 loc-20-17)
	(move-dir-down loc-19-22 loc-20-22)
	(move-dir-down loc-19-27 loc-20-27)
	(move-dir-down loc-19-2 loc-20-2)
	(move-dir-down loc-19-30 loc-20-30)
	(move-dir-down loc-19-32 loc-20-32)
	(move-dir-down loc-19-35 loc-20-35)
	(move-dir-down loc-19-37 loc-20-37)
	(move-dir-down loc-19-39 loc-20-39)
	(move-dir-down loc-19-42 loc-20-42)
	(move-dir-down loc-19-45 loc-20-45)
	(move-dir-down loc-19-47 loc-20-47)
	(move-dir-down loc-19-5 loc-20-5)
	(move-dir-down loc-19-7 loc-20-7)
	(move-dir-down loc-19-9 loc-20-9)
	(move-dir-down loc-2-11 loc-3-11)
	(move-dir-down loc-2-13 loc-3-13)
	(move-dir-down loc-2-15 loc-3-15)
	(move-dir-down loc-2-17 loc-3-17)
	(move-dir-down loc-2-21 loc-3-21)
	(move-dir-down loc-2-24 loc-3-24)
	(move-dir-down loc-2-29 loc-3-29)
	(move-dir-down loc-2-32 loc-3-32)
	(move-dir-down loc-2-34 loc-3-34)
	(move-dir-down loc-2-36 loc-3-36)
	(move-dir-down loc-2-38 loc-3-38)
	(move-dir-down loc-2-3 loc-3-3)
	(move-dir-down loc-2-41 loc-3-41)
	(move-dir-down loc-2-43 loc-3-43)
	(move-dir-down loc-2-47 loc-3-47)
	(move-dir-down loc-2-7 loc-3-7)
	(move-dir-down loc-2-9 loc-3-9)
	(move-dir-down loc-20-14 loc-21-14)
	(move-dir-down loc-20-27 loc-21-27)
	(move-dir-down loc-20-2 loc-21-2)
	(move-dir-down loc-20-30 loc-21-30)
	(move-dir-down loc-20-32 loc-21-32)
	(move-dir-down loc-20-39 loc-21-39)
	(move-dir-down loc-20-42 loc-21-42)
	(move-dir-down loc-20-44 loc-21-44)
	(move-dir-down loc-20-47 loc-21-47)
	(move-dir-down loc-20-7 loc-21-7)
	(move-dir-down loc-21-12 loc-22-12)
	(move-dir-down loc-21-14 loc-22-14)
	(move-dir-down loc-21-16 loc-22-16)
	(move-dir-down loc-21-18 loc-22-18)
	(move-dir-down loc-21-23 loc-22-23)
	(move-dir-down loc-21-26 loc-22-26)
	(move-dir-down loc-21-28 loc-22-28)
	(move-dir-down loc-21-2 loc-22-2)
	(move-dir-down loc-21-30 loc-22-30)
	(move-dir-down loc-21-32 loc-22-32)
	(move-dir-down loc-21-34 loc-22-34)
	(move-dir-down loc-21-40 loc-22-40)
	(move-dir-down loc-21-44 loc-22-44)
	(move-dir-down loc-21-48 loc-22-48)
	(move-dir-down loc-21-4 loc-22-4)
	(move-dir-down loc-21-7 loc-22-7)
	(move-dir-down loc-22-11 loc-23-11)
	(move-dir-down loc-22-14 loc-23-14)
	(move-dir-down loc-22-16 loc-23-16)
	(move-dir-down loc-22-18 loc-23-18)
	(move-dir-down loc-22-21 loc-23-21)
	(move-dir-down loc-22-23 loc-23-23)
	(move-dir-down loc-22-2 loc-23-2)
	(move-dir-down loc-22-30 loc-23-30)
	(move-dir-down loc-22-32 loc-23-32)
	(move-dir-down loc-22-35 loc-23-35)
	(move-dir-down loc-22-37 loc-23-37)
	(move-dir-down loc-22-40 loc-23-40)
	(move-dir-down loc-22-44 loc-23-44)
	(move-dir-down loc-22-48 loc-23-48)
	(move-dir-down loc-22-5 loc-23-5)
	(move-dir-down loc-22-8 loc-23-8)
	(move-dir-down loc-23-10 loc-24-10)
	(move-dir-down loc-23-19 loc-24-19)
	(move-dir-down loc-23-23 loc-24-23)
	(move-dir-down loc-23-27 loc-24-27)
	(move-dir-down loc-23-29 loc-24-29)
	(move-dir-down loc-23-32 loc-24-32)
	(move-dir-down loc-23-35 loc-24-35)
	(move-dir-down loc-23-3 loc-24-3)
	(move-dir-down loc-23-44 loc-24-44)
	(move-dir-down loc-23-6 loc-24-6)
	(move-dir-down loc-23-8 loc-24-8)
	(move-dir-down loc-24-10 loc-25-10)
	(move-dir-down loc-24-13 loc-25-13)
	(move-dir-down loc-24-15 loc-25-15)
	(move-dir-down loc-24-17 loc-25-17)
	(move-dir-down loc-24-20 loc-25-20)
	(move-dir-down loc-24-23 loc-25-23)
	(move-dir-down loc-24-25 loc-25-25)
	(move-dir-down loc-24-27 loc-25-27)
	(move-dir-down loc-24-29 loc-25-29)
	(move-dir-down loc-24-31 loc-25-31)
	(move-dir-down loc-24-33 loc-25-33)
	(move-dir-down loc-24-36 loc-25-36)
	(move-dir-down loc-24-3 loc-25-3)
	(move-dir-down loc-24-44 loc-25-44)
	(move-dir-down loc-24-47 loc-25-47)
	(move-dir-down loc-24-8 loc-25-8)
	(move-dir-down loc-25-14 loc-26-14)
	(move-dir-down loc-25-18 loc-26-18)
	(move-dir-down loc-25-20 loc-26-20)
	(move-dir-down loc-25-23 loc-26-23)
	(move-dir-down loc-25-27 loc-26-27)
	(move-dir-down loc-25-29 loc-26-29)
	(move-dir-down loc-25-2 loc-26-2)
	(move-dir-down loc-25-36 loc-26-36)
	(move-dir-down loc-25-39 loc-26-39)
	(move-dir-down loc-25-41 loc-26-41)
	(move-dir-down loc-25-44 loc-26-44)
	(move-dir-down loc-25-47 loc-26-47)
	(move-dir-down loc-25-5 loc-26-5)
	(move-dir-down loc-25-8 loc-26-8)
	(move-dir-down loc-26-12 loc-27-12)
	(move-dir-down loc-26-14 loc-27-14)
	(move-dir-down loc-26-16 loc-27-16)
	(move-dir-down loc-26-18 loc-27-18)
	(move-dir-down loc-26-20 loc-27-20)
	(move-dir-down loc-26-26 loc-27-26)
	(move-dir-down loc-26-2 loc-27-2)
	(move-dir-down loc-26-30 loc-27-30)
	(move-dir-down loc-26-35 loc-27-35)
	(move-dir-down loc-26-39 loc-27-39)
	(move-dir-down loc-26-44 loc-27-44)
	(move-dir-down loc-26-48 loc-27-48)
	(move-dir-down loc-26-6 loc-27-6)
	(move-dir-down loc-26-8 loc-27-8)
	(move-dir-down loc-27-10 loc-28-10)
	(move-dir-down loc-27-12 loc-28-12)
	(move-dir-down loc-27-14 loc-28-14)
	(move-dir-down loc-27-16 loc-28-16)
	(move-dir-down loc-27-18 loc-28-18)
	(move-dir-down loc-27-20 loc-28-20)
	(move-dir-down loc-27-22 loc-28-22)
	(move-dir-down loc-27-26 loc-28-26)
	(move-dir-down loc-27-28 loc-28-28)
	(move-dir-down loc-27-31 loc-28-31)
	(move-dir-down loc-27-33 loc-28-33)
	(move-dir-down loc-27-3 loc-28-3)
	(move-dir-down loc-27-43 loc-28-43)
	(move-dir-down loc-27-45 loc-28-45)
	(move-dir-down loc-27-48 loc-28-48)
	(move-dir-down loc-27-8 loc-28-8)
	(move-dir-down loc-28-11 loc-29-11)
	(move-dir-down loc-28-14 loc-29-14)
	(move-dir-down loc-28-16 loc-29-16)
	(move-dir-down loc-28-18 loc-29-18)
	(move-dir-down loc-28-20 loc-29-20)
	(move-dir-down loc-28-22 loc-29-22)
	(move-dir-down loc-28-26 loc-29-26)
	(move-dir-down loc-28-28 loc-29-28)
	(move-dir-down loc-28-33 loc-29-33)
	(move-dir-down loc-28-36 loc-29-36)
	(move-dir-down loc-28-38 loc-29-38)
	(move-dir-down loc-28-3 loc-29-3)
	(move-dir-down loc-28-41 loc-29-41)
	(move-dir-down loc-28-45 loc-29-45)
	(move-dir-down loc-28-48 loc-29-48)
	(move-dir-down loc-28-5 loc-29-5)
	(move-dir-down loc-28-8 loc-29-8)
	(move-dir-down loc-29-11 loc-30-11)
	(move-dir-down loc-29-13 loc-30-13)
	(move-dir-down loc-29-16 loc-30-16)
	(move-dir-down loc-29-18 loc-30-18)
	(move-dir-down loc-29-20 loc-30-20)
	(move-dir-down loc-29-24 loc-30-24)
	(move-dir-down loc-29-26 loc-30-26)
	(move-dir-down loc-29-28 loc-30-28)
	(move-dir-down loc-29-30 loc-30-30)
	(move-dir-down loc-29-32 loc-30-32)
	(move-dir-down loc-29-36 loc-30-36)
	(move-dir-down loc-29-3 loc-30-3)
	(move-dir-down loc-29-42 loc-30-42)
	(move-dir-down loc-29-45 loc-30-45)
	(move-dir-down loc-29-48 loc-30-48)
	(move-dir-down loc-29-5 loc-30-5)
	(move-dir-down loc-3-11 loc-4-11)
	(move-dir-down loc-3-13 loc-4-13)
	(move-dir-down loc-3-15 loc-4-15)
	(move-dir-down loc-3-17 loc-4-17)
	(move-dir-down loc-3-21 loc-4-21)
	(move-dir-down loc-3-27 loc-4-27)
	(move-dir-down loc-3-29 loc-4-29)
	(move-dir-down loc-3-33 loc-4-33)
	(move-dir-down loc-3-36 loc-4-36)
	(move-dir-down loc-3-38 loc-4-38)
	(move-dir-down loc-3-3 loc-4-3)
	(move-dir-down loc-3-41 loc-4-41)
	(move-dir-down loc-3-44 loc-4-44)
	(move-dir-down loc-3-47 loc-4-47)
	(move-dir-down loc-3-7 loc-4-7)
	(move-dir-down loc-3-9 loc-4-9)
	(move-dir-down loc-30-10 loc-31-10)
	(move-dir-down loc-30-12 loc-31-12)
	(move-dir-down loc-30-15 loc-31-15)
	(move-dir-down loc-30-21 loc-31-21)
	(move-dir-down loc-30-23 loc-31-23)
	(move-dir-down loc-30-30 loc-31-30)
	(move-dir-down loc-30-32 loc-31-32)
	(move-dir-down loc-30-39 loc-31-39)
	(move-dir-down loc-30-3 loc-31-3)
	(move-dir-down loc-30-42 loc-31-42)
	(move-dir-down loc-30-48 loc-31-48)
	(move-dir-down loc-31-12 loc-32-12)
	(move-dir-down loc-31-15 loc-32-15)
	(move-dir-down loc-31-17 loc-32-17)
	(move-dir-down loc-31-21 loc-32-21)
	(move-dir-down loc-31-27 loc-32-27)
	(move-dir-down loc-31-2 loc-32-2)
	(move-dir-down loc-31-30 loc-32-30)
	(move-dir-down loc-31-32 loc-32-32)
	(move-dir-down loc-31-35 loc-32-35)
	(move-dir-down loc-31-39 loc-32-39)
	(move-dir-down loc-31-42 loc-32-42)
	(move-dir-down loc-31-44 loc-32-44)
	(move-dir-down loc-31-47 loc-32-47)
	(move-dir-down loc-31-8 loc-32-8)
	(move-dir-down loc-32-12 loc-33-12)
	(move-dir-down loc-32-17 loc-33-17)
	(move-dir-down loc-32-21 loc-33-21)
	(move-dir-down loc-32-24 loc-33-24)
	(move-dir-down loc-32-26 loc-33-26)
	(move-dir-down loc-32-2 loc-33-2)
	(move-dir-down loc-32-32 loc-33-32)
	(move-dir-down loc-32-36 loc-33-36)
	(move-dir-down loc-32-39 loc-33-39)
	(move-dir-down loc-32-44 loc-33-44)
	(move-dir-down loc-32-47 loc-33-47)
	(move-dir-down loc-32-7 loc-33-7)
	(move-dir-down loc-33-11 loc-34-11)
	(move-dir-down loc-33-14 loc-34-14)
	(move-dir-down loc-33-17 loc-34-17)
	(move-dir-down loc-33-19 loc-34-19)
	(move-dir-down loc-33-23 loc-34-23)
	(move-dir-down loc-33-26 loc-34-26)
	(move-dir-down loc-33-29 loc-34-29)
	(move-dir-down loc-33-2 loc-34-2)
	(move-dir-down loc-33-33 loc-34-33)
	(move-dir-down loc-33-36 loc-34-36)
	(move-dir-down loc-33-39 loc-34-39)
	(move-dir-down loc-33-41 loc-34-41)
	(move-dir-down loc-33-47 loc-34-47)
	(move-dir-down loc-33-7 loc-34-7)
	(move-dir-down loc-33-9 loc-34-9)
	(move-dir-down loc-34-14 loc-35-14)
	(move-dir-down loc-34-17 loc-35-17)
	(move-dir-down loc-34-20 loc-35-20)
	(move-dir-down loc-34-23 loc-35-23)
	(move-dir-down loc-34-25 loc-35-25)
	(move-dir-down loc-34-27 loc-35-27)
	(move-dir-down loc-34-29 loc-35-29)
	(move-dir-down loc-34-2 loc-35-2)
	(move-dir-down loc-34-33 loc-35-33)
	(move-dir-down loc-34-37 loc-35-37)
	(move-dir-down loc-34-42 loc-35-42)
	(move-dir-down loc-34-48 loc-35-48)
	(move-dir-down loc-34-9 loc-35-9)
	(move-dir-down loc-35-12 loc-36-12)
	(move-dir-down loc-35-14 loc-36-14)
	(move-dir-down loc-35-17 loc-36-17)
	(move-dir-down loc-35-21 loc-36-21)
	(move-dir-down loc-35-23 loc-36-23)
	(move-dir-down loc-35-25 loc-36-25)
	(move-dir-down loc-35-29 loc-36-29)
	(move-dir-down loc-35-34 loc-36-34)
	(move-dir-down loc-35-3 loc-36-3)
	(move-dir-down loc-35-40 loc-36-40)
	(move-dir-down loc-35-42 loc-36-42)
	(move-dir-down loc-35-45 loc-36-45)
	(move-dir-down loc-35-48 loc-36-48)
	(move-dir-down loc-35-9 loc-36-9)
	(move-dir-down loc-36-10 loc-37-10)
	(move-dir-down loc-36-14 loc-37-14)
	(move-dir-down loc-36-16 loc-37-16)
	(move-dir-down loc-36-21 loc-37-21)
	(move-dir-down loc-36-25 loc-37-25)
	(move-dir-down loc-36-29 loc-37-29)
	(move-dir-down loc-36-35 loc-37-35)
	(move-dir-down loc-36-38 loc-37-38)
	(move-dir-down loc-36-40 loc-37-40)
	(move-dir-down loc-36-45 loc-37-45)
	(move-dir-down loc-36-48 loc-37-48)
	(move-dir-down loc-36-6 loc-37-6)
	(move-dir-down loc-36-8 loc-37-8)
	(move-dir-down loc-37-10 loc-38-10)
	(move-dir-down loc-37-14 loc-38-14)
	(move-dir-down loc-37-20 loc-38-20)
	(move-dir-down loc-37-25 loc-38-25)
	(move-dir-down loc-37-2 loc-38-2)
	(move-dir-down loc-37-31 loc-38-31)
	(move-dir-down loc-37-37 loc-38-37)
	(move-dir-down loc-37-39 loc-38-39)
	(move-dir-down loc-37-45 loc-38-45)
	(move-dir-down loc-37-48 loc-38-48)
	(move-dir-down loc-37-4 loc-38-4)
	(move-dir-down loc-37-6 loc-38-6)
	(move-dir-down loc-38-11 loc-39-11)
	(move-dir-down loc-38-15 loc-39-15)
	(move-dir-down loc-38-17 loc-39-17)
	(move-dir-down loc-38-20 loc-39-20)
	(move-dir-down loc-38-28 loc-39-28)
	(move-dir-down loc-38-31 loc-39-31)
	(move-dir-down loc-38-34 loc-39-34)
	(move-dir-down loc-38-36 loc-39-36)
	(move-dir-down loc-38-39 loc-39-39)
	(move-dir-down loc-38-41 loc-39-41)
	(move-dir-down loc-38-44 loc-39-44)
	(move-dir-down loc-38-46 loc-39-46)
	(move-dir-down loc-38-48 loc-39-48)
	(move-dir-down loc-38-4 loc-39-4)
	(move-dir-down loc-38-7 loc-39-7)
	(move-dir-down loc-38-9 loc-39-9)
	(move-dir-down loc-39-13 loc-40-13)
	(move-dir-down loc-39-17 loc-40-17)
	(move-dir-down loc-39-20 loc-40-20)
	(move-dir-down loc-39-22 loc-40-22)
	(move-dir-down loc-39-26 loc-40-26)
	(move-dir-down loc-39-29 loc-40-29)
	(move-dir-down loc-39-31 loc-40-31)
	(move-dir-down loc-39-34 loc-40-34)
	(move-dir-down loc-39-36 loc-40-36)
	(move-dir-down loc-39-39 loc-40-39)
	(move-dir-down loc-39-44 loc-40-44)
	(move-dir-down loc-39-48 loc-40-48)
	(move-dir-down loc-39-4 loc-40-4)
	(move-dir-down loc-39-7 loc-40-7)
	(move-dir-down loc-4-11 loc-5-11)
	(move-dir-down loc-4-18 loc-5-18)
	(move-dir-down loc-4-20 loc-5-20)
	(move-dir-down loc-4-28 loc-5-28)
	(move-dir-down loc-4-31 loc-5-31)
	(move-dir-down loc-4-33 loc-5-33)
	(move-dir-down loc-4-36 loc-5-36)
	(move-dir-down loc-4-38 loc-5-38)
	(move-dir-down loc-4-3 loc-5-3)
	(move-dir-down loc-4-40 loc-5-40)
	(move-dir-down loc-4-44 loc-5-44)
	(move-dir-down loc-4-5 loc-5-5)
	(move-dir-down loc-4-7 loc-5-7)
	(move-dir-down loc-40-10 loc-41-10)
	(move-dir-down loc-40-13 loc-41-13)
	(move-dir-down loc-40-18 loc-41-18)
	(move-dir-down loc-40-20 loc-41-20)
	(move-dir-down loc-40-23 loc-41-23)
	(move-dir-down loc-40-25 loc-41-25)
	(move-dir-down loc-40-27 loc-41-27)
	(move-dir-down loc-40-2 loc-41-2)
	(move-dir-down loc-40-31 loc-41-31)
	(move-dir-down loc-40-34 loc-41-34)
	(move-dir-down loc-40-39 loc-41-39)
	(move-dir-down loc-40-43 loc-41-43)
	(move-dir-down loc-40-45 loc-41-45)
	(move-dir-down loc-40-47 loc-41-47)
	(move-dir-down loc-40-4 loc-41-4)
	(move-dir-down loc-40-8 loc-41-8)
	(move-dir-down loc-41-10 loc-42-10)
	(move-dir-down loc-41-13 loc-42-13)
	(move-dir-down loc-41-16 loc-42-16)
	(move-dir-down loc-41-20 loc-42-20)
	(move-dir-down loc-41-24 loc-42-24)
	(move-dir-down loc-41-27 loc-42-27)
	(move-dir-down loc-41-2 loc-42-2)
	(move-dir-down loc-41-34 loc-42-34)
	(move-dir-down loc-41-37 loc-42-37)
	(move-dir-down loc-41-39 loc-42-39)
	(move-dir-down loc-41-41 loc-42-41)
	(move-dir-down loc-41-45 loc-42-45)
	(move-dir-down loc-41-47 loc-42-47)
	(move-dir-down loc-41-6 loc-42-6)
	(move-dir-down loc-41-8 loc-42-8)
	(move-dir-down loc-42-10 loc-43-10)
	(move-dir-down loc-42-16 loc-43-16)
	(move-dir-down loc-42-22 loc-43-22)
	(move-dir-down loc-42-24 loc-43-24)
	(move-dir-down loc-42-29 loc-43-29)
	(move-dir-down loc-42-2 loc-43-2)
	(move-dir-down loc-42-32 loc-43-32)
	(move-dir-down loc-42-35 loc-43-35)
	(move-dir-down loc-42-37 loc-43-37)
	(move-dir-down loc-42-39 loc-43-39)
	(move-dir-down loc-42-47 loc-43-47)
	(move-dir-down loc-42-6 loc-43-6)
	(move-dir-down loc-42-8 loc-43-8)
	(move-dir-down loc-43-10 loc-44-10)
	(move-dir-down loc-43-15 loc-44-15)
	(move-dir-down loc-43-17 loc-44-17)
	(move-dir-down loc-43-19 loc-44-19)
	(move-dir-down loc-43-22 loc-44-22)
	(move-dir-down loc-43-24 loc-44-24)
	(move-dir-down loc-43-29 loc-44-29)
	(move-dir-down loc-43-31 loc-44-31)
	(move-dir-down loc-43-35 loc-44-35)
	(move-dir-down loc-43-37 loc-44-37)
	(move-dir-down loc-43-40 loc-44-40)
	(move-dir-down loc-43-42 loc-44-42)
	(move-dir-down loc-43-44 loc-44-44)
	(move-dir-down loc-43-47 loc-44-47)
	(move-dir-down loc-43-4 loc-44-4)
	(move-dir-down loc-43-6 loc-44-6)
	(move-dir-down loc-44-10 loc-45-10)
	(move-dir-down loc-44-12 loc-45-12)
	(move-dir-down loc-44-15 loc-45-15)
	(move-dir-down loc-44-21 loc-45-21)
	(move-dir-down loc-44-23 loc-45-23)
	(move-dir-down loc-44-27 loc-45-27)
	(move-dir-down loc-44-31 loc-45-31)
	(move-dir-down loc-44-35 loc-45-35)
	(move-dir-down loc-44-38 loc-45-38)
	(move-dir-down loc-44-3 loc-45-3)
	(move-dir-down loc-44-44 loc-45-44)
	(move-dir-down loc-44-46 loc-45-46)
	(move-dir-down loc-44-6 loc-45-6)
	(move-dir-down loc-45-12 loc-46-12)
	(move-dir-down loc-45-15 loc-46-15)
	(move-dir-down loc-45-18 loc-46-18)
	(move-dir-down loc-45-21 loc-46-21)
	(move-dir-down loc-45-23 loc-46-23)
	(move-dir-down loc-45-25 loc-46-25)
	(move-dir-down loc-45-28 loc-46-28)
	(move-dir-down loc-45-2 loc-46-2)
	(move-dir-down loc-45-31 loc-46-31)
	(move-dir-down loc-45-41 loc-46-41)
	(move-dir-down loc-45-44 loc-46-44)
	(move-dir-down loc-45-46 loc-46-46)
	(move-dir-down loc-45-48 loc-46-48)
	(move-dir-down loc-45-6 loc-46-6)
	(move-dir-down loc-46-11 loc-47-11)
	(move-dir-down loc-46-13 loc-47-13)
	(move-dir-down loc-46-15 loc-47-15)
	(move-dir-down loc-46-18 loc-47-18)
	(move-dir-down loc-46-20 loc-47-20)
	(move-dir-down loc-46-24 loc-47-24)
	(move-dir-down loc-46-26 loc-47-26)
	(move-dir-down loc-46-28 loc-47-28)
	(move-dir-down loc-46-2 loc-47-2)
	(move-dir-down loc-46-30 loc-47-30)
	(move-dir-down loc-46-32 loc-47-32)
	(move-dir-down loc-46-37 loc-47-37)
	(move-dir-down loc-46-39 loc-47-39)
	(move-dir-down loc-46-41 loc-47-41)
	(move-dir-down loc-46-46 loc-47-46)
	(move-dir-down loc-46-48 loc-47-48)
	(move-dir-down loc-46-4 loc-47-4)
	(move-dir-down loc-46-6 loc-47-6)
	(move-dir-down loc-46-9 loc-47-9)
	(move-dir-down loc-47-11 loc-48-11)
	(move-dir-down loc-47-13 loc-48-13)
	(move-dir-down loc-47-18 loc-48-18)
	(move-dir-down loc-47-20 loc-48-20)
	(move-dir-down loc-47-22 loc-48-22)
	(move-dir-down loc-47-26 loc-48-26)
	(move-dir-down loc-47-28 loc-48-28)
	(move-dir-down loc-47-32 loc-48-32)
	(move-dir-down loc-47-34 loc-48-34)
	(move-dir-down loc-47-37 loc-48-37)
	(move-dir-down loc-47-39 loc-48-39)
	(move-dir-down loc-47-42 loc-48-42)
	(move-dir-down loc-47-46 loc-48-46)
	(move-dir-down loc-47-48 loc-48-48)
	(move-dir-down loc-47-4 loc-48-4)
	(move-dir-down loc-47-6 loc-48-6)
	(move-dir-down loc-47-9 loc-48-9)
	(move-dir-down loc-5-10 loc-6-10)
	(move-dir-down loc-5-12 loc-6-12)
	(move-dir-down loc-5-14 loc-6-14)
	(move-dir-down loc-5-16 loc-6-16)
	(move-dir-down loc-5-18 loc-6-18)
	(move-dir-down loc-5-20 loc-6-20)
	(move-dir-down loc-5-24 loc-6-24)
	(move-dir-down loc-5-28 loc-6-28)
	(move-dir-down loc-5-33 loc-6-33)
	(move-dir-down loc-5-36 loc-6-36)
	(move-dir-down loc-5-3 loc-6-3)
	(move-dir-down loc-5-40 loc-6-40)
	(move-dir-down loc-5-44 loc-6-44)
	(move-dir-down loc-5-5 loc-6-5)
	(move-dir-down loc-5-8 loc-6-8)
	(move-dir-down loc-6-15 loc-7-15)
	(move-dir-down loc-6-17 loc-7-17)
	(move-dir-down loc-6-19 loc-7-19)
	(move-dir-down loc-6-23 loc-7-23)
	(move-dir-down loc-6-25 loc-7-25)
	(move-dir-down loc-6-27 loc-7-27)
	(move-dir-down loc-6-2 loc-7-2)
	(move-dir-down loc-6-30 loc-7-30)
	(move-dir-down loc-6-36 loc-7-36)
	(move-dir-down loc-6-46 loc-7-46)
	(move-dir-down loc-6-48 loc-7-48)
	(move-dir-down loc-6-5 loc-7-5)
	(move-dir-down loc-7-11 loc-8-11)
	(move-dir-down loc-7-13 loc-8-13)
	(move-dir-down loc-7-15 loc-8-15)
	(move-dir-down loc-7-19 loc-8-19)
	(move-dir-down loc-7-21 loc-8-21)
	(move-dir-down loc-7-23 loc-8-23)
	(move-dir-down loc-7-2 loc-8-2)
	(move-dir-down loc-7-32 loc-8-32)
	(move-dir-down loc-7-36 loc-8-36)
	(move-dir-down loc-7-38 loc-8-38)
	(move-dir-down loc-7-41 loc-8-41)
	(move-dir-down loc-7-48 loc-8-48)
	(move-dir-down loc-7-7 loc-8-7)
	(move-dir-down loc-7-9 loc-8-9)
	(move-dir-down loc-8-12 loc-9-12)
	(move-dir-down loc-8-15 loc-9-15)
	(move-dir-down loc-8-20 loc-9-20)
	(move-dir-down loc-8-22 loc-9-22)
	(move-dir-down loc-8-24 loc-9-24)
	(move-dir-down loc-8-26 loc-9-26)
	(move-dir-down loc-8-28 loc-9-28)
	(move-dir-down loc-8-2 loc-9-2)
	(move-dir-down loc-8-33 loc-9-33)
	(move-dir-down loc-8-38 loc-9-38)
	(move-dir-down loc-8-40 loc-9-40)
	(move-dir-down loc-8-44 loc-9-44)
	(move-dir-down loc-8-48 loc-9-48)
	(move-dir-down loc-8-4 loc-9-4)
	(move-dir-down loc-8-7 loc-9-7)
	(move-dir-down loc-8-9 loc-9-9)
	(move-dir-down loc-9-12 loc-10-12)
	(move-dir-down loc-9-15 loc-10-15)
	(move-dir-down loc-9-17 loc-10-17)
	(move-dir-down loc-9-22 loc-10-22)
	(move-dir-down loc-9-24 loc-10-24)
	(move-dir-down loc-9-28 loc-10-28)
	(move-dir-down loc-9-2 loc-10-2)
	(move-dir-down loc-9-30 loc-10-30)
	(move-dir-down loc-9-34 loc-10-34)
	(move-dir-down loc-9-38 loc-10-38)
	(move-dir-down loc-9-40 loc-10-40)
	(move-dir-down loc-9-45 loc-10-45)
	(move-dir-down loc-9-48 loc-10-48)
	(move-dir-down loc-9-4 loc-10-4)
	(move-dir-down loc-9-6 loc-10-6)
	(move-dir-down loc-9-9 loc-10-9)
	(move-dir-left loc-10-12 loc-10-11)
	(move-dir-left loc-10-13 loc-10-12)
	(move-dir-left loc-10-18 loc-10-17)
	(move-dir-left loc-10-19 loc-10-18)
	(move-dir-left loc-10-22 loc-10-21)
	(move-dir-left loc-10-29 loc-10-28)
	(move-dir-left loc-10-30 loc-10-29)
	(move-dir-left loc-10-39 loc-10-38)
	(move-dir-left loc-10-40 loc-10-39)
	(move-dir-left loc-10-43 loc-10-42)
	(move-dir-left loc-10-46 loc-10-45)
	(move-dir-left loc-10-47 loc-10-46)
	(move-dir-left loc-10-48 loc-10-47)
	(move-dir-left loc-11-16 loc-11-15)
	(move-dir-left loc-11-17 loc-11-16)
	(move-dir-left loc-11-21 loc-11-20)
	(move-dir-left loc-11-24 loc-11-23)
	(move-dir-left loc-11-33 loc-11-32)
	(move-dir-left loc-11-34 loc-11-33)
	(move-dir-left loc-11-35 loc-11-34)
	(move-dir-left loc-11-38 loc-11-37)
	(move-dir-left loc-11-3 loc-11-2)
	(move-dir-left loc-11-42 loc-11-41)
	(move-dir-left loc-11-4 loc-11-3)
	(move-dir-left loc-11-9 loc-11-8)
	(move-dir-left loc-12-10 loc-12-9)
	(move-dir-left loc-12-11 loc-12-10)
	(move-dir-left loc-12-12 loc-12-11)
	(move-dir-left loc-12-15 loc-12-14)
	(move-dir-left loc-12-19 loc-12-18)
	(move-dir-left loc-12-20 loc-12-19)
	(move-dir-left loc-12-23 loc-12-22)
	(move-dir-left loc-12-26 loc-12-25)
	(move-dir-left loc-12-27 loc-12-26)
	(move-dir-left loc-12-36 loc-12-35)
	(move-dir-left loc-12-37 loc-12-36)
	(move-dir-left loc-12-44 loc-12-43)
	(move-dir-left loc-12-45 loc-12-44)
	(move-dir-left loc-12-46 loc-12-45)
	(move-dir-left loc-12-5 loc-12-4)
	(move-dir-left loc-13-17 loc-13-16)
	(move-dir-left loc-13-18 loc-13-17)
	(move-dir-left loc-13-32 loc-13-31)
	(move-dir-left loc-13-38 loc-13-37)
	(move-dir-left loc-13-39 loc-13-38)
	(move-dir-left loc-13-42 loc-13-41)
	(move-dir-left loc-13-47 loc-13-46)
	(move-dir-left loc-13-48 loc-13-47)
	(move-dir-left loc-13-7 loc-13-6)
	(move-dir-left loc-13-8 loc-13-7)
	(move-dir-left loc-13-9 loc-13-8)
	(move-dir-left loc-14-10 loc-14-9)
	(move-dir-left loc-14-15 loc-14-14)
	(move-dir-left loc-14-21 loc-14-20)
	(move-dir-left loc-14-24 loc-14-23)
	(move-dir-left loc-14-25 loc-14-24)
	(move-dir-left loc-14-28 loc-14-27)
	(move-dir-left loc-14-29 loc-14-28)
	(move-dir-left loc-14-30 loc-14-29)
	(move-dir-left loc-14-35 loc-14-34)
	(move-dir-left loc-14-36 loc-14-35)
	(move-dir-left loc-14-43 loc-14-42)
	(move-dir-left loc-14-6 loc-14-5)
	(move-dir-left loc-15-20 loc-15-19)
	(move-dir-left loc-15-31 loc-15-30)
	(move-dir-left loc-15-32 loc-15-31)
	(move-dir-left loc-15-38 loc-15-37)
	(move-dir-left loc-15-3 loc-15-2)
	(move-dir-left loc-15-41 loc-15-40)
	(move-dir-left loc-15-46 loc-15-45)
	(move-dir-left loc-15-47 loc-15-46)
	(move-dir-left loc-15-48 loc-15-47)
	(move-dir-left loc-15-4 loc-15-3)
	(move-dir-left loc-15-7 loc-15-6)
	(move-dir-left loc-15-8 loc-15-7)
	(move-dir-left loc-16-12 loc-16-11)
	(move-dir-left loc-16-13 loc-16-12)
	(move-dir-left loc-16-14 loc-16-13)
	(move-dir-left loc-16-17 loc-16-16)
	(move-dir-left loc-16-18 loc-16-17)
	(move-dir-left loc-16-23 loc-16-22)
	(move-dir-left loc-16-24 loc-16-23)
	(move-dir-left loc-16-25 loc-16-24)
	(move-dir-left loc-16-26 loc-16-25)
	(move-dir-left loc-16-33 loc-16-32)
	(move-dir-left loc-16-34 loc-16-33)
	(move-dir-left loc-16-39 loc-16-38)
	(move-dir-left loc-16-40 loc-16-39)
	(move-dir-left loc-16-43 loc-16-42)
	(move-dir-left loc-16-44 loc-16-43)
	(move-dir-left loc-16-45 loc-16-44)
	(move-dir-left loc-16-9 loc-16-8)
	(move-dir-left loc-17-16 loc-17-15)
	(move-dir-left loc-17-22 loc-17-21)
	(move-dir-left loc-17-27 loc-17-26)
	(move-dir-left loc-17-30 loc-17-29)
	(move-dir-left loc-17-31 loc-17-30)
	(move-dir-left loc-17-36 loc-17-35)
	(move-dir-left loc-17-37 loc-17-36)
	(move-dir-left loc-17-38 loc-17-37)
	(move-dir-left loc-17-48 loc-17-47)
	(move-dir-left loc-17-4 loc-17-3)
	(move-dir-left loc-17-5 loc-17-4)
	(move-dir-left loc-17-6 loc-17-5)
	(move-dir-left loc-17-7 loc-17-6)
	(move-dir-left loc-18-11 loc-18-10)
	(move-dir-left loc-18-12 loc-18-11)
	(move-dir-left loc-18-13 loc-18-12)
	(move-dir-left loc-18-14 loc-18-13)
	(move-dir-left loc-18-24 loc-18-23)
	(move-dir-left loc-18-29 loc-18-28)
	(move-dir-left loc-18-34 loc-18-33)
	(move-dir-left loc-18-3 loc-18-2)
	(move-dir-left loc-18-41 loc-18-40)
	(move-dir-left loc-18-44 loc-18-43)
	(move-dir-left loc-18-45 loc-18-44)
	(move-dir-left loc-18-46 loc-18-45)
	(move-dir-left loc-19-10 loc-19-9)
	(move-dir-left loc-19-18 loc-19-17)
	(move-dir-left loc-19-19 loc-19-18)
	(move-dir-left loc-19-20 loc-19-19)
	(move-dir-left loc-19-21 loc-19-20)
	(move-dir-left loc-19-22 loc-19-21)
	(move-dir-left loc-19-25 loc-19-24)
	(move-dir-left loc-19-26 loc-19-25)
	(move-dir-left loc-19-27 loc-19-26)
	(move-dir-left loc-19-28 loc-19-27)
	(move-dir-left loc-19-33 loc-19-32)
	(move-dir-left loc-19-36 loc-19-35)
	(move-dir-left loc-19-37 loc-19-36)
	(move-dir-left loc-19-40 loc-19-39)
	(move-dir-left loc-19-5 loc-19-4)
	(move-dir-left loc-19-6 loc-19-5)
	(move-dir-left loc-19-7 loc-19-6)
	(move-dir-left loc-19-8 loc-19-7)
	(move-dir-left loc-19-9 loc-19-8)
	(move-dir-left loc-2-14 loc-2-13)
	(move-dir-left loc-2-15 loc-2-14)
	(move-dir-left loc-2-18 loc-2-17)
	(move-dir-left loc-2-21 loc-2-20)
	(move-dir-left loc-2-22 loc-2-21)
	(move-dir-left loc-2-23 loc-2-22)
	(move-dir-left loc-2-24 loc-2-23)
	(move-dir-left loc-2-25 loc-2-24)
	(move-dir-left loc-2-26 loc-2-25)
	(move-dir-left loc-2-29 loc-2-28)
	(move-dir-left loc-2-30 loc-2-29)
	(move-dir-left loc-2-31 loc-2-30)
	(move-dir-left loc-2-32 loc-2-31)
	(move-dir-left loc-2-35 loc-2-34)
	(move-dir-left loc-2-36 loc-2-35)
	(move-dir-left loc-2-37 loc-2-36)
	(move-dir-left loc-2-38 loc-2-37)
	(move-dir-left loc-2-3 loc-2-2)
	(move-dir-left loc-2-41 loc-2-40)
	(move-dir-left loc-2-42 loc-2-41)
	(move-dir-left loc-2-43 loc-2-42)
	(move-dir-left loc-2-46 loc-2-45)
	(move-dir-left loc-2-47 loc-2-46)
	(move-dir-left loc-2-48 loc-2-47)
	(move-dir-left loc-2-4 loc-2-3)
	(move-dir-left loc-2-5 loc-2-4)
	(move-dir-left loc-2-8 loc-2-7)
	(move-dir-left loc-2-9 loc-2-8)
	(move-dir-left loc-20-14 loc-20-13)
	(move-dir-left loc-20-15 loc-20-14)
	(move-dir-left loc-20-31 loc-20-30)
	(move-dir-left loc-20-32 loc-20-31)
	(move-dir-left loc-20-42 loc-20-41)
	(move-dir-left loc-20-45 loc-20-44)
	(move-dir-left loc-20-46 loc-20-45)
	(move-dir-left loc-20-47 loc-20-46)
	(move-dir-left loc-21-19 loc-21-18)
	(move-dir-left loc-21-20 loc-21-19)
	(move-dir-left loc-21-24 loc-21-23)
	(move-dir-left loc-21-25 loc-21-24)
	(move-dir-left loc-21-26 loc-21-25)
	(move-dir-left loc-21-27 loc-21-26)
	(move-dir-left loc-21-28 loc-21-27)
	(move-dir-left loc-21-29 loc-21-28)
	(move-dir-left loc-21-30 loc-21-29)
	(move-dir-left loc-21-39 loc-21-38)
	(move-dir-left loc-21-3 loc-21-2)
	(move-dir-left loc-21-40 loc-21-39)
	(move-dir-left loc-21-43 loc-21-42)
	(move-dir-left loc-21-44 loc-21-43)
	(move-dir-left loc-21-48 loc-21-47)
	(move-dir-left loc-21-4 loc-21-3)
	(move-dir-left loc-21-7 loc-21-6)
	(move-dir-left loc-22-12 loc-22-11)
	(move-dir-left loc-22-13 loc-22-12)
	(move-dir-left loc-22-14 loc-22-13)
	(move-dir-left loc-22-15 loc-22-14)
	(move-dir-left loc-22-16 loc-22-15)
	(move-dir-left loc-22-17 loc-22-16)
	(move-dir-left loc-22-18 loc-22-17)
	(move-dir-left loc-22-22 loc-22-21)
	(move-dir-left loc-22-23 loc-22-22)
	(move-dir-left loc-22-35 loc-22-34)
	(move-dir-left loc-22-45 loc-22-44)
	(move-dir-left loc-22-46 loc-22-45)
	(move-dir-left loc-22-5 loc-22-4)
	(move-dir-left loc-22-8 loc-22-7)
	(move-dir-left loc-22-9 loc-22-8)
	(move-dir-left loc-23-11 loc-23-10)
	(move-dir-left loc-23-19 loc-23-18)
	(move-dir-left loc-23-24 loc-23-23)
	(move-dir-left loc-23-30 loc-23-29)
	(move-dir-left loc-23-38 loc-23-37)
	(move-dir-left loc-23-39 loc-23-38)
	(move-dir-left loc-23-3 loc-23-2)
	(move-dir-left loc-23-40 loc-23-39)
	(move-dir-left loc-23-41 loc-23-40)
	(move-dir-left loc-23-42 loc-23-41)
	(move-dir-left loc-23-43 loc-23-42)
	(move-dir-left loc-23-44 loc-23-43)
	(move-dir-left loc-23-6 loc-23-5)
	(move-dir-left loc-24-10 loc-24-9)
	(move-dir-left loc-24-13 loc-24-12)
	(move-dir-left loc-24-20 loc-24-19)
	(move-dir-left loc-24-23 loc-24-22)
	(move-dir-left loc-24-26 loc-24-25)
	(move-dir-left loc-24-27 loc-24-26)
	(move-dir-left loc-24-28 loc-24-27)
	(move-dir-left loc-24-29 loc-24-28)
	(move-dir-left loc-24-32 loc-24-31)
	(move-dir-left loc-24-33 loc-24-32)
	(move-dir-left loc-24-36 loc-24-35)
	(move-dir-left loc-24-45 loc-24-44)
	(move-dir-left loc-24-46 loc-24-45)
	(move-dir-left loc-24-47 loc-24-46)
	(move-dir-left loc-24-4 loc-24-3)
	(move-dir-left loc-24-7 loc-24-6)
	(move-dir-left loc-24-8 loc-24-7)
	(move-dir-left loc-24-9 loc-24-8)
	(move-dir-left loc-25-14 loc-25-13)
	(move-dir-left loc-25-15 loc-25-14)
	(move-dir-left loc-25-18 loc-25-17)
	(move-dir-left loc-25-34 loc-25-33)
	(move-dir-left loc-25-37 loc-25-36)
	(move-dir-left loc-25-38 loc-25-37)
	(move-dir-left loc-25-39 loc-25-38)
	(move-dir-left loc-25-3 loc-25-2)
	(move-dir-left loc-25-40 loc-25-39)
	(move-dir-left loc-25-41 loc-25-40)
	(move-dir-left loc-25-42 loc-25-41)
	(move-dir-left loc-25-43 loc-25-42)
	(move-dir-left loc-25-44 loc-25-43)
	(move-dir-left loc-26-12 loc-26-11)
	(move-dir-left loc-26-21 loc-26-20)
	(move-dir-left loc-26-24 loc-26-23)
	(move-dir-left loc-26-27 loc-26-26)
	(move-dir-left loc-26-30 loc-26-29)
	(move-dir-left loc-26-36 loc-26-35)
	(move-dir-left loc-26-47 loc-26-46)
	(move-dir-left loc-26-48 loc-26-47)
	(move-dir-left loc-26-5 loc-26-4)
	(move-dir-left loc-26-6 loc-26-5)
	(move-dir-left loc-26-7 loc-26-6)
	(move-dir-left loc-26-8 loc-26-7)
	(move-dir-left loc-26-9 loc-26-8)
	(move-dir-left loc-27-26 loc-27-25)
	(move-dir-left loc-27-31 loc-27-30)
	(move-dir-left loc-27-34 loc-27-33)
	(move-dir-left loc-27-35 loc-27-34)
	(move-dir-left loc-27-3 loc-27-2)
	(move-dir-left loc-27-40 loc-27-39)
	(move-dir-left loc-27-43 loc-27-42)
	(move-dir-left loc-27-44 loc-27-43)
	(move-dir-left loc-27-45 loc-27-44)
	(move-dir-left loc-28-11 loc-28-10)
	(move-dir-left loc-28-12 loc-28-11)
	(move-dir-left loc-28-15 loc-28-14)
	(move-dir-left loc-28-16 loc-28-15)
	(move-dir-left loc-28-19 loc-28-18)
	(move-dir-left loc-28-20 loc-28-19)
	(move-dir-left loc-28-21 loc-28-20)
	(move-dir-left loc-28-22 loc-28-21)
	(move-dir-left loc-28-23 loc-28-22)
	(move-dir-left loc-28-29 loc-28-28)
	(move-dir-left loc-28-46 loc-28-45)
	(move-dir-left loc-28-8 loc-28-7)
	(move-dir-left loc-29-14 loc-29-13)
	(move-dir-left loc-29-17 loc-29-16)
	(move-dir-left loc-29-18 loc-29-17)
	(move-dir-left loc-29-25 loc-29-24)
	(move-dir-left loc-29-26 loc-29-25)
	(move-dir-left loc-29-33 loc-29-32)
	(move-dir-left loc-29-34 loc-29-33)
	(move-dir-left loc-29-35 loc-29-34)
	(move-dir-left loc-29-36 loc-29-35)
	(move-dir-left loc-29-37 loc-29-36)
	(move-dir-left loc-29-38 loc-29-37)
	(move-dir-left loc-29-3 loc-29-2)
	(move-dir-left loc-29-41 loc-29-40)
	(move-dir-left loc-29-42 loc-29-41)
	(move-dir-left loc-29-45 loc-29-44)
	(move-dir-left loc-29-48 loc-29-47)
	(move-dir-left loc-29-4 loc-29-3)
	(move-dir-left loc-29-5 loc-29-4)
	(move-dir-left loc-29-9 loc-29-8)
	(move-dir-left loc-3-10 loc-3-9)
	(move-dir-left loc-3-11 loc-3-10)
	(move-dir-left loc-3-12 loc-3-11)
	(move-dir-left loc-3-13 loc-3-12)
	(move-dir-left loc-3-16 loc-3-15)
	(move-dir-left loc-3-17 loc-3-16)
	(move-dir-left loc-3-33 loc-3-32)
	(move-dir-left loc-3-34 loc-3-33)
	(move-dir-left loc-3-39 loc-3-38)
	(move-dir-left loc-3-44 loc-3-43)
	(move-dir-left loc-3-7 loc-3-6)
	(move-dir-left loc-30-11 loc-30-10)
	(move-dir-left loc-30-12 loc-30-11)
	(move-dir-left loc-30-13 loc-30-12)
	(move-dir-left loc-30-16 loc-30-15)
	(move-dir-left loc-30-21 loc-30-20)
	(move-dir-left loc-30-24 loc-30-23)
	(move-dir-left loc-30-29 loc-30-28)
	(move-dir-left loc-30-30 loc-30-29)
	(move-dir-left loc-30-31 loc-30-30)
	(move-dir-left loc-30-32 loc-30-31)
	(move-dir-left loc-30-43 loc-30-42)
	(move-dir-left loc-30-46 loc-30-45)
	(move-dir-left loc-30-6 loc-30-5)
	(move-dir-left loc-30-7 loc-30-6)
	(move-dir-left loc-31-10 loc-31-9)
	(move-dir-left loc-31-15 loc-31-14)
	(move-dir-left loc-31-22 loc-31-21)
	(move-dir-left loc-31-23 loc-31-22)
	(move-dir-left loc-31-33 loc-31-32)
	(move-dir-left loc-31-34 loc-31-33)
	(move-dir-left loc-31-35 loc-31-34)
	(move-dir-left loc-31-39 loc-31-38)
	(move-dir-left loc-31-3 loc-31-2)
	(move-dir-left loc-31-40 loc-31-39)
	(move-dir-left loc-31-41 loc-31-40)
	(move-dir-left loc-31-42 loc-31-41)
	(move-dir-left loc-31-48 loc-31-47)
	(move-dir-left loc-31-4 loc-31-3)
	(move-dir-left loc-31-9 loc-31-8)
	(move-dir-left loc-32-18 loc-32-17)
	(move-dir-left loc-32-21 loc-32-20)
	(move-dir-left loc-32-27 loc-32-26)
	(move-dir-left loc-32-28 loc-32-27)
	(move-dir-left loc-32-36 loc-32-35)
	(move-dir-left loc-32-37 loc-32-36)
	(move-dir-left loc-32-43 loc-32-42)
	(move-dir-left loc-32-44 loc-32-43)
	(move-dir-left loc-32-47 loc-32-46)
	(move-dir-left loc-32-7 loc-32-6)
	(move-dir-left loc-32-8 loc-32-7)
	(move-dir-left loc-33-10 loc-33-9)
	(move-dir-left loc-33-11 loc-33-10)
	(move-dir-left loc-33-12 loc-33-11)
	(move-dir-left loc-33-13 loc-33-12)
	(move-dir-left loc-33-14 loc-33-13)
	(move-dir-left loc-33-17 loc-33-16)
	(move-dir-left loc-33-22 loc-33-21)
	(move-dir-left loc-33-23 loc-33-22)
	(move-dir-left loc-33-24 loc-33-23)
	(move-dir-left loc-33-32 loc-33-31)
	(move-dir-left loc-33-33 loc-33-32)
	(move-dir-left loc-33-34 loc-33-33)
	(move-dir-left loc-33-3 loc-33-2)
	(move-dir-left loc-33-45 loc-33-44)
	(move-dir-left loc-33-4 loc-33-3)
	(move-dir-left loc-33-5 loc-33-4)
	(move-dir-left loc-34-15 loc-34-14)
	(move-dir-left loc-34-20 loc-34-19)
	(move-dir-left loc-34-26 loc-34-25)
	(move-dir-left loc-34-27 loc-34-26)
	(move-dir-left loc-34-28 loc-34-27)
	(move-dir-left loc-34-29 loc-34-28)
	(move-dir-left loc-34-30 loc-34-29)
	(move-dir-left loc-34-36 loc-34-35)
	(move-dir-left loc-34-37 loc-34-36)
	(move-dir-left loc-34-38 loc-34-37)
	(move-dir-left loc-34-39 loc-34-38)
	(move-dir-left loc-34-42 loc-34-41)
	(move-dir-left loc-34-43 loc-34-42)
	(move-dir-left loc-34-47 loc-34-46)
	(move-dir-left loc-34-48 loc-34-47)
	(move-dir-left loc-34-7 loc-34-6)
	(move-dir-left loc-35-13 loc-35-12)
	(move-dir-left loc-35-14 loc-35-13)
	(move-dir-left loc-35-21 loc-35-20)
	(move-dir-left loc-35-22 loc-35-21)
	(move-dir-left loc-35-23 loc-35-22)
	(move-dir-left loc-35-24 loc-35-23)
	(move-dir-left loc-35-25 loc-35-24)
	(move-dir-left loc-35-32 loc-35-31)
	(move-dir-left loc-35-33 loc-35-32)
	(move-dir-left loc-35-34 loc-35-33)
	(move-dir-left loc-35-3 loc-35-2)
	(move-dir-left loc-35-45 loc-35-44)
	(move-dir-left loc-35-4 loc-35-3)
	(move-dir-left loc-35-5 loc-35-4)
	(move-dir-left loc-36-10 loc-36-9)
	(move-dir-left loc-36-15 loc-36-14)
	(move-dir-left loc-36-16 loc-36-15)
	(move-dir-left loc-36-17 loc-36-16)
	(move-dir-left loc-36-18 loc-36-17)
	(move-dir-left loc-36-19 loc-36-18)
	(move-dir-left loc-36-29 loc-36-28)
	(move-dir-left loc-36-35 loc-36-34)
	(move-dir-left loc-36-36 loc-36-35)
	(move-dir-left loc-36-41 loc-36-40)
	(move-dir-left loc-36-42 loc-36-41)
	(move-dir-left loc-36-43 loc-36-42)
	(move-dir-left loc-36-48 loc-36-47)
	(move-dir-left loc-36-7 loc-36-6)
	(move-dir-left loc-36-8 loc-36-7)
	(move-dir-left loc-36-9 loc-36-8)
	(move-dir-left loc-37-14 loc-37-13)
	(move-dir-left loc-37-21 loc-37-20)
	(move-dir-left loc-37-22 loc-37-21)
	(move-dir-left loc-37-25 loc-37-24)
	(move-dir-left loc-37-26 loc-37-25)
	(move-dir-left loc-37-30 loc-37-29)
	(move-dir-left loc-37-31 loc-37-30)
	(move-dir-left loc-37-32 loc-37-31)
	(move-dir-left loc-37-33 loc-37-32)
	(move-dir-left loc-37-38 loc-37-37)
	(move-dir-left loc-37-39 loc-37-38)
	(move-dir-left loc-37-40 loc-37-39)
	(move-dir-left loc-37-5 loc-37-4)
	(move-dir-left loc-37-6 loc-37-5)
	(move-dir-left loc-38-10 loc-38-9)
	(move-dir-left loc-38-11 loc-38-10)
	(move-dir-left loc-38-12 loc-38-11)
	(move-dir-left loc-38-15 loc-38-14)
	(move-dir-left loc-38-18 loc-38-17)
	(move-dir-left loc-38-19 loc-38-18)
	(move-dir-left loc-38-20 loc-38-19)
	(move-dir-left loc-38-28 loc-38-27)
	(move-dir-left loc-38-37 loc-38-36)
	(move-dir-left loc-38-3 loc-38-2)
	(move-dir-left loc-38-42 loc-38-41)
	(move-dir-left loc-38-43 loc-38-42)
	(move-dir-left loc-38-44 loc-38-43)
	(move-dir-left loc-38-45 loc-38-44)
	(move-dir-left loc-38-46 loc-38-45)
	(move-dir-left loc-38-47 loc-38-46)
	(move-dir-left loc-38-48 loc-38-47)
	(move-dir-left loc-38-4 loc-38-3)
	(move-dir-left loc-38-7 loc-38-6)
	(move-dir-left loc-39-21 loc-39-20)
	(move-dir-left loc-39-22 loc-39-21)
	(move-dir-left loc-39-29 loc-39-28)
	(move-dir-left loc-39-34 loc-39-33)
	(move-dir-left loc-39-35 loc-39-34)
	(move-dir-left loc-39-36 loc-39-35)
	(move-dir-left loc-39-39 loc-39-38)
	(move-dir-left loc-4-18 loc-4-17)
	(move-dir-left loc-4-21 loc-4-20)
	(move-dir-left loc-4-22 loc-4-21)
	(move-dir-left loc-4-23 loc-4-22)
	(move-dir-left loc-4-26 loc-4-25)
	(move-dir-left loc-4-27 loc-4-26)
	(move-dir-left loc-4-28 loc-4-27)
	(move-dir-left loc-4-29 loc-4-28)
	(move-dir-left loc-4-30 loc-4-29)
	(move-dir-left loc-4-31 loc-4-30)
	(move-dir-left loc-4-36 loc-4-35)
	(move-dir-left loc-4-3 loc-4-2)
	(move-dir-left loc-4-41 loc-4-40)
	(move-dir-left loc-4-42 loc-4-41)
	(move-dir-left loc-4-45 loc-4-44)
	(move-dir-left loc-4-46 loc-4-45)
	(move-dir-left loc-4-47 loc-4-46)
	(move-dir-left loc-4-48 loc-4-47)
	(move-dir-left loc-40-13 loc-40-12)
	(move-dir-left loc-40-18 loc-40-17)
	(move-dir-left loc-40-23 loc-40-22)
	(move-dir-left loc-40-26 loc-40-25)
	(move-dir-left loc-40-27 loc-40-26)
	(move-dir-left loc-40-30 loc-40-29)
	(move-dir-left loc-40-31 loc-40-30)
	(move-dir-left loc-40-32 loc-40-31)
	(move-dir-left loc-40-40 loc-40-39)
	(move-dir-left loc-40-44 loc-40-43)
	(move-dir-left loc-40-45 loc-40-44)
	(move-dir-left loc-40-48 loc-40-47)
	(move-dir-left loc-40-5 loc-40-4)
	(move-dir-left loc-40-8 loc-40-7)
	(move-dir-left loc-41-10 loc-41-9)
	(move-dir-left loc-41-14 loc-41-13)
	(move-dir-left loc-41-15 loc-41-14)
	(move-dir-left loc-41-16 loc-41-15)
	(move-dir-left loc-41-21 loc-41-20)
	(move-dir-left loc-41-24 loc-41-23)
	(move-dir-left loc-41-25 loc-41-24)
	(move-dir-left loc-41-28 loc-41-27)
	(move-dir-left loc-41-3 loc-41-2)
	(move-dir-left loc-41-42 loc-41-41)
	(move-dir-left loc-41-43 loc-41-42)
	(move-dir-left loc-41-4 loc-41-3)
	(move-dir-left loc-41-9 loc-41-8)
	(move-dir-left loc-42-11 loc-42-10)
	(move-dir-left loc-42-12 loc-42-11)
	(move-dir-left loc-42-13 loc-42-12)
	(move-dir-left loc-42-27 loc-42-26)
	(move-dir-left loc-42-33 loc-42-32)
	(move-dir-left loc-42-34 loc-42-33)
	(move-dir-left loc-42-35 loc-42-34)
	(move-dir-left loc-42-38 loc-42-37)
	(move-dir-left loc-42-39 loc-42-38)
	(move-dir-left loc-43-16 loc-43-15)
	(move-dir-left loc-43-17 loc-43-16)
	(move-dir-left loc-43-18 loc-43-17)
	(move-dir-left loc-43-19 loc-43-18)
	(move-dir-left loc-43-25 loc-43-24)
	(move-dir-left loc-43-29 loc-43-28)
	(move-dir-left loc-43-30 loc-43-29)
	(move-dir-left loc-43-31 loc-43-30)
	(move-dir-left loc-43-32 loc-43-31)
	(move-dir-left loc-43-40 loc-43-39)
	(move-dir-left loc-43-43 loc-43-42)
	(move-dir-left loc-43-44 loc-43-43)
	(move-dir-left loc-43-48 loc-43-47)
	(move-dir-left loc-43-5 loc-43-4)
	(move-dir-left loc-43-6 loc-43-5)
	(move-dir-left loc-43-7 loc-43-6)
	(move-dir-left loc-43-8 loc-43-7)
	(move-dir-left loc-44-10 loc-44-9)
	(move-dir-left loc-44-13 loc-44-12)
	(move-dir-left loc-44-14 loc-44-13)
	(move-dir-left loc-44-15 loc-44-14)
	(move-dir-left loc-44-22 loc-44-21)
	(move-dir-left loc-44-23 loc-44-22)
	(move-dir-left loc-44-24 loc-44-23)
	(move-dir-left loc-44-27 loc-44-26)
	(move-dir-left loc-44-38 loc-44-37)
	(move-dir-left loc-44-47 loc-44-46)
	(move-dir-left loc-44-4 loc-44-3)
	(move-dir-left loc-45-16 loc-45-15)
	(move-dir-left loc-45-28 loc-45-27)
	(move-dir-left loc-45-35 loc-45-34)
	(move-dir-left loc-45-36 loc-45-35)
	(move-dir-left loc-45-3 loc-45-2)
	(move-dir-left loc-45-44 loc-45-43)
	(move-dir-left loc-45-6 loc-45-5)
	(move-dir-left loc-45-7 loc-45-6)
	(move-dir-left loc-45-8 loc-45-7)
	(move-dir-left loc-46-12 loc-46-11)
	(move-dir-left loc-46-13 loc-46-12)
	(move-dir-left loc-46-18 loc-46-17)
	(move-dir-left loc-46-21 loc-46-20)
	(move-dir-left loc-46-24 loc-46-23)
	(move-dir-left loc-46-25 loc-46-24)
	(move-dir-left loc-46-26 loc-46-25)
	(move-dir-left loc-46-31 loc-46-30)
	(move-dir-left loc-46-32 loc-46-31)
	(move-dir-left loc-46-33 loc-46-32)
	(move-dir-left loc-46-40 loc-46-39)
	(move-dir-left loc-46-41 loc-46-40)
	(move-dir-left loc-46-45 loc-46-44)
	(move-dir-left loc-46-46 loc-46-45)
	(move-dir-left loc-47-10 loc-47-9)
	(move-dir-left loc-47-11 loc-47-10)
	(move-dir-left loc-47-19 loc-47-18)
	(move-dir-left loc-47-20 loc-47-19)
	(move-dir-left loc-47-29 loc-47-28)
	(move-dir-left loc-47-30 loc-47-29)
	(move-dir-left loc-47-35 loc-47-34)
	(move-dir-left loc-47-36 loc-47-35)
	(move-dir-left loc-47-37 loc-47-36)
	(move-dir-left loc-47-38 loc-47-37)
	(move-dir-left loc-47-39 loc-47-38)
	(move-dir-left loc-47-42 loc-47-41)
	(move-dir-left loc-47-9 loc-47-8)
	(move-dir-left loc-48-14 loc-48-13)
	(move-dir-left loc-48-17 loc-48-16)
	(move-dir-left loc-48-18 loc-48-17)
	(move-dir-left loc-48-21 loc-48-20)
	(move-dir-left loc-48-22 loc-48-21)
	(move-dir-left loc-48-23 loc-48-22)
	(move-dir-left loc-48-26 loc-48-25)
	(move-dir-left loc-48-27 loc-48-26)
	(move-dir-left loc-48-28 loc-48-27)
	(move-dir-left loc-48-32 loc-48-31)
	(move-dir-left loc-48-33 loc-48-32)
	(move-dir-left loc-48-34 loc-48-33)
	(move-dir-left loc-48-40 loc-48-39)
	(move-dir-left loc-48-43 loc-48-42)
	(move-dir-left loc-48-44 loc-48-43)
	(move-dir-left loc-48-45 loc-48-44)
	(move-dir-left loc-48-46 loc-48-45)
	(move-dir-left loc-48-47 loc-48-46)
	(move-dir-left loc-48-48 loc-48-47)
	(move-dir-left loc-48-4 loc-48-3)
	(move-dir-left loc-48-5 loc-48-4)
	(move-dir-left loc-48-6 loc-48-5)
	(move-dir-left loc-48-7 loc-48-6)
	(move-dir-left loc-5-11 loc-5-10)
	(move-dir-left loc-5-12 loc-5-11)
	(move-dir-left loc-5-34 loc-5-33)
	(move-dir-left loc-5-8 loc-5-7)
	(move-dir-left loc-6-15 loc-6-14)
	(move-dir-left loc-6-16 loc-6-15)
	(move-dir-left loc-6-17 loc-6-16)
	(move-dir-left loc-6-18 loc-6-17)
	(move-dir-left loc-6-19 loc-6-18)
	(move-dir-left loc-6-20 loc-6-19)
	(move-dir-left loc-6-23 loc-6-22)
	(move-dir-left loc-6-24 loc-6-23)
	(move-dir-left loc-6-25 loc-6-24)
	(move-dir-left loc-6-26 loc-6-25)
	(move-dir-left loc-6-27 loc-6-26)
	(move-dir-left loc-6-28 loc-6-27)
	(move-dir-left loc-6-36 loc-6-35)
	(move-dir-left loc-6-3 loc-6-2)
	(move-dir-left loc-6-40 loc-6-39)
	(move-dir-left loc-6-43 loc-6-42)
	(move-dir-left loc-6-44 loc-6-43)
	(move-dir-left loc-6-45 loc-6-44)
	(move-dir-left loc-6-46 loc-6-45)
	(move-dir-left loc-6-47 loc-6-46)
	(move-dir-left loc-6-48 loc-6-47)
	(move-dir-left loc-6-4 loc-6-3)
	(move-dir-left loc-6-5 loc-6-4)
	(move-dir-left loc-6-6 loc-6-5)
	(move-dir-left loc-7-31 loc-7-30)
	(move-dir-left loc-7-32 loc-7-31)
	(move-dir-left loc-7-37 loc-7-36)
	(move-dir-left loc-7-38 loc-7-37)
	(move-dir-left loc-8-12 loc-8-11)
	(move-dir-left loc-8-13 loc-8-12)
	(move-dir-left loc-8-14 loc-8-13)
	(move-dir-left loc-8-15 loc-8-14)
	(move-dir-left loc-8-16 loc-8-15)
	(move-dir-left loc-8-19 loc-8-18)
	(move-dir-left loc-8-20 loc-8-19)
	(move-dir-left loc-8-21 loc-8-20)
	(move-dir-left loc-8-22 loc-8-21)
	(move-dir-left loc-8-23 loc-8-22)
	(move-dir-left loc-8-24 loc-8-23)
	(move-dir-left loc-8-29 loc-8-28)
	(move-dir-left loc-8-33 loc-8-32)
	(move-dir-left loc-8-36 loc-8-35)
	(move-dir-left loc-8-41 loc-8-40)
	(move-dir-left loc-8-42 loc-8-41)
	(move-dir-left loc-8-43 loc-8-42)
	(move-dir-left loc-8-44 loc-8-43)
	(move-dir-left loc-8-48 loc-8-47)
	(move-dir-left loc-8-8 loc-8-7)
	(move-dir-left loc-8-9 loc-8-8)
	(move-dir-left loc-9-10 loc-9-9)
	(move-dir-left loc-9-25 loc-9-24)
	(move-dir-left loc-9-26 loc-9-25)
	(move-dir-left loc-9-27 loc-9-26)
	(move-dir-left loc-9-28 loc-9-27)
	(move-dir-left loc-9-31 loc-9-30)
	(move-dir-left loc-9-34 loc-9-33)
	(move-dir-left loc-9-38 loc-9-37)
	(move-dir-left loc-9-45 loc-9-44)
	(move-dir-left loc-9-5 loc-9-4)
	(move-dir-left loc-9-6 loc-9-5)
	(move-dir-left loc-9-7 loc-9-6)
	(move-dir-right loc-10-11 loc-10-12)
	(move-dir-right loc-10-12 loc-10-13)
	(move-dir-right loc-10-17 loc-10-18)
	(move-dir-right loc-10-18 loc-10-19)
	(move-dir-right loc-10-21 loc-10-22)
	(move-dir-right loc-10-28 loc-10-29)
	(move-dir-right loc-10-29 loc-10-30)
	(move-dir-right loc-10-38 loc-10-39)
	(move-dir-right loc-10-39 loc-10-40)
	(move-dir-right loc-10-42 loc-10-43)
	(move-dir-right loc-10-45 loc-10-46)
	(move-dir-right loc-10-46 loc-10-47)
	(move-dir-right loc-10-47 loc-10-48)
	(move-dir-right loc-11-15 loc-11-16)
	(move-dir-right loc-11-16 loc-11-17)
	(move-dir-right loc-11-20 loc-11-21)
	(move-dir-right loc-11-23 loc-11-24)
	(move-dir-right loc-11-2 loc-11-3)
	(move-dir-right loc-11-32 loc-11-33)
	(move-dir-right loc-11-33 loc-11-34)
	(move-dir-right loc-11-34 loc-11-35)
	(move-dir-right loc-11-37 loc-11-38)
	(move-dir-right loc-11-3 loc-11-4)
	(move-dir-right loc-11-41 loc-11-42)
	(move-dir-right loc-11-8 loc-11-9)
	(move-dir-right loc-12-10 loc-12-11)
	(move-dir-right loc-12-11 loc-12-12)
	(move-dir-right loc-12-14 loc-12-15)
	(move-dir-right loc-12-18 loc-12-19)
	(move-dir-right loc-12-19 loc-12-20)
	(move-dir-right loc-12-22 loc-12-23)
	(move-dir-right loc-12-25 loc-12-26)
	(move-dir-right loc-12-26 loc-12-27)
	(move-dir-right loc-12-35 loc-12-36)
	(move-dir-right loc-12-36 loc-12-37)
	(move-dir-right loc-12-43 loc-12-44)
	(move-dir-right loc-12-44 loc-12-45)
	(move-dir-right loc-12-45 loc-12-46)
	(move-dir-right loc-12-4 loc-12-5)
	(move-dir-right loc-12-9 loc-12-10)
	(move-dir-right loc-13-16 loc-13-17)
	(move-dir-right loc-13-17 loc-13-18)
	(move-dir-right loc-13-31 loc-13-32)
	(move-dir-right loc-13-37 loc-13-38)
	(move-dir-right loc-13-38 loc-13-39)
	(move-dir-right loc-13-41 loc-13-42)
	(move-dir-right loc-13-46 loc-13-47)
	(move-dir-right loc-13-47 loc-13-48)
	(move-dir-right loc-13-6 loc-13-7)
	(move-dir-right loc-13-7 loc-13-8)
	(move-dir-right loc-13-8 loc-13-9)
	(move-dir-right loc-14-14 loc-14-15)
	(move-dir-right loc-14-20 loc-14-21)
	(move-dir-right loc-14-23 loc-14-24)
	(move-dir-right loc-14-24 loc-14-25)
	(move-dir-right loc-14-27 loc-14-28)
	(move-dir-right loc-14-28 loc-14-29)
	(move-dir-right loc-14-29 loc-14-30)
	(move-dir-right loc-14-34 loc-14-35)
	(move-dir-right loc-14-35 loc-14-36)
	(move-dir-right loc-14-42 loc-14-43)
	(move-dir-right loc-14-5 loc-14-6)
	(move-dir-right loc-14-9 loc-14-10)
	(move-dir-right loc-15-19 loc-15-20)
	(move-dir-right loc-15-2 loc-15-3)
	(move-dir-right loc-15-30 loc-15-31)
	(move-dir-right loc-15-31 loc-15-32)
	(move-dir-right loc-15-37 loc-15-38)
	(move-dir-right loc-15-3 loc-15-4)
	(move-dir-right loc-15-40 loc-15-41)
	(move-dir-right loc-15-45 loc-15-46)
	(move-dir-right loc-15-46 loc-15-47)
	(move-dir-right loc-15-47 loc-15-48)
	(move-dir-right loc-15-6 loc-15-7)
	(move-dir-right loc-15-7 loc-15-8)
	(move-dir-right loc-16-11 loc-16-12)
	(move-dir-right loc-16-12 loc-16-13)
	(move-dir-right loc-16-13 loc-16-14)
	(move-dir-right loc-16-16 loc-16-17)
	(move-dir-right loc-16-17 loc-16-18)
	(move-dir-right loc-16-22 loc-16-23)
	(move-dir-right loc-16-23 loc-16-24)
	(move-dir-right loc-16-24 loc-16-25)
	(move-dir-right loc-16-25 loc-16-26)
	(move-dir-right loc-16-32 loc-16-33)
	(move-dir-right loc-16-33 loc-16-34)
	(move-dir-right loc-16-38 loc-16-39)
	(move-dir-right loc-16-39 loc-16-40)
	(move-dir-right loc-16-42 loc-16-43)
	(move-dir-right loc-16-43 loc-16-44)
	(move-dir-right loc-16-44 loc-16-45)
	(move-dir-right loc-16-8 loc-16-9)
	(move-dir-right loc-17-15 loc-17-16)
	(move-dir-right loc-17-21 loc-17-22)
	(move-dir-right loc-17-26 loc-17-27)
	(move-dir-right loc-17-29 loc-17-30)
	(move-dir-right loc-17-30 loc-17-31)
	(move-dir-right loc-17-35 loc-17-36)
	(move-dir-right loc-17-36 loc-17-37)
	(move-dir-right loc-17-37 loc-17-38)
	(move-dir-right loc-17-3 loc-17-4)
	(move-dir-right loc-17-47 loc-17-48)
	(move-dir-right loc-17-4 loc-17-5)
	(move-dir-right loc-17-5 loc-17-6)
	(move-dir-right loc-17-6 loc-17-7)
	(move-dir-right loc-18-10 loc-18-11)
	(move-dir-right loc-18-11 loc-18-12)
	(move-dir-right loc-18-12 loc-18-13)
	(move-dir-right loc-18-13 loc-18-14)
	(move-dir-right loc-18-23 loc-18-24)
	(move-dir-right loc-18-28 loc-18-29)
	(move-dir-right loc-18-2 loc-18-3)
	(move-dir-right loc-18-33 loc-18-34)
	(move-dir-right loc-18-40 loc-18-41)
	(move-dir-right loc-18-43 loc-18-44)
	(move-dir-right loc-18-44 loc-18-45)
	(move-dir-right loc-18-45 loc-18-46)
	(move-dir-right loc-19-17 loc-19-18)
	(move-dir-right loc-19-18 loc-19-19)
	(move-dir-right loc-19-19 loc-19-20)
	(move-dir-right loc-19-20 loc-19-21)
	(move-dir-right loc-19-21 loc-19-22)
	(move-dir-right loc-19-24 loc-19-25)
	(move-dir-right loc-19-25 loc-19-26)
	(move-dir-right loc-19-26 loc-19-27)
	(move-dir-right loc-19-27 loc-19-28)
	(move-dir-right loc-19-32 loc-19-33)
	(move-dir-right loc-19-35 loc-19-36)
	(move-dir-right loc-19-36 loc-19-37)
	(move-dir-right loc-19-39 loc-19-40)
	(move-dir-right loc-19-4 loc-19-5)
	(move-dir-right loc-19-5 loc-19-6)
	(move-dir-right loc-19-6 loc-19-7)
	(move-dir-right loc-19-7 loc-19-8)
	(move-dir-right loc-19-8 loc-19-9)
	(move-dir-right loc-19-9 loc-19-10)
	(move-dir-right loc-2-13 loc-2-14)
	(move-dir-right loc-2-14 loc-2-15)
	(move-dir-right loc-2-17 loc-2-18)
	(move-dir-right loc-2-20 loc-2-21)
	(move-dir-right loc-2-21 loc-2-22)
	(move-dir-right loc-2-22 loc-2-23)
	(move-dir-right loc-2-23 loc-2-24)
	(move-dir-right loc-2-24 loc-2-25)
	(move-dir-right loc-2-25 loc-2-26)
	(move-dir-right loc-2-28 loc-2-29)
	(move-dir-right loc-2-29 loc-2-30)
	(move-dir-right loc-2-2 loc-2-3)
	(move-dir-right loc-2-30 loc-2-31)
	(move-dir-right loc-2-31 loc-2-32)
	(move-dir-right loc-2-34 loc-2-35)
	(move-dir-right loc-2-35 loc-2-36)
	(move-dir-right loc-2-36 loc-2-37)
	(move-dir-right loc-2-37 loc-2-38)
	(move-dir-right loc-2-3 loc-2-4)
	(move-dir-right loc-2-40 loc-2-41)
	(move-dir-right loc-2-41 loc-2-42)
	(move-dir-right loc-2-42 loc-2-43)
	(move-dir-right loc-2-45 loc-2-46)
	(move-dir-right loc-2-46 loc-2-47)
	(move-dir-right loc-2-47 loc-2-48)
	(move-dir-right loc-2-4 loc-2-5)
	(move-dir-right loc-2-7 loc-2-8)
	(move-dir-right loc-2-8 loc-2-9)
	(move-dir-right loc-20-13 loc-20-14)
	(move-dir-right loc-20-14 loc-20-15)
	(move-dir-right loc-20-30 loc-20-31)
	(move-dir-right loc-20-31 loc-20-32)
	(move-dir-right loc-20-41 loc-20-42)
	(move-dir-right loc-20-44 loc-20-45)
	(move-dir-right loc-20-45 loc-20-46)
	(move-dir-right loc-20-46 loc-20-47)
	(move-dir-right loc-21-18 loc-21-19)
	(move-dir-right loc-21-19 loc-21-20)
	(move-dir-right loc-21-23 loc-21-24)
	(move-dir-right loc-21-24 loc-21-25)
	(move-dir-right loc-21-25 loc-21-26)
	(move-dir-right loc-21-26 loc-21-27)
	(move-dir-right loc-21-27 loc-21-28)
	(move-dir-right loc-21-28 loc-21-29)
	(move-dir-right loc-21-29 loc-21-30)
	(move-dir-right loc-21-2 loc-21-3)
	(move-dir-right loc-21-38 loc-21-39)
	(move-dir-right loc-21-39 loc-21-40)
	(move-dir-right loc-21-3 loc-21-4)
	(move-dir-right loc-21-42 loc-21-43)
	(move-dir-right loc-21-43 loc-21-44)
	(move-dir-right loc-21-47 loc-21-48)
	(move-dir-right loc-21-6 loc-21-7)
	(move-dir-right loc-22-11 loc-22-12)
	(move-dir-right loc-22-12 loc-22-13)
	(move-dir-right loc-22-13 loc-22-14)
	(move-dir-right loc-22-14 loc-22-15)
	(move-dir-right loc-22-15 loc-22-16)
	(move-dir-right loc-22-16 loc-22-17)
	(move-dir-right loc-22-17 loc-22-18)
	(move-dir-right loc-22-21 loc-22-22)
	(move-dir-right loc-22-22 loc-22-23)
	(move-dir-right loc-22-34 loc-22-35)
	(move-dir-right loc-22-44 loc-22-45)
	(move-dir-right loc-22-45 loc-22-46)
	(move-dir-right loc-22-4 loc-22-5)
	(move-dir-right loc-22-7 loc-22-8)
	(move-dir-right loc-22-8 loc-22-9)
	(move-dir-right loc-23-10 loc-23-11)
	(move-dir-right loc-23-18 loc-23-19)
	(move-dir-right loc-23-23 loc-23-24)
	(move-dir-right loc-23-29 loc-23-30)
	(move-dir-right loc-23-2 loc-23-3)
	(move-dir-right loc-23-37 loc-23-38)
	(move-dir-right loc-23-38 loc-23-39)
	(move-dir-right loc-23-39 loc-23-40)
	(move-dir-right loc-23-40 loc-23-41)
	(move-dir-right loc-23-41 loc-23-42)
	(move-dir-right loc-23-42 loc-23-43)
	(move-dir-right loc-23-43 loc-23-44)
	(move-dir-right loc-23-5 loc-23-6)
	(move-dir-right loc-24-12 loc-24-13)
	(move-dir-right loc-24-19 loc-24-20)
	(move-dir-right loc-24-22 loc-24-23)
	(move-dir-right loc-24-25 loc-24-26)
	(move-dir-right loc-24-26 loc-24-27)
	(move-dir-right loc-24-27 loc-24-28)
	(move-dir-right loc-24-28 loc-24-29)
	(move-dir-right loc-24-31 loc-24-32)
	(move-dir-right loc-24-32 loc-24-33)
	(move-dir-right loc-24-35 loc-24-36)
	(move-dir-right loc-24-3 loc-24-4)
	(move-dir-right loc-24-44 loc-24-45)
	(move-dir-right loc-24-45 loc-24-46)
	(move-dir-right loc-24-46 loc-24-47)
	(move-dir-right loc-24-6 loc-24-7)
	(move-dir-right loc-24-7 loc-24-8)
	(move-dir-right loc-24-8 loc-24-9)
	(move-dir-right loc-24-9 loc-24-10)
	(move-dir-right loc-25-13 loc-25-14)
	(move-dir-right loc-25-14 loc-25-15)
	(move-dir-right loc-25-17 loc-25-18)
	(move-dir-right loc-25-2 loc-25-3)
	(move-dir-right loc-25-33 loc-25-34)
	(move-dir-right loc-25-36 loc-25-37)
	(move-dir-right loc-25-37 loc-25-38)
	(move-dir-right loc-25-38 loc-25-39)
	(move-dir-right loc-25-39 loc-25-40)
	(move-dir-right loc-25-40 loc-25-41)
	(move-dir-right loc-25-41 loc-25-42)
	(move-dir-right loc-25-42 loc-25-43)
	(move-dir-right loc-25-43 loc-25-44)
	(move-dir-right loc-26-11 loc-26-12)
	(move-dir-right loc-26-20 loc-26-21)
	(move-dir-right loc-26-23 loc-26-24)
	(move-dir-right loc-26-26 loc-26-27)
	(move-dir-right loc-26-29 loc-26-30)
	(move-dir-right loc-26-35 loc-26-36)
	(move-dir-right loc-26-46 loc-26-47)
	(move-dir-right loc-26-47 loc-26-48)
	(move-dir-right loc-26-4 loc-26-5)
	(move-dir-right loc-26-5 loc-26-6)
	(move-dir-right loc-26-6 loc-26-7)
	(move-dir-right loc-26-7 loc-26-8)
	(move-dir-right loc-26-8 loc-26-9)
	(move-dir-right loc-27-25 loc-27-26)
	(move-dir-right loc-27-2 loc-27-3)
	(move-dir-right loc-27-30 loc-27-31)
	(move-dir-right loc-27-33 loc-27-34)
	(move-dir-right loc-27-34 loc-27-35)
	(move-dir-right loc-27-39 loc-27-40)
	(move-dir-right loc-27-42 loc-27-43)
	(move-dir-right loc-27-43 loc-27-44)
	(move-dir-right loc-27-44 loc-27-45)
	(move-dir-right loc-28-10 loc-28-11)
	(move-dir-right loc-28-11 loc-28-12)
	(move-dir-right loc-28-14 loc-28-15)
	(move-dir-right loc-28-15 loc-28-16)
	(move-dir-right loc-28-18 loc-28-19)
	(move-dir-right loc-28-19 loc-28-20)
	(move-dir-right loc-28-20 loc-28-21)
	(move-dir-right loc-28-21 loc-28-22)
	(move-dir-right loc-28-22 loc-28-23)
	(move-dir-right loc-28-28 loc-28-29)
	(move-dir-right loc-28-45 loc-28-46)
	(move-dir-right loc-28-7 loc-28-8)
	(move-dir-right loc-29-13 loc-29-14)
	(move-dir-right loc-29-16 loc-29-17)
	(move-dir-right loc-29-17 loc-29-18)
	(move-dir-right loc-29-24 loc-29-25)
	(move-dir-right loc-29-25 loc-29-26)
	(move-dir-right loc-29-2 loc-29-3)
	(move-dir-right loc-29-32 loc-29-33)
	(move-dir-right loc-29-33 loc-29-34)
	(move-dir-right loc-29-34 loc-29-35)
	(move-dir-right loc-29-35 loc-29-36)
	(move-dir-right loc-29-36 loc-29-37)
	(move-dir-right loc-29-37 loc-29-38)
	(move-dir-right loc-29-3 loc-29-4)
	(move-dir-right loc-29-40 loc-29-41)
	(move-dir-right loc-29-41 loc-29-42)
	(move-dir-right loc-29-44 loc-29-45)
	(move-dir-right loc-29-47 loc-29-48)
	(move-dir-right loc-29-4 loc-29-5)
	(move-dir-right loc-29-8 loc-29-9)
	(move-dir-right loc-3-10 loc-3-11)
	(move-dir-right loc-3-11 loc-3-12)
	(move-dir-right loc-3-12 loc-3-13)
	(move-dir-right loc-3-15 loc-3-16)
	(move-dir-right loc-3-16 loc-3-17)
	(move-dir-right loc-3-32 loc-3-33)
	(move-dir-right loc-3-33 loc-3-34)
	(move-dir-right loc-3-38 loc-3-39)
	(move-dir-right loc-3-43 loc-3-44)
	(move-dir-right loc-3-6 loc-3-7)
	(move-dir-right loc-3-9 loc-3-10)
	(move-dir-right loc-30-10 loc-30-11)
	(move-dir-right loc-30-11 loc-30-12)
	(move-dir-right loc-30-12 loc-30-13)
	(move-dir-right loc-30-15 loc-30-16)
	(move-dir-right loc-30-20 loc-30-21)
	(move-dir-right loc-30-23 loc-30-24)
	(move-dir-right loc-30-28 loc-30-29)
	(move-dir-right loc-30-29 loc-30-30)
	(move-dir-right loc-30-30 loc-30-31)
	(move-dir-right loc-30-31 loc-30-32)
	(move-dir-right loc-30-42 loc-30-43)
	(move-dir-right loc-30-45 loc-30-46)
	(move-dir-right loc-30-5 loc-30-6)
	(move-dir-right loc-30-6 loc-30-7)
	(move-dir-right loc-31-14 loc-31-15)
	(move-dir-right loc-31-21 loc-31-22)
	(move-dir-right loc-31-22 loc-31-23)
	(move-dir-right loc-31-2 loc-31-3)
	(move-dir-right loc-31-32 loc-31-33)
	(move-dir-right loc-31-33 loc-31-34)
	(move-dir-right loc-31-34 loc-31-35)
	(move-dir-right loc-31-38 loc-31-39)
	(move-dir-right loc-31-39 loc-31-40)
	(move-dir-right loc-31-3 loc-31-4)
	(move-dir-right loc-31-40 loc-31-41)
	(move-dir-right loc-31-41 loc-31-42)
	(move-dir-right loc-31-47 loc-31-48)
	(move-dir-right loc-31-8 loc-31-9)
	(move-dir-right loc-31-9 loc-31-10)
	(move-dir-right loc-32-17 loc-32-18)
	(move-dir-right loc-32-20 loc-32-21)
	(move-dir-right loc-32-26 loc-32-27)
	(move-dir-right loc-32-27 loc-32-28)
	(move-dir-right loc-32-35 loc-32-36)
	(move-dir-right loc-32-36 loc-32-37)
	(move-dir-right loc-32-42 loc-32-43)
	(move-dir-right loc-32-43 loc-32-44)
	(move-dir-right loc-32-46 loc-32-47)
	(move-dir-right loc-32-6 loc-32-7)
	(move-dir-right loc-32-7 loc-32-8)
	(move-dir-right loc-33-10 loc-33-11)
	(move-dir-right loc-33-11 loc-33-12)
	(move-dir-right loc-33-12 loc-33-13)
	(move-dir-right loc-33-13 loc-33-14)
	(move-dir-right loc-33-16 loc-33-17)
	(move-dir-right loc-33-21 loc-33-22)
	(move-dir-right loc-33-22 loc-33-23)
	(move-dir-right loc-33-23 loc-33-24)
	(move-dir-right loc-33-2 loc-33-3)
	(move-dir-right loc-33-31 loc-33-32)
	(move-dir-right loc-33-32 loc-33-33)
	(move-dir-right loc-33-33 loc-33-34)
	(move-dir-right loc-33-3 loc-33-4)
	(move-dir-right loc-33-44 loc-33-45)
	(move-dir-right loc-33-4 loc-33-5)
	(move-dir-right loc-33-9 loc-33-10)
	(move-dir-right loc-34-14 loc-34-15)
	(move-dir-right loc-34-19 loc-34-20)
	(move-dir-right loc-34-25 loc-34-26)
	(move-dir-right loc-34-26 loc-34-27)
	(move-dir-right loc-34-27 loc-34-28)
	(move-dir-right loc-34-28 loc-34-29)
	(move-dir-right loc-34-29 loc-34-30)
	(move-dir-right loc-34-35 loc-34-36)
	(move-dir-right loc-34-36 loc-34-37)
	(move-dir-right loc-34-37 loc-34-38)
	(move-dir-right loc-34-38 loc-34-39)
	(move-dir-right loc-34-41 loc-34-42)
	(move-dir-right loc-34-42 loc-34-43)
	(move-dir-right loc-34-46 loc-34-47)
	(move-dir-right loc-34-47 loc-34-48)
	(move-dir-right loc-34-6 loc-34-7)
	(move-dir-right loc-35-12 loc-35-13)
	(move-dir-right loc-35-13 loc-35-14)
	(move-dir-right loc-35-20 loc-35-21)
	(move-dir-right loc-35-21 loc-35-22)
	(move-dir-right loc-35-22 loc-35-23)
	(move-dir-right loc-35-23 loc-35-24)
	(move-dir-right loc-35-24 loc-35-25)
	(move-dir-right loc-35-2 loc-35-3)
	(move-dir-right loc-35-31 loc-35-32)
	(move-dir-right loc-35-32 loc-35-33)
	(move-dir-right loc-35-33 loc-35-34)
	(move-dir-right loc-35-3 loc-35-4)
	(move-dir-right loc-35-44 loc-35-45)
	(move-dir-right loc-35-4 loc-35-5)
	(move-dir-right loc-36-14 loc-36-15)
	(move-dir-right loc-36-15 loc-36-16)
	(move-dir-right loc-36-16 loc-36-17)
	(move-dir-right loc-36-17 loc-36-18)
	(move-dir-right loc-36-18 loc-36-19)
	(move-dir-right loc-36-28 loc-36-29)
	(move-dir-right loc-36-34 loc-36-35)
	(move-dir-right loc-36-35 loc-36-36)
	(move-dir-right loc-36-40 loc-36-41)
	(move-dir-right loc-36-41 loc-36-42)
	(move-dir-right loc-36-42 loc-36-43)
	(move-dir-right loc-36-47 loc-36-48)
	(move-dir-right loc-36-6 loc-36-7)
	(move-dir-right loc-36-7 loc-36-8)
	(move-dir-right loc-36-8 loc-36-9)
	(move-dir-right loc-36-9 loc-36-10)
	(move-dir-right loc-37-13 loc-37-14)
	(move-dir-right loc-37-20 loc-37-21)
	(move-dir-right loc-37-21 loc-37-22)
	(move-dir-right loc-37-24 loc-37-25)
	(move-dir-right loc-37-25 loc-37-26)
	(move-dir-right loc-37-29 loc-37-30)
	(move-dir-right loc-37-30 loc-37-31)
	(move-dir-right loc-37-31 loc-37-32)
	(move-dir-right loc-37-32 loc-37-33)
	(move-dir-right loc-37-37 loc-37-38)
	(move-dir-right loc-37-38 loc-37-39)
	(move-dir-right loc-37-39 loc-37-40)
	(move-dir-right loc-37-4 loc-37-5)
	(move-dir-right loc-37-5 loc-37-6)
	(move-dir-right loc-38-10 loc-38-11)
	(move-dir-right loc-38-11 loc-38-12)
	(move-dir-right loc-38-14 loc-38-15)
	(move-dir-right loc-38-17 loc-38-18)
	(move-dir-right loc-38-18 loc-38-19)
	(move-dir-right loc-38-19 loc-38-20)
	(move-dir-right loc-38-27 loc-38-28)
	(move-dir-right loc-38-2 loc-38-3)
	(move-dir-right loc-38-36 loc-38-37)
	(move-dir-right loc-38-3 loc-38-4)
	(move-dir-right loc-38-41 loc-38-42)
	(move-dir-right loc-38-42 loc-38-43)
	(move-dir-right loc-38-43 loc-38-44)
	(move-dir-right loc-38-44 loc-38-45)
	(move-dir-right loc-38-45 loc-38-46)
	(move-dir-right loc-38-46 loc-38-47)
	(move-dir-right loc-38-47 loc-38-48)
	(move-dir-right loc-38-6 loc-38-7)
	(move-dir-right loc-38-9 loc-38-10)
	(move-dir-right loc-39-20 loc-39-21)
	(move-dir-right loc-39-21 loc-39-22)
	(move-dir-right loc-39-28 loc-39-29)
	(move-dir-right loc-39-33 loc-39-34)
	(move-dir-right loc-39-34 loc-39-35)
	(move-dir-right loc-39-35 loc-39-36)
	(move-dir-right loc-39-38 loc-39-39)
	(move-dir-right loc-4-17 loc-4-18)
	(move-dir-right loc-4-20 loc-4-21)
	(move-dir-right loc-4-21 loc-4-22)
	(move-dir-right loc-4-22 loc-4-23)
	(move-dir-right loc-4-25 loc-4-26)
	(move-dir-right loc-4-26 loc-4-27)
	(move-dir-right loc-4-27 loc-4-28)
	(move-dir-right loc-4-28 loc-4-29)
	(move-dir-right loc-4-29 loc-4-30)
	(move-dir-right loc-4-2 loc-4-3)
	(move-dir-right loc-4-30 loc-4-31)
	(move-dir-right loc-4-35 loc-4-36)
	(move-dir-right loc-4-40 loc-4-41)
	(move-dir-right loc-4-41 loc-4-42)
	(move-dir-right loc-4-44 loc-4-45)
	(move-dir-right loc-4-45 loc-4-46)
	(move-dir-right loc-4-46 loc-4-47)
	(move-dir-right loc-4-47 loc-4-48)
	(move-dir-right loc-40-12 loc-40-13)
	(move-dir-right loc-40-17 loc-40-18)
	(move-dir-right loc-40-22 loc-40-23)
	(move-dir-right loc-40-25 loc-40-26)
	(move-dir-right loc-40-26 loc-40-27)
	(move-dir-right loc-40-29 loc-40-30)
	(move-dir-right loc-40-30 loc-40-31)
	(move-dir-right loc-40-31 loc-40-32)
	(move-dir-right loc-40-39 loc-40-40)
	(move-dir-right loc-40-43 loc-40-44)
	(move-dir-right loc-40-44 loc-40-45)
	(move-dir-right loc-40-47 loc-40-48)
	(move-dir-right loc-40-4 loc-40-5)
	(move-dir-right loc-40-7 loc-40-8)
	(move-dir-right loc-41-13 loc-41-14)
	(move-dir-right loc-41-14 loc-41-15)
	(move-dir-right loc-41-15 loc-41-16)
	(move-dir-right loc-41-20 loc-41-21)
	(move-dir-right loc-41-23 loc-41-24)
	(move-dir-right loc-41-24 loc-41-25)
	(move-dir-right loc-41-27 loc-41-28)
	(move-dir-right loc-41-2 loc-41-3)
	(move-dir-right loc-41-3 loc-41-4)
	(move-dir-right loc-41-41 loc-41-42)
	(move-dir-right loc-41-42 loc-41-43)
	(move-dir-right loc-41-8 loc-41-9)
	(move-dir-right loc-41-9 loc-41-10)
	(move-dir-right loc-42-10 loc-42-11)
	(move-dir-right loc-42-11 loc-42-12)
	(move-dir-right loc-42-12 loc-42-13)
	(move-dir-right loc-42-26 loc-42-27)
	(move-dir-right loc-42-32 loc-42-33)
	(move-dir-right loc-42-33 loc-42-34)
	(move-dir-right loc-42-34 loc-42-35)
	(move-dir-right loc-42-37 loc-42-38)
	(move-dir-right loc-42-38 loc-42-39)
	(move-dir-right loc-43-15 loc-43-16)
	(move-dir-right loc-43-16 loc-43-17)
	(move-dir-right loc-43-17 loc-43-18)
	(move-dir-right loc-43-18 loc-43-19)
	(move-dir-right loc-43-24 loc-43-25)
	(move-dir-right loc-43-28 loc-43-29)
	(move-dir-right loc-43-29 loc-43-30)
	(move-dir-right loc-43-30 loc-43-31)
	(move-dir-right loc-43-31 loc-43-32)
	(move-dir-right loc-43-39 loc-43-40)
	(move-dir-right loc-43-42 loc-43-43)
	(move-dir-right loc-43-43 loc-43-44)
	(move-dir-right loc-43-47 loc-43-48)
	(move-dir-right loc-43-4 loc-43-5)
	(move-dir-right loc-43-5 loc-43-6)
	(move-dir-right loc-43-6 loc-43-7)
	(move-dir-right loc-43-7 loc-43-8)
	(move-dir-right loc-44-12 loc-44-13)
	(move-dir-right loc-44-13 loc-44-14)
	(move-dir-right loc-44-14 loc-44-15)
	(move-dir-right loc-44-21 loc-44-22)
	(move-dir-right loc-44-22 loc-44-23)
	(move-dir-right loc-44-23 loc-44-24)
	(move-dir-right loc-44-26 loc-44-27)
	(move-dir-right loc-44-37 loc-44-38)
	(move-dir-right loc-44-3 loc-44-4)
	(move-dir-right loc-44-46 loc-44-47)
	(move-dir-right loc-44-9 loc-44-10)
	(move-dir-right loc-45-15 loc-45-16)
	(move-dir-right loc-45-27 loc-45-28)
	(move-dir-right loc-45-2 loc-45-3)
	(move-dir-right loc-45-34 loc-45-35)
	(move-dir-right loc-45-35 loc-45-36)
	(move-dir-right loc-45-43 loc-45-44)
	(move-dir-right loc-45-5 loc-45-6)
	(move-dir-right loc-45-6 loc-45-7)
	(move-dir-right loc-45-7 loc-45-8)
	(move-dir-right loc-46-11 loc-46-12)
	(move-dir-right loc-46-12 loc-46-13)
	(move-dir-right loc-46-17 loc-46-18)
	(move-dir-right loc-46-20 loc-46-21)
	(move-dir-right loc-46-23 loc-46-24)
	(move-dir-right loc-46-24 loc-46-25)
	(move-dir-right loc-46-25 loc-46-26)
	(move-dir-right loc-46-30 loc-46-31)
	(move-dir-right loc-46-31 loc-46-32)
	(move-dir-right loc-46-32 loc-46-33)
	(move-dir-right loc-46-39 loc-46-40)
	(move-dir-right loc-46-40 loc-46-41)
	(move-dir-right loc-46-44 loc-46-45)
	(move-dir-right loc-46-45 loc-46-46)
	(move-dir-right loc-47-10 loc-47-11)
	(move-dir-right loc-47-18 loc-47-19)
	(move-dir-right loc-47-19 loc-47-20)
	(move-dir-right loc-47-28 loc-47-29)
	(move-dir-right loc-47-29 loc-47-30)
	(move-dir-right loc-47-34 loc-47-35)
	(move-dir-right loc-47-35 loc-47-36)
	(move-dir-right loc-47-36 loc-47-37)
	(move-dir-right loc-47-37 loc-47-38)
	(move-dir-right loc-47-38 loc-47-39)
	(move-dir-right loc-47-41 loc-47-42)
	(move-dir-right loc-47-8 loc-47-9)
	(move-dir-right loc-47-9 loc-47-10)
	(move-dir-right loc-48-13 loc-48-14)
	(move-dir-right loc-48-16 loc-48-17)
	(move-dir-right loc-48-17 loc-48-18)
	(move-dir-right loc-48-20 loc-48-21)
	(move-dir-right loc-48-21 loc-48-22)
	(move-dir-right loc-48-22 loc-48-23)
	(move-dir-right loc-48-25 loc-48-26)
	(move-dir-right loc-48-26 loc-48-27)
	(move-dir-right loc-48-27 loc-48-28)
	(move-dir-right loc-48-31 loc-48-32)
	(move-dir-right loc-48-32 loc-48-33)
	(move-dir-right loc-48-33 loc-48-34)
	(move-dir-right loc-48-39 loc-48-40)
	(move-dir-right loc-48-3 loc-48-4)
	(move-dir-right loc-48-42 loc-48-43)
	(move-dir-right loc-48-43 loc-48-44)
	(move-dir-right loc-48-44 loc-48-45)
	(move-dir-right loc-48-45 loc-48-46)
	(move-dir-right loc-48-46 loc-48-47)
	(move-dir-right loc-48-47 loc-48-48)
	(move-dir-right loc-48-4 loc-48-5)
	(move-dir-right loc-48-5 loc-48-6)
	(move-dir-right loc-48-6 loc-48-7)
	(move-dir-right loc-5-10 loc-5-11)
	(move-dir-right loc-5-11 loc-5-12)
	(move-dir-right loc-5-33 loc-5-34)
	(move-dir-right loc-5-7 loc-5-8)
	(move-dir-right loc-6-14 loc-6-15)
	(move-dir-right loc-6-15 loc-6-16)
	(move-dir-right loc-6-16 loc-6-17)
	(move-dir-right loc-6-17 loc-6-18)
	(move-dir-right loc-6-18 loc-6-19)
	(move-dir-right loc-6-19 loc-6-20)
	(move-dir-right loc-6-22 loc-6-23)
	(move-dir-right loc-6-23 loc-6-24)
	(move-dir-right loc-6-24 loc-6-25)
	(move-dir-right loc-6-25 loc-6-26)
	(move-dir-right loc-6-26 loc-6-27)
	(move-dir-right loc-6-27 loc-6-28)
	(move-dir-right loc-6-2 loc-6-3)
	(move-dir-right loc-6-35 loc-6-36)
	(move-dir-right loc-6-39 loc-6-40)
	(move-dir-right loc-6-3 loc-6-4)
	(move-dir-right loc-6-42 loc-6-43)
	(move-dir-right loc-6-43 loc-6-44)
	(move-dir-right loc-6-44 loc-6-45)
	(move-dir-right loc-6-45 loc-6-46)
	(move-dir-right loc-6-46 loc-6-47)
	(move-dir-right loc-6-47 loc-6-48)
	(move-dir-right loc-6-4 loc-6-5)
	(move-dir-right loc-6-5 loc-6-6)
	(move-dir-right loc-7-30 loc-7-31)
	(move-dir-right loc-7-31 loc-7-32)
	(move-dir-right loc-7-36 loc-7-37)
	(move-dir-right loc-7-37 loc-7-38)
	(move-dir-right loc-8-11 loc-8-12)
	(move-dir-right loc-8-12 loc-8-13)
	(move-dir-right loc-8-13 loc-8-14)
	(move-dir-right loc-8-14 loc-8-15)
	(move-dir-right loc-8-15 loc-8-16)
	(move-dir-right loc-8-18 loc-8-19)
	(move-dir-right loc-8-19 loc-8-20)
	(move-dir-right loc-8-20 loc-8-21)
	(move-dir-right loc-8-21 loc-8-22)
	(move-dir-right loc-8-22 loc-8-23)
	(move-dir-right loc-8-23 loc-8-24)
	(move-dir-right loc-8-28 loc-8-29)
	(move-dir-right loc-8-32 loc-8-33)
	(move-dir-right loc-8-35 loc-8-36)
	(move-dir-right loc-8-40 loc-8-41)
	(move-dir-right loc-8-41 loc-8-42)
	(move-dir-right loc-8-42 loc-8-43)
	(move-dir-right loc-8-43 loc-8-44)
	(move-dir-right loc-8-47 loc-8-48)
	(move-dir-right loc-8-7 loc-8-8)
	(move-dir-right loc-8-8 loc-8-9)
	(move-dir-right loc-9-24 loc-9-25)
	(move-dir-right loc-9-25 loc-9-26)
	(move-dir-right loc-9-26 loc-9-27)
	(move-dir-right loc-9-27 loc-9-28)
	(move-dir-right loc-9-30 loc-9-31)
	(move-dir-right loc-9-33 loc-9-34)
	(move-dir-right loc-9-37 loc-9-38)
	(move-dir-right loc-9-44 loc-9-45)
	(move-dir-right loc-9-4 loc-9-5)
	(move-dir-right loc-9-5 loc-9-6)
	(move-dir-right loc-9-6 loc-9-7)
	(move-dir-right loc-9-9 loc-9-10)
	(move-dir-up loc-10-12 loc-9-12)
	(move-dir-up loc-10-15 loc-9-15)
	(move-dir-up loc-10-17 loc-9-17)
	(move-dir-up loc-10-22 loc-9-22)
	(move-dir-up loc-10-24 loc-9-24)
	(move-dir-up loc-10-28 loc-9-28)
	(move-dir-up loc-10-2 loc-9-2)
	(move-dir-up loc-10-30 loc-9-30)
	(move-dir-up loc-10-34 loc-9-34)
	(move-dir-up loc-10-38 loc-9-38)
	(move-dir-up loc-10-40 loc-9-40)
	(move-dir-up loc-10-45 loc-9-45)
	(move-dir-up loc-10-48 loc-9-48)
	(move-dir-up loc-10-4 loc-9-4)
	(move-dir-up loc-10-6 loc-9-6)
	(move-dir-up loc-10-9 loc-9-9)
	(move-dir-up loc-11-13 loc-10-13)
	(move-dir-up loc-11-15 loc-10-15)
	(move-dir-up loc-11-17 loc-10-17)
	(move-dir-up loc-11-21 loc-10-21)
	(move-dir-up loc-11-24 loc-10-24)
	(move-dir-up loc-11-29 loc-10-29)
	(move-dir-up loc-11-2 loc-10-2)
	(move-dir-up loc-11-32 loc-10-32)
	(move-dir-up loc-11-34 loc-10-34)
	(move-dir-up loc-11-38 loc-10-38)
	(move-dir-up loc-11-42 loc-10-42)
	(move-dir-up loc-11-48 loc-10-48)
	(move-dir-up loc-11-4 loc-10-4)
	(move-dir-up loc-11-6 loc-10-6)
	(move-dir-up loc-11-9 loc-10-9)
	(move-dir-up loc-12-15 loc-11-15)
	(move-dir-up loc-12-20 loc-11-20)
	(move-dir-up loc-12-23 loc-11-23)
	(move-dir-up loc-12-26 loc-11-26)
	(move-dir-up loc-12-29 loc-11-29)
	(move-dir-up loc-12-2 loc-11-2)
	(move-dir-up loc-12-33 loc-11-33)
	(move-dir-up loc-12-35 loc-11-35)
	(move-dir-up loc-12-37 loc-11-37)
	(move-dir-up loc-12-41 loc-11-41)
	(move-dir-up loc-12-44 loc-11-44)
	(move-dir-up loc-12-4 loc-11-4)
	(move-dir-up loc-12-9 loc-11-9)
	(move-dir-up loc-13-12 loc-12-12)
	(move-dir-up loc-13-14 loc-12-14)
	(move-dir-up loc-13-18 loc-12-18)
	(move-dir-up loc-13-20 loc-12-20)
	(move-dir-up loc-13-23 loc-12-23)
	(move-dir-up loc-13-27 loc-12-27)
	(move-dir-up loc-13-2 loc-12-2)
	(move-dir-up loc-13-31 loc-12-31)
	(move-dir-up loc-13-35 loc-12-35)
	(move-dir-up loc-13-37 loc-12-37)
	(move-dir-up loc-13-39 loc-12-39)
	(move-dir-up loc-13-41 loc-12-41)
	(move-dir-up loc-13-44 loc-12-44)
	(move-dir-up loc-13-46 loc-12-46)
	(move-dir-up loc-13-4 loc-12-4)
	(move-dir-up loc-13-7 loc-12-7)
	(move-dir-up loc-13-9 loc-12-9)
	(move-dir-up loc-14-12 loc-13-12)
	(move-dir-up loc-14-14 loc-13-14)
	(move-dir-up loc-14-17 loc-13-17)
	(move-dir-up loc-14-20 loc-13-20)
	(move-dir-up loc-14-23 loc-13-23)
	(move-dir-up loc-14-27 loc-13-27)
	(move-dir-up loc-14-2 loc-13-2)
	(move-dir-up loc-14-32 loc-13-32)
	(move-dir-up loc-14-35 loc-13-35)
	(move-dir-up loc-14-38 loc-13-38)
	(move-dir-up loc-14-42 loc-13-42)
	(move-dir-up loc-14-47 loc-13-47)
	(move-dir-up loc-14-6 loc-13-6)
	(move-dir-up loc-14-9 loc-13-9)
	(move-dir-up loc-15-14 loc-14-14)
	(move-dir-up loc-15-17 loc-14-17)
	(move-dir-up loc-15-20 loc-14-20)
	(move-dir-up loc-15-25 loc-14-25)
	(move-dir-up loc-15-27 loc-14-27)
	(move-dir-up loc-15-2 loc-14-2)
	(move-dir-up loc-15-30 loc-14-30)
	(move-dir-up loc-15-32 loc-14-32)
	(move-dir-up loc-15-35 loc-14-35)
	(move-dir-up loc-15-38 loc-14-38)
	(move-dir-up loc-15-40 loc-14-40)
	(move-dir-up loc-15-43 loc-14-43)
	(move-dir-up loc-15-45 loc-14-45)
	(move-dir-up loc-15-47 loc-14-47)
	(move-dir-up loc-15-6 loc-14-6)
	(move-dir-up loc-16-11 loc-15-11)
	(move-dir-up loc-16-14 loc-15-14)
	(move-dir-up loc-16-17 loc-15-17)
	(move-dir-up loc-16-20 loc-15-20)
	(move-dir-up loc-16-22 loc-15-22)
	(move-dir-up loc-16-25 loc-15-25)
	(move-dir-up loc-16-30 loc-15-30)
	(move-dir-up loc-16-32 loc-15-32)
	(move-dir-up loc-16-38 loc-15-38)
	(move-dir-up loc-16-3 loc-15-3)
	(move-dir-up loc-16-40 loc-15-40)
	(move-dir-up loc-16-43 loc-15-43)
	(move-dir-up loc-16-45 loc-15-45)
	(move-dir-up loc-16-48 loc-15-48)
	(move-dir-up loc-16-8 loc-15-8)
	(move-dir-up loc-17-16 loc-16-16)
	(move-dir-up loc-17-18 loc-16-18)
	(move-dir-up loc-17-22 loc-16-22)
	(move-dir-up loc-17-26 loc-16-26)
	(move-dir-up loc-17-30 loc-16-30)
	(move-dir-up loc-17-36 loc-16-36)
	(move-dir-up loc-17-38 loc-16-38)
	(move-dir-up loc-17-3 loc-16-3)
	(move-dir-up loc-17-40 loc-16-40)
	(move-dir-up loc-17-42 loc-16-42)
	(move-dir-up loc-17-45 loc-16-45)
	(move-dir-up loc-17-48 loc-16-48)
	(move-dir-up loc-17-5 loc-16-5)
	(move-dir-up loc-18-10 loc-17-10)
	(move-dir-up loc-18-16 loc-17-16)
	(move-dir-up loc-18-21 loc-17-21)
	(move-dir-up loc-18-29 loc-17-29)
	(move-dir-up loc-18-31 loc-17-31)
	(move-dir-up loc-18-36 loc-17-36)
	(move-dir-up loc-18-38 loc-17-38)
	(move-dir-up loc-18-3 loc-17-3)
	(move-dir-up loc-18-40 loc-17-40)
	(move-dir-up loc-18-45 loc-17-45)
	(move-dir-up loc-18-48 loc-17-48)
	(move-dir-up loc-19-10 loc-18-10)
	(move-dir-up loc-19-12 loc-18-12)
	(move-dir-up loc-19-19 loc-18-19)
	(move-dir-up loc-19-21 loc-18-21)
	(move-dir-up loc-19-24 loc-18-24)
	(move-dir-up loc-19-28 loc-18-28)
	(move-dir-up loc-19-2 loc-18-2)
	(move-dir-up loc-19-33 loc-18-33)
	(move-dir-up loc-19-36 loc-18-36)
	(move-dir-up loc-19-40 loc-18-40)
	(move-dir-up loc-19-45 loc-18-45)
	(move-dir-up loc-19-8 loc-18-8)
	(move-dir-up loc-20-15 loc-19-15)
	(move-dir-up loc-20-17 loc-19-17)
	(move-dir-up loc-20-22 loc-19-22)
	(move-dir-up loc-20-27 loc-19-27)
	(move-dir-up loc-20-2 loc-19-2)
	(move-dir-up loc-20-30 loc-19-30)
	(move-dir-up loc-20-32 loc-19-32)
	(move-dir-up loc-20-35 loc-19-35)
	(move-dir-up loc-20-37 loc-19-37)
	(move-dir-up loc-20-39 loc-19-39)
	(move-dir-up loc-20-42 loc-19-42)
	(move-dir-up loc-20-45 loc-19-45)
	(move-dir-up loc-20-47 loc-19-47)
	(move-dir-up loc-20-5 loc-19-5)
	(move-dir-up loc-20-7 loc-19-7)
	(move-dir-up loc-20-9 loc-19-9)
	(move-dir-up loc-21-14 loc-20-14)
	(move-dir-up loc-21-27 loc-20-27)
	(move-dir-up loc-21-2 loc-20-2)
	(move-dir-up loc-21-30 loc-20-30)
	(move-dir-up loc-21-32 loc-20-32)
	(move-dir-up loc-21-39 loc-20-39)
	(move-dir-up loc-21-42 loc-20-42)
	(move-dir-up loc-21-44 loc-20-44)
	(move-dir-up loc-21-47 loc-20-47)
	(move-dir-up loc-21-7 loc-20-7)
	(move-dir-up loc-22-12 loc-21-12)
	(move-dir-up loc-22-14 loc-21-14)
	(move-dir-up loc-22-16 loc-21-16)
	(move-dir-up loc-22-18 loc-21-18)
	(move-dir-up loc-22-23 loc-21-23)
	(move-dir-up loc-22-26 loc-21-26)
	(move-dir-up loc-22-28 loc-21-28)
	(move-dir-up loc-22-2 loc-21-2)
	(move-dir-up loc-22-30 loc-21-30)
	(move-dir-up loc-22-32 loc-21-32)
	(move-dir-up loc-22-34 loc-21-34)
	(move-dir-up loc-22-40 loc-21-40)
	(move-dir-up loc-22-44 loc-21-44)
	(move-dir-up loc-22-48 loc-21-48)
	(move-dir-up loc-22-4 loc-21-4)
	(move-dir-up loc-22-7 loc-21-7)
	(move-dir-up loc-23-11 loc-22-11)
	(move-dir-up loc-23-14 loc-22-14)
	(move-dir-up loc-23-16 loc-22-16)
	(move-dir-up loc-23-18 loc-22-18)
	(move-dir-up loc-23-21 loc-22-21)
	(move-dir-up loc-23-23 loc-22-23)
	(move-dir-up loc-23-2 loc-22-2)
	(move-dir-up loc-23-30 loc-22-30)
	(move-dir-up loc-23-32 loc-22-32)
	(move-dir-up loc-23-35 loc-22-35)
	(move-dir-up loc-23-37 loc-22-37)
	(move-dir-up loc-23-40 loc-22-40)
	(move-dir-up loc-23-44 loc-22-44)
	(move-dir-up loc-23-48 loc-22-48)
	(move-dir-up loc-23-5 loc-22-5)
	(move-dir-up loc-23-8 loc-22-8)
	(move-dir-up loc-24-10 loc-23-10)
	(move-dir-up loc-24-19 loc-23-19)
	(move-dir-up loc-24-23 loc-23-23)
	(move-dir-up loc-24-27 loc-23-27)
	(move-dir-up loc-24-29 loc-23-29)
	(move-dir-up loc-24-32 loc-23-32)
	(move-dir-up loc-24-35 loc-23-35)
	(move-dir-up loc-24-3 loc-23-3)
	(move-dir-up loc-24-44 loc-23-44)
	(move-dir-up loc-24-6 loc-23-6)
	(move-dir-up loc-24-8 loc-23-8)
	(move-dir-up loc-25-10 loc-24-10)
	(move-dir-up loc-25-13 loc-24-13)
	(move-dir-up loc-25-15 loc-24-15)
	(move-dir-up loc-25-17 loc-24-17)
	(move-dir-up loc-25-20 loc-24-20)
	(move-dir-up loc-25-23 loc-24-23)
	(move-dir-up loc-25-25 loc-24-25)
	(move-dir-up loc-25-27 loc-24-27)
	(move-dir-up loc-25-29 loc-24-29)
	(move-dir-up loc-25-31 loc-24-31)
	(move-dir-up loc-25-33 loc-24-33)
	(move-dir-up loc-25-36 loc-24-36)
	(move-dir-up loc-25-3 loc-24-3)
	(move-dir-up loc-25-44 loc-24-44)
	(move-dir-up loc-25-47 loc-24-47)
	(move-dir-up loc-25-8 loc-24-8)
	(move-dir-up loc-26-14 loc-25-14)
	(move-dir-up loc-26-18 loc-25-18)
	(move-dir-up loc-26-20 loc-25-20)
	(move-dir-up loc-26-23 loc-25-23)
	(move-dir-up loc-26-27 loc-25-27)
	(move-dir-up loc-26-29 loc-25-29)
	(move-dir-up loc-26-2 loc-25-2)
	(move-dir-up loc-26-36 loc-25-36)
	(move-dir-up loc-26-39 loc-25-39)
	(move-dir-up loc-26-41 loc-25-41)
	(move-dir-up loc-26-44 loc-25-44)
	(move-dir-up loc-26-47 loc-25-47)
	(move-dir-up loc-26-5 loc-25-5)
	(move-dir-up loc-26-8 loc-25-8)
	(move-dir-up loc-27-12 loc-26-12)
	(move-dir-up loc-27-14 loc-26-14)
	(move-dir-up loc-27-16 loc-26-16)
	(move-dir-up loc-27-18 loc-26-18)
	(move-dir-up loc-27-20 loc-26-20)
	(move-dir-up loc-27-26 loc-26-26)
	(move-dir-up loc-27-2 loc-26-2)
	(move-dir-up loc-27-30 loc-26-30)
	(move-dir-up loc-27-35 loc-26-35)
	(move-dir-up loc-27-39 loc-26-39)
	(move-dir-up loc-27-44 loc-26-44)
	(move-dir-up loc-27-48 loc-26-48)
	(move-dir-up loc-27-6 loc-26-6)
	(move-dir-up loc-27-8 loc-26-8)
	(move-dir-up loc-28-10 loc-27-10)
	(move-dir-up loc-28-12 loc-27-12)
	(move-dir-up loc-28-14 loc-27-14)
	(move-dir-up loc-28-16 loc-27-16)
	(move-dir-up loc-28-18 loc-27-18)
	(move-dir-up loc-28-20 loc-27-20)
	(move-dir-up loc-28-22 loc-27-22)
	(move-dir-up loc-28-26 loc-27-26)
	(move-dir-up loc-28-28 loc-27-28)
	(move-dir-up loc-28-31 loc-27-31)
	(move-dir-up loc-28-33 loc-27-33)
	(move-dir-up loc-28-3 loc-27-3)
	(move-dir-up loc-28-43 loc-27-43)
	(move-dir-up loc-28-45 loc-27-45)
	(move-dir-up loc-28-48 loc-27-48)
	(move-dir-up loc-28-8 loc-27-8)
	(move-dir-up loc-29-11 loc-28-11)
	(move-dir-up loc-29-14 loc-28-14)
	(move-dir-up loc-29-16 loc-28-16)
	(move-dir-up loc-29-18 loc-28-18)
	(move-dir-up loc-29-20 loc-28-20)
	(move-dir-up loc-29-22 loc-28-22)
	(move-dir-up loc-29-26 loc-28-26)
	(move-dir-up loc-29-28 loc-28-28)
	(move-dir-up loc-29-33 loc-28-33)
	(move-dir-up loc-29-36 loc-28-36)
	(move-dir-up loc-29-38 loc-28-38)
	(move-dir-up loc-29-3 loc-28-3)
	(move-dir-up loc-29-41 loc-28-41)
	(move-dir-up loc-29-45 loc-28-45)
	(move-dir-up loc-29-48 loc-28-48)
	(move-dir-up loc-29-5 loc-28-5)
	(move-dir-up loc-29-8 loc-28-8)
	(move-dir-up loc-3-11 loc-2-11)
	(move-dir-up loc-3-13 loc-2-13)
	(move-dir-up loc-3-15 loc-2-15)
	(move-dir-up loc-3-17 loc-2-17)
	(move-dir-up loc-3-21 loc-2-21)
	(move-dir-up loc-3-24 loc-2-24)
	(move-dir-up loc-3-29 loc-2-29)
	(move-dir-up loc-3-32 loc-2-32)
	(move-dir-up loc-3-34 loc-2-34)
	(move-dir-up loc-3-36 loc-2-36)
	(move-dir-up loc-3-38 loc-2-38)
	(move-dir-up loc-3-3 loc-2-3)
	(move-dir-up loc-3-41 loc-2-41)
	(move-dir-up loc-3-43 loc-2-43)
	(move-dir-up loc-3-47 loc-2-47)
	(move-dir-up loc-3-7 loc-2-7)
	(move-dir-up loc-3-9 loc-2-9)
	(move-dir-up loc-30-11 loc-29-11)
	(move-dir-up loc-30-13 loc-29-13)
	(move-dir-up loc-30-16 loc-29-16)
	(move-dir-up loc-30-18 loc-29-18)
	(move-dir-up loc-30-20 loc-29-20)
	(move-dir-up loc-30-24 loc-29-24)
	(move-dir-up loc-30-26 loc-29-26)
	(move-dir-up loc-30-28 loc-29-28)
	(move-dir-up loc-30-30 loc-29-30)
	(move-dir-up loc-30-32 loc-29-32)
	(move-dir-up loc-30-36 loc-29-36)
	(move-dir-up loc-30-3 loc-29-3)
	(move-dir-up loc-30-42 loc-29-42)
	(move-dir-up loc-30-45 loc-29-45)
	(move-dir-up loc-30-48 loc-29-48)
	(move-dir-up loc-30-5 loc-29-5)
	(move-dir-up loc-31-10 loc-30-10)
	(move-dir-up loc-31-12 loc-30-12)
	(move-dir-up loc-31-15 loc-30-15)
	(move-dir-up loc-31-21 loc-30-21)
	(move-dir-up loc-31-23 loc-30-23)
	(move-dir-up loc-31-30 loc-30-30)
	(move-dir-up loc-31-32 loc-30-32)
	(move-dir-up loc-31-39 loc-30-39)
	(move-dir-up loc-31-3 loc-30-3)
	(move-dir-up loc-31-42 loc-30-42)
	(move-dir-up loc-31-48 loc-30-48)
	(move-dir-up loc-32-12 loc-31-12)
	(move-dir-up loc-32-15 loc-31-15)
	(move-dir-up loc-32-17 loc-31-17)
	(move-dir-up loc-32-21 loc-31-21)
	(move-dir-up loc-32-27 loc-31-27)
	(move-dir-up loc-32-2 loc-31-2)
	(move-dir-up loc-32-30 loc-31-30)
	(move-dir-up loc-32-32 loc-31-32)
	(move-dir-up loc-32-35 loc-31-35)
	(move-dir-up loc-32-39 loc-31-39)
	(move-dir-up loc-32-42 loc-31-42)
	(move-dir-up loc-32-44 loc-31-44)
	(move-dir-up loc-32-47 loc-31-47)
	(move-dir-up loc-32-8 loc-31-8)
	(move-dir-up loc-33-12 loc-32-12)
	(move-dir-up loc-33-17 loc-32-17)
	(move-dir-up loc-33-21 loc-32-21)
	(move-dir-up loc-33-24 loc-32-24)
	(move-dir-up loc-33-26 loc-32-26)
	(move-dir-up loc-33-2 loc-32-2)
	(move-dir-up loc-33-32 loc-32-32)
	(move-dir-up loc-33-36 loc-32-36)
	(move-dir-up loc-33-39 loc-32-39)
	(move-dir-up loc-33-44 loc-32-44)
	(move-dir-up loc-33-47 loc-32-47)
	(move-dir-up loc-33-7 loc-32-7)
	(move-dir-up loc-34-11 loc-33-11)
	(move-dir-up loc-34-14 loc-33-14)
	(move-dir-up loc-34-17 loc-33-17)
	(move-dir-up loc-34-19 loc-33-19)
	(move-dir-up loc-34-23 loc-33-23)
	(move-dir-up loc-34-26 loc-33-26)
	(move-dir-up loc-34-29 loc-33-29)
	(move-dir-up loc-34-2 loc-33-2)
	(move-dir-up loc-34-33 loc-33-33)
	(move-dir-up loc-34-36 loc-33-36)
	(move-dir-up loc-34-39 loc-33-39)
	(move-dir-up loc-34-41 loc-33-41)
	(move-dir-up loc-34-47 loc-33-47)
	(move-dir-up loc-34-7 loc-33-7)
	(move-dir-up loc-34-9 loc-33-9)
	(move-dir-up loc-35-14 loc-34-14)
	(move-dir-up loc-35-17 loc-34-17)
	(move-dir-up loc-35-20 loc-34-20)
	(move-dir-up loc-35-23 loc-34-23)
	(move-dir-up loc-35-25 loc-34-25)
	(move-dir-up loc-35-27 loc-34-27)
	(move-dir-up loc-35-29 loc-34-29)
	(move-dir-up loc-35-2 loc-34-2)
	(move-dir-up loc-35-33 loc-34-33)
	(move-dir-up loc-35-37 loc-34-37)
	(move-dir-up loc-35-42 loc-34-42)
	(move-dir-up loc-35-48 loc-34-48)
	(move-dir-up loc-35-9 loc-34-9)
	(move-dir-up loc-36-12 loc-35-12)
	(move-dir-up loc-36-14 loc-35-14)
	(move-dir-up loc-36-17 loc-35-17)
	(move-dir-up loc-36-21 loc-35-21)
	(move-dir-up loc-36-23 loc-35-23)
	(move-dir-up loc-36-25 loc-35-25)
	(move-dir-up loc-36-29 loc-35-29)
	(move-dir-up loc-36-34 loc-35-34)
	(move-dir-up loc-36-3 loc-35-3)
	(move-dir-up loc-36-40 loc-35-40)
	(move-dir-up loc-36-42 loc-35-42)
	(move-dir-up loc-36-45 loc-35-45)
	(move-dir-up loc-36-48 loc-35-48)
	(move-dir-up loc-36-9 loc-35-9)
	(move-dir-up loc-37-10 loc-36-10)
	(move-dir-up loc-37-14 loc-36-14)
	(move-dir-up loc-37-16 loc-36-16)
	(move-dir-up loc-37-21 loc-36-21)
	(move-dir-up loc-37-25 loc-36-25)
	(move-dir-up loc-37-29 loc-36-29)
	(move-dir-up loc-37-35 loc-36-35)
	(move-dir-up loc-37-38 loc-36-38)
	(move-dir-up loc-37-40 loc-36-40)
	(move-dir-up loc-37-45 loc-36-45)
	(move-dir-up loc-37-48 loc-36-48)
	(move-dir-up loc-37-6 loc-36-6)
	(move-dir-up loc-37-8 loc-36-8)
	(move-dir-up loc-38-10 loc-37-10)
	(move-dir-up loc-38-14 loc-37-14)
	(move-dir-up loc-38-20 loc-37-20)
	(move-dir-up loc-38-25 loc-37-25)
	(move-dir-up loc-38-2 loc-37-2)
	(move-dir-up loc-38-31 loc-37-31)
	(move-dir-up loc-38-37 loc-37-37)
	(move-dir-up loc-38-39 loc-37-39)
	(move-dir-up loc-38-45 loc-37-45)
	(move-dir-up loc-38-48 loc-37-48)
	(move-dir-up loc-38-4 loc-37-4)
	(move-dir-up loc-38-6 loc-37-6)
	(move-dir-up loc-39-11 loc-38-11)
	(move-dir-up loc-39-15 loc-38-15)
	(move-dir-up loc-39-17 loc-38-17)
	(move-dir-up loc-39-20 loc-38-20)
	(move-dir-up loc-39-28 loc-38-28)
	(move-dir-up loc-39-31 loc-38-31)
	(move-dir-up loc-39-34 loc-38-34)
	(move-dir-up loc-39-36 loc-38-36)
	(move-dir-up loc-39-39 loc-38-39)
	(move-dir-up loc-39-41 loc-38-41)
	(move-dir-up loc-39-44 loc-38-44)
	(move-dir-up loc-39-46 loc-38-46)
	(move-dir-up loc-39-48 loc-38-48)
	(move-dir-up loc-39-4 loc-38-4)
	(move-dir-up loc-39-7 loc-38-7)
	(move-dir-up loc-39-9 loc-38-9)
	(move-dir-up loc-4-11 loc-3-11)
	(move-dir-up loc-4-13 loc-3-13)
	(move-dir-up loc-4-15 loc-3-15)
	(move-dir-up loc-4-17 loc-3-17)
	(move-dir-up loc-4-21 loc-3-21)
	(move-dir-up loc-4-27 loc-3-27)
	(move-dir-up loc-4-29 loc-3-29)
	(move-dir-up loc-4-33 loc-3-33)
	(move-dir-up loc-4-36 loc-3-36)
	(move-dir-up loc-4-38 loc-3-38)
	(move-dir-up loc-4-3 loc-3-3)
	(move-dir-up loc-4-41 loc-3-41)
	(move-dir-up loc-4-44 loc-3-44)
	(move-dir-up loc-4-47 loc-3-47)
	(move-dir-up loc-4-7 loc-3-7)
	(move-dir-up loc-4-9 loc-3-9)
	(move-dir-up loc-40-13 loc-39-13)
	(move-dir-up loc-40-17 loc-39-17)
	(move-dir-up loc-40-20 loc-39-20)
	(move-dir-up loc-40-22 loc-39-22)
	(move-dir-up loc-40-26 loc-39-26)
	(move-dir-up loc-40-29 loc-39-29)
	(move-dir-up loc-40-31 loc-39-31)
	(move-dir-up loc-40-34 loc-39-34)
	(move-dir-up loc-40-36 loc-39-36)
	(move-dir-up loc-40-39 loc-39-39)
	(move-dir-up loc-40-44 loc-39-44)
	(move-dir-up loc-40-48 loc-39-48)
	(move-dir-up loc-40-4 loc-39-4)
	(move-dir-up loc-40-7 loc-39-7)
	(move-dir-up loc-41-10 loc-40-10)
	(move-dir-up loc-41-13 loc-40-13)
	(move-dir-up loc-41-18 loc-40-18)
	(move-dir-up loc-41-20 loc-40-20)
	(move-dir-up loc-41-23 loc-40-23)
	(move-dir-up loc-41-25 loc-40-25)
	(move-dir-up loc-41-27 loc-40-27)
	(move-dir-up loc-41-2 loc-40-2)
	(move-dir-up loc-41-31 loc-40-31)
	(move-dir-up loc-41-34 loc-40-34)
	(move-dir-up loc-41-39 loc-40-39)
	(move-dir-up loc-41-43 loc-40-43)
	(move-dir-up loc-41-45 loc-40-45)
	(move-dir-up loc-41-47 loc-40-47)
	(move-dir-up loc-41-4 loc-40-4)
	(move-dir-up loc-41-8 loc-40-8)
	(move-dir-up loc-42-10 loc-41-10)
	(move-dir-up loc-42-13 loc-41-13)
	(move-dir-up loc-42-16 loc-41-16)
	(move-dir-up loc-42-20 loc-41-20)
	(move-dir-up loc-42-24 loc-41-24)
	(move-dir-up loc-42-27 loc-41-27)
	(move-dir-up loc-42-2 loc-41-2)
	(move-dir-up loc-42-34 loc-41-34)
	(move-dir-up loc-42-37 loc-41-37)
	(move-dir-up loc-42-39 loc-41-39)
	(move-dir-up loc-42-41 loc-41-41)
	(move-dir-up loc-42-45 loc-41-45)
	(move-dir-up loc-42-47 loc-41-47)
	(move-dir-up loc-42-6 loc-41-6)
	(move-dir-up loc-42-8 loc-41-8)
	(move-dir-up loc-43-10 loc-42-10)
	(move-dir-up loc-43-16 loc-42-16)
	(move-dir-up loc-43-22 loc-42-22)
	(move-dir-up loc-43-24 loc-42-24)
	(move-dir-up loc-43-29 loc-42-29)
	(move-dir-up loc-43-2 loc-42-2)
	(move-dir-up loc-43-32 loc-42-32)
	(move-dir-up loc-43-35 loc-42-35)
	(move-dir-up loc-43-37 loc-42-37)
	(move-dir-up loc-43-39 loc-42-39)
	(move-dir-up loc-43-47 loc-42-47)
	(move-dir-up loc-43-6 loc-42-6)
	(move-dir-up loc-43-8 loc-42-8)
	(move-dir-up loc-44-10 loc-43-10)
	(move-dir-up loc-44-15 loc-43-15)
	(move-dir-up loc-44-17 loc-43-17)
	(move-dir-up loc-44-19 loc-43-19)
	(move-dir-up loc-44-22 loc-43-22)
	(move-dir-up loc-44-24 loc-43-24)
	(move-dir-up loc-44-29 loc-43-29)
	(move-dir-up loc-44-31 loc-43-31)
	(move-dir-up loc-44-35 loc-43-35)
	(move-dir-up loc-44-37 loc-43-37)
	(move-dir-up loc-44-40 loc-43-40)
	(move-dir-up loc-44-42 loc-43-42)
	(move-dir-up loc-44-44 loc-43-44)
	(move-dir-up loc-44-47 loc-43-47)
	(move-dir-up loc-44-4 loc-43-4)
	(move-dir-up loc-44-6 loc-43-6)
	(move-dir-up loc-45-10 loc-44-10)
	(move-dir-up loc-45-12 loc-44-12)
	(move-dir-up loc-45-15 loc-44-15)
	(move-dir-up loc-45-21 loc-44-21)
	(move-dir-up loc-45-23 loc-44-23)
	(move-dir-up loc-45-27 loc-44-27)
	(move-dir-up loc-45-31 loc-44-31)
	(move-dir-up loc-45-35 loc-44-35)
	(move-dir-up loc-45-38 loc-44-38)
	(move-dir-up loc-45-3 loc-44-3)
	(move-dir-up loc-45-44 loc-44-44)
	(move-dir-up loc-45-46 loc-44-46)
	(move-dir-up loc-45-6 loc-44-6)
	(move-dir-up loc-46-12 loc-45-12)
	(move-dir-up loc-46-15 loc-45-15)
	(move-dir-up loc-46-18 loc-45-18)
	(move-dir-up loc-46-21 loc-45-21)
	(move-dir-up loc-46-23 loc-45-23)
	(move-dir-up loc-46-25 loc-45-25)
	(move-dir-up loc-46-28 loc-45-28)
	(move-dir-up loc-46-2 loc-45-2)
	(move-dir-up loc-46-31 loc-45-31)
	(move-dir-up loc-46-41 loc-45-41)
	(move-dir-up loc-46-44 loc-45-44)
	(move-dir-up loc-46-46 loc-45-46)
	(move-dir-up loc-46-48 loc-45-48)
	(move-dir-up loc-46-6 loc-45-6)
	(move-dir-up loc-47-11 loc-46-11)
	(move-dir-up loc-47-13 loc-46-13)
	(move-dir-up loc-47-15 loc-46-15)
	(move-dir-up loc-47-18 loc-46-18)
	(move-dir-up loc-47-20 loc-46-20)
	(move-dir-up loc-47-24 loc-46-24)
	(move-dir-up loc-47-26 loc-46-26)
	(move-dir-up loc-47-28 loc-46-28)
	(move-dir-up loc-47-2 loc-46-2)
	(move-dir-up loc-47-30 loc-46-30)
	(move-dir-up loc-47-32 loc-46-32)
	(move-dir-up loc-47-37 loc-46-37)
	(move-dir-up loc-47-39 loc-46-39)
	(move-dir-up loc-47-41 loc-46-41)
	(move-dir-up loc-47-46 loc-46-46)
	(move-dir-up loc-47-48 loc-46-48)
	(move-dir-up loc-47-4 loc-46-4)
	(move-dir-up loc-47-6 loc-46-6)
	(move-dir-up loc-47-9 loc-46-9)
	(move-dir-up loc-48-11 loc-47-11)
	(move-dir-up loc-48-13 loc-47-13)
	(move-dir-up loc-48-18 loc-47-18)
	(move-dir-up loc-48-20 loc-47-20)
	(move-dir-up loc-48-22 loc-47-22)
	(move-dir-up loc-48-26 loc-47-26)
	(move-dir-up loc-48-28 loc-47-28)
	(move-dir-up loc-48-32 loc-47-32)
	(move-dir-up loc-48-34 loc-47-34)
	(move-dir-up loc-48-37 loc-47-37)
	(move-dir-up loc-48-39 loc-47-39)
	(move-dir-up loc-48-42 loc-47-42)
	(move-dir-up loc-48-46 loc-47-46)
	(move-dir-up loc-48-48 loc-47-48)
	(move-dir-up loc-48-4 loc-47-4)
	(move-dir-up loc-48-6 loc-47-6)
	(move-dir-up loc-48-9 loc-47-9)
	(move-dir-up loc-5-11 loc-4-11)
	(move-dir-up loc-5-18 loc-4-18)
	(move-dir-up loc-5-20 loc-4-20)
	(move-dir-up loc-5-28 loc-4-28)
	(move-dir-up loc-5-31 loc-4-31)
	(move-dir-up loc-5-33 loc-4-33)
	(move-dir-up loc-5-36 loc-4-36)
	(move-dir-up loc-5-38 loc-4-38)
	(move-dir-up loc-5-3 loc-4-3)
	(move-dir-up loc-5-40 loc-4-40)
	(move-dir-up loc-5-44 loc-4-44)
	(move-dir-up loc-5-5 loc-4-5)
	(move-dir-up loc-5-7 loc-4-7)
	(move-dir-up loc-6-10 loc-5-10)
	(move-dir-up loc-6-12 loc-5-12)
	(move-dir-up loc-6-14 loc-5-14)
	(move-dir-up loc-6-16 loc-5-16)
	(move-dir-up loc-6-18 loc-5-18)
	(move-dir-up loc-6-20 loc-5-20)
	(move-dir-up loc-6-24 loc-5-24)
	(move-dir-up loc-6-28 loc-5-28)
	(move-dir-up loc-6-33 loc-5-33)
	(move-dir-up loc-6-36 loc-5-36)
	(move-dir-up loc-6-3 loc-5-3)
	(move-dir-up loc-6-40 loc-5-40)
	(move-dir-up loc-6-44 loc-5-44)
	(move-dir-up loc-6-5 loc-5-5)
	(move-dir-up loc-6-8 loc-5-8)
	(move-dir-up loc-7-15 loc-6-15)
	(move-dir-up loc-7-17 loc-6-17)
	(move-dir-up loc-7-19 loc-6-19)
	(move-dir-up loc-7-23 loc-6-23)
	(move-dir-up loc-7-25 loc-6-25)
	(move-dir-up loc-7-27 loc-6-27)
	(move-dir-up loc-7-2 loc-6-2)
	(move-dir-up loc-7-30 loc-6-30)
	(move-dir-up loc-7-36 loc-6-36)
	(move-dir-up loc-7-46 loc-6-46)
	(move-dir-up loc-7-48 loc-6-48)
	(move-dir-up loc-7-5 loc-6-5)
	(move-dir-up loc-8-11 loc-7-11)
	(move-dir-up loc-8-13 loc-7-13)
	(move-dir-up loc-8-15 loc-7-15)
	(move-dir-up loc-8-19 loc-7-19)
	(move-dir-up loc-8-21 loc-7-21)
	(move-dir-up loc-8-23 loc-7-23)
	(move-dir-up loc-8-2 loc-7-2)
	(move-dir-up loc-8-32 loc-7-32)
	(move-dir-up loc-8-36 loc-7-36)
	(move-dir-up loc-8-38 loc-7-38)
	(move-dir-up loc-8-41 loc-7-41)
	(move-dir-up loc-8-48 loc-7-48)
	(move-dir-up loc-8-7 loc-7-7)
	(move-dir-up loc-8-9 loc-7-9)
	(move-dir-up loc-9-12 loc-8-12)
	(move-dir-up loc-9-15 loc-8-15)
	(move-dir-up loc-9-20 loc-8-20)
	(move-dir-up loc-9-22 loc-8-22)
	(move-dir-up loc-9-24 loc-8-24)
	(move-dir-up loc-9-26 loc-8-26)
	(move-dir-up loc-9-28 loc-8-28)
	(move-dir-up loc-9-2 loc-8-2)
	(move-dir-up loc-9-33 loc-8-33)
	(move-dir-up loc-9-38 loc-8-38)
	(move-dir-up loc-9-40 loc-8-40)
	(move-dir-up loc-9-44 loc-8-44)
	(move-dir-up loc-9-48 loc-8-48)
	(move-dir-up loc-9-4 loc-8-4)
	(move-dir-up loc-9-7 loc-8-7)
	(move-dir-up loc-9-9 loc-8-9)
	(oriented-left player-1)
  )
  (:goal (at player-1 loc-38-34))
)
