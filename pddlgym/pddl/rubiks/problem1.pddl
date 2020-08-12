; This problem defines a scrambled cube, 1 "down" move away from being solved.
;
; The colors I define are in these initial locations:
;
;               -------------
;              ||  (BLUE)   ||
;              || 1 | 2 | 3 ||
;              || 4 | 5 | 6 ||
;              || 7 | 8 | 9 ||
; -----------------------------------------------------
; ||  (ORANGE) ||  (WHITE)  ||   (RED)   ||  (YELLOW) ||
; || 1 | 2 | 3 || 1 | 2 | 3 || 1 | 2 | 3 || 1 | 2 | 3 ||
; || 4 | 5 | 6 || 4 | 5 | 6 || 4 | 5 | 6 || 4 | 5 | 6 ||
; || 7 | 8 | 9 || 7 | 8 | 9 || 7 | 8 | 9 || 7 | 8 | 9 ||
; -----------------------------------------------------
;              ||  (GREEN)  ||
;              || 1 | 2 | 3 ||
;              || 4 | 5 | 6 ||
;              || 7 | 8 | 9 ||
;               -------------
(define (problem cube)
   (:domain eli-rubiks-attempt)
   (:objects
     orange1 - piece
     orange2 - piece
     orange3 - piece
     orange4 - piece
     orange5 - piece
     orange6 - piece
     orange7 - piece
     orange8 - piece
     orange9 - piece
     white1 - piece
     white2 - piece
     white3 - piece
     white4 - piece
     white5 - piece
     white6 - piece
     white7 - piece
     white8 - piece
     white9 - piece
     red1 - piece
     red2 - piece
     red3 - piece
     red4 - piece
     red5 - piece
     red6 - piece
     red7 - piece
     red8 - piece
     red9 - piece
     yellow1 - piece
     yellow2 - piece
     yellow3 - piece
     yellow4 - piece
     yellow5 - piece
     yellow6 - piece
     yellow7 - piece
     yellow8 - piece
     yellow9 - piece
     blue1 - piece
     blue2 - piece
     blue3 - piece
     blue4 - piece
     blue5 - piece
     blue6 - piece
     blue7 - piece
     blue8 - piece
     blue9 - piece
     green1 - piece
     green2 - piece
     green3 - piece
     green4 - piece
     green5 - piece
     green6 - piece
     green7 - piece
     green8 - piece
     green9 - piece
     up - movetype
     down - movetype
     right - movetype
     left - movetype
     front - movetype
     back - movetype)
   (:init
     (is-up up)
     (is-down down)
     (is-right right)
     (is-left left)
     (is-front front)
     (is-back back)
     (twist up)
     (twist down)
     (twist right)
     (twist left)
     (twist front)
     (twist back)
     (pos45 blue9)
     (pos34 yellow9)
     (pos33 yellow2)
     (pos47 green2)
     (pos37 red3)
     (pos5 orange5)
     (pos11 white2)
     (pos13 white4)
     (pos44 blue8)
     (pos8 orange8)
     (pos49 green4)
     (pos24 green8)
     (pos27 green7)
     (pos42 blue6)
     (pos50 green5)
     (pos51 green6)
     (pos21 green9)
     (pos30 yellow1)
     (pos26 red8)
     (pos25 red7)
     (pos4 blue2)
     (pos52 orange1)
     (pos53 orange4)
     (pos17 white8)
     (pos20 red2)
     (pos7 blue1)
     (pos10 white1)
     (pos46 green1)
     (pos36 yellow3)
     (pos29 yellow4)
     (pos15 white6)
     (pos43 blue7)
     (pos18 white9)
     (pos12 white3)
     (pos38 red6)
     (pos31 yellow8)
     (pos40 blue4)
     (pos54 orange7)
     (pos1 blue3)
     (pos19 red1)
     (pos3 orange3)
     (pos41 blue5)
     (pos23 red5)
     (pos28 yellow7)
     (pos39 red9)
     (pos9 orange9)
     (pos6 orange6)
     (pos22 red4)
     (pos48 green3)
     (pos16 white7)
     (pos2 orange2)
     (pos32 yellow5)
     (pos35 yellow6)
     (pos14 white5))
   (:goal (and
     (pos1 orange1)
     (pos2 orange2)
     (pos3 orange3)
     (pos4 orange4)
     (pos5 orange5)
     (pos6 orange6)
     (pos7 orange7)
     (pos8 orange8)
     (pos9 orange9)
     (pos10 white1)
     (pos11 white2)
     (pos12 white3)
     (pos13 white4)
     (pos14 white5)
     (pos15 white6)
     (pos16 white7)
     (pos17 white8)
     (pos18 white9)
     (pos19 red1)
     (pos20 red2)
     (pos21 red3)
     (pos22 red4)
     (pos23 red5)
     (pos24 red6)
     (pos25 red7)
     (pos26 red8)
     (pos27 red9)
     (pos28 yellow1)
     (pos29 yellow2)
     (pos30 yellow3)
     (pos31 yellow4)
     (pos32 yellow5)
     (pos33 yellow6)
     (pos34 yellow7)
     (pos35 yellow8)
     (pos36 yellow9)
     (pos37 blue1)
     (pos38 blue2)
     (pos39 blue3)
     (pos40 blue4)
     (pos41 blue5)
     (pos42 blue6)
     (pos43 blue7)
     (pos44 blue8)
     (pos45 blue9)
     (pos46 green1)
     (pos47 green2)
     (pos48 green3)
     (pos49 green4)
     (pos50 green5)
     (pos51 green6)
     (pos52 green7)
     (pos53 green8)
     (pos54 green9)))
)