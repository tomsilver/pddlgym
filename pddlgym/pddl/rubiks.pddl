;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; By Eli Zucker (2020)                                                  ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;               Tile positions:
;
;               ----------------
;              || 37 | 38 | 39 ||
;              || 40 | 41 | 42 ||
;              || 43 | 44 | 45 ||
; ---------------------------------------------------------------
; || 1 | 2 | 3 || 10 | 11 | 12 || 19 | 20 | 21 || 28 | 29 | 30 ||
; || 4 | 5 | 6 || 13 | 14 | 15 || 22 | 23 | 24 || 31 | 32 | 33 ||
; || 7 | 8 | 9 || 16 | 17 | 18 || 25 | 26 | 27 || 34 | 35 | 36 ||
; ---------------------------------------------------------------
;              || 46 | 47 | 48 ||
;              || 49 | 50 | 51 ||
;              || 52 | 53 | 54 ||
;               ----------------

(define (domain eli-rubiks-attempt)
    (:requirements :strips :typing)
    (:types piece movetype)
   (:predicates (pos1 ?tile - piece)
                (pos2 ?tile - piece)
                (pos3 ?tile - piece)
                (pos4 ?tile - piece)
                (pos5 ?tile - piece)
                (pos6 ?tile - piece)
                (pos7 ?tile - piece)
                (pos8 ?tile - piece)
                (pos9 ?tile - piece)
                (pos10 ?tile - piece)
                (pos11 ?tile - piece)
                (pos12 ?tile - piece)
                (pos13 ?tile - piece)
                (pos14 ?tile - piece)
                (pos15 ?tile - piece)
                (pos16 ?tile - piece)
                (pos17 ?tile - piece)
                (pos18 ?tile - piece)
                (pos19 ?tile - piece)
                (pos20 ?tile - piece)
                (pos21 ?tile - piece)
                (pos22 ?tile - piece)
                (pos23 ?tile - piece)
                (pos24 ?tile - piece)
                (pos25 ?tile - piece)
                (pos26 ?tile - piece)
                (pos27 ?tile - piece)
                (pos28 ?tile - piece)
                (pos29 ?tile - piece)
                (pos30 ?tile - piece)
                (pos31 ?tile - piece)
                (pos32 ?tile - piece)
                (pos33 ?tile - piece)
                (pos34 ?tile - piece)
                (pos35 ?tile - piece)
                (pos36 ?tile - piece)
                (pos37 ?tile - piece)
                (pos38 ?tile - piece)
                (pos39 ?tile - piece)
                (pos40 ?tile - piece)
                (pos41 ?tile - piece)
                (pos42 ?tile - piece)
                (pos43 ?tile - piece)
                (pos44 ?tile - piece)
                (pos45 ?tile - piece)
                (pos46 ?tile - piece)
                (pos47 ?tile - piece)
                (pos48 ?tile - piece)
                (pos49 ?tile - piece)
                (pos50 ?tile - piece)
                (pos51 ?tile - piece)
                (pos52 ?tile - piece)
                (pos53 ?tile - piece)
                (pos54 ?tile - piece)
                (twist ?movement - movetype)
                (is-up ?movement - movetype)
                (is-down ?movement - movetype)
                (is-right ?movement - movetype)
                (is-left ?movement - movetype)
                (is-front ?movement - movetype)
                (is-back ?movement - movetype)
                )

    ; (:actions twist)

   (:action up
             :parameters (?tile3 - piece ?tile6 - piece ?tile9 - piece
                    ?tile10 - piece ?tile11 - piece ?tile12 - piece ?tile13 - piece ?tile15 - piece ?tile16 - piece ?tile17 - piece ?tile18 - piece
                    ?tile46 - piece ?tile47 - piece ?tile48 - piece
                    ?tile19 - piece ?tile22 - piece ?tile25 - piece
                    ?tile43 - piece ?tile44 - piece ?tile45 - piece
                    ?movement - movetype)
             :precondition (and (pos3 ?tile3) (pos6 ?tile6) (pos9 ?tile9)
                    (pos10 ?tile10) (pos11 ?tile11) (pos12 ?tile12) (pos13 ?tile13)
                    (pos15 ?tile15) (pos16 ?tile16) (pos17 ?tile17) (pos18 ?tile18)
                    (pos46 ?tile46) (pos47 ?tile47) (pos48 ?tile48)
                    (pos19 ?tile19) (pos22 ?tile22) (pos25 ?tile25)
                    (pos43 ?tile43) (pos44 ?tile44) (pos45 ?tile45)
                    (twist ?movement) (is-up ?movement))
             :effect (and (pos3 ?tile46) (pos6 ?tile47) (pos9 ?tile48)
                    (pos10 ?tile16) (pos11 ?tile13) (pos12 ?tile10) (pos13 ?tile17)
                    (pos15 ?tile11) (pos16 ?tile18) (pos17 ?tile15) (pos18 ?tile12)
                    (pos46 ?tile25) (pos47 ?tile22) (pos48 ?tile19)
                    (pos19 ?tile43) (pos22 ?tile44) (pos25 ?tile45)
                    (pos43 ?tile9) (pos44 ?tile6) (pos45 ?tile3)
                    (not (pos3 ?tile3)) (not (pos6 ?tile6)) (not (pos9 ?tile9))
                    (not (pos10 ?tile10)) (not (pos11 ?tile11)) (not (pos12 ?tile12)) (not (pos13 ?tile13))
                    (not (pos15 ?tile15)) (not (pos16 ?tile16)) (not (pos17 ?tile17)) (not (pos18 ?tile18))
                    (not (pos46 ?tile46)) (not (pos47 ?tile47)) (not (pos48 ?tile48))
                    (not (pos19 ?tile19)) (not (pos22 ?tile22)) (not (pos25 ?tile25))
                    (not (pos43 ?tile43)) (not (pos44 ?tile44)) (not (pos45 ?tile45)))
    )

    (:action down
            :parameters (?tile1 - piece ?tile4 - piece ?tile7 - piece
                    ?tile28 - piece ?tile29 - piece ?tile30 - piece ?tile31 - piece ?tile33 - piece ?tile34 - piece ?tile35 - piece ?tile36 - piece
                    ?tile52 - piece ?tile53 - piece ?tile54 - piece
                    ?tile27 - piece ?tile24 - piece ?tile21 - piece
                    ?tile39 - piece ?tile38 - piece ?tile37 - piece
                    ?movement - movetype)
             :precondition (and (pos1 ?tile1) (pos4 ?tile4) (pos7 ?tile7)
                    (pos28 ?tile28) (pos29 ?tile29) (pos30 ?tile30) (pos31 ?tile31)
                    (pos33 ?tile33) (pos34 ?tile34) (pos35 ?tile35) (pos36 ?tile36)
                    (pos52 ?tile52) (pos53 ?tile53) (pos54 ?tile54)
                    (pos27 ?tile27) (pos24 ?tile24) (pos21 ?tile21)
                    (pos39 ?tile39) (pos38 ?tile38) (pos37 ?tile37)
                    (twist ?movement) (is-down ?movement))
             :effect (and (pos1 ?tile39) (pos4 ?tile38) (pos7 ?tile37)
                    (pos28 ?tile34) (pos29 ?tile31) (pos30 ?tile28) (pos31 ?tile35)
                    (pos33 ?tile29) (pos34 ?tile36) (pos35 ?tile33) (pos36 ?tile30)
                    (pos52 ?tile1) (pos53 ?tile4) (pos54 ?tile7)
                    (pos27 ?tile52) (pos24 ?tile53) (pos21 ?tile54)
                    (pos39 ?tile27) (pos38 ?tile24) (pos37 ?tile21)
                    (not (pos1 ?tile1)) (not (pos4 ?tile4)) (not (pos7 ?tile7))
                    (not (pos28 ?tile28)) (not (pos29 ?tile29)) (not (pos30 ?tile30)) (not (pos31 ?tile31))
                    (not (pos33 ?tile33)) (not (pos34 ?tile34)) (not (pos35 ?tile35)) (not (pos36 ?tile36))
                    (not (pos52 ?tile52)) (not (pos53 ?tile53)) (not (pos54 ?tile54))
                    (not (pos27 ?tile27)) (not (pos24 ?tile24)) (not (pos21 ?tile21))
                    (not (pos39 ?tile39)) (not (pos38 ?tile38)) (not (pos37 ?tile37)))
    )

    (:action right
             :parameters (?tile39 - piece ?tile42 - piece ?tile45 - piece
                    ?tile19 - piece ?tile20 - piece ?tile21 - piece ?tile22 - piece ?tile24 - piece ?tile25 - piece ?tile26 - piece ?tile27 - piece
                    ?tile12 - piece ?tile15 - piece ?tile18 - piece
                    ?tile48 - piece ?tile51 - piece ?tile54 - piece
                    ?tile28 - piece ?tile31 - piece ?tile34 - piece
                    ?movement - movetype)
             :precondition (and (pos39 ?tile39) (pos42 ?tile42) (pos45 ?tile45)
                    (pos19 ?tile19) (pos20 ?tile20) (pos21 ?tile21) (pos22 ?tile22)
                    (pos24 ?tile24) (pos25 ?tile25) (pos26 ?tile26) (pos27 ?tile27)
                    (pos12 ?tile12) (pos15 ?tile15) (pos18 ?tile18)
                    (pos48 ?tile48) (pos51 ?tile51) (pos54 ?tile54)
                    (pos28 ?tile28) (pos31 ?tile31) (pos34 ?tile34)
                    (twist ?movement) (is-right ?movement))
             :effect (and (pos39 ?tile12) (pos42 ?tile15) (pos45 ?tile18)
                    (pos19 ?tile25) (pos20 ?tile22) (pos21 ?tile19) (pos22 ?tile26)
                    (pos24 ?tile20) (pos25 ?tile27) (pos26 ?tile24) (pos27 ?tile21)
                    (pos12 ?tile48) (pos15 ?tile51) (pos18 ?tile54)
                    (pos48 ?tile34) (pos51 ?tile31) (pos54 ?tile28)
                    (pos28 ?tile45) (pos31 ?tile42) (pos34 ?tile39)
                    (not (pos39 ?tile39)) (not (pos42 ?tile42)) (not (pos45 ?tile45))
                    (not (pos19 ?tile19)) (not (pos20 ?tile20)) (not (pos21 ?tile21)) (not (pos22 ?tile22))
                    (not (pos24 ?tile24)) (not (pos25 ?tile25)) (not (pos26 ?tile26)) (not (pos27 ?tile27))
                    (not (pos12 ?tile12)) (not (pos15 ?tile15)) (not (pos18 ?tile18))
                    (not (pos48 ?tile48)) (not (pos51 ?tile51)) (not (pos54 ?tile54))
                    (not (pos28 ?tile28)) (not (pos31 ?tile31)) (not (pos34 ?tile34)))
    )

    (:action left
             :parameters (?tile37 - piece ?tile40 - piece ?tile43 - piece
                    ?tile1 - piece ?tile2 - piece ?tile3 - piece ?tile4 - piece ?tile6 - piece ?tile7 - piece ?tile8 - piece ?tile9 - piece
                    ?tile10 - piece ?tile13 - piece ?tile16 - piece
                    ?tile46 - piece ?tile49 - piece ?tile52 - piece
                    ?tile30 - piece ?tile33 - piece ?tile36 - piece
                    ?movement - movetype)
             :precondition (and (pos37 ?tile37) (pos40 ?tile40) (pos43 ?tile43)
                    (pos1 ?tile1) (pos2 ?tile2) (pos3 ?tile3) (pos4 ?tile4)
                    (pos6 ?tile6) (pos7 ?tile7) (pos8 ?tile8) (pos9 ?tile9)
                    (pos10 ?tile10) (pos13 ?tile13) (pos16 ?tile16)
                    (pos46 ?tile46) (pos49 ?tile49) (pos52 ?tile52)
                    (pos30 ?tile30) (pos33 ?tile33) (pos36 ?tile36)
                    (twist ?movement) (is-left ?movement))
             :effect (and (pos37 ?tile36) (pos40 ?tile33) (pos43 ?tile30)
                    (pos1 ?tile7) (pos2 ?tile4) (pos3 ?tile1) (pos4 ?tile8)
                    (pos6 ?tile2) (pos7 ?tile9) (pos8 ?tile6) (pos9 ?tile3)
                    (pos10 ?tile37) (pos13 ?tile40) (pos16 ?tile43)
                    (pos46 ?tile10) (pos49 ?tile13) (pos52 ?tile16)
                    (pos30 ?tile52) (pos33 ?tile49) (pos36 ?tile46)
                    (not (pos37 ?tile37)) (not (pos40 ?tile40)) (not (pos43 ?tile43))
                    (not (pos1 ?tile1)) (not (pos2 ?tile2)) (not (pos3 ?tile3)) (not (pos4 ?tile4))
                    (not (pos6 ?tile6)) (not (pos7 ?tile7)) (not (pos8 ?tile8)) (not (pos9 ?tile9))
                    (not (pos10 ?tile10)) (not (pos13 ?tile13)) (not (pos16 ?tile16))
                    (not (pos46 ?tile46)) (not (pos49 ?tile49)) (not (pos52 ?tile52))
                    (not (pos30 ?tile30)) (not (pos33 ?tile33)) (not (pos36 ?tile36)))
    )

    (:action front
             :parameters (?tile16 - piece ?tile17 - piece ?tile18 - piece
                    ?tile46 - piece ?tile47 - piece ?tile48 - piece ?tile49 - piece ?tile51 - piece ?tile52 - piece ?tile53 - piece ?tile54 - piece
                    ?tile34 - piece ?tile35 - piece ?tile36 - piece
                    ?tile7 - piece ?tile8 - piece ?tile9 - piece
                    ?tile25 - piece ?tile26 - piece ?tile27 - piece
                    ?movement - movetype)
             :precondition (and (pos16 ?tile16) (pos17 ?tile17) (pos18 ?tile18)
                    (pos46 ?tile46) (pos47 ?tile47) (pos48 ?tile48) (pos49 ?tile49)
                    (pos51 ?tile51) (pos52 ?tile52) (pos53 ?tile53) (pos54 ?tile54)
                    (pos34 ?tile34) (pos35 ?tile35) (pos36 ?tile36)
                    (pos7 ?tile7) (pos8 ?tile8) (pos9 ?tile9)
                    (pos25 ?tile25) (pos26 ?tile26) (pos27 ?tile27)
                    (twist ?movement) (is-front ?movement))
             :effect (and (pos16 ?tile7) (pos17 ?tile8) (pos18 ?tile9)
                    (pos46 ?tile52) (pos47 ?tile49) (pos48 ?tile46) (pos49 ?tile53)
                    (pos51 ?tile47) (pos52 ?tile54) (pos53 ?tile51) (pos54 ?tile48)
                    (pos34 ?tile25) (pos35 ?tile26) (pos36 ?tile27)
                    (pos7 ?tile34) (pos8 ?tile35) (pos9 ?tile36)
                    (pos25 ?tile16) (pos26 ?tile17) (pos27 ?tile18)
                    (not (pos16 ?tile16)) (not (pos17 ?tile17)) (not (pos18 ?tile18))
                    (not (pos46 ?tile46)) (not (pos47 ?tile47)) (not (pos48 ?tile48)) (not (pos49 ?tile49))
                    (not (pos51 ?tile51)) (not (pos52 ?tile52)) (not (pos53 ?tile53)) (not (pos54 ?tile54))
                    (not (pos34 ?tile34)) (not (pos35 ?tile35)) (not (pos36 ?tile36))
                    (not (pos7 ?tile7)) (not (pos8 ?tile8)) (not (pos9 ?tile9))
                    (not (pos25 ?tile25)) (not (pos26 ?tile26)) (not (pos27 ?tile27)))
    )

    (:action back
             :parameters (?tile1 - piece ?tile2 - piece ?tile3 - piece
                    ?tile37 - piece ?tile38 - piece ?tile39 - piece ?tile40 - piece ?tile42 - piece ?tile43 - piece ?tile44 - piece ?tile45 - piece
                    ?tile10 - piece ?tile11 - piece ?tile12 - piece
                    ?tile19 - piece ?tile20 - piece ?tile21 - piece
                    ?tile28 - piece ?tile29 - piece ?tile30 - piece
                    ?movement - movetype)
             :precondition (and (pos1 ?tile1) (pos2 ?tile2) (pos3 ?tile3)
                    (pos37 ?tile37) (pos38 ?tile38) (pos39 ?tile39) (pos40 ?tile40)
                    (pos42 ?tile42) (pos43 ?tile43) (pos44 ?tile44) (pos45 ?tile45)
                    (pos10 ?tile10) (pos11 ?tile11) (pos12 ?tile12)
                    (pos19 ?tile19) (pos20 ?tile20) (pos21 ?tile21)
                    (pos28 ?tile28) (pos29 ?tile29) (pos30 ?tile30)
                    (twist ?movement) (is-back ?movement))
             :effect (and (pos1 ?tile10) (pos2 ?tile11) (pos3 ?tile12)
                    (pos37 ?tile43) (pos38 ?tile40) (pos39 ?tile37) (pos40 ?tile44)
                    (pos42 ?tile38) (pos43 ?tile45) (pos44 ?tile42) (pos45 ?tile39)
                    (pos10 ?tile19) (pos11 ?tile20) (pos12 ?tile21)
                    (pos19 ?tile28) (pos20 ?tile29) (pos21 ?tile30)
                    (pos28 ?tile1) (pos29 ?tile2) (pos30 ?tile3)
                    (not (pos1 ?tile1)) (not (pos2 ?tile2)) (not (pos3 ?tile3))
                    (not (pos37 ?tile37)) (not (pos38 ?tile38)) (not (pos39 ?tile39)) (not (pos40 ?tile40))
                    (not (pos42 ?tile42)) (not (pos43 ?tile43)) (not (pos44 ?tile44)) (not (pos45 ?tile45))
                    (not (pos10 ?tile10)) (not (pos11 ?tile11)) (not (pos12 ?tile12))
                    (not (pos19 ?tile19)) (not (pos20 ?tile20)) (not (pos21 ?tile21))
                    (not (pos28 ?tile28)) (not (pos29 ?tile29)) (not (pos30 ?tile30)))
    )
)