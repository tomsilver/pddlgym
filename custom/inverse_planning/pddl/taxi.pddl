(define (domain taxi)
    (:requirements :strips :typing :action-costs)
    (:types 
        state
    )
    (:constants
        s0 s1 s2 s3 s4 s5 s6 s7 s8 s9 s10 s11 s12 s13 s14 s15 s16 s17 s18 s19 s20 s21 s22 s23 s24 s25 s26 s27 s28 s29 s30 s31 s32 s33 s34 s35 s36 s37 s38 s39 s40 s41 s42 s43 s44 s45 s46 s47 s48 s49 s50 s51 s52 s53 s54 s55 s56 s57 s58 s59 s60 s61 s62 s63 s64 s65 s66 s67 s68 s69 s70 s71 s72 s73 s74 s75 s76 s77 s78 s79 s80 s81 s82 s83 s84 s85 s86 s87 s88 s89 s90 s91 s92 s93 s94 s95 s96 s97 s98 s99 s100 s101 s102 s103 s104 s105 s106 s107 s108 s109 s110 s111 s112 s113 s114 s115 s116 s117 s118 s119 s120 s121 s122 s123 s124 s125 s126 s127 s128 s129 s130 s131 s132 s133 s134 s135 s136 s137 s138 s139 s140 s141 s142 s143 s144 s145 s146 s147 s148 s149 s150 s151 s152 s153 s154 s155 s156 s157 s158 s159 s160 s161 s162 s163 s164 s165 s166 s167 s168 s169 s170 s171 s172 s173 s174 s175 s176 s177 s178 s179 s180 s181 s182 s183 s184 s185 s186 s187 s188 s189 s190 s191 s192 s193 s194 s195 s196 s197 s198 s199 s200 s201 s202 s203 s204 s205 s206 s207 s208 s209 s210 s211 s212 s213 s214 s215 s216 s217 s218 s219 s220 s221 s222 s223 s224 s225 s226 s227 s228 s229 s230 s231 s232 s233 s234 s235 s236 s237 s238 s239 s240 s241 s242 s243 s244 s245 s246 s247 s248 s249 s250 s251 s252 s253 s254 s255 s256 s257 s258 s259 s260 s261 s262 s263 s264 s265 s266 s267 s268 s269 s270 s271 s272 s273 s274 s275 s276 s277 s278 s279 s280 s281 s282 s283 s284 s285 s286 s287 s288 s289 s290 s291 s292 s293 s294 s295 s296 s297 s298 s299 s300 s301 s302 s303 s304 s305 s306 s307 s308 s309 s310 s311 s312 s313 s314 s315 s316 s317 s318 s319 s320 s321 s322 s323 s324 s325 s326 s327 s328 s329 s330 s331 s332 s333 s334 s335 s336 s337 s338 s339 s340 s341 s342 s343 s344 s345 s346 s347 s348 s349 s350 s351 s352 s353 s354 s355 s356 s357 s358 s359 s360 s361 s362 s363 s364 s365 s366 s367 s368 s369 s370 s371 s372 s373 s374 s375 s376 s377 s378 s379 s380 s381 s382 s383 s384 s385 s386 s387 s388 s389 s390 s391 s392 s393 s394 s395 s396 s397 s398 s399 s400 s401 s402 s403 s404 s405 s406 s407 s408 s409 s410 s411 s412 s413 s414 s415 s416 s417 s418 s419 s420 s421 s422 s423 s424 s425 s426 s427 s428 s429 s430 s431 s432 s433 s434 s435 s436 s437 s438 s439 s440 s441 s442 s443 s444 s445 s446 s447 s448 s449 s450 s451 s452 s453 s454 s455 s456 s457 s458 s459 s460 s461 s462 s463 s464 s465 s466 s467 s468 s469 s470 s471 s472 s473 s474 s475 s476 s477 s478 s479 s480 s481 s482 s483 s484 s485 s486 s487 s488 s489 s490 s491 s492 s493 s494 s495 s496 s497 s498 s499 - state

    )
    (:predicates
        (in ?s - state)
        (done)
    )
    (:functions
        (total-cost) - number
    )
    
    (:action transition0-0
     :parameters ()
     :precondition (and
         (in s0)
     )
     :effect (and
         (not (in s0))
         (in s100)
         (increase (total-cost) 0)
     )
    )

    (:action transition0-1
     :parameters ()
     :precondition (and
         (in s0)
     )
     :effect (and
         (not (in s0))
         (in s0)
         (increase (total-cost) 0)
     )
    )

    (:action transition0-2
     :parameters ()
     :precondition (and
         (in s0)
     )
     :effect (and
         (not (in s0))
         (in s20)
         (increase (total-cost) 0)
     )
    )

    (:action transition0-3
     :parameters ()
     :precondition (and
         (in s0)
     )
     :effect (and
         (not (in s0))
         (in s0)
         (increase (total-cost) 0)
     )
    )

    (:action transition0-4
     :parameters ()
     :precondition (and
         (in s0)
     )
     :effect (and
         (not (in s0))
         (in s16)
         (increase (total-cost) 0)
     )
    )

    (:action transition0-5
     :parameters ()
     :precondition (and
         (in s0)
     )
     :effect (and
         (not (in s0))
         (in s0)
         (increase (total-cost) 9)
     )
    )

    (:action transition1-0
     :parameters ()
     :precondition (and
         (in s1)
     )
     :effect (and
         (not (in s1))
         (in s101)
         (increase (total-cost) 0)
     )
    )

    (:action transition1-1
     :parameters ()
     :precondition (and
         (in s1)
     )
     :effect (and
         (not (in s1))
         (in s1)
         (increase (total-cost) 0)
     )
    )

    (:action transition1-2
     :parameters ()
     :precondition (and
         (in s1)
     )
     :effect (and
         (not (in s1))
         (in s21)
         (increase (total-cost) 0)
     )
    )

    (:action transition1-3
     :parameters ()
     :precondition (and
         (in s1)
     )
     :effect (and
         (not (in s1))
         (in s1)
         (increase (total-cost) 0)
     )
    )

    (:action transition1-4
     :parameters ()
     :precondition (and
         (in s1)
     )
     :effect (and
         (not (in s1))
         (in s17)
         (increase (total-cost) 0)
     )
    )

    (:action transition1-5
     :parameters ()
     :precondition (and
         (in s1)
     )
     :effect (and
         (not (in s1))
         (in s1)
         (increase (total-cost) 9)
     )
    )

    (:action transition2-0
     :parameters ()
     :precondition (and
         (in s2)
     )
     :effect (and
         (not (in s2))
         (in s102)
         (increase (total-cost) 0)
     )
    )

    (:action transition2-1
     :parameters ()
     :precondition (and
         (in s2)
     )
     :effect (and
         (not (in s2))
         (in s2)
         (increase (total-cost) 0)
     )
    )

    (:action transition2-2
     :parameters ()
     :precondition (and
         (in s2)
     )
     :effect (and
         (not (in s2))
         (in s22)
         (increase (total-cost) 0)
     )
    )

    (:action transition2-3
     :parameters ()
     :precondition (and
         (in s2)
     )
     :effect (and
         (not (in s2))
         (in s2)
         (increase (total-cost) 0)
     )
    )

    (:action transition2-4
     :parameters ()
     :precondition (and
         (in s2)
     )
     :effect (and
         (not (in s2))
         (in s18)
         (increase (total-cost) 0)
     )
    )

    (:action transition2-5
     :parameters ()
     :precondition (and
         (in s2)
     )
     :effect (and
         (not (in s2))
         (in s2)
         (increase (total-cost) 9)
     )
    )

    (:action transition3-0
     :parameters ()
     :precondition (and
         (in s3)
     )
     :effect (and
         (not (in s3))
         (in s103)
         (increase (total-cost) 0)
     )
    )

    (:action transition3-1
     :parameters ()
     :precondition (and
         (in s3)
     )
     :effect (and
         (not (in s3))
         (in s3)
         (increase (total-cost) 0)
     )
    )

    (:action transition3-2
     :parameters ()
     :precondition (and
         (in s3)
     )
     :effect (and
         (not (in s3))
         (in s23)
         (increase (total-cost) 0)
     )
    )

    (:action transition3-3
     :parameters ()
     :precondition (and
         (in s3)
     )
     :effect (and
         (not (in s3))
         (in s3)
         (increase (total-cost) 0)
     )
    )

    (:action transition3-4
     :parameters ()
     :precondition (and
         (in s3)
     )
     :effect (and
         (not (in s3))
         (in s19)
         (increase (total-cost) 0)
     )
    )

    (:action transition3-5
     :parameters ()
     :precondition (and
         (in s3)
     )
     :effect (and
         (not (in s3))
         (in s3)
         (increase (total-cost) 9)
     )
    )

    (:action transition4-0
     :parameters ()
     :precondition (and
         (in s4)
     )
     :effect (and
         (not (in s4))
         (in s104)
         (increase (total-cost) 0)
     )
    )

    (:action transition4-1
     :parameters ()
     :precondition (and
         (in s4)
     )
     :effect (and
         (not (in s4))
         (in s4)
         (increase (total-cost) 0)
     )
    )

    (:action transition4-2
     :parameters ()
     :precondition (and
         (in s4)
     )
     :effect (and
         (not (in s4))
         (in s24)
         (increase (total-cost) 0)
     )
    )

    (:action transition4-3
     :parameters ()
     :precondition (and
         (in s4)
     )
     :effect (and
         (not (in s4))
         (in s4)
         (increase (total-cost) 0)
     )
    )

    (:action transition4-4
     :parameters ()
     :precondition (and
         (in s4)
     )
     :effect (and
         (not (in s4))
         (in s4)
         (increase (total-cost) 9)
     )
    )

    (:action transition4-5
     :parameters ()
     :precondition (and
         (in s4)
     )
     :effect (and
         (not (in s4))
         (in s4)
         (increase (total-cost) 9)
     )
    )

    (:action transition5-0
     :parameters ()
     :precondition (and
         (in s5)
     )
     :effect (and
         (not (in s5))
         (in s105)
         (increase (total-cost) 0)
     )
    )

    (:action transition5-1
     :parameters ()
     :precondition (and
         (in s5)
     )
     :effect (and
         (not (in s5))
         (in s5)
         (increase (total-cost) 0)
     )
    )

    (:action transition5-2
     :parameters ()
     :precondition (and
         (in s5)
     )
     :effect (and
         (not (in s5))
         (in s25)
         (increase (total-cost) 0)
     )
    )

    (:action transition5-3
     :parameters ()
     :precondition (and
         (in s5)
     )
     :effect (and
         (not (in s5))
         (in s5)
         (increase (total-cost) 0)
     )
    )

    (:action transition5-4
     :parameters ()
     :precondition (and
         (in s5)
     )
     :effect (and
         (not (in s5))
         (in s5)
         (increase (total-cost) 9)
     )
    )

    (:action transition5-5
     :parameters ()
     :precondition (and
         (in s5)
     )
     :effect (and
         (not (in s5))
         (in s5)
         (increase (total-cost) 9)
     )
    )

    (:action transition6-0
     :parameters ()
     :precondition (and
         (in s6)
     )
     :effect (and
         (not (in s6))
         (in s106)
         (increase (total-cost) 0)
     )
    )

    (:action transition6-1
     :parameters ()
     :precondition (and
         (in s6)
     )
     :effect (and
         (not (in s6))
         (in s6)
         (increase (total-cost) 0)
     )
    )

    (:action transition6-2
     :parameters ()
     :precondition (and
         (in s6)
     )
     :effect (and
         (not (in s6))
         (in s26)
         (increase (total-cost) 0)
     )
    )

    (:action transition6-3
     :parameters ()
     :precondition (and
         (in s6)
     )
     :effect (and
         (not (in s6))
         (in s6)
         (increase (total-cost) 0)
     )
    )

    (:action transition6-4
     :parameters ()
     :precondition (and
         (in s6)
     )
     :effect (and
         (not (in s6))
         (in s6)
         (increase (total-cost) 9)
     )
    )

    (:action transition6-5
     :parameters ()
     :precondition (and
         (in s6)
     )
     :effect (and
         (not (in s6))
         (in s6)
         (increase (total-cost) 9)
     )
    )

    (:action transition7-0
     :parameters ()
     :precondition (and
         (in s7)
     )
     :effect (and
         (not (in s7))
         (in s107)
         (increase (total-cost) 0)
     )
    )

    (:action transition7-1
     :parameters ()
     :precondition (and
         (in s7)
     )
     :effect (and
         (not (in s7))
         (in s7)
         (increase (total-cost) 0)
     )
    )

    (:action transition7-2
     :parameters ()
     :precondition (and
         (in s7)
     )
     :effect (and
         (not (in s7))
         (in s27)
         (increase (total-cost) 0)
     )
    )

    (:action transition7-3
     :parameters ()
     :precondition (and
         (in s7)
     )
     :effect (and
         (not (in s7))
         (in s7)
         (increase (total-cost) 0)
     )
    )

    (:action transition7-4
     :parameters ()
     :precondition (and
         (in s7)
     )
     :effect (and
         (not (in s7))
         (in s7)
         (increase (total-cost) 9)
     )
    )

    (:action transition7-5
     :parameters ()
     :precondition (and
         (in s7)
     )
     :effect (and
         (not (in s7))
         (in s7)
         (increase (total-cost) 9)
     )
    )

    (:action transition8-0
     :parameters ()
     :precondition (and
         (in s8)
     )
     :effect (and
         (not (in s8))
         (in s108)
         (increase (total-cost) 0)
     )
    )

    (:action transition8-1
     :parameters ()
     :precondition (and
         (in s8)
     )
     :effect (and
         (not (in s8))
         (in s8)
         (increase (total-cost) 0)
     )
    )

    (:action transition8-2
     :parameters ()
     :precondition (and
         (in s8)
     )
     :effect (and
         (not (in s8))
         (in s28)
         (increase (total-cost) 0)
     )
    )

    (:action transition8-3
     :parameters ()
     :precondition (and
         (in s8)
     )
     :effect (and
         (not (in s8))
         (in s8)
         (increase (total-cost) 0)
     )
    )

    (:action transition8-4
     :parameters ()
     :precondition (and
         (in s8)
     )
     :effect (and
         (not (in s8))
         (in s8)
         (increase (total-cost) 9)
     )
    )

    (:action transition8-5
     :parameters ()
     :precondition (and
         (in s8)
     )
     :effect (and
         (not (in s8))
         (in s8)
         (increase (total-cost) 9)
     )
    )

    (:action transition9-0
     :parameters ()
     :precondition (and
         (in s9)
     )
     :effect (and
         (not (in s9))
         (in s109)
         (increase (total-cost) 0)
     )
    )

    (:action transition9-1
     :parameters ()
     :precondition (and
         (in s9)
     )
     :effect (and
         (not (in s9))
         (in s9)
         (increase (total-cost) 0)
     )
    )

    (:action transition9-2
     :parameters ()
     :precondition (and
         (in s9)
     )
     :effect (and
         (not (in s9))
         (in s29)
         (increase (total-cost) 0)
     )
    )

    (:action transition9-3
     :parameters ()
     :precondition (and
         (in s9)
     )
     :effect (and
         (not (in s9))
         (in s9)
         (increase (total-cost) 0)
     )
    )

    (:action transition9-4
     :parameters ()
     :precondition (and
         (in s9)
     )
     :effect (and
         (not (in s9))
         (in s9)
         (increase (total-cost) 9)
     )
    )

    (:action transition9-5
     :parameters ()
     :precondition (and
         (in s9)
     )
     :effect (and
         (not (in s9))
         (in s9)
         (increase (total-cost) 9)
     )
    )

    (:action transition10-0
     :parameters ()
     :precondition (and
         (in s10)
     )
     :effect (and
         (not (in s10))
         (in s110)
         (increase (total-cost) 0)
     )
    )

    (:action transition10-1
     :parameters ()
     :precondition (and
         (in s10)
     )
     :effect (and
         (not (in s10))
         (in s10)
         (increase (total-cost) 0)
     )
    )

    (:action transition10-2
     :parameters ()
     :precondition (and
         (in s10)
     )
     :effect (and
         (not (in s10))
         (in s30)
         (increase (total-cost) 0)
     )
    )

    (:action transition10-3
     :parameters ()
     :precondition (and
         (in s10)
     )
     :effect (and
         (not (in s10))
         (in s10)
         (increase (total-cost) 0)
     )
    )

    (:action transition10-4
     :parameters ()
     :precondition (and
         (in s10)
     )
     :effect (and
         (not (in s10))
         (in s10)
         (increase (total-cost) 9)
     )
    )

    (:action transition10-5
     :parameters ()
     :precondition (and
         (in s10)
     )
     :effect (and
         (not (in s10))
         (in s10)
         (increase (total-cost) 9)
     )
    )

    (:action transition11-0
     :parameters ()
     :precondition (and
         (in s11)
     )
     :effect (and
         (not (in s11))
         (in s111)
         (increase (total-cost) 0)
     )
    )

    (:action transition11-1
     :parameters ()
     :precondition (and
         (in s11)
     )
     :effect (and
         (not (in s11))
         (in s11)
         (increase (total-cost) 0)
     )
    )

    (:action transition11-2
     :parameters ()
     :precondition (and
         (in s11)
     )
     :effect (and
         (not (in s11))
         (in s31)
         (increase (total-cost) 0)
     )
    )

    (:action transition11-3
     :parameters ()
     :precondition (and
         (in s11)
     )
     :effect (and
         (not (in s11))
         (in s11)
         (increase (total-cost) 0)
     )
    )

    (:action transition11-4
     :parameters ()
     :precondition (and
         (in s11)
     )
     :effect (and
         (not (in s11))
         (in s11)
         (increase (total-cost) 9)
     )
    )

    (:action transition11-5
     :parameters ()
     :precondition (and
         (in s11)
     )
     :effect (and
         (not (in s11))
         (in s11)
         (increase (total-cost) 9)
     )
    )

    (:action transition12-0
     :parameters ()
     :precondition (and
         (in s12)
     )
     :effect (and
         (not (in s12))
         (in s112)
         (increase (total-cost) 0)
     )
    )

    (:action transition12-1
     :parameters ()
     :precondition (and
         (in s12)
     )
     :effect (and
         (not (in s12))
         (in s12)
         (increase (total-cost) 0)
     )
    )

    (:action transition12-2
     :parameters ()
     :precondition (and
         (in s12)
     )
     :effect (and
         (not (in s12))
         (in s32)
         (increase (total-cost) 0)
     )
    )

    (:action transition12-3
     :parameters ()
     :precondition (and
         (in s12)
     )
     :effect (and
         (not (in s12))
         (in s12)
         (increase (total-cost) 0)
     )
    )

    (:action transition12-4
     :parameters ()
     :precondition (and
         (in s12)
     )
     :effect (and
         (not (in s12))
         (in s12)
         (increase (total-cost) 9)
     )
    )

    (:action transition12-5
     :parameters ()
     :precondition (and
         (in s12)
     )
     :effect (and
         (not (in s12))
         (in s12)
         (increase (total-cost) 9)
     )
    )

    (:action transition13-0
     :parameters ()
     :precondition (and
         (in s13)
     )
     :effect (and
         (not (in s13))
         (in s113)
         (increase (total-cost) 0)
     )
    )

    (:action transition13-1
     :parameters ()
     :precondition (and
         (in s13)
     )
     :effect (and
         (not (in s13))
         (in s13)
         (increase (total-cost) 0)
     )
    )

    (:action transition13-2
     :parameters ()
     :precondition (and
         (in s13)
     )
     :effect (and
         (not (in s13))
         (in s33)
         (increase (total-cost) 0)
     )
    )

    (:action transition13-3
     :parameters ()
     :precondition (and
         (in s13)
     )
     :effect (and
         (not (in s13))
         (in s13)
         (increase (total-cost) 0)
     )
    )

    (:action transition13-4
     :parameters ()
     :precondition (and
         (in s13)
     )
     :effect (and
         (not (in s13))
         (in s13)
         (increase (total-cost) 9)
     )
    )

    (:action transition13-5
     :parameters ()
     :precondition (and
         (in s13)
     )
     :effect (and
         (not (in s13))
         (in s13)
         (increase (total-cost) 9)
     )
    )

    (:action transition14-0
     :parameters ()
     :precondition (and
         (in s14)
     )
     :effect (and
         (not (in s14))
         (in s114)
         (increase (total-cost) 0)
     )
    )

    (:action transition14-1
     :parameters ()
     :precondition (and
         (in s14)
     )
     :effect (and
         (not (in s14))
         (in s14)
         (increase (total-cost) 0)
     )
    )

    (:action transition14-2
     :parameters ()
     :precondition (and
         (in s14)
     )
     :effect (and
         (not (in s14))
         (in s34)
         (increase (total-cost) 0)
     )
    )

    (:action transition14-3
     :parameters ()
     :precondition (and
         (in s14)
     )
     :effect (and
         (not (in s14))
         (in s14)
         (increase (total-cost) 0)
     )
    )

    (:action transition14-4
     :parameters ()
     :precondition (and
         (in s14)
     )
     :effect (and
         (not (in s14))
         (in s14)
         (increase (total-cost) 9)
     )
    )

    (:action transition14-5
     :parameters ()
     :precondition (and
         (in s14)
     )
     :effect (and
         (not (in s14))
         (in s14)
         (increase (total-cost) 9)
     )
    )

    (:action transition15-0
     :parameters ()
     :precondition (and
         (in s15)
     )
     :effect (and
         (not (in s15))
         (in s115)
         (increase (total-cost) 0)
     )
    )

    (:action transition15-1
     :parameters ()
     :precondition (and
         (in s15)
     )
     :effect (and
         (not (in s15))
         (in s15)
         (increase (total-cost) 0)
     )
    )

    (:action transition15-2
     :parameters ()
     :precondition (and
         (in s15)
     )
     :effect (and
         (not (in s15))
         (in s35)
         (increase (total-cost) 0)
     )
    )

    (:action transition15-3
     :parameters ()
     :precondition (and
         (in s15)
     )
     :effect (and
         (not (in s15))
         (in s15)
         (increase (total-cost) 0)
     )
    )

    (:action transition15-4
     :parameters ()
     :precondition (and
         (in s15)
     )
     :effect (and
         (not (in s15))
         (in s15)
         (increase (total-cost) 9)
     )
    )

    (:action transition15-5
     :parameters ()
     :precondition (and
         (in s15)
     )
     :effect (and
         (not (in s15))
         (in s15)
         (increase (total-cost) 9)
     )
    )

    (:action transition16-0
     :parameters ()
     :precondition (and
         (in s16)
     )
     :effect (and
         (not (in s16))
         (in s116)
         (increase (total-cost) 0)
     )
    )

    (:action transition16-1
     :parameters ()
     :precondition (and
         (in s16)
     )
     :effect (and
         (not (in s16))
         (in s16)
         (increase (total-cost) 0)
     )
    )

    (:action transition16-2
     :parameters ()
     :precondition (and
         (in s16)
     )
     :effect (and
         (not (in s16))
         (in s36)
         (increase (total-cost) 0)
     )
    )

    (:action transition16-3
     :parameters ()
     :precondition (and
         (in s16)
     )
     :effect (and
         (not (in s16))
         (in s16)
         (increase (total-cost) 0)
     )
    )

    (:action transition16-4
     :parameters ()
     :precondition (and
         (in s16)
     )
     :effect (and
         (not (in s16))
         (in s16)
         (increase (total-cost) 9)
     )
    )

    (:action transition16-5
     :parameters ()
     :precondition (and
         (in s16)
     )
     :effect (and
         (not (in s16))
         (in s0)
		 (done)
         (increase (total-cost) 0)
     )
    )

    (:action transition17-0
     :parameters ()
     :precondition (and
         (in s17)
     )
     :effect (and
         (not (in s17))
         (in s117)
         (increase (total-cost) 21)
     )
    )

    (:action transition17-1
     :parameters ()
     :precondition (and
         (in s17)
     )
     :effect (and
         (not (in s17))
         (in s17)
         (increase (total-cost) 21)
     )
    )

    (:action transition17-2
     :parameters ()
     :precondition (and
         (in s17)
     )
     :effect (and
         (not (in s17))
         (in s37)
         (increase (total-cost) 21)
     )
    )

    (:action transition17-3
     :parameters ()
     :precondition (and
         (in s17)
     )
     :effect (and
         (not (in s17))
         (in s17)
         (increase (total-cost) 21)
     )
    )

    (:action transition17-4
     :parameters ()
     :precondition (and
         (in s17)
     )
     :effect (and
         (not (in s17))
         (in s17)
         (increase (total-cost) 30)
     )
    )

    (:action transition17-5
     :parameters ()
     :precondition (and
         (in s17)
     )
     :effect (and
         (not (in s17))
         (in s1)
         (increase (total-cost) 21)
     )
    )

    (:action transition18-0
     :parameters ()
     :precondition (and
         (in s18)
     )
     :effect (and
         (not (in s18))
         (in s118)
         (increase (total-cost) 21)
     )
    )

    (:action transition18-1
     :parameters ()
     :precondition (and
         (in s18)
     )
     :effect (and
         (not (in s18))
         (in s18)
         (increase (total-cost) 21)
     )
    )

    (:action transition18-2
     :parameters ()
     :precondition (and
         (in s18)
     )
     :effect (and
         (not (in s18))
         (in s38)
         (increase (total-cost) 21)
     )
    )

    (:action transition18-3
     :parameters ()
     :precondition (and
         (in s18)
     )
     :effect (and
         (not (in s18))
         (in s18)
         (increase (total-cost) 21)
     )
    )

    (:action transition18-4
     :parameters ()
     :precondition (and
         (in s18)
     )
     :effect (and
         (not (in s18))
         (in s18)
         (increase (total-cost) 30)
     )
    )

    (:action transition18-5
     :parameters ()
     :precondition (and
         (in s18)
     )
     :effect (and
         (not (in s18))
         (in s2)
         (increase (total-cost) 21)
     )
    )

    (:action transition19-0
     :parameters ()
     :precondition (and
         (in s19)
     )
     :effect (and
         (not (in s19))
         (in s119)
         (increase (total-cost) 21)
     )
    )

    (:action transition19-1
     :parameters ()
     :precondition (and
         (in s19)
     )
     :effect (and
         (not (in s19))
         (in s19)
         (increase (total-cost) 21)
     )
    )

    (:action transition19-2
     :parameters ()
     :precondition (and
         (in s19)
     )
     :effect (and
         (not (in s19))
         (in s39)
         (increase (total-cost) 21)
     )
    )

    (:action transition19-3
     :parameters ()
     :precondition (and
         (in s19)
     )
     :effect (and
         (not (in s19))
         (in s19)
         (increase (total-cost) 21)
     )
    )

    (:action transition19-4
     :parameters ()
     :precondition (and
         (in s19)
     )
     :effect (and
         (not (in s19))
         (in s19)
         (increase (total-cost) 30)
     )
    )

    (:action transition19-5
     :parameters ()
     :precondition (and
         (in s19)
     )
     :effect (and
         (not (in s19))
         (in s3)
         (increase (total-cost) 21)
     )
    )

    (:action transition20-0
     :parameters ()
     :precondition (and
         (in s20)
     )
     :effect (and
         (not (in s20))
         (in s120)
         (increase (total-cost) 21)
     )
    )

    (:action transition20-1
     :parameters ()
     :precondition (and
         (in s20)
     )
     :effect (and
         (not (in s20))
         (in s20)
         (increase (total-cost) 21)
     )
    )

    (:action transition20-2
     :parameters ()
     :precondition (and
         (in s20)
     )
     :effect (and
         (not (in s20))
         (in s20)
         (increase (total-cost) 21)
     )
    )

    (:action transition20-3
     :parameters ()
     :precondition (and
         (in s20)
     )
     :effect (and
         (not (in s20))
         (in s0)
         (increase (total-cost) 21)
     )
    )

    (:action transition20-4
     :parameters ()
     :precondition (and
         (in s20)
     )
     :effect (and
         (not (in s20))
         (in s20)
         (increase (total-cost) 30)
     )
    )

    (:action transition20-5
     :parameters ()
     :precondition (and
         (in s20)
     )
     :effect (and
         (not (in s20))
         (in s20)
         (increase (total-cost) 30)
     )
    )

    (:action transition21-0
     :parameters ()
     :precondition (and
         (in s21)
     )
     :effect (and
         (not (in s21))
         (in s121)
         (increase (total-cost) 21)
     )
    )

    (:action transition21-1
     :parameters ()
     :precondition (and
         (in s21)
     )
     :effect (and
         (not (in s21))
         (in s21)
         (increase (total-cost) 21)
     )
    )

    (:action transition21-2
     :parameters ()
     :precondition (and
         (in s21)
     )
     :effect (and
         (not (in s21))
         (in s21)
         (increase (total-cost) 21)
     )
    )

    (:action transition21-3
     :parameters ()
     :precondition (and
         (in s21)
     )
     :effect (and
         (not (in s21))
         (in s1)
         (increase (total-cost) 21)
     )
    )

    (:action transition21-4
     :parameters ()
     :precondition (and
         (in s21)
     )
     :effect (and
         (not (in s21))
         (in s21)
         (increase (total-cost) 30)
     )
    )

    (:action transition21-5
     :parameters ()
     :precondition (and
         (in s21)
     )
     :effect (and
         (not (in s21))
         (in s21)
         (increase (total-cost) 30)
     )
    )

    (:action transition22-0
     :parameters ()
     :precondition (and
         (in s22)
     )
     :effect (and
         (not (in s22))
         (in s122)
         (increase (total-cost) 21)
     )
    )

    (:action transition22-1
     :parameters ()
     :precondition (and
         (in s22)
     )
     :effect (and
         (not (in s22))
         (in s22)
         (increase (total-cost) 21)
     )
    )

    (:action transition22-2
     :parameters ()
     :precondition (and
         (in s22)
     )
     :effect (and
         (not (in s22))
         (in s22)
         (increase (total-cost) 21)
     )
    )

    (:action transition22-3
     :parameters ()
     :precondition (and
         (in s22)
     )
     :effect (and
         (not (in s22))
         (in s2)
         (increase (total-cost) 21)
     )
    )

    (:action transition22-4
     :parameters ()
     :precondition (and
         (in s22)
     )
     :effect (and
         (not (in s22))
         (in s22)
         (increase (total-cost) 30)
     )
    )

    (:action transition22-5
     :parameters ()
     :precondition (and
         (in s22)
     )
     :effect (and
         (not (in s22))
         (in s22)
         (increase (total-cost) 30)
     )
    )

    (:action transition23-0
     :parameters ()
     :precondition (and
         (in s23)
     )
     :effect (and
         (not (in s23))
         (in s123)
         (increase (total-cost) 21)
     )
    )

    (:action transition23-1
     :parameters ()
     :precondition (and
         (in s23)
     )
     :effect (and
         (not (in s23))
         (in s23)
         (increase (total-cost) 21)
     )
    )

    (:action transition23-2
     :parameters ()
     :precondition (and
         (in s23)
     )
     :effect (and
         (not (in s23))
         (in s23)
         (increase (total-cost) 21)
     )
    )

    (:action transition23-3
     :parameters ()
     :precondition (and
         (in s23)
     )
     :effect (and
         (not (in s23))
         (in s3)
         (increase (total-cost) 21)
     )
    )

    (:action transition23-4
     :parameters ()
     :precondition (and
         (in s23)
     )
     :effect (and
         (not (in s23))
         (in s23)
         (increase (total-cost) 30)
     )
    )

    (:action transition23-5
     :parameters ()
     :precondition (and
         (in s23)
     )
     :effect (and
         (not (in s23))
         (in s23)
         (increase (total-cost) 30)
     )
    )

    (:action transition24-0
     :parameters ()
     :precondition (and
         (in s24)
     )
     :effect (and
         (not (in s24))
         (in s124)
         (increase (total-cost) 21)
     )
    )

    (:action transition24-1
     :parameters ()
     :precondition (and
         (in s24)
     )
     :effect (and
         (not (in s24))
         (in s24)
         (increase (total-cost) 21)
     )
    )

    (:action transition24-2
     :parameters ()
     :precondition (and
         (in s24)
     )
     :effect (and
         (not (in s24))
         (in s24)
         (increase (total-cost) 21)
     )
    )

    (:action transition24-3
     :parameters ()
     :precondition (and
         (in s24)
     )
     :effect (and
         (not (in s24))
         (in s4)
         (increase (total-cost) 21)
     )
    )

    (:action transition24-4
     :parameters ()
     :precondition (and
         (in s24)
     )
     :effect (and
         (not (in s24))
         (in s24)
         (increase (total-cost) 30)
     )
    )

    (:action transition24-5
     :parameters ()
     :precondition (and
         (in s24)
     )
     :effect (and
         (not (in s24))
         (in s24)
         (increase (total-cost) 30)
     )
    )

    (:action transition25-0
     :parameters ()
     :precondition (and
         (in s25)
     )
     :effect (and
         (not (in s25))
         (in s125)
         (increase (total-cost) 21)
     )
    )

    (:action transition25-1
     :parameters ()
     :precondition (and
         (in s25)
     )
     :effect (and
         (not (in s25))
         (in s25)
         (increase (total-cost) 21)
     )
    )

    (:action transition25-2
     :parameters ()
     :precondition (and
         (in s25)
     )
     :effect (and
         (not (in s25))
         (in s25)
         (increase (total-cost) 21)
     )
    )

    (:action transition25-3
     :parameters ()
     :precondition (and
         (in s25)
     )
     :effect (and
         (not (in s25))
         (in s5)
         (increase (total-cost) 21)
     )
    )

    (:action transition25-4
     :parameters ()
     :precondition (and
         (in s25)
     )
     :effect (and
         (not (in s25))
         (in s25)
         (increase (total-cost) 30)
     )
    )

    (:action transition25-5
     :parameters ()
     :precondition (and
         (in s25)
     )
     :effect (and
         (not (in s25))
         (in s25)
         (increase (total-cost) 30)
     )
    )

    (:action transition26-0
     :parameters ()
     :precondition (and
         (in s26)
     )
     :effect (and
         (not (in s26))
         (in s126)
         (increase (total-cost) 21)
     )
    )

    (:action transition26-1
     :parameters ()
     :precondition (and
         (in s26)
     )
     :effect (and
         (not (in s26))
         (in s26)
         (increase (total-cost) 21)
     )
    )

    (:action transition26-2
     :parameters ()
     :precondition (and
         (in s26)
     )
     :effect (and
         (not (in s26))
         (in s26)
         (increase (total-cost) 21)
     )
    )

    (:action transition26-3
     :parameters ()
     :precondition (and
         (in s26)
     )
     :effect (and
         (not (in s26))
         (in s6)
         (increase (total-cost) 21)
     )
    )

    (:action transition26-4
     :parameters ()
     :precondition (and
         (in s26)
     )
     :effect (and
         (not (in s26))
         (in s26)
         (increase (total-cost) 30)
     )
    )

    (:action transition26-5
     :parameters ()
     :precondition (and
         (in s26)
     )
     :effect (and
         (not (in s26))
         (in s26)
         (increase (total-cost) 30)
     )
    )

    (:action transition27-0
     :parameters ()
     :precondition (and
         (in s27)
     )
     :effect (and
         (not (in s27))
         (in s127)
         (increase (total-cost) 21)
     )
    )

    (:action transition27-1
     :parameters ()
     :precondition (and
         (in s27)
     )
     :effect (and
         (not (in s27))
         (in s27)
         (increase (total-cost) 21)
     )
    )

    (:action transition27-2
     :parameters ()
     :precondition (and
         (in s27)
     )
     :effect (and
         (not (in s27))
         (in s27)
         (increase (total-cost) 21)
     )
    )

    (:action transition27-3
     :parameters ()
     :precondition (and
         (in s27)
     )
     :effect (and
         (not (in s27))
         (in s7)
         (increase (total-cost) 21)
     )
    )

    (:action transition27-4
     :parameters ()
     :precondition (and
         (in s27)
     )
     :effect (and
         (not (in s27))
         (in s27)
         (increase (total-cost) 30)
     )
    )

    (:action transition27-5
     :parameters ()
     :precondition (and
         (in s27)
     )
     :effect (and
         (not (in s27))
         (in s27)
         (increase (total-cost) 30)
     )
    )

    (:action transition28-0
     :parameters ()
     :precondition (and
         (in s28)
     )
     :effect (and
         (not (in s28))
         (in s128)
         (increase (total-cost) 21)
     )
    )

    (:action transition28-1
     :parameters ()
     :precondition (and
         (in s28)
     )
     :effect (and
         (not (in s28))
         (in s28)
         (increase (total-cost) 21)
     )
    )

    (:action transition28-2
     :parameters ()
     :precondition (and
         (in s28)
     )
     :effect (and
         (not (in s28))
         (in s28)
         (increase (total-cost) 21)
     )
    )

    (:action transition28-3
     :parameters ()
     :precondition (and
         (in s28)
     )
     :effect (and
         (not (in s28))
         (in s8)
         (increase (total-cost) 21)
     )
    )

    (:action transition28-4
     :parameters ()
     :precondition (and
         (in s28)
     )
     :effect (and
         (not (in s28))
         (in s28)
         (increase (total-cost) 30)
     )
    )

    (:action transition28-5
     :parameters ()
     :precondition (and
         (in s28)
     )
     :effect (and
         (not (in s28))
         (in s28)
         (increase (total-cost) 30)
     )
    )

    (:action transition29-0
     :parameters ()
     :precondition (and
         (in s29)
     )
     :effect (and
         (not (in s29))
         (in s129)
         (increase (total-cost) 21)
     )
    )

    (:action transition29-1
     :parameters ()
     :precondition (and
         (in s29)
     )
     :effect (and
         (not (in s29))
         (in s29)
         (increase (total-cost) 21)
     )
    )

    (:action transition29-2
     :parameters ()
     :precondition (and
         (in s29)
     )
     :effect (and
         (not (in s29))
         (in s29)
         (increase (total-cost) 21)
     )
    )

    (:action transition29-3
     :parameters ()
     :precondition (and
         (in s29)
     )
     :effect (and
         (not (in s29))
         (in s9)
         (increase (total-cost) 21)
     )
    )

    (:action transition29-4
     :parameters ()
     :precondition (and
         (in s29)
     )
     :effect (and
         (not (in s29))
         (in s29)
         (increase (total-cost) 30)
     )
    )

    (:action transition29-5
     :parameters ()
     :precondition (and
         (in s29)
     )
     :effect (and
         (not (in s29))
         (in s29)
         (increase (total-cost) 30)
     )
    )

    (:action transition30-0
     :parameters ()
     :precondition (and
         (in s30)
     )
     :effect (and
         (not (in s30))
         (in s130)
         (increase (total-cost) 21)
     )
    )

    (:action transition30-1
     :parameters ()
     :precondition (and
         (in s30)
     )
     :effect (and
         (not (in s30))
         (in s30)
         (increase (total-cost) 21)
     )
    )

    (:action transition30-2
     :parameters ()
     :precondition (and
         (in s30)
     )
     :effect (and
         (not (in s30))
         (in s30)
         (increase (total-cost) 21)
     )
    )

    (:action transition30-3
     :parameters ()
     :precondition (and
         (in s30)
     )
     :effect (and
         (not (in s30))
         (in s10)
         (increase (total-cost) 21)
     )
    )

    (:action transition30-4
     :parameters ()
     :precondition (and
         (in s30)
     )
     :effect (and
         (not (in s30))
         (in s30)
         (increase (total-cost) 30)
     )
    )

    (:action transition30-5
     :parameters ()
     :precondition (and
         (in s30)
     )
     :effect (and
         (not (in s30))
         (in s30)
         (increase (total-cost) 30)
     )
    )

    (:action transition31-0
     :parameters ()
     :precondition (and
         (in s31)
     )
     :effect (and
         (not (in s31))
         (in s131)
         (increase (total-cost) 21)
     )
    )

    (:action transition31-1
     :parameters ()
     :precondition (and
         (in s31)
     )
     :effect (and
         (not (in s31))
         (in s31)
         (increase (total-cost) 21)
     )
    )

    (:action transition31-2
     :parameters ()
     :precondition (and
         (in s31)
     )
     :effect (and
         (not (in s31))
         (in s31)
         (increase (total-cost) 21)
     )
    )

    (:action transition31-3
     :parameters ()
     :precondition (and
         (in s31)
     )
     :effect (and
         (not (in s31))
         (in s11)
         (increase (total-cost) 21)
     )
    )

    (:action transition31-4
     :parameters ()
     :precondition (and
         (in s31)
     )
     :effect (and
         (not (in s31))
         (in s31)
         (increase (total-cost) 30)
     )
    )

    (:action transition31-5
     :parameters ()
     :precondition (and
         (in s31)
     )
     :effect (and
         (not (in s31))
         (in s31)
         (increase (total-cost) 30)
     )
    )

    (:action transition32-0
     :parameters ()
     :precondition (and
         (in s32)
     )
     :effect (and
         (not (in s32))
         (in s132)
         (increase (total-cost) 21)
     )
    )

    (:action transition32-1
     :parameters ()
     :precondition (and
         (in s32)
     )
     :effect (and
         (not (in s32))
         (in s32)
         (increase (total-cost) 21)
     )
    )

    (:action transition32-2
     :parameters ()
     :precondition (and
         (in s32)
     )
     :effect (and
         (not (in s32))
         (in s32)
         (increase (total-cost) 21)
     )
    )

    (:action transition32-3
     :parameters ()
     :precondition (and
         (in s32)
     )
     :effect (and
         (not (in s32))
         (in s12)
         (increase (total-cost) 21)
     )
    )

    (:action transition32-4
     :parameters ()
     :precondition (and
         (in s32)
     )
     :effect (and
         (not (in s32))
         (in s32)
         (increase (total-cost) 30)
     )
    )

    (:action transition32-5
     :parameters ()
     :precondition (and
         (in s32)
     )
     :effect (and
         (not (in s32))
         (in s32)
         (increase (total-cost) 30)
     )
    )

    (:action transition33-0
     :parameters ()
     :precondition (and
         (in s33)
     )
     :effect (and
         (not (in s33))
         (in s133)
         (increase (total-cost) 21)
     )
    )

    (:action transition33-1
     :parameters ()
     :precondition (and
         (in s33)
     )
     :effect (and
         (not (in s33))
         (in s33)
         (increase (total-cost) 21)
     )
    )

    (:action transition33-2
     :parameters ()
     :precondition (and
         (in s33)
     )
     :effect (and
         (not (in s33))
         (in s33)
         (increase (total-cost) 21)
     )
    )

    (:action transition33-3
     :parameters ()
     :precondition (and
         (in s33)
     )
     :effect (and
         (not (in s33))
         (in s13)
         (increase (total-cost) 21)
     )
    )

    (:action transition33-4
     :parameters ()
     :precondition (and
         (in s33)
     )
     :effect (and
         (not (in s33))
         (in s33)
         (increase (total-cost) 30)
     )
    )

    (:action transition33-5
     :parameters ()
     :precondition (and
         (in s33)
     )
     :effect (and
         (not (in s33))
         (in s33)
         (increase (total-cost) 30)
     )
    )

    (:action transition34-0
     :parameters ()
     :precondition (and
         (in s34)
     )
     :effect (and
         (not (in s34))
         (in s134)
         (increase (total-cost) 21)
     )
    )

    (:action transition34-1
     :parameters ()
     :precondition (and
         (in s34)
     )
     :effect (and
         (not (in s34))
         (in s34)
         (increase (total-cost) 21)
     )
    )

    (:action transition34-2
     :parameters ()
     :precondition (and
         (in s34)
     )
     :effect (and
         (not (in s34))
         (in s34)
         (increase (total-cost) 21)
     )
    )

    (:action transition34-3
     :parameters ()
     :precondition (and
         (in s34)
     )
     :effect (and
         (not (in s34))
         (in s14)
         (increase (total-cost) 21)
     )
    )

    (:action transition34-4
     :parameters ()
     :precondition (and
         (in s34)
     )
     :effect (and
         (not (in s34))
         (in s34)
         (increase (total-cost) 30)
     )
    )

    (:action transition34-5
     :parameters ()
     :precondition (and
         (in s34)
     )
     :effect (and
         (not (in s34))
         (in s34)
         (increase (total-cost) 30)
     )
    )

    (:action transition35-0
     :parameters ()
     :precondition (and
         (in s35)
     )
     :effect (and
         (not (in s35))
         (in s135)
         (increase (total-cost) 21)
     )
    )

    (:action transition35-1
     :parameters ()
     :precondition (and
         (in s35)
     )
     :effect (and
         (not (in s35))
         (in s35)
         (increase (total-cost) 21)
     )
    )

    (:action transition35-2
     :parameters ()
     :precondition (and
         (in s35)
     )
     :effect (and
         (not (in s35))
         (in s35)
         (increase (total-cost) 21)
     )
    )

    (:action transition35-3
     :parameters ()
     :precondition (and
         (in s35)
     )
     :effect (and
         (not (in s35))
         (in s15)
         (increase (total-cost) 21)
     )
    )

    (:action transition35-4
     :parameters ()
     :precondition (and
         (in s35)
     )
     :effect (and
         (not (in s35))
         (in s35)
         (increase (total-cost) 30)
     )
    )

    (:action transition35-5
     :parameters ()
     :precondition (and
         (in s35)
     )
     :effect (and
         (not (in s35))
         (in s35)
         (increase (total-cost) 30)
     )
    )

    (:action transition36-0
     :parameters ()
     :precondition (and
         (in s36)
     )
     :effect (and
         (not (in s36))
         (in s136)
         (increase (total-cost) 21)
     )
    )

    (:action transition36-1
     :parameters ()
     :precondition (and
         (in s36)
     )
     :effect (and
         (not (in s36))
         (in s36)
         (increase (total-cost) 21)
     )
    )

    (:action transition36-2
     :parameters ()
     :precondition (and
         (in s36)
     )
     :effect (and
         (not (in s36))
         (in s36)
         (increase (total-cost) 21)
     )
    )

    (:action transition36-3
     :parameters ()
     :precondition (and
         (in s36)
     )
     :effect (and
         (not (in s36))
         (in s16)
         (increase (total-cost) 21)
     )
    )

    (:action transition36-4
     :parameters ()
     :precondition (and
         (in s36)
     )
     :effect (and
         (not (in s36))
         (in s36)
         (increase (total-cost) 30)
     )
    )

    (:action transition36-5
     :parameters ()
     :precondition (and
         (in s36)
     )
     :effect (and
         (not (in s36))
         (in s36)
         (increase (total-cost) 30)
     )
    )

    (:action transition37-0
     :parameters ()
     :precondition (and
         (in s37)
     )
     :effect (and
         (not (in s37))
         (in s137)
         (increase (total-cost) 21)
     )
    )

    (:action transition37-1
     :parameters ()
     :precondition (and
         (in s37)
     )
     :effect (and
         (not (in s37))
         (in s37)
         (increase (total-cost) 21)
     )
    )

    (:action transition37-2
     :parameters ()
     :precondition (and
         (in s37)
     )
     :effect (and
         (not (in s37))
         (in s37)
         (increase (total-cost) 21)
     )
    )

    (:action transition37-3
     :parameters ()
     :precondition (and
         (in s37)
     )
     :effect (and
         (not (in s37))
         (in s17)
         (increase (total-cost) 21)
     )
    )

    (:action transition37-4
     :parameters ()
     :precondition (and
         (in s37)
     )
     :effect (and
         (not (in s37))
         (in s37)
         (increase (total-cost) 30)
     )
    )

    (:action transition37-5
     :parameters ()
     :precondition (and
         (in s37)
     )
     :effect (and
         (not (in s37))
         (in s37)
         (increase (total-cost) 30)
     )
    )

    (:action transition38-0
     :parameters ()
     :precondition (and
         (in s38)
     )
     :effect (and
         (not (in s38))
         (in s138)
         (increase (total-cost) 21)
     )
    )

    (:action transition38-1
     :parameters ()
     :precondition (and
         (in s38)
     )
     :effect (and
         (not (in s38))
         (in s38)
         (increase (total-cost) 21)
     )
    )

    (:action transition38-2
     :parameters ()
     :precondition (and
         (in s38)
     )
     :effect (and
         (not (in s38))
         (in s38)
         (increase (total-cost) 21)
     )
    )

    (:action transition38-3
     :parameters ()
     :precondition (and
         (in s38)
     )
     :effect (and
         (not (in s38))
         (in s18)
         (increase (total-cost) 21)
     )
    )

    (:action transition38-4
     :parameters ()
     :precondition (and
         (in s38)
     )
     :effect (and
         (not (in s38))
         (in s38)
         (increase (total-cost) 30)
     )
    )

    (:action transition38-5
     :parameters ()
     :precondition (and
         (in s38)
     )
     :effect (and
         (not (in s38))
         (in s38)
         (increase (total-cost) 30)
     )
    )

    (:action transition39-0
     :parameters ()
     :precondition (and
         (in s39)
     )
     :effect (and
         (not (in s39))
         (in s139)
         (increase (total-cost) 21)
     )
    )

    (:action transition39-1
     :parameters ()
     :precondition (and
         (in s39)
     )
     :effect (and
         (not (in s39))
         (in s39)
         (increase (total-cost) 21)
     )
    )

    (:action transition39-2
     :parameters ()
     :precondition (and
         (in s39)
     )
     :effect (and
         (not (in s39))
         (in s39)
         (increase (total-cost) 21)
     )
    )

    (:action transition39-3
     :parameters ()
     :precondition (and
         (in s39)
     )
     :effect (and
         (not (in s39))
         (in s19)
         (increase (total-cost) 21)
     )
    )

    (:action transition39-4
     :parameters ()
     :precondition (and
         (in s39)
     )
     :effect (and
         (not (in s39))
         (in s39)
         (increase (total-cost) 30)
     )
    )

    (:action transition39-5
     :parameters ()
     :precondition (and
         (in s39)
     )
     :effect (and
         (not (in s39))
         (in s39)
         (increase (total-cost) 30)
     )
    )

    (:action transition40-0
     :parameters ()
     :precondition (and
         (in s40)
     )
     :effect (and
         (not (in s40))
         (in s140)
         (increase (total-cost) 21)
     )
    )

    (:action transition40-1
     :parameters ()
     :precondition (and
         (in s40)
     )
     :effect (and
         (not (in s40))
         (in s40)
         (increase (total-cost) 21)
     )
    )

    (:action transition40-2
     :parameters ()
     :precondition (and
         (in s40)
     )
     :effect (and
         (not (in s40))
         (in s60)
         (increase (total-cost) 21)
     )
    )

    (:action transition40-3
     :parameters ()
     :precondition (and
         (in s40)
     )
     :effect (and
         (not (in s40))
         (in s40)
         (increase (total-cost) 21)
     )
    )

    (:action transition40-4
     :parameters ()
     :precondition (and
         (in s40)
     )
     :effect (and
         (not (in s40))
         (in s40)
         (increase (total-cost) 30)
     )
    )

    (:action transition40-5
     :parameters ()
     :precondition (and
         (in s40)
     )
     :effect (and
         (not (in s40))
         (in s40)
         (increase (total-cost) 30)
     )
    )

    (:action transition41-0
     :parameters ()
     :precondition (and
         (in s41)
     )
     :effect (and
         (not (in s41))
         (in s141)
         (increase (total-cost) 21)
     )
    )

    (:action transition41-1
     :parameters ()
     :precondition (and
         (in s41)
     )
     :effect (and
         (not (in s41))
         (in s41)
         (increase (total-cost) 21)
     )
    )

    (:action transition41-2
     :parameters ()
     :precondition (and
         (in s41)
     )
     :effect (and
         (not (in s41))
         (in s61)
         (increase (total-cost) 21)
     )
    )

    (:action transition41-3
     :parameters ()
     :precondition (and
         (in s41)
     )
     :effect (and
         (not (in s41))
         (in s41)
         (increase (total-cost) 21)
     )
    )

    (:action transition41-4
     :parameters ()
     :precondition (and
         (in s41)
     )
     :effect (and
         (not (in s41))
         (in s41)
         (increase (total-cost) 30)
     )
    )

    (:action transition41-5
     :parameters ()
     :precondition (and
         (in s41)
     )
     :effect (and
         (not (in s41))
         (in s41)
         (increase (total-cost) 30)
     )
    )

    (:action transition42-0
     :parameters ()
     :precondition (and
         (in s42)
     )
     :effect (and
         (not (in s42))
         (in s142)
         (increase (total-cost) 21)
     )
    )

    (:action transition42-1
     :parameters ()
     :precondition (and
         (in s42)
     )
     :effect (and
         (not (in s42))
         (in s42)
         (increase (total-cost) 21)
     )
    )

    (:action transition42-2
     :parameters ()
     :precondition (and
         (in s42)
     )
     :effect (and
         (not (in s42))
         (in s62)
         (increase (total-cost) 21)
     )
    )

    (:action transition42-3
     :parameters ()
     :precondition (and
         (in s42)
     )
     :effect (and
         (not (in s42))
         (in s42)
         (increase (total-cost) 21)
     )
    )

    (:action transition42-4
     :parameters ()
     :precondition (and
         (in s42)
     )
     :effect (and
         (not (in s42))
         (in s42)
         (increase (total-cost) 30)
     )
    )

    (:action transition42-5
     :parameters ()
     :precondition (and
         (in s42)
     )
     :effect (and
         (not (in s42))
         (in s42)
         (increase (total-cost) 30)
     )
    )

    (:action transition43-0
     :parameters ()
     :precondition (and
         (in s43)
     )
     :effect (and
         (not (in s43))
         (in s143)
         (increase (total-cost) 21)
     )
    )

    (:action transition43-1
     :parameters ()
     :precondition (and
         (in s43)
     )
     :effect (and
         (not (in s43))
         (in s43)
         (increase (total-cost) 21)
     )
    )

    (:action transition43-2
     :parameters ()
     :precondition (and
         (in s43)
     )
     :effect (and
         (not (in s43))
         (in s63)
         (increase (total-cost) 21)
     )
    )

    (:action transition43-3
     :parameters ()
     :precondition (and
         (in s43)
     )
     :effect (and
         (not (in s43))
         (in s43)
         (increase (total-cost) 21)
     )
    )

    (:action transition43-4
     :parameters ()
     :precondition (and
         (in s43)
     )
     :effect (and
         (not (in s43))
         (in s43)
         (increase (total-cost) 30)
     )
    )

    (:action transition43-5
     :parameters ()
     :precondition (and
         (in s43)
     )
     :effect (and
         (not (in s43))
         (in s43)
         (increase (total-cost) 30)
     )
    )

    (:action transition44-0
     :parameters ()
     :precondition (and
         (in s44)
     )
     :effect (and
         (not (in s44))
         (in s144)
         (increase (total-cost) 21)
     )
    )

    (:action transition44-1
     :parameters ()
     :precondition (and
         (in s44)
     )
     :effect (and
         (not (in s44))
         (in s44)
         (increase (total-cost) 21)
     )
    )

    (:action transition44-2
     :parameters ()
     :precondition (and
         (in s44)
     )
     :effect (and
         (not (in s44))
         (in s64)
         (increase (total-cost) 21)
     )
    )

    (:action transition44-3
     :parameters ()
     :precondition (and
         (in s44)
     )
     :effect (and
         (not (in s44))
         (in s44)
         (increase (total-cost) 21)
     )
    )

    (:action transition44-4
     :parameters ()
     :precondition (and
         (in s44)
     )
     :effect (and
         (not (in s44))
         (in s44)
         (increase (total-cost) 30)
     )
    )

    (:action transition44-5
     :parameters ()
     :precondition (and
         (in s44)
     )
     :effect (and
         (not (in s44))
         (in s44)
         (increase (total-cost) 30)
     )
    )

    (:action transition45-0
     :parameters ()
     :precondition (and
         (in s45)
     )
     :effect (and
         (not (in s45))
         (in s145)
         (increase (total-cost) 21)
     )
    )

    (:action transition45-1
     :parameters ()
     :precondition (and
         (in s45)
     )
     :effect (and
         (not (in s45))
         (in s45)
         (increase (total-cost) 21)
     )
    )

    (:action transition45-2
     :parameters ()
     :precondition (and
         (in s45)
     )
     :effect (and
         (not (in s45))
         (in s65)
         (increase (total-cost) 21)
     )
    )

    (:action transition45-3
     :parameters ()
     :precondition (and
         (in s45)
     )
     :effect (and
         (not (in s45))
         (in s45)
         (increase (total-cost) 21)
     )
    )

    (:action transition45-4
     :parameters ()
     :precondition (and
         (in s45)
     )
     :effect (and
         (not (in s45))
         (in s45)
         (increase (total-cost) 30)
     )
    )

    (:action transition45-5
     :parameters ()
     :precondition (and
         (in s45)
     )
     :effect (and
         (not (in s45))
         (in s45)
         (increase (total-cost) 30)
     )
    )

    (:action transition46-0
     :parameters ()
     :precondition (and
         (in s46)
     )
     :effect (and
         (not (in s46))
         (in s146)
         (increase (total-cost) 21)
     )
    )

    (:action transition46-1
     :parameters ()
     :precondition (and
         (in s46)
     )
     :effect (and
         (not (in s46))
         (in s46)
         (increase (total-cost) 21)
     )
    )

    (:action transition46-2
     :parameters ()
     :precondition (and
         (in s46)
     )
     :effect (and
         (not (in s46))
         (in s66)
         (increase (total-cost) 21)
     )
    )

    (:action transition46-3
     :parameters ()
     :precondition (and
         (in s46)
     )
     :effect (and
         (not (in s46))
         (in s46)
         (increase (total-cost) 21)
     )
    )

    (:action transition46-4
     :parameters ()
     :precondition (and
         (in s46)
     )
     :effect (and
         (not (in s46))
         (in s46)
         (increase (total-cost) 30)
     )
    )

    (:action transition46-5
     :parameters ()
     :precondition (and
         (in s46)
     )
     :effect (and
         (not (in s46))
         (in s46)
         (increase (total-cost) 30)
     )
    )

    (:action transition47-0
     :parameters ()
     :precondition (and
         (in s47)
     )
     :effect (and
         (not (in s47))
         (in s147)
         (increase (total-cost) 21)
     )
    )

    (:action transition47-1
     :parameters ()
     :precondition (and
         (in s47)
     )
     :effect (and
         (not (in s47))
         (in s47)
         (increase (total-cost) 21)
     )
    )

    (:action transition47-2
     :parameters ()
     :precondition (and
         (in s47)
     )
     :effect (and
         (not (in s47))
         (in s67)
         (increase (total-cost) 21)
     )
    )

    (:action transition47-3
     :parameters ()
     :precondition (and
         (in s47)
     )
     :effect (and
         (not (in s47))
         (in s47)
         (increase (total-cost) 21)
     )
    )

    (:action transition47-4
     :parameters ()
     :precondition (and
         (in s47)
     )
     :effect (and
         (not (in s47))
         (in s47)
         (increase (total-cost) 30)
     )
    )

    (:action transition47-5
     :parameters ()
     :precondition (and
         (in s47)
     )
     :effect (and
         (not (in s47))
         (in s47)
         (increase (total-cost) 30)
     )
    )

    (:action transition48-0
     :parameters ()
     :precondition (and
         (in s48)
     )
     :effect (and
         (not (in s48))
         (in s148)
         (increase (total-cost) 21)
     )
    )

    (:action transition48-1
     :parameters ()
     :precondition (and
         (in s48)
     )
     :effect (and
         (not (in s48))
         (in s48)
         (increase (total-cost) 21)
     )
    )

    (:action transition48-2
     :parameters ()
     :precondition (and
         (in s48)
     )
     :effect (and
         (not (in s48))
         (in s68)
         (increase (total-cost) 21)
     )
    )

    (:action transition48-3
     :parameters ()
     :precondition (and
         (in s48)
     )
     :effect (and
         (not (in s48))
         (in s48)
         (increase (total-cost) 21)
     )
    )

    (:action transition48-4
     :parameters ()
     :precondition (and
         (in s48)
     )
     :effect (and
         (not (in s48))
         (in s48)
         (increase (total-cost) 30)
     )
    )

    (:action transition48-5
     :parameters ()
     :precondition (and
         (in s48)
     )
     :effect (and
         (not (in s48))
         (in s48)
         (increase (total-cost) 30)
     )
    )

    (:action transition49-0
     :parameters ()
     :precondition (and
         (in s49)
     )
     :effect (and
         (not (in s49))
         (in s149)
         (increase (total-cost) 21)
     )
    )

    (:action transition49-1
     :parameters ()
     :precondition (and
         (in s49)
     )
     :effect (and
         (not (in s49))
         (in s49)
         (increase (total-cost) 21)
     )
    )

    (:action transition49-2
     :parameters ()
     :precondition (and
         (in s49)
     )
     :effect (and
         (not (in s49))
         (in s69)
         (increase (total-cost) 21)
     )
    )

    (:action transition49-3
     :parameters ()
     :precondition (and
         (in s49)
     )
     :effect (and
         (not (in s49))
         (in s49)
         (increase (total-cost) 21)
     )
    )

    (:action transition49-4
     :parameters ()
     :precondition (and
         (in s49)
     )
     :effect (and
         (not (in s49))
         (in s49)
         (increase (total-cost) 30)
     )
    )

    (:action transition49-5
     :parameters ()
     :precondition (and
         (in s49)
     )
     :effect (and
         (not (in s49))
         (in s49)
         (increase (total-cost) 30)
     )
    )

    (:action transition50-0
     :parameters ()
     :precondition (and
         (in s50)
     )
     :effect (and
         (not (in s50))
         (in s150)
         (increase (total-cost) 21)
     )
    )

    (:action transition50-1
     :parameters ()
     :precondition (and
         (in s50)
     )
     :effect (and
         (not (in s50))
         (in s50)
         (increase (total-cost) 21)
     )
    )

    (:action transition50-2
     :parameters ()
     :precondition (and
         (in s50)
     )
     :effect (and
         (not (in s50))
         (in s70)
         (increase (total-cost) 21)
     )
    )

    (:action transition50-3
     :parameters ()
     :precondition (and
         (in s50)
     )
     :effect (and
         (not (in s50))
         (in s50)
         (increase (total-cost) 21)
     )
    )

    (:action transition50-4
     :parameters ()
     :precondition (and
         (in s50)
     )
     :effect (and
         (not (in s50))
         (in s50)
         (increase (total-cost) 30)
     )
    )

    (:action transition50-5
     :parameters ()
     :precondition (and
         (in s50)
     )
     :effect (and
         (not (in s50))
         (in s50)
         (increase (total-cost) 30)
     )
    )

    (:action transition51-0
     :parameters ()
     :precondition (and
         (in s51)
     )
     :effect (and
         (not (in s51))
         (in s151)
         (increase (total-cost) 21)
     )
    )

    (:action transition51-1
     :parameters ()
     :precondition (and
         (in s51)
     )
     :effect (and
         (not (in s51))
         (in s51)
         (increase (total-cost) 21)
     )
    )

    (:action transition51-2
     :parameters ()
     :precondition (and
         (in s51)
     )
     :effect (and
         (not (in s51))
         (in s71)
         (increase (total-cost) 21)
     )
    )

    (:action transition51-3
     :parameters ()
     :precondition (and
         (in s51)
     )
     :effect (and
         (not (in s51))
         (in s51)
         (increase (total-cost) 21)
     )
    )

    (:action transition51-4
     :parameters ()
     :precondition (and
         (in s51)
     )
     :effect (and
         (not (in s51))
         (in s51)
         (increase (total-cost) 30)
     )
    )

    (:action transition51-5
     :parameters ()
     :precondition (and
         (in s51)
     )
     :effect (and
         (not (in s51))
         (in s51)
         (increase (total-cost) 30)
     )
    )

    (:action transition52-0
     :parameters ()
     :precondition (and
         (in s52)
     )
     :effect (and
         (not (in s52))
         (in s152)
         (increase (total-cost) 21)
     )
    )

    (:action transition52-1
     :parameters ()
     :precondition (and
         (in s52)
     )
     :effect (and
         (not (in s52))
         (in s52)
         (increase (total-cost) 21)
     )
    )

    (:action transition52-2
     :parameters ()
     :precondition (and
         (in s52)
     )
     :effect (and
         (not (in s52))
         (in s72)
         (increase (total-cost) 21)
     )
    )

    (:action transition52-3
     :parameters ()
     :precondition (and
         (in s52)
     )
     :effect (and
         (not (in s52))
         (in s52)
         (increase (total-cost) 21)
     )
    )

    (:action transition52-4
     :parameters ()
     :precondition (and
         (in s52)
     )
     :effect (and
         (not (in s52))
         (in s52)
         (increase (total-cost) 30)
     )
    )

    (:action transition52-5
     :parameters ()
     :precondition (and
         (in s52)
     )
     :effect (and
         (not (in s52))
         (in s52)
         (increase (total-cost) 30)
     )
    )

    (:action transition53-0
     :parameters ()
     :precondition (and
         (in s53)
     )
     :effect (and
         (not (in s53))
         (in s153)
         (increase (total-cost) 21)
     )
    )

    (:action transition53-1
     :parameters ()
     :precondition (and
         (in s53)
     )
     :effect (and
         (not (in s53))
         (in s53)
         (increase (total-cost) 21)
     )
    )

    (:action transition53-2
     :parameters ()
     :precondition (and
         (in s53)
     )
     :effect (and
         (not (in s53))
         (in s73)
         (increase (total-cost) 21)
     )
    )

    (:action transition53-3
     :parameters ()
     :precondition (and
         (in s53)
     )
     :effect (and
         (not (in s53))
         (in s53)
         (increase (total-cost) 21)
     )
    )

    (:action transition53-4
     :parameters ()
     :precondition (and
         (in s53)
     )
     :effect (and
         (not (in s53))
         (in s53)
         (increase (total-cost) 30)
     )
    )

    (:action transition53-5
     :parameters ()
     :precondition (and
         (in s53)
     )
     :effect (and
         (not (in s53))
         (in s53)
         (increase (total-cost) 30)
     )
    )

    (:action transition54-0
     :parameters ()
     :precondition (and
         (in s54)
     )
     :effect (and
         (not (in s54))
         (in s154)
         (increase (total-cost) 21)
     )
    )

    (:action transition54-1
     :parameters ()
     :precondition (and
         (in s54)
     )
     :effect (and
         (not (in s54))
         (in s54)
         (increase (total-cost) 21)
     )
    )

    (:action transition54-2
     :parameters ()
     :precondition (and
         (in s54)
     )
     :effect (and
         (not (in s54))
         (in s74)
         (increase (total-cost) 21)
     )
    )

    (:action transition54-3
     :parameters ()
     :precondition (and
         (in s54)
     )
     :effect (and
         (not (in s54))
         (in s54)
         (increase (total-cost) 21)
     )
    )

    (:action transition54-4
     :parameters ()
     :precondition (and
         (in s54)
     )
     :effect (and
         (not (in s54))
         (in s54)
         (increase (total-cost) 30)
     )
    )

    (:action transition54-5
     :parameters ()
     :precondition (and
         (in s54)
     )
     :effect (and
         (not (in s54))
         (in s54)
         (increase (total-cost) 30)
     )
    )

    (:action transition55-0
     :parameters ()
     :precondition (and
         (in s55)
     )
     :effect (and
         (not (in s55))
         (in s155)
         (increase (total-cost) 21)
     )
    )

    (:action transition55-1
     :parameters ()
     :precondition (and
         (in s55)
     )
     :effect (and
         (not (in s55))
         (in s55)
         (increase (total-cost) 21)
     )
    )

    (:action transition55-2
     :parameters ()
     :precondition (and
         (in s55)
     )
     :effect (and
         (not (in s55))
         (in s75)
         (increase (total-cost) 21)
     )
    )

    (:action transition55-3
     :parameters ()
     :precondition (and
         (in s55)
     )
     :effect (and
         (not (in s55))
         (in s55)
         (increase (total-cost) 21)
     )
    )

    (:action transition55-4
     :parameters ()
     :precondition (and
         (in s55)
     )
     :effect (and
         (not (in s55))
         (in s55)
         (increase (total-cost) 30)
     )
    )

    (:action transition55-5
     :parameters ()
     :precondition (and
         (in s55)
     )
     :effect (and
         (not (in s55))
         (in s55)
         (increase (total-cost) 30)
     )
    )

    (:action transition56-0
     :parameters ()
     :precondition (and
         (in s56)
     )
     :effect (and
         (not (in s56))
         (in s156)
         (increase (total-cost) 21)
     )
    )

    (:action transition56-1
     :parameters ()
     :precondition (and
         (in s56)
     )
     :effect (and
         (not (in s56))
         (in s56)
         (increase (total-cost) 21)
     )
    )

    (:action transition56-2
     :parameters ()
     :precondition (and
         (in s56)
     )
     :effect (and
         (not (in s56))
         (in s76)
         (increase (total-cost) 21)
     )
    )

    (:action transition56-3
     :parameters ()
     :precondition (and
         (in s56)
     )
     :effect (and
         (not (in s56))
         (in s56)
         (increase (total-cost) 21)
     )
    )

    (:action transition56-4
     :parameters ()
     :precondition (and
         (in s56)
     )
     :effect (and
         (not (in s56))
         (in s56)
         (increase (total-cost) 30)
     )
    )

    (:action transition56-5
     :parameters ()
     :precondition (and
         (in s56)
     )
     :effect (and
         (not (in s56))
         (in s56)
         (increase (total-cost) 30)
     )
    )

    (:action transition57-0
     :parameters ()
     :precondition (and
         (in s57)
     )
     :effect (and
         (not (in s57))
         (in s157)
         (increase (total-cost) 21)
     )
    )

    (:action transition57-1
     :parameters ()
     :precondition (and
         (in s57)
     )
     :effect (and
         (not (in s57))
         (in s57)
         (increase (total-cost) 21)
     )
    )

    (:action transition57-2
     :parameters ()
     :precondition (and
         (in s57)
     )
     :effect (and
         (not (in s57))
         (in s77)
         (increase (total-cost) 21)
     )
    )

    (:action transition57-3
     :parameters ()
     :precondition (and
         (in s57)
     )
     :effect (and
         (not (in s57))
         (in s57)
         (increase (total-cost) 21)
     )
    )

    (:action transition57-4
     :parameters ()
     :precondition (and
         (in s57)
     )
     :effect (and
         (not (in s57))
         (in s57)
         (increase (total-cost) 30)
     )
    )

    (:action transition57-5
     :parameters ()
     :precondition (and
         (in s57)
     )
     :effect (and
         (not (in s57))
         (in s57)
         (increase (total-cost) 30)
     )
    )

    (:action transition58-0
     :parameters ()
     :precondition (and
         (in s58)
     )
     :effect (and
         (not (in s58))
         (in s158)
         (increase (total-cost) 21)
     )
    )

    (:action transition58-1
     :parameters ()
     :precondition (and
         (in s58)
     )
     :effect (and
         (not (in s58))
         (in s58)
         (increase (total-cost) 21)
     )
    )

    (:action transition58-2
     :parameters ()
     :precondition (and
         (in s58)
     )
     :effect (and
         (not (in s58))
         (in s78)
         (increase (total-cost) 21)
     )
    )

    (:action transition58-3
     :parameters ()
     :precondition (and
         (in s58)
     )
     :effect (and
         (not (in s58))
         (in s58)
         (increase (total-cost) 21)
     )
    )

    (:action transition58-4
     :parameters ()
     :precondition (and
         (in s58)
     )
     :effect (and
         (not (in s58))
         (in s58)
         (increase (total-cost) 30)
     )
    )

    (:action transition58-5
     :parameters ()
     :precondition (and
         (in s58)
     )
     :effect (and
         (not (in s58))
         (in s58)
         (increase (total-cost) 30)
     )
    )

    (:action transition59-0
     :parameters ()
     :precondition (and
         (in s59)
     )
     :effect (and
         (not (in s59))
         (in s159)
         (increase (total-cost) 21)
     )
    )

    (:action transition59-1
     :parameters ()
     :precondition (and
         (in s59)
     )
     :effect (and
         (not (in s59))
         (in s59)
         (increase (total-cost) 21)
     )
    )

    (:action transition59-2
     :parameters ()
     :precondition (and
         (in s59)
     )
     :effect (and
         (not (in s59))
         (in s79)
         (increase (total-cost) 21)
     )
    )

    (:action transition59-3
     :parameters ()
     :precondition (and
         (in s59)
     )
     :effect (and
         (not (in s59))
         (in s59)
         (increase (total-cost) 21)
     )
    )

    (:action transition59-4
     :parameters ()
     :precondition (and
         (in s59)
     )
     :effect (and
         (not (in s59))
         (in s59)
         (increase (total-cost) 30)
     )
    )

    (:action transition59-5
     :parameters ()
     :precondition (and
         (in s59)
     )
     :effect (and
         (not (in s59))
         (in s59)
         (increase (total-cost) 30)
     )
    )

    (:action transition60-0
     :parameters ()
     :precondition (and
         (in s60)
     )
     :effect (and
         (not (in s60))
         (in s160)
         (increase (total-cost) 21)
     )
    )

    (:action transition60-1
     :parameters ()
     :precondition (and
         (in s60)
     )
     :effect (and
         (not (in s60))
         (in s60)
         (increase (total-cost) 21)
     )
    )

    (:action transition60-2
     :parameters ()
     :precondition (and
         (in s60)
     )
     :effect (and
         (not (in s60))
         (in s80)
         (increase (total-cost) 21)
     )
    )

    (:action transition60-3
     :parameters ()
     :precondition (and
         (in s60)
     )
     :effect (and
         (not (in s60))
         (in s40)
         (increase (total-cost) 21)
     )
    )

    (:action transition60-4
     :parameters ()
     :precondition (and
         (in s60)
     )
     :effect (and
         (not (in s60))
         (in s60)
         (increase (total-cost) 30)
     )
    )

    (:action transition60-5
     :parameters ()
     :precondition (and
         (in s60)
     )
     :effect (and
         (not (in s60))
         (in s60)
         (increase (total-cost) 30)
     )
    )

    (:action transition61-0
     :parameters ()
     :precondition (and
         (in s61)
     )
     :effect (and
         (not (in s61))
         (in s161)
         (increase (total-cost) 21)
     )
    )

    (:action transition61-1
     :parameters ()
     :precondition (and
         (in s61)
     )
     :effect (and
         (not (in s61))
         (in s61)
         (increase (total-cost) 21)
     )
    )

    (:action transition61-2
     :parameters ()
     :precondition (and
         (in s61)
     )
     :effect (and
         (not (in s61))
         (in s81)
         (increase (total-cost) 21)
     )
    )

    (:action transition61-3
     :parameters ()
     :precondition (and
         (in s61)
     )
     :effect (and
         (not (in s61))
         (in s41)
         (increase (total-cost) 21)
     )
    )

    (:action transition61-4
     :parameters ()
     :precondition (and
         (in s61)
     )
     :effect (and
         (not (in s61))
         (in s61)
         (increase (total-cost) 30)
     )
    )

    (:action transition61-5
     :parameters ()
     :precondition (and
         (in s61)
     )
     :effect (and
         (not (in s61))
         (in s61)
         (increase (total-cost) 30)
     )
    )

    (:action transition62-0
     :parameters ()
     :precondition (and
         (in s62)
     )
     :effect (and
         (not (in s62))
         (in s162)
         (increase (total-cost) 21)
     )
    )

    (:action transition62-1
     :parameters ()
     :precondition (and
         (in s62)
     )
     :effect (and
         (not (in s62))
         (in s62)
         (increase (total-cost) 21)
     )
    )

    (:action transition62-2
     :parameters ()
     :precondition (and
         (in s62)
     )
     :effect (and
         (not (in s62))
         (in s82)
         (increase (total-cost) 21)
     )
    )

    (:action transition62-3
     :parameters ()
     :precondition (and
         (in s62)
     )
     :effect (and
         (not (in s62))
         (in s42)
         (increase (total-cost) 21)
     )
    )

    (:action transition62-4
     :parameters ()
     :precondition (and
         (in s62)
     )
     :effect (and
         (not (in s62))
         (in s62)
         (increase (total-cost) 30)
     )
    )

    (:action transition62-5
     :parameters ()
     :precondition (and
         (in s62)
     )
     :effect (and
         (not (in s62))
         (in s62)
         (increase (total-cost) 30)
     )
    )

    (:action transition63-0
     :parameters ()
     :precondition (and
         (in s63)
     )
     :effect (and
         (not (in s63))
         (in s163)
         (increase (total-cost) 21)
     )
    )

    (:action transition63-1
     :parameters ()
     :precondition (and
         (in s63)
     )
     :effect (and
         (not (in s63))
         (in s63)
         (increase (total-cost) 21)
     )
    )

    (:action transition63-2
     :parameters ()
     :precondition (and
         (in s63)
     )
     :effect (and
         (not (in s63))
         (in s83)
         (increase (total-cost) 21)
     )
    )

    (:action transition63-3
     :parameters ()
     :precondition (and
         (in s63)
     )
     :effect (and
         (not (in s63))
         (in s43)
         (increase (total-cost) 21)
     )
    )

    (:action transition63-4
     :parameters ()
     :precondition (and
         (in s63)
     )
     :effect (and
         (not (in s63))
         (in s63)
         (increase (total-cost) 30)
     )
    )

    (:action transition63-5
     :parameters ()
     :precondition (and
         (in s63)
     )
     :effect (and
         (not (in s63))
         (in s63)
         (increase (total-cost) 30)
     )
    )

    (:action transition64-0
     :parameters ()
     :precondition (and
         (in s64)
     )
     :effect (and
         (not (in s64))
         (in s164)
         (increase (total-cost) 21)
     )
    )

    (:action transition64-1
     :parameters ()
     :precondition (and
         (in s64)
     )
     :effect (and
         (not (in s64))
         (in s64)
         (increase (total-cost) 21)
     )
    )

    (:action transition64-2
     :parameters ()
     :precondition (and
         (in s64)
     )
     :effect (and
         (not (in s64))
         (in s84)
         (increase (total-cost) 21)
     )
    )

    (:action transition64-3
     :parameters ()
     :precondition (and
         (in s64)
     )
     :effect (and
         (not (in s64))
         (in s44)
         (increase (total-cost) 21)
     )
    )

    (:action transition64-4
     :parameters ()
     :precondition (and
         (in s64)
     )
     :effect (and
         (not (in s64))
         (in s64)
         (increase (total-cost) 30)
     )
    )

    (:action transition64-5
     :parameters ()
     :precondition (and
         (in s64)
     )
     :effect (and
         (not (in s64))
         (in s64)
         (increase (total-cost) 30)
     )
    )

    (:action transition65-0
     :parameters ()
     :precondition (and
         (in s65)
     )
     :effect (and
         (not (in s65))
         (in s165)
         (increase (total-cost) 21)
     )
    )

    (:action transition65-1
     :parameters ()
     :precondition (and
         (in s65)
     )
     :effect (and
         (not (in s65))
         (in s65)
         (increase (total-cost) 21)
     )
    )

    (:action transition65-2
     :parameters ()
     :precondition (and
         (in s65)
     )
     :effect (and
         (not (in s65))
         (in s85)
         (increase (total-cost) 21)
     )
    )

    (:action transition65-3
     :parameters ()
     :precondition (and
         (in s65)
     )
     :effect (and
         (not (in s65))
         (in s45)
         (increase (total-cost) 21)
     )
    )

    (:action transition65-4
     :parameters ()
     :precondition (and
         (in s65)
     )
     :effect (and
         (not (in s65))
         (in s65)
         (increase (total-cost) 30)
     )
    )

    (:action transition65-5
     :parameters ()
     :precondition (and
         (in s65)
     )
     :effect (and
         (not (in s65))
         (in s65)
         (increase (total-cost) 30)
     )
    )

    (:action transition66-0
     :parameters ()
     :precondition (and
         (in s66)
     )
     :effect (and
         (not (in s66))
         (in s166)
         (increase (total-cost) 21)
     )
    )

    (:action transition66-1
     :parameters ()
     :precondition (and
         (in s66)
     )
     :effect (and
         (not (in s66))
         (in s66)
         (increase (total-cost) 21)
     )
    )

    (:action transition66-2
     :parameters ()
     :precondition (and
         (in s66)
     )
     :effect (and
         (not (in s66))
         (in s86)
         (increase (total-cost) 21)
     )
    )

    (:action transition66-3
     :parameters ()
     :precondition (and
         (in s66)
     )
     :effect (and
         (not (in s66))
         (in s46)
         (increase (total-cost) 21)
     )
    )

    (:action transition66-4
     :parameters ()
     :precondition (and
         (in s66)
     )
     :effect (and
         (not (in s66))
         (in s66)
         (increase (total-cost) 30)
     )
    )

    (:action transition66-5
     :parameters ()
     :precondition (and
         (in s66)
     )
     :effect (and
         (not (in s66))
         (in s66)
         (increase (total-cost) 30)
     )
    )

    (:action transition67-0
     :parameters ()
     :precondition (and
         (in s67)
     )
     :effect (and
         (not (in s67))
         (in s167)
         (increase (total-cost) 21)
     )
    )

    (:action transition67-1
     :parameters ()
     :precondition (and
         (in s67)
     )
     :effect (and
         (not (in s67))
         (in s67)
         (increase (total-cost) 21)
     )
    )

    (:action transition67-2
     :parameters ()
     :precondition (and
         (in s67)
     )
     :effect (and
         (not (in s67))
         (in s87)
         (increase (total-cost) 21)
     )
    )

    (:action transition67-3
     :parameters ()
     :precondition (and
         (in s67)
     )
     :effect (and
         (not (in s67))
         (in s47)
         (increase (total-cost) 21)
     )
    )

    (:action transition67-4
     :parameters ()
     :precondition (and
         (in s67)
     )
     :effect (and
         (not (in s67))
         (in s67)
         (increase (total-cost) 30)
     )
    )

    (:action transition67-5
     :parameters ()
     :precondition (and
         (in s67)
     )
     :effect (and
         (not (in s67))
         (in s67)
         (increase (total-cost) 30)
     )
    )

    (:action transition68-0
     :parameters ()
     :precondition (and
         (in s68)
     )
     :effect (and
         (not (in s68))
         (in s168)
         (increase (total-cost) 21)
     )
    )

    (:action transition68-1
     :parameters ()
     :precondition (and
         (in s68)
     )
     :effect (and
         (not (in s68))
         (in s68)
         (increase (total-cost) 21)
     )
    )

    (:action transition68-2
     :parameters ()
     :precondition (and
         (in s68)
     )
     :effect (and
         (not (in s68))
         (in s88)
         (increase (total-cost) 21)
     )
    )

    (:action transition68-3
     :parameters ()
     :precondition (and
         (in s68)
     )
     :effect (and
         (not (in s68))
         (in s48)
         (increase (total-cost) 21)
     )
    )

    (:action transition68-4
     :parameters ()
     :precondition (and
         (in s68)
     )
     :effect (and
         (not (in s68))
         (in s68)
         (increase (total-cost) 30)
     )
    )

    (:action transition68-5
     :parameters ()
     :precondition (and
         (in s68)
     )
     :effect (and
         (not (in s68))
         (in s68)
         (increase (total-cost) 30)
     )
    )

    (:action transition69-0
     :parameters ()
     :precondition (and
         (in s69)
     )
     :effect (and
         (not (in s69))
         (in s169)
         (increase (total-cost) 21)
     )
    )

    (:action transition69-1
     :parameters ()
     :precondition (and
         (in s69)
     )
     :effect (and
         (not (in s69))
         (in s69)
         (increase (total-cost) 21)
     )
    )

    (:action transition69-2
     :parameters ()
     :precondition (and
         (in s69)
     )
     :effect (and
         (not (in s69))
         (in s89)
         (increase (total-cost) 21)
     )
    )

    (:action transition69-3
     :parameters ()
     :precondition (and
         (in s69)
     )
     :effect (and
         (not (in s69))
         (in s49)
         (increase (total-cost) 21)
     )
    )

    (:action transition69-4
     :parameters ()
     :precondition (and
         (in s69)
     )
     :effect (and
         (not (in s69))
         (in s69)
         (increase (total-cost) 30)
     )
    )

    (:action transition69-5
     :parameters ()
     :precondition (and
         (in s69)
     )
     :effect (and
         (not (in s69))
         (in s69)
         (increase (total-cost) 30)
     )
    )

    (:action transition70-0
     :parameters ()
     :precondition (and
         (in s70)
     )
     :effect (and
         (not (in s70))
         (in s170)
         (increase (total-cost) 21)
     )
    )

    (:action transition70-1
     :parameters ()
     :precondition (and
         (in s70)
     )
     :effect (and
         (not (in s70))
         (in s70)
         (increase (total-cost) 21)
     )
    )

    (:action transition70-2
     :parameters ()
     :precondition (and
         (in s70)
     )
     :effect (and
         (not (in s70))
         (in s90)
         (increase (total-cost) 21)
     )
    )

    (:action transition70-3
     :parameters ()
     :precondition (and
         (in s70)
     )
     :effect (and
         (not (in s70))
         (in s50)
         (increase (total-cost) 21)
     )
    )

    (:action transition70-4
     :parameters ()
     :precondition (and
         (in s70)
     )
     :effect (and
         (not (in s70))
         (in s70)
         (increase (total-cost) 30)
     )
    )

    (:action transition70-5
     :parameters ()
     :precondition (and
         (in s70)
     )
     :effect (and
         (not (in s70))
         (in s70)
         (increase (total-cost) 30)
     )
    )

    (:action transition71-0
     :parameters ()
     :precondition (and
         (in s71)
     )
     :effect (and
         (not (in s71))
         (in s171)
         (increase (total-cost) 21)
     )
    )

    (:action transition71-1
     :parameters ()
     :precondition (and
         (in s71)
     )
     :effect (and
         (not (in s71))
         (in s71)
         (increase (total-cost) 21)
     )
    )

    (:action transition71-2
     :parameters ()
     :precondition (and
         (in s71)
     )
     :effect (and
         (not (in s71))
         (in s91)
         (increase (total-cost) 21)
     )
    )

    (:action transition71-3
     :parameters ()
     :precondition (and
         (in s71)
     )
     :effect (and
         (not (in s71))
         (in s51)
         (increase (total-cost) 21)
     )
    )

    (:action transition71-4
     :parameters ()
     :precondition (and
         (in s71)
     )
     :effect (and
         (not (in s71))
         (in s71)
         (increase (total-cost) 30)
     )
    )

    (:action transition71-5
     :parameters ()
     :precondition (and
         (in s71)
     )
     :effect (and
         (not (in s71))
         (in s71)
         (increase (total-cost) 30)
     )
    )

    (:action transition72-0
     :parameters ()
     :precondition (and
         (in s72)
     )
     :effect (and
         (not (in s72))
         (in s172)
         (increase (total-cost) 21)
     )
    )

    (:action transition72-1
     :parameters ()
     :precondition (and
         (in s72)
     )
     :effect (and
         (not (in s72))
         (in s72)
         (increase (total-cost) 21)
     )
    )

    (:action transition72-2
     :parameters ()
     :precondition (and
         (in s72)
     )
     :effect (and
         (not (in s72))
         (in s92)
         (increase (total-cost) 21)
     )
    )

    (:action transition72-3
     :parameters ()
     :precondition (and
         (in s72)
     )
     :effect (and
         (not (in s72))
         (in s52)
         (increase (total-cost) 21)
     )
    )

    (:action transition72-4
     :parameters ()
     :precondition (and
         (in s72)
     )
     :effect (and
         (not (in s72))
         (in s72)
         (increase (total-cost) 30)
     )
    )

    (:action transition72-5
     :parameters ()
     :precondition (and
         (in s72)
     )
     :effect (and
         (not (in s72))
         (in s72)
         (increase (total-cost) 30)
     )
    )

    (:action transition73-0
     :parameters ()
     :precondition (and
         (in s73)
     )
     :effect (and
         (not (in s73))
         (in s173)
         (increase (total-cost) 21)
     )
    )

    (:action transition73-1
     :parameters ()
     :precondition (and
         (in s73)
     )
     :effect (and
         (not (in s73))
         (in s73)
         (increase (total-cost) 21)
     )
    )

    (:action transition73-2
     :parameters ()
     :precondition (and
         (in s73)
     )
     :effect (and
         (not (in s73))
         (in s93)
         (increase (total-cost) 21)
     )
    )

    (:action transition73-3
     :parameters ()
     :precondition (and
         (in s73)
     )
     :effect (and
         (not (in s73))
         (in s53)
         (increase (total-cost) 21)
     )
    )

    (:action transition73-4
     :parameters ()
     :precondition (and
         (in s73)
     )
     :effect (and
         (not (in s73))
         (in s73)
         (increase (total-cost) 30)
     )
    )

    (:action transition73-5
     :parameters ()
     :precondition (and
         (in s73)
     )
     :effect (and
         (not (in s73))
         (in s73)
         (increase (total-cost) 30)
     )
    )

    (:action transition74-0
     :parameters ()
     :precondition (and
         (in s74)
     )
     :effect (and
         (not (in s74))
         (in s174)
         (increase (total-cost) 21)
     )
    )

    (:action transition74-1
     :parameters ()
     :precondition (and
         (in s74)
     )
     :effect (and
         (not (in s74))
         (in s74)
         (increase (total-cost) 21)
     )
    )

    (:action transition74-2
     :parameters ()
     :precondition (and
         (in s74)
     )
     :effect (and
         (not (in s74))
         (in s94)
         (increase (total-cost) 21)
     )
    )

    (:action transition74-3
     :parameters ()
     :precondition (and
         (in s74)
     )
     :effect (and
         (not (in s74))
         (in s54)
         (increase (total-cost) 21)
     )
    )

    (:action transition74-4
     :parameters ()
     :precondition (and
         (in s74)
     )
     :effect (and
         (not (in s74))
         (in s74)
         (increase (total-cost) 30)
     )
    )

    (:action transition74-5
     :parameters ()
     :precondition (and
         (in s74)
     )
     :effect (and
         (not (in s74))
         (in s74)
         (increase (total-cost) 30)
     )
    )

    (:action transition75-0
     :parameters ()
     :precondition (and
         (in s75)
     )
     :effect (and
         (not (in s75))
         (in s175)
         (increase (total-cost) 21)
     )
    )

    (:action transition75-1
     :parameters ()
     :precondition (and
         (in s75)
     )
     :effect (and
         (not (in s75))
         (in s75)
         (increase (total-cost) 21)
     )
    )

    (:action transition75-2
     :parameters ()
     :precondition (and
         (in s75)
     )
     :effect (and
         (not (in s75))
         (in s95)
         (increase (total-cost) 21)
     )
    )

    (:action transition75-3
     :parameters ()
     :precondition (and
         (in s75)
     )
     :effect (and
         (not (in s75))
         (in s55)
         (increase (total-cost) 21)
     )
    )

    (:action transition75-4
     :parameters ()
     :precondition (and
         (in s75)
     )
     :effect (and
         (not (in s75))
         (in s75)
         (increase (total-cost) 30)
     )
    )

    (:action transition75-5
     :parameters ()
     :precondition (and
         (in s75)
     )
     :effect (and
         (not (in s75))
         (in s75)
         (increase (total-cost) 30)
     )
    )

    (:action transition76-0
     :parameters ()
     :precondition (and
         (in s76)
     )
     :effect (and
         (not (in s76))
         (in s176)
         (increase (total-cost) 21)
     )
    )

    (:action transition76-1
     :parameters ()
     :precondition (and
         (in s76)
     )
     :effect (and
         (not (in s76))
         (in s76)
         (increase (total-cost) 21)
     )
    )

    (:action transition76-2
     :parameters ()
     :precondition (and
         (in s76)
     )
     :effect (and
         (not (in s76))
         (in s96)
         (increase (total-cost) 21)
     )
    )

    (:action transition76-3
     :parameters ()
     :precondition (and
         (in s76)
     )
     :effect (and
         (not (in s76))
         (in s56)
         (increase (total-cost) 21)
     )
    )

    (:action transition76-4
     :parameters ()
     :precondition (and
         (in s76)
     )
     :effect (and
         (not (in s76))
         (in s76)
         (increase (total-cost) 30)
     )
    )

    (:action transition76-5
     :parameters ()
     :precondition (and
         (in s76)
     )
     :effect (and
         (not (in s76))
         (in s76)
         (increase (total-cost) 30)
     )
    )

    (:action transition77-0
     :parameters ()
     :precondition (and
         (in s77)
     )
     :effect (and
         (not (in s77))
         (in s177)
         (increase (total-cost) 21)
     )
    )

    (:action transition77-1
     :parameters ()
     :precondition (and
         (in s77)
     )
     :effect (and
         (not (in s77))
         (in s77)
         (increase (total-cost) 21)
     )
    )

    (:action transition77-2
     :parameters ()
     :precondition (and
         (in s77)
     )
     :effect (and
         (not (in s77))
         (in s97)
         (increase (total-cost) 21)
     )
    )

    (:action transition77-3
     :parameters ()
     :precondition (and
         (in s77)
     )
     :effect (and
         (not (in s77))
         (in s57)
         (increase (total-cost) 21)
     )
    )

    (:action transition77-4
     :parameters ()
     :precondition (and
         (in s77)
     )
     :effect (and
         (not (in s77))
         (in s77)
         (increase (total-cost) 30)
     )
    )

    (:action transition77-5
     :parameters ()
     :precondition (and
         (in s77)
     )
     :effect (and
         (not (in s77))
         (in s77)
         (increase (total-cost) 30)
     )
    )

    (:action transition78-0
     :parameters ()
     :precondition (and
         (in s78)
     )
     :effect (and
         (not (in s78))
         (in s178)
         (increase (total-cost) 21)
     )
    )

    (:action transition78-1
     :parameters ()
     :precondition (and
         (in s78)
     )
     :effect (and
         (not (in s78))
         (in s78)
         (increase (total-cost) 21)
     )
    )

    (:action transition78-2
     :parameters ()
     :precondition (and
         (in s78)
     )
     :effect (and
         (not (in s78))
         (in s98)
         (increase (total-cost) 21)
     )
    )

    (:action transition78-3
     :parameters ()
     :precondition (and
         (in s78)
     )
     :effect (and
         (not (in s78))
         (in s58)
         (increase (total-cost) 21)
     )
    )

    (:action transition78-4
     :parameters ()
     :precondition (and
         (in s78)
     )
     :effect (and
         (not (in s78))
         (in s78)
         (increase (total-cost) 30)
     )
    )

    (:action transition78-5
     :parameters ()
     :precondition (and
         (in s78)
     )
     :effect (and
         (not (in s78))
         (in s78)
         (increase (total-cost) 30)
     )
    )

    (:action transition79-0
     :parameters ()
     :precondition (and
         (in s79)
     )
     :effect (and
         (not (in s79))
         (in s179)
         (increase (total-cost) 21)
     )
    )

    (:action transition79-1
     :parameters ()
     :precondition (and
         (in s79)
     )
     :effect (and
         (not (in s79))
         (in s79)
         (increase (total-cost) 21)
     )
    )

    (:action transition79-2
     :parameters ()
     :precondition (and
         (in s79)
     )
     :effect (and
         (not (in s79))
         (in s99)
         (increase (total-cost) 21)
     )
    )

    (:action transition79-3
     :parameters ()
     :precondition (and
         (in s79)
     )
     :effect (and
         (not (in s79))
         (in s59)
         (increase (total-cost) 21)
     )
    )

    (:action transition79-4
     :parameters ()
     :precondition (and
         (in s79)
     )
     :effect (and
         (not (in s79))
         (in s79)
         (increase (total-cost) 30)
     )
    )

    (:action transition79-5
     :parameters ()
     :precondition (and
         (in s79)
     )
     :effect (and
         (not (in s79))
         (in s79)
         (increase (total-cost) 30)
     )
    )

    (:action transition80-0
     :parameters ()
     :precondition (and
         (in s80)
     )
     :effect (and
         (not (in s80))
         (in s180)
         (increase (total-cost) 21)
     )
    )

    (:action transition80-1
     :parameters ()
     :precondition (and
         (in s80)
     )
     :effect (and
         (not (in s80))
         (in s80)
         (increase (total-cost) 21)
     )
    )

    (:action transition80-2
     :parameters ()
     :precondition (and
         (in s80)
     )
     :effect (and
         (not (in s80))
         (in s80)
         (increase (total-cost) 21)
     )
    )

    (:action transition80-3
     :parameters ()
     :precondition (and
         (in s80)
     )
     :effect (and
         (not (in s80))
         (in s60)
         (increase (total-cost) 21)
     )
    )

    (:action transition80-4
     :parameters ()
     :precondition (and
         (in s80)
     )
     :effect (and
         (not (in s80))
         (in s80)
         (increase (total-cost) 30)
     )
    )

    (:action transition80-5
     :parameters ()
     :precondition (and
         (in s80)
     )
     :effect (and
         (not (in s80))
         (in s80)
         (increase (total-cost) 30)
     )
    )

    (:action transition81-0
     :parameters ()
     :precondition (and
         (in s81)
     )
     :effect (and
         (not (in s81))
         (in s181)
         (increase (total-cost) 21)
     )
    )

    (:action transition81-1
     :parameters ()
     :precondition (and
         (in s81)
     )
     :effect (and
         (not (in s81))
         (in s81)
         (increase (total-cost) 21)
     )
    )

    (:action transition81-2
     :parameters ()
     :precondition (and
         (in s81)
     )
     :effect (and
         (not (in s81))
         (in s81)
         (increase (total-cost) 21)
     )
    )

    (:action transition81-3
     :parameters ()
     :precondition (and
         (in s81)
     )
     :effect (and
         (not (in s81))
         (in s61)
         (increase (total-cost) 21)
     )
    )

    (:action transition81-4
     :parameters ()
     :precondition (and
         (in s81)
     )
     :effect (and
         (not (in s81))
         (in s81)
         (increase (total-cost) 30)
     )
    )

    (:action transition81-5
     :parameters ()
     :precondition (and
         (in s81)
     )
     :effect (and
         (not (in s81))
         (in s81)
         (increase (total-cost) 30)
     )
    )

    (:action transition82-0
     :parameters ()
     :precondition (and
         (in s82)
     )
     :effect (and
         (not (in s82))
         (in s182)
         (increase (total-cost) 21)
     )
    )

    (:action transition82-1
     :parameters ()
     :precondition (and
         (in s82)
     )
     :effect (and
         (not (in s82))
         (in s82)
         (increase (total-cost) 21)
     )
    )

    (:action transition82-2
     :parameters ()
     :precondition (and
         (in s82)
     )
     :effect (and
         (not (in s82))
         (in s82)
         (increase (total-cost) 21)
     )
    )

    (:action transition82-3
     :parameters ()
     :precondition (and
         (in s82)
     )
     :effect (and
         (not (in s82))
         (in s62)
         (increase (total-cost) 21)
     )
    )

    (:action transition82-4
     :parameters ()
     :precondition (and
         (in s82)
     )
     :effect (and
         (not (in s82))
         (in s82)
         (increase (total-cost) 30)
     )
    )

    (:action transition82-5
     :parameters ()
     :precondition (and
         (in s82)
     )
     :effect (and
         (not (in s82))
         (in s82)
         (increase (total-cost) 30)
     )
    )

    (:action transition83-0
     :parameters ()
     :precondition (and
         (in s83)
     )
     :effect (and
         (not (in s83))
         (in s183)
         (increase (total-cost) 21)
     )
    )

    (:action transition83-1
     :parameters ()
     :precondition (and
         (in s83)
     )
     :effect (and
         (not (in s83))
         (in s83)
         (increase (total-cost) 21)
     )
    )

    (:action transition83-2
     :parameters ()
     :precondition (and
         (in s83)
     )
     :effect (and
         (not (in s83))
         (in s83)
         (increase (total-cost) 21)
     )
    )

    (:action transition83-3
     :parameters ()
     :precondition (and
         (in s83)
     )
     :effect (and
         (not (in s83))
         (in s63)
         (increase (total-cost) 21)
     )
    )

    (:action transition83-4
     :parameters ()
     :precondition (and
         (in s83)
     )
     :effect (and
         (not (in s83))
         (in s83)
         (increase (total-cost) 30)
     )
    )

    (:action transition83-5
     :parameters ()
     :precondition (and
         (in s83)
     )
     :effect (and
         (not (in s83))
         (in s83)
         (increase (total-cost) 30)
     )
    )

    (:action transition84-0
     :parameters ()
     :precondition (and
         (in s84)
     )
     :effect (and
         (not (in s84))
         (in s184)
         (increase (total-cost) 21)
     )
    )

    (:action transition84-1
     :parameters ()
     :precondition (and
         (in s84)
     )
     :effect (and
         (not (in s84))
         (in s84)
         (increase (total-cost) 21)
     )
    )

    (:action transition84-2
     :parameters ()
     :precondition (and
         (in s84)
     )
     :effect (and
         (not (in s84))
         (in s84)
         (increase (total-cost) 21)
     )
    )

    (:action transition84-3
     :parameters ()
     :precondition (and
         (in s84)
     )
     :effect (and
         (not (in s84))
         (in s64)
         (increase (total-cost) 21)
     )
    )

    (:action transition84-4
     :parameters ()
     :precondition (and
         (in s84)
     )
     :effect (and
         (not (in s84))
         (in s96)
         (increase (total-cost) 21)
     )
    )

    (:action transition84-5
     :parameters ()
     :precondition (and
         (in s84)
     )
     :effect (and
         (not (in s84))
         (in s84)
         (increase (total-cost) 30)
     )
    )

    (:action transition85-0
     :parameters ()
     :precondition (and
         (in s85)
     )
     :effect (and
         (not (in s85))
         (in s185)
         (increase (total-cost) 21)
     )
    )

    (:action transition85-1
     :parameters ()
     :precondition (and
         (in s85)
     )
     :effect (and
         (not (in s85))
         (in s85)
         (increase (total-cost) 21)
     )
    )

    (:action transition85-2
     :parameters ()
     :precondition (and
         (in s85)
     )
     :effect (and
         (not (in s85))
         (in s85)
         (increase (total-cost) 21)
     )
    )

    (:action transition85-3
     :parameters ()
     :precondition (and
         (in s85)
     )
     :effect (and
         (not (in s85))
         (in s65)
         (increase (total-cost) 21)
     )
    )

    (:action transition85-4
     :parameters ()
     :precondition (and
         (in s85)
     )
     :effect (and
         (not (in s85))
         (in s97)
         (increase (total-cost) 21)
     )
    )

    (:action transition85-5
     :parameters ()
     :precondition (and
         (in s85)
     )
     :effect (and
         (not (in s85))
         (in s85)
         (increase (total-cost) 30)
     )
    )

    (:action transition86-0
     :parameters ()
     :precondition (and
         (in s86)
     )
     :effect (and
         (not (in s86))
         (in s186)
         (increase (total-cost) 21)
     )
    )

    (:action transition86-1
     :parameters ()
     :precondition (and
         (in s86)
     )
     :effect (and
         (not (in s86))
         (in s86)
         (increase (total-cost) 21)
     )
    )

    (:action transition86-2
     :parameters ()
     :precondition (and
         (in s86)
     )
     :effect (and
         (not (in s86))
         (in s86)
         (increase (total-cost) 21)
     )
    )

    (:action transition86-3
     :parameters ()
     :precondition (and
         (in s86)
     )
     :effect (and
         (not (in s86))
         (in s66)
         (increase (total-cost) 21)
     )
    )

    (:action transition86-4
     :parameters ()
     :precondition (and
         (in s86)
     )
     :effect (and
         (not (in s86))
         (in s98)
         (increase (total-cost) 21)
     )
    )

    (:action transition86-5
     :parameters ()
     :precondition (and
         (in s86)
     )
     :effect (and
         (not (in s86))
         (in s86)
         (increase (total-cost) 30)
     )
    )

    (:action transition87-0
     :parameters ()
     :precondition (and
         (in s87)
     )
     :effect (and
         (not (in s87))
         (in s187)
         (increase (total-cost) 21)
     )
    )

    (:action transition87-1
     :parameters ()
     :precondition (and
         (in s87)
     )
     :effect (and
         (not (in s87))
         (in s87)
         (increase (total-cost) 21)
     )
    )

    (:action transition87-2
     :parameters ()
     :precondition (and
         (in s87)
     )
     :effect (and
         (not (in s87))
         (in s87)
         (increase (total-cost) 21)
     )
    )

    (:action transition87-3
     :parameters ()
     :precondition (and
         (in s87)
     )
     :effect (and
         (not (in s87))
         (in s67)
         (increase (total-cost) 21)
     )
    )

    (:action transition87-4
     :parameters ()
     :precondition (and
         (in s87)
     )
     :effect (and
         (not (in s87))
         (in s99)
         (increase (total-cost) 21)
     )
    )

    (:action transition87-5
     :parameters ()
     :precondition (and
         (in s87)
     )
     :effect (and
         (not (in s87))
         (in s87)
         (increase (total-cost) 30)
     )
    )

    (:action transition88-0
     :parameters ()
     :precondition (and
         (in s88)
     )
     :effect (and
         (not (in s88))
         (in s188)
         (increase (total-cost) 21)
     )
    )

    (:action transition88-1
     :parameters ()
     :precondition (and
         (in s88)
     )
     :effect (and
         (not (in s88))
         (in s88)
         (increase (total-cost) 21)
     )
    )

    (:action transition88-2
     :parameters ()
     :precondition (and
         (in s88)
     )
     :effect (and
         (not (in s88))
         (in s88)
         (increase (total-cost) 21)
     )
    )

    (:action transition88-3
     :parameters ()
     :precondition (and
         (in s88)
     )
     :effect (and
         (not (in s88))
         (in s68)
         (increase (total-cost) 21)
     )
    )

    (:action transition88-4
     :parameters ()
     :precondition (and
         (in s88)
     )
     :effect (and
         (not (in s88))
         (in s88)
         (increase (total-cost) 30)
     )
    )

    (:action transition88-5
     :parameters ()
     :precondition (and
         (in s88)
     )
     :effect (and
         (not (in s88))
         (in s88)
         (increase (total-cost) 30)
     )
    )

    (:action transition89-0
     :parameters ()
     :precondition (and
         (in s89)
     )
     :effect (and
         (not (in s89))
         (in s189)
         (increase (total-cost) 21)
     )
    )

    (:action transition89-1
     :parameters ()
     :precondition (and
         (in s89)
     )
     :effect (and
         (not (in s89))
         (in s89)
         (increase (total-cost) 21)
     )
    )

    (:action transition89-2
     :parameters ()
     :precondition (and
         (in s89)
     )
     :effect (and
         (not (in s89))
         (in s89)
         (increase (total-cost) 21)
     )
    )

    (:action transition89-3
     :parameters ()
     :precondition (and
         (in s89)
     )
     :effect (and
         (not (in s89))
         (in s69)
         (increase (total-cost) 21)
     )
    )

    (:action transition89-4
     :parameters ()
     :precondition (and
         (in s89)
     )
     :effect (and
         (not (in s89))
         (in s89)
         (increase (total-cost) 30)
     )
    )

    (:action transition89-5
     :parameters ()
     :precondition (and
         (in s89)
     )
     :effect (and
         (not (in s89))
         (in s89)
         (increase (total-cost) 30)
     )
    )

    (:action transition90-0
     :parameters ()
     :precondition (and
         (in s90)
     )
     :effect (and
         (not (in s90))
         (in s190)
         (increase (total-cost) 21)
     )
    )

    (:action transition90-1
     :parameters ()
     :precondition (and
         (in s90)
     )
     :effect (and
         (not (in s90))
         (in s90)
         (increase (total-cost) 21)
     )
    )

    (:action transition90-2
     :parameters ()
     :precondition (and
         (in s90)
     )
     :effect (and
         (not (in s90))
         (in s90)
         (increase (total-cost) 21)
     )
    )

    (:action transition90-3
     :parameters ()
     :precondition (and
         (in s90)
     )
     :effect (and
         (not (in s90))
         (in s70)
         (increase (total-cost) 21)
     )
    )

    (:action transition90-4
     :parameters ()
     :precondition (and
         (in s90)
     )
     :effect (and
         (not (in s90))
         (in s90)
         (increase (total-cost) 30)
     )
    )

    (:action transition90-5
     :parameters ()
     :precondition (and
         (in s90)
     )
     :effect (and
         (not (in s90))
         (in s90)
         (increase (total-cost) 30)
     )
    )

    (:action transition91-0
     :parameters ()
     :precondition (and
         (in s91)
     )
     :effect (and
         (not (in s91))
         (in s191)
         (increase (total-cost) 21)
     )
    )

    (:action transition91-1
     :parameters ()
     :precondition (and
         (in s91)
     )
     :effect (and
         (not (in s91))
         (in s91)
         (increase (total-cost) 21)
     )
    )

    (:action transition91-2
     :parameters ()
     :precondition (and
         (in s91)
     )
     :effect (and
         (not (in s91))
         (in s91)
         (increase (total-cost) 21)
     )
    )

    (:action transition91-3
     :parameters ()
     :precondition (and
         (in s91)
     )
     :effect (and
         (not (in s91))
         (in s71)
         (increase (total-cost) 21)
     )
    )

    (:action transition91-4
     :parameters ()
     :precondition (and
         (in s91)
     )
     :effect (and
         (not (in s91))
         (in s91)
         (increase (total-cost) 30)
     )
    )

    (:action transition91-5
     :parameters ()
     :precondition (and
         (in s91)
     )
     :effect (and
         (not (in s91))
         (in s91)
         (increase (total-cost) 30)
     )
    )

    (:action transition92-0
     :parameters ()
     :precondition (and
         (in s92)
     )
     :effect (and
         (not (in s92))
         (in s192)
         (increase (total-cost) 21)
     )
    )

    (:action transition92-1
     :parameters ()
     :precondition (and
         (in s92)
     )
     :effect (and
         (not (in s92))
         (in s92)
         (increase (total-cost) 21)
     )
    )

    (:action transition92-2
     :parameters ()
     :precondition (and
         (in s92)
     )
     :effect (and
         (not (in s92))
         (in s92)
         (increase (total-cost) 21)
     )
    )

    (:action transition92-3
     :parameters ()
     :precondition (and
         (in s92)
     )
     :effect (and
         (not (in s92))
         (in s72)
         (increase (total-cost) 21)
     )
    )

    (:action transition92-4
     :parameters ()
     :precondition (and
         (in s92)
     )
     :effect (and
         (not (in s92))
         (in s92)
         (increase (total-cost) 30)
     )
    )

    (:action transition92-5
     :parameters ()
     :precondition (and
         (in s92)
     )
     :effect (and
         (not (in s92))
         (in s92)
         (increase (total-cost) 30)
     )
    )

    (:action transition93-0
     :parameters ()
     :precondition (and
         (in s93)
     )
     :effect (and
         (not (in s93))
         (in s193)
         (increase (total-cost) 21)
     )
    )

    (:action transition93-1
     :parameters ()
     :precondition (and
         (in s93)
     )
     :effect (and
         (not (in s93))
         (in s93)
         (increase (total-cost) 21)
     )
    )

    (:action transition93-2
     :parameters ()
     :precondition (and
         (in s93)
     )
     :effect (and
         (not (in s93))
         (in s93)
         (increase (total-cost) 21)
     )
    )

    (:action transition93-3
     :parameters ()
     :precondition (and
         (in s93)
     )
     :effect (and
         (not (in s93))
         (in s73)
         (increase (total-cost) 21)
     )
    )

    (:action transition93-4
     :parameters ()
     :precondition (and
         (in s93)
     )
     :effect (and
         (not (in s93))
         (in s93)
         (increase (total-cost) 30)
     )
    )

    (:action transition93-5
     :parameters ()
     :precondition (and
         (in s93)
     )
     :effect (and
         (not (in s93))
         (in s93)
         (increase (total-cost) 30)
     )
    )

    (:action transition94-0
     :parameters ()
     :precondition (and
         (in s94)
     )
     :effect (and
         (not (in s94))
         (in s194)
         (increase (total-cost) 21)
     )
    )

    (:action transition94-1
     :parameters ()
     :precondition (and
         (in s94)
     )
     :effect (and
         (not (in s94))
         (in s94)
         (increase (total-cost) 21)
     )
    )

    (:action transition94-2
     :parameters ()
     :precondition (and
         (in s94)
     )
     :effect (and
         (not (in s94))
         (in s94)
         (increase (total-cost) 21)
     )
    )

    (:action transition94-3
     :parameters ()
     :precondition (and
         (in s94)
     )
     :effect (and
         (not (in s94))
         (in s74)
         (increase (total-cost) 21)
     )
    )

    (:action transition94-4
     :parameters ()
     :precondition (and
         (in s94)
     )
     :effect (and
         (not (in s94))
         (in s94)
         (increase (total-cost) 30)
     )
    )

    (:action transition94-5
     :parameters ()
     :precondition (and
         (in s94)
     )
     :effect (and
         (not (in s94))
         (in s94)
         (increase (total-cost) 30)
     )
    )

    (:action transition95-0
     :parameters ()
     :precondition (and
         (in s95)
     )
     :effect (and
         (not (in s95))
         (in s195)
         (increase (total-cost) 21)
     )
    )

    (:action transition95-1
     :parameters ()
     :precondition (and
         (in s95)
     )
     :effect (and
         (not (in s95))
         (in s95)
         (increase (total-cost) 21)
     )
    )

    (:action transition95-2
     :parameters ()
     :precondition (and
         (in s95)
     )
     :effect (and
         (not (in s95))
         (in s95)
         (increase (total-cost) 21)
     )
    )

    (:action transition95-3
     :parameters ()
     :precondition (and
         (in s95)
     )
     :effect (and
         (not (in s95))
         (in s75)
         (increase (total-cost) 21)
     )
    )

    (:action transition95-4
     :parameters ()
     :precondition (and
         (in s95)
     )
     :effect (and
         (not (in s95))
         (in s95)
         (increase (total-cost) 30)
     )
    )

    (:action transition95-5
     :parameters ()
     :precondition (and
         (in s95)
     )
     :effect (and
         (not (in s95))
         (in s95)
         (increase (total-cost) 30)
     )
    )

    (:action transition96-0
     :parameters ()
     :precondition (and
         (in s96)
     )
     :effect (and
         (not (in s96))
         (in s196)
         (increase (total-cost) 21)
     )
    )

    (:action transition96-1
     :parameters ()
     :precondition (and
         (in s96)
     )
     :effect (and
         (not (in s96))
         (in s96)
         (increase (total-cost) 21)
     )
    )

    (:action transition96-2
     :parameters ()
     :precondition (and
         (in s96)
     )
     :effect (and
         (not (in s96))
         (in s96)
         (increase (total-cost) 21)
     )
    )

    (:action transition96-3
     :parameters ()
     :precondition (and
         (in s96)
     )
     :effect (and
         (not (in s96))
         (in s76)
         (increase (total-cost) 21)
     )
    )

    (:action transition96-4
     :parameters ()
     :precondition (and
         (in s96)
     )
     :effect (and
         (not (in s96))
         (in s96)
         (increase (total-cost) 30)
     )
    )

    (:action transition96-5
     :parameters ()
     :precondition (and
         (in s96)
     )
     :effect (and
         (not (in s96))
         (in s84)
         (increase (total-cost) 21)
     )
    )

    (:action transition97-0
     :parameters ()
     :precondition (and
         (in s97)
     )
     :effect (and
         (not (in s97))
         (in s197)
         (increase (total-cost) 21)
     )
    )

    (:action transition97-1
     :parameters ()
     :precondition (and
         (in s97)
     )
     :effect (and
         (not (in s97))
         (in s97)
         (increase (total-cost) 21)
     )
    )

    (:action transition97-2
     :parameters ()
     :precondition (and
         (in s97)
     )
     :effect (and
         (not (in s97))
         (in s97)
         (increase (total-cost) 21)
     )
    )

    (:action transition97-3
     :parameters ()
     :precondition (and
         (in s97)
     )
     :effect (and
         (not (in s97))
         (in s77)
         (increase (total-cost) 21)
     )
    )

    (:action transition97-4
     :parameters ()
     :precondition (and
         (in s97)
     )
     :effect (and
         (not (in s97))
         (in s97)
         (increase (total-cost) 30)
     )
    )

    (:action transition97-5
     :parameters ()
     :precondition (and
         (in s97)
     )
     :effect (and
         (not (in s97))
         (in s85)
		 (done)
         (increase (total-cost) 0)
     )
    )

    (:action transition98-0
     :parameters ()
     :precondition (and
         (in s98)
     )
     :effect (and
         (not (in s98))
         (in s198)
         (increase (total-cost) 21)
     )
    )

    (:action transition98-1
     :parameters ()
     :precondition (and
         (in s98)
     )
     :effect (and
         (not (in s98))
         (in s98)
         (increase (total-cost) 21)
     )
    )

    (:action transition98-2
     :parameters ()
     :precondition (and
         (in s98)
     )
     :effect (and
         (not (in s98))
         (in s98)
         (increase (total-cost) 21)
     )
    )

    (:action transition98-3
     :parameters ()
     :precondition (and
         (in s98)
     )
     :effect (and
         (not (in s98))
         (in s78)
         (increase (total-cost) 21)
     )
    )

    (:action transition98-4
     :parameters ()
     :precondition (and
         (in s98)
     )
     :effect (and
         (not (in s98))
         (in s98)
         (increase (total-cost) 30)
     )
    )

    (:action transition98-5
     :parameters ()
     :precondition (and
         (in s98)
     )
     :effect (and
         (not (in s98))
         (in s86)
         (increase (total-cost) 21)
     )
    )

    (:action transition99-0
     :parameters ()
     :precondition (and
         (in s99)
     )
     :effect (and
         (not (in s99))
         (in s199)
         (increase (total-cost) 21)
     )
    )

    (:action transition99-1
     :parameters ()
     :precondition (and
         (in s99)
     )
     :effect (and
         (not (in s99))
         (in s99)
         (increase (total-cost) 21)
     )
    )

    (:action transition99-2
     :parameters ()
     :precondition (and
         (in s99)
     )
     :effect (and
         (not (in s99))
         (in s99)
         (increase (total-cost) 21)
     )
    )

    (:action transition99-3
     :parameters ()
     :precondition (and
         (in s99)
     )
     :effect (and
         (not (in s99))
         (in s79)
         (increase (total-cost) 21)
     )
    )

    (:action transition99-4
     :parameters ()
     :precondition (and
         (in s99)
     )
     :effect (and
         (not (in s99))
         (in s99)
         (increase (total-cost) 30)
     )
    )

    (:action transition99-5
     :parameters ()
     :precondition (and
         (in s99)
     )
     :effect (and
         (not (in s99))
         (in s87)
         (increase (total-cost) 21)
     )
    )

    (:action transition100-0
     :parameters ()
     :precondition (and
         (in s100)
     )
     :effect (and
         (not (in s100))
         (in s200)
         (increase (total-cost) 21)
     )
    )

    (:action transition100-1
     :parameters ()
     :precondition (and
         (in s100)
     )
     :effect (and
         (not (in s100))
         (in s0)
         (increase (total-cost) 21)
     )
    )

    (:action transition100-2
     :parameters ()
     :precondition (and
         (in s100)
     )
     :effect (and
         (not (in s100))
         (in s120)
         (increase (total-cost) 21)
     )
    )

    (:action transition100-3
     :parameters ()
     :precondition (and
         (in s100)
     )
     :effect (and
         (not (in s100))
         (in s100)
         (increase (total-cost) 21)
     )
    )

    (:action transition100-4
     :parameters ()
     :precondition (and
         (in s100)
     )
     :effect (and
         (not (in s100))
         (in s100)
         (increase (total-cost) 30)
     )
    )

    (:action transition100-5
     :parameters ()
     :precondition (and
         (in s100)
     )
     :effect (and
         (not (in s100))
         (in s100)
         (increase (total-cost) 30)
     )
    )

    (:action transition101-0
     :parameters ()
     :precondition (and
         (in s101)
     )
     :effect (and
         (not (in s101))
         (in s201)
         (increase (total-cost) 21)
     )
    )

    (:action transition101-1
     :parameters ()
     :precondition (and
         (in s101)
     )
     :effect (and
         (not (in s101))
         (in s1)
         (increase (total-cost) 21)
     )
    )

    (:action transition101-2
     :parameters ()
     :precondition (and
         (in s101)
     )
     :effect (and
         (not (in s101))
         (in s121)
         (increase (total-cost) 21)
     )
    )

    (:action transition101-3
     :parameters ()
     :precondition (and
         (in s101)
     )
     :effect (and
         (not (in s101))
         (in s101)
         (increase (total-cost) 21)
     )
    )

    (:action transition101-4
     :parameters ()
     :precondition (and
         (in s101)
     )
     :effect (and
         (not (in s101))
         (in s101)
         (increase (total-cost) 30)
     )
    )

    (:action transition101-5
     :parameters ()
     :precondition (and
         (in s101)
     )
     :effect (and
         (not (in s101))
         (in s101)
         (increase (total-cost) 30)
     )
    )

    (:action transition102-0
     :parameters ()
     :precondition (and
         (in s102)
     )
     :effect (and
         (not (in s102))
         (in s202)
         (increase (total-cost) 21)
     )
    )

    (:action transition102-1
     :parameters ()
     :precondition (and
         (in s102)
     )
     :effect (and
         (not (in s102))
         (in s2)
         (increase (total-cost) 21)
     )
    )

    (:action transition102-2
     :parameters ()
     :precondition (and
         (in s102)
     )
     :effect (and
         (not (in s102))
         (in s122)
         (increase (total-cost) 21)
     )
    )

    (:action transition102-3
     :parameters ()
     :precondition (and
         (in s102)
     )
     :effect (and
         (not (in s102))
         (in s102)
         (increase (total-cost) 21)
     )
    )

    (:action transition102-4
     :parameters ()
     :precondition (and
         (in s102)
     )
     :effect (and
         (not (in s102))
         (in s102)
         (increase (total-cost) 30)
     )
    )

    (:action transition102-5
     :parameters ()
     :precondition (and
         (in s102)
     )
     :effect (and
         (not (in s102))
         (in s102)
         (increase (total-cost) 30)
     )
    )

    (:action transition103-0
     :parameters ()
     :precondition (and
         (in s103)
     )
     :effect (and
         (not (in s103))
         (in s203)
         (increase (total-cost) 21)
     )
    )

    (:action transition103-1
     :parameters ()
     :precondition (and
         (in s103)
     )
     :effect (and
         (not (in s103))
         (in s3)
         (increase (total-cost) 21)
     )
    )

    (:action transition103-2
     :parameters ()
     :precondition (and
         (in s103)
     )
     :effect (and
         (not (in s103))
         (in s123)
         (increase (total-cost) 21)
     )
    )

    (:action transition103-3
     :parameters ()
     :precondition (and
         (in s103)
     )
     :effect (and
         (not (in s103))
         (in s103)
         (increase (total-cost) 21)
     )
    )

    (:action transition103-4
     :parameters ()
     :precondition (and
         (in s103)
     )
     :effect (and
         (not (in s103))
         (in s103)
         (increase (total-cost) 30)
     )
    )

    (:action transition103-5
     :parameters ()
     :precondition (and
         (in s103)
     )
     :effect (and
         (not (in s103))
         (in s103)
         (increase (total-cost) 30)
     )
    )

    (:action transition104-0
     :parameters ()
     :precondition (and
         (in s104)
     )
     :effect (and
         (not (in s104))
         (in s204)
         (increase (total-cost) 21)
     )
    )

    (:action transition104-1
     :parameters ()
     :precondition (and
         (in s104)
     )
     :effect (and
         (not (in s104))
         (in s4)
         (increase (total-cost) 21)
     )
    )

    (:action transition104-2
     :parameters ()
     :precondition (and
         (in s104)
     )
     :effect (and
         (not (in s104))
         (in s124)
         (increase (total-cost) 21)
     )
    )

    (:action transition104-3
     :parameters ()
     :precondition (and
         (in s104)
     )
     :effect (and
         (not (in s104))
         (in s104)
         (increase (total-cost) 21)
     )
    )

    (:action transition104-4
     :parameters ()
     :precondition (and
         (in s104)
     )
     :effect (and
         (not (in s104))
         (in s104)
         (increase (total-cost) 30)
     )
    )

    (:action transition104-5
     :parameters ()
     :precondition (and
         (in s104)
     )
     :effect (and
         (not (in s104))
         (in s104)
         (increase (total-cost) 30)
     )
    )

    (:action transition105-0
     :parameters ()
     :precondition (and
         (in s105)
     )
     :effect (and
         (not (in s105))
         (in s205)
         (increase (total-cost) 21)
     )
    )

    (:action transition105-1
     :parameters ()
     :precondition (and
         (in s105)
     )
     :effect (and
         (not (in s105))
         (in s5)
         (increase (total-cost) 21)
     )
    )

    (:action transition105-2
     :parameters ()
     :precondition (and
         (in s105)
     )
     :effect (and
         (not (in s105))
         (in s125)
         (increase (total-cost) 21)
     )
    )

    (:action transition105-3
     :parameters ()
     :precondition (and
         (in s105)
     )
     :effect (and
         (not (in s105))
         (in s105)
         (increase (total-cost) 21)
     )
    )

    (:action transition105-4
     :parameters ()
     :precondition (and
         (in s105)
     )
     :effect (and
         (not (in s105))
         (in s105)
         (increase (total-cost) 30)
     )
    )

    (:action transition105-5
     :parameters ()
     :precondition (and
         (in s105)
     )
     :effect (and
         (not (in s105))
         (in s105)
         (increase (total-cost) 30)
     )
    )

    (:action transition106-0
     :parameters ()
     :precondition (and
         (in s106)
     )
     :effect (and
         (not (in s106))
         (in s206)
         (increase (total-cost) 21)
     )
    )

    (:action transition106-1
     :parameters ()
     :precondition (and
         (in s106)
     )
     :effect (and
         (not (in s106))
         (in s6)
         (increase (total-cost) 21)
     )
    )

    (:action transition106-2
     :parameters ()
     :precondition (and
         (in s106)
     )
     :effect (and
         (not (in s106))
         (in s126)
         (increase (total-cost) 21)
     )
    )

    (:action transition106-3
     :parameters ()
     :precondition (and
         (in s106)
     )
     :effect (and
         (not (in s106))
         (in s106)
         (increase (total-cost) 21)
     )
    )

    (:action transition106-4
     :parameters ()
     :precondition (and
         (in s106)
     )
     :effect (and
         (not (in s106))
         (in s106)
         (increase (total-cost) 30)
     )
    )

    (:action transition106-5
     :parameters ()
     :precondition (and
         (in s106)
     )
     :effect (and
         (not (in s106))
         (in s106)
         (increase (total-cost) 30)
     )
    )

    (:action transition107-0
     :parameters ()
     :precondition (and
         (in s107)
     )
     :effect (and
         (not (in s107))
         (in s207)
         (increase (total-cost) 21)
     )
    )

    (:action transition107-1
     :parameters ()
     :precondition (and
         (in s107)
     )
     :effect (and
         (not (in s107))
         (in s7)
         (increase (total-cost) 21)
     )
    )

    (:action transition107-2
     :parameters ()
     :precondition (and
         (in s107)
     )
     :effect (and
         (not (in s107))
         (in s127)
         (increase (total-cost) 21)
     )
    )

    (:action transition107-3
     :parameters ()
     :precondition (and
         (in s107)
     )
     :effect (and
         (not (in s107))
         (in s107)
         (increase (total-cost) 21)
     )
    )

    (:action transition107-4
     :parameters ()
     :precondition (and
         (in s107)
     )
     :effect (and
         (not (in s107))
         (in s107)
         (increase (total-cost) 30)
     )
    )

    (:action transition107-5
     :parameters ()
     :precondition (and
         (in s107)
     )
     :effect (and
         (not (in s107))
         (in s107)
         (increase (total-cost) 30)
     )
    )

    (:action transition108-0
     :parameters ()
     :precondition (and
         (in s108)
     )
     :effect (and
         (not (in s108))
         (in s208)
         (increase (total-cost) 21)
     )
    )

    (:action transition108-1
     :parameters ()
     :precondition (and
         (in s108)
     )
     :effect (and
         (not (in s108))
         (in s8)
         (increase (total-cost) 21)
     )
    )

    (:action transition108-2
     :parameters ()
     :precondition (and
         (in s108)
     )
     :effect (and
         (not (in s108))
         (in s128)
         (increase (total-cost) 21)
     )
    )

    (:action transition108-3
     :parameters ()
     :precondition (and
         (in s108)
     )
     :effect (and
         (not (in s108))
         (in s108)
         (increase (total-cost) 21)
     )
    )

    (:action transition108-4
     :parameters ()
     :precondition (and
         (in s108)
     )
     :effect (and
         (not (in s108))
         (in s108)
         (increase (total-cost) 30)
     )
    )

    (:action transition108-5
     :parameters ()
     :precondition (and
         (in s108)
     )
     :effect (and
         (not (in s108))
         (in s108)
         (increase (total-cost) 30)
     )
    )

    (:action transition109-0
     :parameters ()
     :precondition (and
         (in s109)
     )
     :effect (and
         (not (in s109))
         (in s209)
         (increase (total-cost) 21)
     )
    )

    (:action transition109-1
     :parameters ()
     :precondition (and
         (in s109)
     )
     :effect (and
         (not (in s109))
         (in s9)
         (increase (total-cost) 21)
     )
    )

    (:action transition109-2
     :parameters ()
     :precondition (and
         (in s109)
     )
     :effect (and
         (not (in s109))
         (in s129)
         (increase (total-cost) 21)
     )
    )

    (:action transition109-3
     :parameters ()
     :precondition (and
         (in s109)
     )
     :effect (and
         (not (in s109))
         (in s109)
         (increase (total-cost) 21)
     )
    )

    (:action transition109-4
     :parameters ()
     :precondition (and
         (in s109)
     )
     :effect (and
         (not (in s109))
         (in s109)
         (increase (total-cost) 30)
     )
    )

    (:action transition109-5
     :parameters ()
     :precondition (and
         (in s109)
     )
     :effect (and
         (not (in s109))
         (in s109)
         (increase (total-cost) 30)
     )
    )

    (:action transition110-0
     :parameters ()
     :precondition (and
         (in s110)
     )
     :effect (and
         (not (in s110))
         (in s210)
         (increase (total-cost) 21)
     )
    )

    (:action transition110-1
     :parameters ()
     :precondition (and
         (in s110)
     )
     :effect (and
         (not (in s110))
         (in s10)
         (increase (total-cost) 21)
     )
    )

    (:action transition110-2
     :parameters ()
     :precondition (and
         (in s110)
     )
     :effect (and
         (not (in s110))
         (in s130)
         (increase (total-cost) 21)
     )
    )

    (:action transition110-3
     :parameters ()
     :precondition (and
         (in s110)
     )
     :effect (and
         (not (in s110))
         (in s110)
         (increase (total-cost) 21)
     )
    )

    (:action transition110-4
     :parameters ()
     :precondition (and
         (in s110)
     )
     :effect (and
         (not (in s110))
         (in s110)
         (increase (total-cost) 30)
     )
    )

    (:action transition110-5
     :parameters ()
     :precondition (and
         (in s110)
     )
     :effect (and
         (not (in s110))
         (in s110)
         (increase (total-cost) 30)
     )
    )

    (:action transition111-0
     :parameters ()
     :precondition (and
         (in s111)
     )
     :effect (and
         (not (in s111))
         (in s211)
         (increase (total-cost) 21)
     )
    )

    (:action transition111-1
     :parameters ()
     :precondition (and
         (in s111)
     )
     :effect (and
         (not (in s111))
         (in s11)
         (increase (total-cost) 21)
     )
    )

    (:action transition111-2
     :parameters ()
     :precondition (and
         (in s111)
     )
     :effect (and
         (not (in s111))
         (in s131)
         (increase (total-cost) 21)
     )
    )

    (:action transition111-3
     :parameters ()
     :precondition (and
         (in s111)
     )
     :effect (and
         (not (in s111))
         (in s111)
         (increase (total-cost) 21)
     )
    )

    (:action transition111-4
     :parameters ()
     :precondition (and
         (in s111)
     )
     :effect (and
         (not (in s111))
         (in s111)
         (increase (total-cost) 30)
     )
    )

    (:action transition111-5
     :parameters ()
     :precondition (and
         (in s111)
     )
     :effect (and
         (not (in s111))
         (in s111)
         (increase (total-cost) 30)
     )
    )

    (:action transition112-0
     :parameters ()
     :precondition (and
         (in s112)
     )
     :effect (and
         (not (in s112))
         (in s212)
         (increase (total-cost) 21)
     )
    )

    (:action transition112-1
     :parameters ()
     :precondition (and
         (in s112)
     )
     :effect (and
         (not (in s112))
         (in s12)
         (increase (total-cost) 21)
     )
    )

    (:action transition112-2
     :parameters ()
     :precondition (and
         (in s112)
     )
     :effect (and
         (not (in s112))
         (in s132)
         (increase (total-cost) 21)
     )
    )

    (:action transition112-3
     :parameters ()
     :precondition (and
         (in s112)
     )
     :effect (and
         (not (in s112))
         (in s112)
         (increase (total-cost) 21)
     )
    )

    (:action transition112-4
     :parameters ()
     :precondition (and
         (in s112)
     )
     :effect (and
         (not (in s112))
         (in s112)
         (increase (total-cost) 30)
     )
    )

    (:action transition112-5
     :parameters ()
     :precondition (and
         (in s112)
     )
     :effect (and
         (not (in s112))
         (in s112)
         (increase (total-cost) 30)
     )
    )

    (:action transition113-0
     :parameters ()
     :precondition (and
         (in s113)
     )
     :effect (and
         (not (in s113))
         (in s213)
         (increase (total-cost) 21)
     )
    )

    (:action transition113-1
     :parameters ()
     :precondition (and
         (in s113)
     )
     :effect (and
         (not (in s113))
         (in s13)
         (increase (total-cost) 21)
     )
    )

    (:action transition113-2
     :parameters ()
     :precondition (and
         (in s113)
     )
     :effect (and
         (not (in s113))
         (in s133)
         (increase (total-cost) 21)
     )
    )

    (:action transition113-3
     :parameters ()
     :precondition (and
         (in s113)
     )
     :effect (and
         (not (in s113))
         (in s113)
         (increase (total-cost) 21)
     )
    )

    (:action transition113-4
     :parameters ()
     :precondition (and
         (in s113)
     )
     :effect (and
         (not (in s113))
         (in s113)
         (increase (total-cost) 30)
     )
    )

    (:action transition113-5
     :parameters ()
     :precondition (and
         (in s113)
     )
     :effect (and
         (not (in s113))
         (in s113)
         (increase (total-cost) 30)
     )
    )

    (:action transition114-0
     :parameters ()
     :precondition (and
         (in s114)
     )
     :effect (and
         (not (in s114))
         (in s214)
         (increase (total-cost) 21)
     )
    )

    (:action transition114-1
     :parameters ()
     :precondition (and
         (in s114)
     )
     :effect (and
         (not (in s114))
         (in s14)
         (increase (total-cost) 21)
     )
    )

    (:action transition114-2
     :parameters ()
     :precondition (and
         (in s114)
     )
     :effect (and
         (not (in s114))
         (in s134)
         (increase (total-cost) 21)
     )
    )

    (:action transition114-3
     :parameters ()
     :precondition (and
         (in s114)
     )
     :effect (and
         (not (in s114))
         (in s114)
         (increase (total-cost) 21)
     )
    )

    (:action transition114-4
     :parameters ()
     :precondition (and
         (in s114)
     )
     :effect (and
         (not (in s114))
         (in s114)
         (increase (total-cost) 30)
     )
    )

    (:action transition114-5
     :parameters ()
     :precondition (and
         (in s114)
     )
     :effect (and
         (not (in s114))
         (in s114)
         (increase (total-cost) 30)
     )
    )

    (:action transition115-0
     :parameters ()
     :precondition (and
         (in s115)
     )
     :effect (and
         (not (in s115))
         (in s215)
         (increase (total-cost) 21)
     )
    )

    (:action transition115-1
     :parameters ()
     :precondition (and
         (in s115)
     )
     :effect (and
         (not (in s115))
         (in s15)
         (increase (total-cost) 21)
     )
    )

    (:action transition115-2
     :parameters ()
     :precondition (and
         (in s115)
     )
     :effect (and
         (not (in s115))
         (in s135)
         (increase (total-cost) 21)
     )
    )

    (:action transition115-3
     :parameters ()
     :precondition (and
         (in s115)
     )
     :effect (and
         (not (in s115))
         (in s115)
         (increase (total-cost) 21)
     )
    )

    (:action transition115-4
     :parameters ()
     :precondition (and
         (in s115)
     )
     :effect (and
         (not (in s115))
         (in s115)
         (increase (total-cost) 30)
     )
    )

    (:action transition115-5
     :parameters ()
     :precondition (and
         (in s115)
     )
     :effect (and
         (not (in s115))
         (in s115)
         (increase (total-cost) 30)
     )
    )

    (:action transition116-0
     :parameters ()
     :precondition (and
         (in s116)
     )
     :effect (and
         (not (in s116))
         (in s216)
         (increase (total-cost) 21)
     )
    )

    (:action transition116-1
     :parameters ()
     :precondition (and
         (in s116)
     )
     :effect (and
         (not (in s116))
         (in s16)
         (increase (total-cost) 21)
     )
    )

    (:action transition116-2
     :parameters ()
     :precondition (and
         (in s116)
     )
     :effect (and
         (not (in s116))
         (in s136)
         (increase (total-cost) 21)
     )
    )

    (:action transition116-3
     :parameters ()
     :precondition (and
         (in s116)
     )
     :effect (and
         (not (in s116))
         (in s116)
         (increase (total-cost) 21)
     )
    )

    (:action transition116-4
     :parameters ()
     :precondition (and
         (in s116)
     )
     :effect (and
         (not (in s116))
         (in s116)
         (increase (total-cost) 30)
     )
    )

    (:action transition116-5
     :parameters ()
     :precondition (and
         (in s116)
     )
     :effect (and
         (not (in s116))
         (in s116)
         (increase (total-cost) 30)
     )
    )

    (:action transition117-0
     :parameters ()
     :precondition (and
         (in s117)
     )
     :effect (and
         (not (in s117))
         (in s217)
         (increase (total-cost) 21)
     )
    )

    (:action transition117-1
     :parameters ()
     :precondition (and
         (in s117)
     )
     :effect (and
         (not (in s117))
         (in s17)
         (increase (total-cost) 21)
     )
    )

    (:action transition117-2
     :parameters ()
     :precondition (and
         (in s117)
     )
     :effect (and
         (not (in s117))
         (in s137)
         (increase (total-cost) 21)
     )
    )

    (:action transition117-3
     :parameters ()
     :precondition (and
         (in s117)
     )
     :effect (and
         (not (in s117))
         (in s117)
         (increase (total-cost) 21)
     )
    )

    (:action transition117-4
     :parameters ()
     :precondition (and
         (in s117)
     )
     :effect (and
         (not (in s117))
         (in s117)
         (increase (total-cost) 30)
     )
    )

    (:action transition117-5
     :parameters ()
     :precondition (and
         (in s117)
     )
     :effect (and
         (not (in s117))
         (in s117)
         (increase (total-cost) 30)
     )
    )

    (:action transition118-0
     :parameters ()
     :precondition (and
         (in s118)
     )
     :effect (and
         (not (in s118))
         (in s218)
         (increase (total-cost) 21)
     )
    )

    (:action transition118-1
     :parameters ()
     :precondition (and
         (in s118)
     )
     :effect (and
         (not (in s118))
         (in s18)
         (increase (total-cost) 21)
     )
    )

    (:action transition118-2
     :parameters ()
     :precondition (and
         (in s118)
     )
     :effect (and
         (not (in s118))
         (in s138)
         (increase (total-cost) 21)
     )
    )

    (:action transition118-3
     :parameters ()
     :precondition (and
         (in s118)
     )
     :effect (and
         (not (in s118))
         (in s118)
         (increase (total-cost) 21)
     )
    )

    (:action transition118-4
     :parameters ()
     :precondition (and
         (in s118)
     )
     :effect (and
         (not (in s118))
         (in s118)
         (increase (total-cost) 30)
     )
    )

    (:action transition118-5
     :parameters ()
     :precondition (and
         (in s118)
     )
     :effect (and
         (not (in s118))
         (in s118)
         (increase (total-cost) 30)
     )
    )

    (:action transition119-0
     :parameters ()
     :precondition (and
         (in s119)
     )
     :effect (and
         (not (in s119))
         (in s219)
         (increase (total-cost) 21)
     )
    )

    (:action transition119-1
     :parameters ()
     :precondition (and
         (in s119)
     )
     :effect (and
         (not (in s119))
         (in s19)
         (increase (total-cost) 21)
     )
    )

    (:action transition119-2
     :parameters ()
     :precondition (and
         (in s119)
     )
     :effect (and
         (not (in s119))
         (in s139)
         (increase (total-cost) 21)
     )
    )

    (:action transition119-3
     :parameters ()
     :precondition (and
         (in s119)
     )
     :effect (and
         (not (in s119))
         (in s119)
         (increase (total-cost) 21)
     )
    )

    (:action transition119-4
     :parameters ()
     :precondition (and
         (in s119)
     )
     :effect (and
         (not (in s119))
         (in s119)
         (increase (total-cost) 30)
     )
    )

    (:action transition119-5
     :parameters ()
     :precondition (and
         (in s119)
     )
     :effect (and
         (not (in s119))
         (in s119)
         (increase (total-cost) 30)
     )
    )

    (:action transition120-0
     :parameters ()
     :precondition (and
         (in s120)
     )
     :effect (and
         (not (in s120))
         (in s220)
         (increase (total-cost) 21)
     )
    )

    (:action transition120-1
     :parameters ()
     :precondition (and
         (in s120)
     )
     :effect (and
         (not (in s120))
         (in s20)
         (increase (total-cost) 21)
     )
    )

    (:action transition120-2
     :parameters ()
     :precondition (and
         (in s120)
     )
     :effect (and
         (not (in s120))
         (in s120)
         (increase (total-cost) 21)
     )
    )

    (:action transition120-3
     :parameters ()
     :precondition (and
         (in s120)
     )
     :effect (and
         (not (in s120))
         (in s100)
         (increase (total-cost) 21)
     )
    )

    (:action transition120-4
     :parameters ()
     :precondition (and
         (in s120)
     )
     :effect (and
         (not (in s120))
         (in s120)
         (increase (total-cost) 30)
     )
    )

    (:action transition120-5
     :parameters ()
     :precondition (and
         (in s120)
     )
     :effect (and
         (not (in s120))
         (in s120)
         (increase (total-cost) 30)
     )
    )

    (:action transition121-0
     :parameters ()
     :precondition (and
         (in s121)
     )
     :effect (and
         (not (in s121))
         (in s221)
         (increase (total-cost) 21)
     )
    )

    (:action transition121-1
     :parameters ()
     :precondition (and
         (in s121)
     )
     :effect (and
         (not (in s121))
         (in s21)
         (increase (total-cost) 21)
     )
    )

    (:action transition121-2
     :parameters ()
     :precondition (and
         (in s121)
     )
     :effect (and
         (not (in s121))
         (in s121)
         (increase (total-cost) 21)
     )
    )

    (:action transition121-3
     :parameters ()
     :precondition (and
         (in s121)
     )
     :effect (and
         (not (in s121))
         (in s101)
         (increase (total-cost) 21)
     )
    )

    (:action transition121-4
     :parameters ()
     :precondition (and
         (in s121)
     )
     :effect (and
         (not (in s121))
         (in s121)
         (increase (total-cost) 30)
     )
    )

    (:action transition121-5
     :parameters ()
     :precondition (and
         (in s121)
     )
     :effect (and
         (not (in s121))
         (in s121)
         (increase (total-cost) 30)
     )
    )

    (:action transition122-0
     :parameters ()
     :precondition (and
         (in s122)
     )
     :effect (and
         (not (in s122))
         (in s222)
         (increase (total-cost) 21)
     )
    )

    (:action transition122-1
     :parameters ()
     :precondition (and
         (in s122)
     )
     :effect (and
         (not (in s122))
         (in s22)
         (increase (total-cost) 21)
     )
    )

    (:action transition122-2
     :parameters ()
     :precondition (and
         (in s122)
     )
     :effect (and
         (not (in s122))
         (in s122)
         (increase (total-cost) 21)
     )
    )

    (:action transition122-3
     :parameters ()
     :precondition (and
         (in s122)
     )
     :effect (and
         (not (in s122))
         (in s102)
         (increase (total-cost) 21)
     )
    )

    (:action transition122-4
     :parameters ()
     :precondition (and
         (in s122)
     )
     :effect (and
         (not (in s122))
         (in s122)
         (increase (total-cost) 30)
     )
    )

    (:action transition122-5
     :parameters ()
     :precondition (and
         (in s122)
     )
     :effect (and
         (not (in s122))
         (in s122)
         (increase (total-cost) 30)
     )
    )

    (:action transition123-0
     :parameters ()
     :precondition (and
         (in s123)
     )
     :effect (and
         (not (in s123))
         (in s223)
         (increase (total-cost) 21)
     )
    )

    (:action transition123-1
     :parameters ()
     :precondition (and
         (in s123)
     )
     :effect (and
         (not (in s123))
         (in s23)
         (increase (total-cost) 21)
     )
    )

    (:action transition123-2
     :parameters ()
     :precondition (and
         (in s123)
     )
     :effect (and
         (not (in s123))
         (in s123)
         (increase (total-cost) 21)
     )
    )

    (:action transition123-3
     :parameters ()
     :precondition (and
         (in s123)
     )
     :effect (and
         (not (in s123))
         (in s103)
         (increase (total-cost) 21)
     )
    )

    (:action transition123-4
     :parameters ()
     :precondition (and
         (in s123)
     )
     :effect (and
         (not (in s123))
         (in s123)
         (increase (total-cost) 30)
     )
    )

    (:action transition123-5
     :parameters ()
     :precondition (and
         (in s123)
     )
     :effect (and
         (not (in s123))
         (in s123)
         (increase (total-cost) 30)
     )
    )

    (:action transition124-0
     :parameters ()
     :precondition (and
         (in s124)
     )
     :effect (and
         (not (in s124))
         (in s224)
         (increase (total-cost) 21)
     )
    )

    (:action transition124-1
     :parameters ()
     :precondition (and
         (in s124)
     )
     :effect (and
         (not (in s124))
         (in s24)
         (increase (total-cost) 21)
     )
    )

    (:action transition124-2
     :parameters ()
     :precondition (and
         (in s124)
     )
     :effect (and
         (not (in s124))
         (in s124)
         (increase (total-cost) 21)
     )
    )

    (:action transition124-3
     :parameters ()
     :precondition (and
         (in s124)
     )
     :effect (and
         (not (in s124))
         (in s104)
         (increase (total-cost) 21)
     )
    )

    (:action transition124-4
     :parameters ()
     :precondition (and
         (in s124)
     )
     :effect (and
         (not (in s124))
         (in s124)
         (increase (total-cost) 30)
     )
    )

    (:action transition124-5
     :parameters ()
     :precondition (and
         (in s124)
     )
     :effect (and
         (not (in s124))
         (in s124)
         (increase (total-cost) 30)
     )
    )

    (:action transition125-0
     :parameters ()
     :precondition (and
         (in s125)
     )
     :effect (and
         (not (in s125))
         (in s225)
         (increase (total-cost) 21)
     )
    )

    (:action transition125-1
     :parameters ()
     :precondition (and
         (in s125)
     )
     :effect (and
         (not (in s125))
         (in s25)
         (increase (total-cost) 21)
     )
    )

    (:action transition125-2
     :parameters ()
     :precondition (and
         (in s125)
     )
     :effect (and
         (not (in s125))
         (in s125)
         (increase (total-cost) 21)
     )
    )

    (:action transition125-3
     :parameters ()
     :precondition (and
         (in s125)
     )
     :effect (and
         (not (in s125))
         (in s105)
         (increase (total-cost) 21)
     )
    )

    (:action transition125-4
     :parameters ()
     :precondition (and
         (in s125)
     )
     :effect (and
         (not (in s125))
         (in s125)
         (increase (total-cost) 30)
     )
    )

    (:action transition125-5
     :parameters ()
     :precondition (and
         (in s125)
     )
     :effect (and
         (not (in s125))
         (in s125)
         (increase (total-cost) 30)
     )
    )

    (:action transition126-0
     :parameters ()
     :precondition (and
         (in s126)
     )
     :effect (and
         (not (in s126))
         (in s226)
         (increase (total-cost) 21)
     )
    )

    (:action transition126-1
     :parameters ()
     :precondition (and
         (in s126)
     )
     :effect (and
         (not (in s126))
         (in s26)
         (increase (total-cost) 21)
     )
    )

    (:action transition126-2
     :parameters ()
     :precondition (and
         (in s126)
     )
     :effect (and
         (not (in s126))
         (in s126)
         (increase (total-cost) 21)
     )
    )

    (:action transition126-3
     :parameters ()
     :precondition (and
         (in s126)
     )
     :effect (and
         (not (in s126))
         (in s106)
         (increase (total-cost) 21)
     )
    )

    (:action transition126-4
     :parameters ()
     :precondition (and
         (in s126)
     )
     :effect (and
         (not (in s126))
         (in s126)
         (increase (total-cost) 30)
     )
    )

    (:action transition126-5
     :parameters ()
     :precondition (and
         (in s126)
     )
     :effect (and
         (not (in s126))
         (in s126)
         (increase (total-cost) 30)
     )
    )

    (:action transition127-0
     :parameters ()
     :precondition (and
         (in s127)
     )
     :effect (and
         (not (in s127))
         (in s227)
         (increase (total-cost) 21)
     )
    )

    (:action transition127-1
     :parameters ()
     :precondition (and
         (in s127)
     )
     :effect (and
         (not (in s127))
         (in s27)
         (increase (total-cost) 21)
     )
    )

    (:action transition127-2
     :parameters ()
     :precondition (and
         (in s127)
     )
     :effect (and
         (not (in s127))
         (in s127)
         (increase (total-cost) 21)
     )
    )

    (:action transition127-3
     :parameters ()
     :precondition (and
         (in s127)
     )
     :effect (and
         (not (in s127))
         (in s107)
         (increase (total-cost) 21)
     )
    )

    (:action transition127-4
     :parameters ()
     :precondition (and
         (in s127)
     )
     :effect (and
         (not (in s127))
         (in s127)
         (increase (total-cost) 30)
     )
    )

    (:action transition127-5
     :parameters ()
     :precondition (and
         (in s127)
     )
     :effect (and
         (not (in s127))
         (in s127)
         (increase (total-cost) 30)
     )
    )

    (:action transition128-0
     :parameters ()
     :precondition (and
         (in s128)
     )
     :effect (and
         (not (in s128))
         (in s228)
         (increase (total-cost) 21)
     )
    )

    (:action transition128-1
     :parameters ()
     :precondition (and
         (in s128)
     )
     :effect (and
         (not (in s128))
         (in s28)
         (increase (total-cost) 21)
     )
    )

    (:action transition128-2
     :parameters ()
     :precondition (and
         (in s128)
     )
     :effect (and
         (not (in s128))
         (in s128)
         (increase (total-cost) 21)
     )
    )

    (:action transition128-3
     :parameters ()
     :precondition (and
         (in s128)
     )
     :effect (and
         (not (in s128))
         (in s108)
         (increase (total-cost) 21)
     )
    )

    (:action transition128-4
     :parameters ()
     :precondition (and
         (in s128)
     )
     :effect (and
         (not (in s128))
         (in s128)
         (increase (total-cost) 30)
     )
    )

    (:action transition128-5
     :parameters ()
     :precondition (and
         (in s128)
     )
     :effect (and
         (not (in s128))
         (in s128)
         (increase (total-cost) 30)
     )
    )

    (:action transition129-0
     :parameters ()
     :precondition (and
         (in s129)
     )
     :effect (and
         (not (in s129))
         (in s229)
         (increase (total-cost) 21)
     )
    )

    (:action transition129-1
     :parameters ()
     :precondition (and
         (in s129)
     )
     :effect (and
         (not (in s129))
         (in s29)
         (increase (total-cost) 21)
     )
    )

    (:action transition129-2
     :parameters ()
     :precondition (and
         (in s129)
     )
     :effect (and
         (not (in s129))
         (in s129)
         (increase (total-cost) 21)
     )
    )

    (:action transition129-3
     :parameters ()
     :precondition (and
         (in s129)
     )
     :effect (and
         (not (in s129))
         (in s109)
         (increase (total-cost) 21)
     )
    )

    (:action transition129-4
     :parameters ()
     :precondition (and
         (in s129)
     )
     :effect (and
         (not (in s129))
         (in s129)
         (increase (total-cost) 30)
     )
    )

    (:action transition129-5
     :parameters ()
     :precondition (and
         (in s129)
     )
     :effect (and
         (not (in s129))
         (in s129)
         (increase (total-cost) 30)
     )
    )

    (:action transition130-0
     :parameters ()
     :precondition (and
         (in s130)
     )
     :effect (and
         (not (in s130))
         (in s230)
         (increase (total-cost) 21)
     )
    )

    (:action transition130-1
     :parameters ()
     :precondition (and
         (in s130)
     )
     :effect (and
         (not (in s130))
         (in s30)
         (increase (total-cost) 21)
     )
    )

    (:action transition130-2
     :parameters ()
     :precondition (and
         (in s130)
     )
     :effect (and
         (not (in s130))
         (in s130)
         (increase (total-cost) 21)
     )
    )

    (:action transition130-3
     :parameters ()
     :precondition (and
         (in s130)
     )
     :effect (and
         (not (in s130))
         (in s110)
         (increase (total-cost) 21)
     )
    )

    (:action transition130-4
     :parameters ()
     :precondition (and
         (in s130)
     )
     :effect (and
         (not (in s130))
         (in s130)
         (increase (total-cost) 30)
     )
    )

    (:action transition130-5
     :parameters ()
     :precondition (and
         (in s130)
     )
     :effect (and
         (not (in s130))
         (in s130)
         (increase (total-cost) 30)
     )
    )

    (:action transition131-0
     :parameters ()
     :precondition (and
         (in s131)
     )
     :effect (and
         (not (in s131))
         (in s231)
         (increase (total-cost) 21)
     )
    )

    (:action transition131-1
     :parameters ()
     :precondition (and
         (in s131)
     )
     :effect (and
         (not (in s131))
         (in s31)
         (increase (total-cost) 21)
     )
    )

    (:action transition131-2
     :parameters ()
     :precondition (and
         (in s131)
     )
     :effect (and
         (not (in s131))
         (in s131)
         (increase (total-cost) 21)
     )
    )

    (:action transition131-3
     :parameters ()
     :precondition (and
         (in s131)
     )
     :effect (and
         (not (in s131))
         (in s111)
         (increase (total-cost) 21)
     )
    )

    (:action transition131-4
     :parameters ()
     :precondition (and
         (in s131)
     )
     :effect (and
         (not (in s131))
         (in s131)
         (increase (total-cost) 30)
     )
    )

    (:action transition131-5
     :parameters ()
     :precondition (and
         (in s131)
     )
     :effect (and
         (not (in s131))
         (in s131)
         (increase (total-cost) 30)
     )
    )

    (:action transition132-0
     :parameters ()
     :precondition (and
         (in s132)
     )
     :effect (and
         (not (in s132))
         (in s232)
         (increase (total-cost) 21)
     )
    )

    (:action transition132-1
     :parameters ()
     :precondition (and
         (in s132)
     )
     :effect (and
         (not (in s132))
         (in s32)
         (increase (total-cost) 21)
     )
    )

    (:action transition132-2
     :parameters ()
     :precondition (and
         (in s132)
     )
     :effect (and
         (not (in s132))
         (in s132)
         (increase (total-cost) 21)
     )
    )

    (:action transition132-3
     :parameters ()
     :precondition (and
         (in s132)
     )
     :effect (and
         (not (in s132))
         (in s112)
         (increase (total-cost) 21)
     )
    )

    (:action transition132-4
     :parameters ()
     :precondition (and
         (in s132)
     )
     :effect (and
         (not (in s132))
         (in s132)
         (increase (total-cost) 30)
     )
    )

    (:action transition132-5
     :parameters ()
     :precondition (and
         (in s132)
     )
     :effect (and
         (not (in s132))
         (in s132)
         (increase (total-cost) 30)
     )
    )

    (:action transition133-0
     :parameters ()
     :precondition (and
         (in s133)
     )
     :effect (and
         (not (in s133))
         (in s233)
         (increase (total-cost) 21)
     )
    )

    (:action transition133-1
     :parameters ()
     :precondition (and
         (in s133)
     )
     :effect (and
         (not (in s133))
         (in s33)
         (increase (total-cost) 21)
     )
    )

    (:action transition133-2
     :parameters ()
     :precondition (and
         (in s133)
     )
     :effect (and
         (not (in s133))
         (in s133)
         (increase (total-cost) 21)
     )
    )

    (:action transition133-3
     :parameters ()
     :precondition (and
         (in s133)
     )
     :effect (and
         (not (in s133))
         (in s113)
         (increase (total-cost) 21)
     )
    )

    (:action transition133-4
     :parameters ()
     :precondition (and
         (in s133)
     )
     :effect (and
         (not (in s133))
         (in s133)
         (increase (total-cost) 30)
     )
    )

    (:action transition133-5
     :parameters ()
     :precondition (and
         (in s133)
     )
     :effect (and
         (not (in s133))
         (in s133)
         (increase (total-cost) 30)
     )
    )

    (:action transition134-0
     :parameters ()
     :precondition (and
         (in s134)
     )
     :effect (and
         (not (in s134))
         (in s234)
         (increase (total-cost) 21)
     )
    )

    (:action transition134-1
     :parameters ()
     :precondition (and
         (in s134)
     )
     :effect (and
         (not (in s134))
         (in s34)
         (increase (total-cost) 21)
     )
    )

    (:action transition134-2
     :parameters ()
     :precondition (and
         (in s134)
     )
     :effect (and
         (not (in s134))
         (in s134)
         (increase (total-cost) 21)
     )
    )

    (:action transition134-3
     :parameters ()
     :precondition (and
         (in s134)
     )
     :effect (and
         (not (in s134))
         (in s114)
         (increase (total-cost) 21)
     )
    )

    (:action transition134-4
     :parameters ()
     :precondition (and
         (in s134)
     )
     :effect (and
         (not (in s134))
         (in s134)
         (increase (total-cost) 30)
     )
    )

    (:action transition134-5
     :parameters ()
     :precondition (and
         (in s134)
     )
     :effect (and
         (not (in s134))
         (in s134)
         (increase (total-cost) 30)
     )
    )

    (:action transition135-0
     :parameters ()
     :precondition (and
         (in s135)
     )
     :effect (and
         (not (in s135))
         (in s235)
         (increase (total-cost) 21)
     )
    )

    (:action transition135-1
     :parameters ()
     :precondition (and
         (in s135)
     )
     :effect (and
         (not (in s135))
         (in s35)
         (increase (total-cost) 21)
     )
    )

    (:action transition135-2
     :parameters ()
     :precondition (and
         (in s135)
     )
     :effect (and
         (not (in s135))
         (in s135)
         (increase (total-cost) 21)
     )
    )

    (:action transition135-3
     :parameters ()
     :precondition (and
         (in s135)
     )
     :effect (and
         (not (in s135))
         (in s115)
         (increase (total-cost) 21)
     )
    )

    (:action transition135-4
     :parameters ()
     :precondition (and
         (in s135)
     )
     :effect (and
         (not (in s135))
         (in s135)
         (increase (total-cost) 30)
     )
    )

    (:action transition135-5
     :parameters ()
     :precondition (and
         (in s135)
     )
     :effect (and
         (not (in s135))
         (in s135)
         (increase (total-cost) 30)
     )
    )

    (:action transition136-0
     :parameters ()
     :precondition (and
         (in s136)
     )
     :effect (and
         (not (in s136))
         (in s236)
         (increase (total-cost) 21)
     )
    )

    (:action transition136-1
     :parameters ()
     :precondition (and
         (in s136)
     )
     :effect (and
         (not (in s136))
         (in s36)
         (increase (total-cost) 21)
     )
    )

    (:action transition136-2
     :parameters ()
     :precondition (and
         (in s136)
     )
     :effect (and
         (not (in s136))
         (in s136)
         (increase (total-cost) 21)
     )
    )

    (:action transition136-3
     :parameters ()
     :precondition (and
         (in s136)
     )
     :effect (and
         (not (in s136))
         (in s116)
         (increase (total-cost) 21)
     )
    )

    (:action transition136-4
     :parameters ()
     :precondition (and
         (in s136)
     )
     :effect (and
         (not (in s136))
         (in s136)
         (increase (total-cost) 30)
     )
    )

    (:action transition136-5
     :parameters ()
     :precondition (and
         (in s136)
     )
     :effect (and
         (not (in s136))
         (in s136)
         (increase (total-cost) 30)
     )
    )

    (:action transition137-0
     :parameters ()
     :precondition (and
         (in s137)
     )
     :effect (and
         (not (in s137))
         (in s237)
         (increase (total-cost) 21)
     )
    )

    (:action transition137-1
     :parameters ()
     :precondition (and
         (in s137)
     )
     :effect (and
         (not (in s137))
         (in s37)
         (increase (total-cost) 21)
     )
    )

    (:action transition137-2
     :parameters ()
     :precondition (and
         (in s137)
     )
     :effect (and
         (not (in s137))
         (in s137)
         (increase (total-cost) 21)
     )
    )

    (:action transition137-3
     :parameters ()
     :precondition (and
         (in s137)
     )
     :effect (and
         (not (in s137))
         (in s117)
         (increase (total-cost) 21)
     )
    )

    (:action transition137-4
     :parameters ()
     :precondition (and
         (in s137)
     )
     :effect (and
         (not (in s137))
         (in s137)
         (increase (total-cost) 30)
     )
    )

    (:action transition137-5
     :parameters ()
     :precondition (and
         (in s137)
     )
     :effect (and
         (not (in s137))
         (in s137)
         (increase (total-cost) 30)
     )
    )

    (:action transition138-0
     :parameters ()
     :precondition (and
         (in s138)
     )
     :effect (and
         (not (in s138))
         (in s238)
         (increase (total-cost) 21)
     )
    )

    (:action transition138-1
     :parameters ()
     :precondition (and
         (in s138)
     )
     :effect (and
         (not (in s138))
         (in s38)
         (increase (total-cost) 21)
     )
    )

    (:action transition138-2
     :parameters ()
     :precondition (and
         (in s138)
     )
     :effect (and
         (not (in s138))
         (in s138)
         (increase (total-cost) 21)
     )
    )

    (:action transition138-3
     :parameters ()
     :precondition (and
         (in s138)
     )
     :effect (and
         (not (in s138))
         (in s118)
         (increase (total-cost) 21)
     )
    )

    (:action transition138-4
     :parameters ()
     :precondition (and
         (in s138)
     )
     :effect (and
         (not (in s138))
         (in s138)
         (increase (total-cost) 30)
     )
    )

    (:action transition138-5
     :parameters ()
     :precondition (and
         (in s138)
     )
     :effect (and
         (not (in s138))
         (in s138)
         (increase (total-cost) 30)
     )
    )

    (:action transition139-0
     :parameters ()
     :precondition (and
         (in s139)
     )
     :effect (and
         (not (in s139))
         (in s239)
         (increase (total-cost) 21)
     )
    )

    (:action transition139-1
     :parameters ()
     :precondition (and
         (in s139)
     )
     :effect (and
         (not (in s139))
         (in s39)
         (increase (total-cost) 21)
     )
    )

    (:action transition139-2
     :parameters ()
     :precondition (and
         (in s139)
     )
     :effect (and
         (not (in s139))
         (in s139)
         (increase (total-cost) 21)
     )
    )

    (:action transition139-3
     :parameters ()
     :precondition (and
         (in s139)
     )
     :effect (and
         (not (in s139))
         (in s119)
         (increase (total-cost) 21)
     )
    )

    (:action transition139-4
     :parameters ()
     :precondition (and
         (in s139)
     )
     :effect (and
         (not (in s139))
         (in s139)
         (increase (total-cost) 30)
     )
    )

    (:action transition139-5
     :parameters ()
     :precondition (and
         (in s139)
     )
     :effect (and
         (not (in s139))
         (in s139)
         (increase (total-cost) 30)
     )
    )

    (:action transition140-0
     :parameters ()
     :precondition (and
         (in s140)
     )
     :effect (and
         (not (in s140))
         (in s240)
         (increase (total-cost) 21)
     )
    )

    (:action transition140-1
     :parameters ()
     :precondition (and
         (in s140)
     )
     :effect (and
         (not (in s140))
         (in s40)
         (increase (total-cost) 21)
     )
    )

    (:action transition140-2
     :parameters ()
     :precondition (and
         (in s140)
     )
     :effect (and
         (not (in s140))
         (in s160)
         (increase (total-cost) 21)
     )
    )

    (:action transition140-3
     :parameters ()
     :precondition (and
         (in s140)
     )
     :effect (and
         (not (in s140))
         (in s140)
         (increase (total-cost) 21)
     )
    )

    (:action transition140-4
     :parameters ()
     :precondition (and
         (in s140)
     )
     :effect (and
         (not (in s140))
         (in s140)
         (increase (total-cost) 30)
     )
    )

    (:action transition140-5
     :parameters ()
     :precondition (and
         (in s140)
     )
     :effect (and
         (not (in s140))
         (in s140)
         (increase (total-cost) 30)
     )
    )

    (:action transition141-0
     :parameters ()
     :precondition (and
         (in s141)
     )
     :effect (and
         (not (in s141))
         (in s241)
         (increase (total-cost) 21)
     )
    )

    (:action transition141-1
     :parameters ()
     :precondition (and
         (in s141)
     )
     :effect (and
         (not (in s141))
         (in s41)
         (increase (total-cost) 21)
     )
    )

    (:action transition141-2
     :parameters ()
     :precondition (and
         (in s141)
     )
     :effect (and
         (not (in s141))
         (in s161)
         (increase (total-cost) 21)
     )
    )

    (:action transition141-3
     :parameters ()
     :precondition (and
         (in s141)
     )
     :effect (and
         (not (in s141))
         (in s141)
         (increase (total-cost) 21)
     )
    )

    (:action transition141-4
     :parameters ()
     :precondition (and
         (in s141)
     )
     :effect (and
         (not (in s141))
         (in s141)
         (increase (total-cost) 30)
     )
    )

    (:action transition141-5
     :parameters ()
     :precondition (and
         (in s141)
     )
     :effect (and
         (not (in s141))
         (in s141)
         (increase (total-cost) 30)
     )
    )

    (:action transition142-0
     :parameters ()
     :precondition (and
         (in s142)
     )
     :effect (and
         (not (in s142))
         (in s242)
         (increase (total-cost) 21)
     )
    )

    (:action transition142-1
     :parameters ()
     :precondition (and
         (in s142)
     )
     :effect (and
         (not (in s142))
         (in s42)
         (increase (total-cost) 21)
     )
    )

    (:action transition142-2
     :parameters ()
     :precondition (and
         (in s142)
     )
     :effect (and
         (not (in s142))
         (in s162)
         (increase (total-cost) 21)
     )
    )

    (:action transition142-3
     :parameters ()
     :precondition (and
         (in s142)
     )
     :effect (and
         (not (in s142))
         (in s142)
         (increase (total-cost) 21)
     )
    )

    (:action transition142-4
     :parameters ()
     :precondition (and
         (in s142)
     )
     :effect (and
         (not (in s142))
         (in s142)
         (increase (total-cost) 30)
     )
    )

    (:action transition142-5
     :parameters ()
     :precondition (and
         (in s142)
     )
     :effect (and
         (not (in s142))
         (in s142)
         (increase (total-cost) 30)
     )
    )

    (:action transition143-0
     :parameters ()
     :precondition (and
         (in s143)
     )
     :effect (and
         (not (in s143))
         (in s243)
         (increase (total-cost) 21)
     )
    )

    (:action transition143-1
     :parameters ()
     :precondition (and
         (in s143)
     )
     :effect (and
         (not (in s143))
         (in s43)
         (increase (total-cost) 21)
     )
    )

    (:action transition143-2
     :parameters ()
     :precondition (and
         (in s143)
     )
     :effect (and
         (not (in s143))
         (in s163)
         (increase (total-cost) 21)
     )
    )

    (:action transition143-3
     :parameters ()
     :precondition (and
         (in s143)
     )
     :effect (and
         (not (in s143))
         (in s143)
         (increase (total-cost) 21)
     )
    )

    (:action transition143-4
     :parameters ()
     :precondition (and
         (in s143)
     )
     :effect (and
         (not (in s143))
         (in s143)
         (increase (total-cost) 30)
     )
    )

    (:action transition143-5
     :parameters ()
     :precondition (and
         (in s143)
     )
     :effect (and
         (not (in s143))
         (in s143)
         (increase (total-cost) 30)
     )
    )

    (:action transition144-0
     :parameters ()
     :precondition (and
         (in s144)
     )
     :effect (and
         (not (in s144))
         (in s244)
         (increase (total-cost) 21)
     )
    )

    (:action transition144-1
     :parameters ()
     :precondition (and
         (in s144)
     )
     :effect (and
         (not (in s144))
         (in s44)
         (increase (total-cost) 21)
     )
    )

    (:action transition144-2
     :parameters ()
     :precondition (and
         (in s144)
     )
     :effect (and
         (not (in s144))
         (in s164)
         (increase (total-cost) 21)
     )
    )

    (:action transition144-3
     :parameters ()
     :precondition (and
         (in s144)
     )
     :effect (and
         (not (in s144))
         (in s144)
         (increase (total-cost) 21)
     )
    )

    (:action transition144-4
     :parameters ()
     :precondition (and
         (in s144)
     )
     :effect (and
         (not (in s144))
         (in s144)
         (increase (total-cost) 30)
     )
    )

    (:action transition144-5
     :parameters ()
     :precondition (and
         (in s144)
     )
     :effect (and
         (not (in s144))
         (in s144)
         (increase (total-cost) 30)
     )
    )

    (:action transition145-0
     :parameters ()
     :precondition (and
         (in s145)
     )
     :effect (and
         (not (in s145))
         (in s245)
         (increase (total-cost) 21)
     )
    )

    (:action transition145-1
     :parameters ()
     :precondition (and
         (in s145)
     )
     :effect (and
         (not (in s145))
         (in s45)
         (increase (total-cost) 21)
     )
    )

    (:action transition145-2
     :parameters ()
     :precondition (and
         (in s145)
     )
     :effect (and
         (not (in s145))
         (in s165)
         (increase (total-cost) 21)
     )
    )

    (:action transition145-3
     :parameters ()
     :precondition (and
         (in s145)
     )
     :effect (and
         (not (in s145))
         (in s145)
         (increase (total-cost) 21)
     )
    )

    (:action transition145-4
     :parameters ()
     :precondition (and
         (in s145)
     )
     :effect (and
         (not (in s145))
         (in s145)
         (increase (total-cost) 30)
     )
    )

    (:action transition145-5
     :parameters ()
     :precondition (and
         (in s145)
     )
     :effect (and
         (not (in s145))
         (in s145)
         (increase (total-cost) 30)
     )
    )

    (:action transition146-0
     :parameters ()
     :precondition (and
         (in s146)
     )
     :effect (and
         (not (in s146))
         (in s246)
         (increase (total-cost) 21)
     )
    )

    (:action transition146-1
     :parameters ()
     :precondition (and
         (in s146)
     )
     :effect (and
         (not (in s146))
         (in s46)
         (increase (total-cost) 21)
     )
    )

    (:action transition146-2
     :parameters ()
     :precondition (and
         (in s146)
     )
     :effect (and
         (not (in s146))
         (in s166)
         (increase (total-cost) 21)
     )
    )

    (:action transition146-3
     :parameters ()
     :precondition (and
         (in s146)
     )
     :effect (and
         (not (in s146))
         (in s146)
         (increase (total-cost) 21)
     )
    )

    (:action transition146-4
     :parameters ()
     :precondition (and
         (in s146)
     )
     :effect (and
         (not (in s146))
         (in s146)
         (increase (total-cost) 30)
     )
    )

    (:action transition146-5
     :parameters ()
     :precondition (and
         (in s146)
     )
     :effect (and
         (not (in s146))
         (in s146)
         (increase (total-cost) 30)
     )
    )

    (:action transition147-0
     :parameters ()
     :precondition (and
         (in s147)
     )
     :effect (and
         (not (in s147))
         (in s247)
         (increase (total-cost) 21)
     )
    )

    (:action transition147-1
     :parameters ()
     :precondition (and
         (in s147)
     )
     :effect (and
         (not (in s147))
         (in s47)
         (increase (total-cost) 21)
     )
    )

    (:action transition147-2
     :parameters ()
     :precondition (and
         (in s147)
     )
     :effect (and
         (not (in s147))
         (in s167)
         (increase (total-cost) 21)
     )
    )

    (:action transition147-3
     :parameters ()
     :precondition (and
         (in s147)
     )
     :effect (and
         (not (in s147))
         (in s147)
         (increase (total-cost) 21)
     )
    )

    (:action transition147-4
     :parameters ()
     :precondition (and
         (in s147)
     )
     :effect (and
         (not (in s147))
         (in s147)
         (increase (total-cost) 30)
     )
    )

    (:action transition147-5
     :parameters ()
     :precondition (and
         (in s147)
     )
     :effect (and
         (not (in s147))
         (in s147)
         (increase (total-cost) 30)
     )
    )

    (:action transition148-0
     :parameters ()
     :precondition (and
         (in s148)
     )
     :effect (and
         (not (in s148))
         (in s248)
         (increase (total-cost) 21)
     )
    )

    (:action transition148-1
     :parameters ()
     :precondition (and
         (in s148)
     )
     :effect (and
         (not (in s148))
         (in s48)
         (increase (total-cost) 21)
     )
    )

    (:action transition148-2
     :parameters ()
     :precondition (and
         (in s148)
     )
     :effect (and
         (not (in s148))
         (in s168)
         (increase (total-cost) 21)
     )
    )

    (:action transition148-3
     :parameters ()
     :precondition (and
         (in s148)
     )
     :effect (and
         (not (in s148))
         (in s148)
         (increase (total-cost) 21)
     )
    )

    (:action transition148-4
     :parameters ()
     :precondition (and
         (in s148)
     )
     :effect (and
         (not (in s148))
         (in s148)
         (increase (total-cost) 30)
     )
    )

    (:action transition148-5
     :parameters ()
     :precondition (and
         (in s148)
     )
     :effect (and
         (not (in s148))
         (in s148)
         (increase (total-cost) 30)
     )
    )

    (:action transition149-0
     :parameters ()
     :precondition (and
         (in s149)
     )
     :effect (and
         (not (in s149))
         (in s249)
         (increase (total-cost) 21)
     )
    )

    (:action transition149-1
     :parameters ()
     :precondition (and
         (in s149)
     )
     :effect (and
         (not (in s149))
         (in s49)
         (increase (total-cost) 21)
     )
    )

    (:action transition149-2
     :parameters ()
     :precondition (and
         (in s149)
     )
     :effect (and
         (not (in s149))
         (in s169)
         (increase (total-cost) 21)
     )
    )

    (:action transition149-3
     :parameters ()
     :precondition (and
         (in s149)
     )
     :effect (and
         (not (in s149))
         (in s149)
         (increase (total-cost) 21)
     )
    )

    (:action transition149-4
     :parameters ()
     :precondition (and
         (in s149)
     )
     :effect (and
         (not (in s149))
         (in s149)
         (increase (total-cost) 30)
     )
    )

    (:action transition149-5
     :parameters ()
     :precondition (and
         (in s149)
     )
     :effect (and
         (not (in s149))
         (in s149)
         (increase (total-cost) 30)
     )
    )

    (:action transition150-0
     :parameters ()
     :precondition (and
         (in s150)
     )
     :effect (and
         (not (in s150))
         (in s250)
         (increase (total-cost) 21)
     )
    )

    (:action transition150-1
     :parameters ()
     :precondition (and
         (in s150)
     )
     :effect (and
         (not (in s150))
         (in s50)
         (increase (total-cost) 21)
     )
    )

    (:action transition150-2
     :parameters ()
     :precondition (and
         (in s150)
     )
     :effect (and
         (not (in s150))
         (in s170)
         (increase (total-cost) 21)
     )
    )

    (:action transition150-3
     :parameters ()
     :precondition (and
         (in s150)
     )
     :effect (and
         (not (in s150))
         (in s150)
         (increase (total-cost) 21)
     )
    )

    (:action transition150-4
     :parameters ()
     :precondition (and
         (in s150)
     )
     :effect (and
         (not (in s150))
         (in s150)
         (increase (total-cost) 30)
     )
    )

    (:action transition150-5
     :parameters ()
     :precondition (and
         (in s150)
     )
     :effect (and
         (not (in s150))
         (in s150)
         (increase (total-cost) 30)
     )
    )

    (:action transition151-0
     :parameters ()
     :precondition (and
         (in s151)
     )
     :effect (and
         (not (in s151))
         (in s251)
         (increase (total-cost) 21)
     )
    )

    (:action transition151-1
     :parameters ()
     :precondition (and
         (in s151)
     )
     :effect (and
         (not (in s151))
         (in s51)
         (increase (total-cost) 21)
     )
    )

    (:action transition151-2
     :parameters ()
     :precondition (and
         (in s151)
     )
     :effect (and
         (not (in s151))
         (in s171)
         (increase (total-cost) 21)
     )
    )

    (:action transition151-3
     :parameters ()
     :precondition (and
         (in s151)
     )
     :effect (and
         (not (in s151))
         (in s151)
         (increase (total-cost) 21)
     )
    )

    (:action transition151-4
     :parameters ()
     :precondition (and
         (in s151)
     )
     :effect (and
         (not (in s151))
         (in s151)
         (increase (total-cost) 30)
     )
    )

    (:action transition151-5
     :parameters ()
     :precondition (and
         (in s151)
     )
     :effect (and
         (not (in s151))
         (in s151)
         (increase (total-cost) 30)
     )
    )

    (:action transition152-0
     :parameters ()
     :precondition (and
         (in s152)
     )
     :effect (and
         (not (in s152))
         (in s252)
         (increase (total-cost) 21)
     )
    )

    (:action transition152-1
     :parameters ()
     :precondition (and
         (in s152)
     )
     :effect (and
         (not (in s152))
         (in s52)
         (increase (total-cost) 21)
     )
    )

    (:action transition152-2
     :parameters ()
     :precondition (and
         (in s152)
     )
     :effect (and
         (not (in s152))
         (in s172)
         (increase (total-cost) 21)
     )
    )

    (:action transition152-3
     :parameters ()
     :precondition (and
         (in s152)
     )
     :effect (and
         (not (in s152))
         (in s152)
         (increase (total-cost) 21)
     )
    )

    (:action transition152-4
     :parameters ()
     :precondition (and
         (in s152)
     )
     :effect (and
         (not (in s152))
         (in s152)
         (increase (total-cost) 30)
     )
    )

    (:action transition152-5
     :parameters ()
     :precondition (and
         (in s152)
     )
     :effect (and
         (not (in s152))
         (in s152)
         (increase (total-cost) 30)
     )
    )

    (:action transition153-0
     :parameters ()
     :precondition (and
         (in s153)
     )
     :effect (and
         (not (in s153))
         (in s253)
         (increase (total-cost) 21)
     )
    )

    (:action transition153-1
     :parameters ()
     :precondition (and
         (in s153)
     )
     :effect (and
         (not (in s153))
         (in s53)
         (increase (total-cost) 21)
     )
    )

    (:action transition153-2
     :parameters ()
     :precondition (and
         (in s153)
     )
     :effect (and
         (not (in s153))
         (in s173)
         (increase (total-cost) 21)
     )
    )

    (:action transition153-3
     :parameters ()
     :precondition (and
         (in s153)
     )
     :effect (and
         (not (in s153))
         (in s153)
         (increase (total-cost) 21)
     )
    )

    (:action transition153-4
     :parameters ()
     :precondition (and
         (in s153)
     )
     :effect (and
         (not (in s153))
         (in s153)
         (increase (total-cost) 30)
     )
    )

    (:action transition153-5
     :parameters ()
     :precondition (and
         (in s153)
     )
     :effect (and
         (not (in s153))
         (in s153)
         (increase (total-cost) 30)
     )
    )

    (:action transition154-0
     :parameters ()
     :precondition (and
         (in s154)
     )
     :effect (and
         (not (in s154))
         (in s254)
         (increase (total-cost) 21)
     )
    )

    (:action transition154-1
     :parameters ()
     :precondition (and
         (in s154)
     )
     :effect (and
         (not (in s154))
         (in s54)
         (increase (total-cost) 21)
     )
    )

    (:action transition154-2
     :parameters ()
     :precondition (and
         (in s154)
     )
     :effect (and
         (not (in s154))
         (in s174)
         (increase (total-cost) 21)
     )
    )

    (:action transition154-3
     :parameters ()
     :precondition (and
         (in s154)
     )
     :effect (and
         (not (in s154))
         (in s154)
         (increase (total-cost) 21)
     )
    )

    (:action transition154-4
     :parameters ()
     :precondition (and
         (in s154)
     )
     :effect (and
         (not (in s154))
         (in s154)
         (increase (total-cost) 30)
     )
    )

    (:action transition154-5
     :parameters ()
     :precondition (and
         (in s154)
     )
     :effect (and
         (not (in s154))
         (in s154)
         (increase (total-cost) 30)
     )
    )

    (:action transition155-0
     :parameters ()
     :precondition (and
         (in s155)
     )
     :effect (and
         (not (in s155))
         (in s255)
         (increase (total-cost) 21)
     )
    )

    (:action transition155-1
     :parameters ()
     :precondition (and
         (in s155)
     )
     :effect (and
         (not (in s155))
         (in s55)
         (increase (total-cost) 21)
     )
    )

    (:action transition155-2
     :parameters ()
     :precondition (and
         (in s155)
     )
     :effect (and
         (not (in s155))
         (in s175)
         (increase (total-cost) 21)
     )
    )

    (:action transition155-3
     :parameters ()
     :precondition (and
         (in s155)
     )
     :effect (and
         (not (in s155))
         (in s155)
         (increase (total-cost) 21)
     )
    )

    (:action transition155-4
     :parameters ()
     :precondition (and
         (in s155)
     )
     :effect (and
         (not (in s155))
         (in s155)
         (increase (total-cost) 30)
     )
    )

    (:action transition155-5
     :parameters ()
     :precondition (and
         (in s155)
     )
     :effect (and
         (not (in s155))
         (in s155)
         (increase (total-cost) 30)
     )
    )

    (:action transition156-0
     :parameters ()
     :precondition (and
         (in s156)
     )
     :effect (and
         (not (in s156))
         (in s256)
         (increase (total-cost) 21)
     )
    )

    (:action transition156-1
     :parameters ()
     :precondition (and
         (in s156)
     )
     :effect (and
         (not (in s156))
         (in s56)
         (increase (total-cost) 21)
     )
    )

    (:action transition156-2
     :parameters ()
     :precondition (and
         (in s156)
     )
     :effect (and
         (not (in s156))
         (in s176)
         (increase (total-cost) 21)
     )
    )

    (:action transition156-3
     :parameters ()
     :precondition (and
         (in s156)
     )
     :effect (and
         (not (in s156))
         (in s156)
         (increase (total-cost) 21)
     )
    )

    (:action transition156-4
     :parameters ()
     :precondition (and
         (in s156)
     )
     :effect (and
         (not (in s156))
         (in s156)
         (increase (total-cost) 30)
     )
    )

    (:action transition156-5
     :parameters ()
     :precondition (and
         (in s156)
     )
     :effect (and
         (not (in s156))
         (in s156)
         (increase (total-cost) 30)
     )
    )

    (:action transition157-0
     :parameters ()
     :precondition (and
         (in s157)
     )
     :effect (and
         (not (in s157))
         (in s257)
         (increase (total-cost) 21)
     )
    )

    (:action transition157-1
     :parameters ()
     :precondition (and
         (in s157)
     )
     :effect (and
         (not (in s157))
         (in s57)
         (increase (total-cost) 21)
     )
    )

    (:action transition157-2
     :parameters ()
     :precondition (and
         (in s157)
     )
     :effect (and
         (not (in s157))
         (in s177)
         (increase (total-cost) 21)
     )
    )

    (:action transition157-3
     :parameters ()
     :precondition (and
         (in s157)
     )
     :effect (and
         (not (in s157))
         (in s157)
         (increase (total-cost) 21)
     )
    )

    (:action transition157-4
     :parameters ()
     :precondition (and
         (in s157)
     )
     :effect (and
         (not (in s157))
         (in s157)
         (increase (total-cost) 30)
     )
    )

    (:action transition157-5
     :parameters ()
     :precondition (and
         (in s157)
     )
     :effect (and
         (not (in s157))
         (in s157)
         (increase (total-cost) 30)
     )
    )

    (:action transition158-0
     :parameters ()
     :precondition (and
         (in s158)
     )
     :effect (and
         (not (in s158))
         (in s258)
         (increase (total-cost) 21)
     )
    )

    (:action transition158-1
     :parameters ()
     :precondition (and
         (in s158)
     )
     :effect (and
         (not (in s158))
         (in s58)
         (increase (total-cost) 21)
     )
    )

    (:action transition158-2
     :parameters ()
     :precondition (and
         (in s158)
     )
     :effect (and
         (not (in s158))
         (in s178)
         (increase (total-cost) 21)
     )
    )

    (:action transition158-3
     :parameters ()
     :precondition (and
         (in s158)
     )
     :effect (and
         (not (in s158))
         (in s158)
         (increase (total-cost) 21)
     )
    )

    (:action transition158-4
     :parameters ()
     :precondition (and
         (in s158)
     )
     :effect (and
         (not (in s158))
         (in s158)
         (increase (total-cost) 30)
     )
    )

    (:action transition158-5
     :parameters ()
     :precondition (and
         (in s158)
     )
     :effect (and
         (not (in s158))
         (in s158)
         (increase (total-cost) 30)
     )
    )

    (:action transition159-0
     :parameters ()
     :precondition (and
         (in s159)
     )
     :effect (and
         (not (in s159))
         (in s259)
         (increase (total-cost) 21)
     )
    )

    (:action transition159-1
     :parameters ()
     :precondition (and
         (in s159)
     )
     :effect (and
         (not (in s159))
         (in s59)
         (increase (total-cost) 21)
     )
    )

    (:action transition159-2
     :parameters ()
     :precondition (and
         (in s159)
     )
     :effect (and
         (not (in s159))
         (in s179)
         (increase (total-cost) 21)
     )
    )

    (:action transition159-3
     :parameters ()
     :precondition (and
         (in s159)
     )
     :effect (and
         (not (in s159))
         (in s159)
         (increase (total-cost) 21)
     )
    )

    (:action transition159-4
     :parameters ()
     :precondition (and
         (in s159)
     )
     :effect (and
         (not (in s159))
         (in s159)
         (increase (total-cost) 30)
     )
    )

    (:action transition159-5
     :parameters ()
     :precondition (and
         (in s159)
     )
     :effect (and
         (not (in s159))
         (in s159)
         (increase (total-cost) 30)
     )
    )

    (:action transition160-0
     :parameters ()
     :precondition (and
         (in s160)
     )
     :effect (and
         (not (in s160))
         (in s260)
         (increase (total-cost) 21)
     )
    )

    (:action transition160-1
     :parameters ()
     :precondition (and
         (in s160)
     )
     :effect (and
         (not (in s160))
         (in s60)
         (increase (total-cost) 21)
     )
    )

    (:action transition160-2
     :parameters ()
     :precondition (and
         (in s160)
     )
     :effect (and
         (not (in s160))
         (in s180)
         (increase (total-cost) 21)
     )
    )

    (:action transition160-3
     :parameters ()
     :precondition (and
         (in s160)
     )
     :effect (and
         (not (in s160))
         (in s140)
         (increase (total-cost) 21)
     )
    )

    (:action transition160-4
     :parameters ()
     :precondition (and
         (in s160)
     )
     :effect (and
         (not (in s160))
         (in s160)
         (increase (total-cost) 30)
     )
    )

    (:action transition160-5
     :parameters ()
     :precondition (and
         (in s160)
     )
     :effect (and
         (not (in s160))
         (in s160)
         (increase (total-cost) 30)
     )
    )

    (:action transition161-0
     :parameters ()
     :precondition (and
         (in s161)
     )
     :effect (and
         (not (in s161))
         (in s261)
         (increase (total-cost) 21)
     )
    )

    (:action transition161-1
     :parameters ()
     :precondition (and
         (in s161)
     )
     :effect (and
         (not (in s161))
         (in s61)
         (increase (total-cost) 21)
     )
    )

    (:action transition161-2
     :parameters ()
     :precondition (and
         (in s161)
     )
     :effect (and
         (not (in s161))
         (in s181)
         (increase (total-cost) 21)
     )
    )

    (:action transition161-3
     :parameters ()
     :precondition (and
         (in s161)
     )
     :effect (and
         (not (in s161))
         (in s141)
         (increase (total-cost) 21)
     )
    )

    (:action transition161-4
     :parameters ()
     :precondition (and
         (in s161)
     )
     :effect (and
         (not (in s161))
         (in s161)
         (increase (total-cost) 30)
     )
    )

    (:action transition161-5
     :parameters ()
     :precondition (and
         (in s161)
     )
     :effect (and
         (not (in s161))
         (in s161)
         (increase (total-cost) 30)
     )
    )

    (:action transition162-0
     :parameters ()
     :precondition (and
         (in s162)
     )
     :effect (and
         (not (in s162))
         (in s262)
         (increase (total-cost) 21)
     )
    )

    (:action transition162-1
     :parameters ()
     :precondition (and
         (in s162)
     )
     :effect (and
         (not (in s162))
         (in s62)
         (increase (total-cost) 21)
     )
    )

    (:action transition162-2
     :parameters ()
     :precondition (and
         (in s162)
     )
     :effect (and
         (not (in s162))
         (in s182)
         (increase (total-cost) 21)
     )
    )

    (:action transition162-3
     :parameters ()
     :precondition (and
         (in s162)
     )
     :effect (and
         (not (in s162))
         (in s142)
         (increase (total-cost) 21)
     )
    )

    (:action transition162-4
     :parameters ()
     :precondition (and
         (in s162)
     )
     :effect (and
         (not (in s162))
         (in s162)
         (increase (total-cost) 30)
     )
    )

    (:action transition162-5
     :parameters ()
     :precondition (and
         (in s162)
     )
     :effect (and
         (not (in s162))
         (in s162)
         (increase (total-cost) 30)
     )
    )

    (:action transition163-0
     :parameters ()
     :precondition (and
         (in s163)
     )
     :effect (and
         (not (in s163))
         (in s263)
         (increase (total-cost) 21)
     )
    )

    (:action transition163-1
     :parameters ()
     :precondition (and
         (in s163)
     )
     :effect (and
         (not (in s163))
         (in s63)
         (increase (total-cost) 21)
     )
    )

    (:action transition163-2
     :parameters ()
     :precondition (and
         (in s163)
     )
     :effect (and
         (not (in s163))
         (in s183)
         (increase (total-cost) 21)
     )
    )

    (:action transition163-3
     :parameters ()
     :precondition (and
         (in s163)
     )
     :effect (and
         (not (in s163))
         (in s143)
         (increase (total-cost) 21)
     )
    )

    (:action transition163-4
     :parameters ()
     :precondition (and
         (in s163)
     )
     :effect (and
         (not (in s163))
         (in s163)
         (increase (total-cost) 30)
     )
    )

    (:action transition163-5
     :parameters ()
     :precondition (and
         (in s163)
     )
     :effect (and
         (not (in s163))
         (in s163)
         (increase (total-cost) 30)
     )
    )

    (:action transition164-0
     :parameters ()
     :precondition (and
         (in s164)
     )
     :effect (and
         (not (in s164))
         (in s264)
         (increase (total-cost) 21)
     )
    )

    (:action transition164-1
     :parameters ()
     :precondition (and
         (in s164)
     )
     :effect (and
         (not (in s164))
         (in s64)
         (increase (total-cost) 21)
     )
    )

    (:action transition164-2
     :parameters ()
     :precondition (and
         (in s164)
     )
     :effect (and
         (not (in s164))
         (in s184)
         (increase (total-cost) 21)
     )
    )

    (:action transition164-3
     :parameters ()
     :precondition (and
         (in s164)
     )
     :effect (and
         (not (in s164))
         (in s144)
         (increase (total-cost) 21)
     )
    )

    (:action transition164-4
     :parameters ()
     :precondition (and
         (in s164)
     )
     :effect (and
         (not (in s164))
         (in s164)
         (increase (total-cost) 30)
     )
    )

    (:action transition164-5
     :parameters ()
     :precondition (and
         (in s164)
     )
     :effect (and
         (not (in s164))
         (in s164)
         (increase (total-cost) 30)
     )
    )

    (:action transition165-0
     :parameters ()
     :precondition (and
         (in s165)
     )
     :effect (and
         (not (in s165))
         (in s265)
         (increase (total-cost) 21)
     )
    )

    (:action transition165-1
     :parameters ()
     :precondition (and
         (in s165)
     )
     :effect (and
         (not (in s165))
         (in s65)
         (increase (total-cost) 21)
     )
    )

    (:action transition165-2
     :parameters ()
     :precondition (and
         (in s165)
     )
     :effect (and
         (not (in s165))
         (in s185)
         (increase (total-cost) 21)
     )
    )

    (:action transition165-3
     :parameters ()
     :precondition (and
         (in s165)
     )
     :effect (and
         (not (in s165))
         (in s145)
         (increase (total-cost) 21)
     )
    )

    (:action transition165-4
     :parameters ()
     :precondition (and
         (in s165)
     )
     :effect (and
         (not (in s165))
         (in s165)
         (increase (total-cost) 30)
     )
    )

    (:action transition165-5
     :parameters ()
     :precondition (and
         (in s165)
     )
     :effect (and
         (not (in s165))
         (in s165)
         (increase (total-cost) 30)
     )
    )

    (:action transition166-0
     :parameters ()
     :precondition (and
         (in s166)
     )
     :effect (and
         (not (in s166))
         (in s266)
         (increase (total-cost) 21)
     )
    )

    (:action transition166-1
     :parameters ()
     :precondition (and
         (in s166)
     )
     :effect (and
         (not (in s166))
         (in s66)
         (increase (total-cost) 21)
     )
    )

    (:action transition166-2
     :parameters ()
     :precondition (and
         (in s166)
     )
     :effect (and
         (not (in s166))
         (in s186)
         (increase (total-cost) 21)
     )
    )

    (:action transition166-3
     :parameters ()
     :precondition (and
         (in s166)
     )
     :effect (and
         (not (in s166))
         (in s146)
         (increase (total-cost) 21)
     )
    )

    (:action transition166-4
     :parameters ()
     :precondition (and
         (in s166)
     )
     :effect (and
         (not (in s166))
         (in s166)
         (increase (total-cost) 30)
     )
    )

    (:action transition166-5
     :parameters ()
     :precondition (and
         (in s166)
     )
     :effect (and
         (not (in s166))
         (in s166)
         (increase (total-cost) 30)
     )
    )

    (:action transition167-0
     :parameters ()
     :precondition (and
         (in s167)
     )
     :effect (and
         (not (in s167))
         (in s267)
         (increase (total-cost) 21)
     )
    )

    (:action transition167-1
     :parameters ()
     :precondition (and
         (in s167)
     )
     :effect (and
         (not (in s167))
         (in s67)
         (increase (total-cost) 21)
     )
    )

    (:action transition167-2
     :parameters ()
     :precondition (and
         (in s167)
     )
     :effect (and
         (not (in s167))
         (in s187)
         (increase (total-cost) 21)
     )
    )

    (:action transition167-3
     :parameters ()
     :precondition (and
         (in s167)
     )
     :effect (and
         (not (in s167))
         (in s147)
         (increase (total-cost) 21)
     )
    )

    (:action transition167-4
     :parameters ()
     :precondition (and
         (in s167)
     )
     :effect (and
         (not (in s167))
         (in s167)
         (increase (total-cost) 30)
     )
    )

    (:action transition167-5
     :parameters ()
     :precondition (and
         (in s167)
     )
     :effect (and
         (not (in s167))
         (in s167)
         (increase (total-cost) 30)
     )
    )

    (:action transition168-0
     :parameters ()
     :precondition (and
         (in s168)
     )
     :effect (and
         (not (in s168))
         (in s268)
         (increase (total-cost) 21)
     )
    )

    (:action transition168-1
     :parameters ()
     :precondition (and
         (in s168)
     )
     :effect (and
         (not (in s168))
         (in s68)
         (increase (total-cost) 21)
     )
    )

    (:action transition168-2
     :parameters ()
     :precondition (and
         (in s168)
     )
     :effect (and
         (not (in s168))
         (in s188)
         (increase (total-cost) 21)
     )
    )

    (:action transition168-3
     :parameters ()
     :precondition (and
         (in s168)
     )
     :effect (and
         (not (in s168))
         (in s148)
         (increase (total-cost) 21)
     )
    )

    (:action transition168-4
     :parameters ()
     :precondition (and
         (in s168)
     )
     :effect (and
         (not (in s168))
         (in s168)
         (increase (total-cost) 30)
     )
    )

    (:action transition168-5
     :parameters ()
     :precondition (and
         (in s168)
     )
     :effect (and
         (not (in s168))
         (in s168)
         (increase (total-cost) 30)
     )
    )

    (:action transition169-0
     :parameters ()
     :precondition (and
         (in s169)
     )
     :effect (and
         (not (in s169))
         (in s269)
         (increase (total-cost) 21)
     )
    )

    (:action transition169-1
     :parameters ()
     :precondition (and
         (in s169)
     )
     :effect (and
         (not (in s169))
         (in s69)
         (increase (total-cost) 21)
     )
    )

    (:action transition169-2
     :parameters ()
     :precondition (and
         (in s169)
     )
     :effect (and
         (not (in s169))
         (in s189)
         (increase (total-cost) 21)
     )
    )

    (:action transition169-3
     :parameters ()
     :precondition (and
         (in s169)
     )
     :effect (and
         (not (in s169))
         (in s149)
         (increase (total-cost) 21)
     )
    )

    (:action transition169-4
     :parameters ()
     :precondition (and
         (in s169)
     )
     :effect (and
         (not (in s169))
         (in s169)
         (increase (total-cost) 30)
     )
    )

    (:action transition169-5
     :parameters ()
     :precondition (and
         (in s169)
     )
     :effect (and
         (not (in s169))
         (in s169)
         (increase (total-cost) 30)
     )
    )

    (:action transition170-0
     :parameters ()
     :precondition (and
         (in s170)
     )
     :effect (and
         (not (in s170))
         (in s270)
         (increase (total-cost) 21)
     )
    )

    (:action transition170-1
     :parameters ()
     :precondition (and
         (in s170)
     )
     :effect (and
         (not (in s170))
         (in s70)
         (increase (total-cost) 21)
     )
    )

    (:action transition170-2
     :parameters ()
     :precondition (and
         (in s170)
     )
     :effect (and
         (not (in s170))
         (in s190)
         (increase (total-cost) 21)
     )
    )

    (:action transition170-3
     :parameters ()
     :precondition (and
         (in s170)
     )
     :effect (and
         (not (in s170))
         (in s150)
         (increase (total-cost) 21)
     )
    )

    (:action transition170-4
     :parameters ()
     :precondition (and
         (in s170)
     )
     :effect (and
         (not (in s170))
         (in s170)
         (increase (total-cost) 30)
     )
    )

    (:action transition170-5
     :parameters ()
     :precondition (and
         (in s170)
     )
     :effect (and
         (not (in s170))
         (in s170)
         (increase (total-cost) 30)
     )
    )

    (:action transition171-0
     :parameters ()
     :precondition (and
         (in s171)
     )
     :effect (and
         (not (in s171))
         (in s271)
         (increase (total-cost) 21)
     )
    )

    (:action transition171-1
     :parameters ()
     :precondition (and
         (in s171)
     )
     :effect (and
         (not (in s171))
         (in s71)
         (increase (total-cost) 21)
     )
    )

    (:action transition171-2
     :parameters ()
     :precondition (and
         (in s171)
     )
     :effect (and
         (not (in s171))
         (in s191)
         (increase (total-cost) 21)
     )
    )

    (:action transition171-3
     :parameters ()
     :precondition (and
         (in s171)
     )
     :effect (and
         (not (in s171))
         (in s151)
         (increase (total-cost) 21)
     )
    )

    (:action transition171-4
     :parameters ()
     :precondition (and
         (in s171)
     )
     :effect (and
         (not (in s171))
         (in s171)
         (increase (total-cost) 30)
     )
    )

    (:action transition171-5
     :parameters ()
     :precondition (and
         (in s171)
     )
     :effect (and
         (not (in s171))
         (in s171)
         (increase (total-cost) 30)
     )
    )

    (:action transition172-0
     :parameters ()
     :precondition (and
         (in s172)
     )
     :effect (and
         (not (in s172))
         (in s272)
         (increase (total-cost) 21)
     )
    )

    (:action transition172-1
     :parameters ()
     :precondition (and
         (in s172)
     )
     :effect (and
         (not (in s172))
         (in s72)
         (increase (total-cost) 21)
     )
    )

    (:action transition172-2
     :parameters ()
     :precondition (and
         (in s172)
     )
     :effect (and
         (not (in s172))
         (in s192)
         (increase (total-cost) 21)
     )
    )

    (:action transition172-3
     :parameters ()
     :precondition (and
         (in s172)
     )
     :effect (and
         (not (in s172))
         (in s152)
         (increase (total-cost) 21)
     )
    )

    (:action transition172-4
     :parameters ()
     :precondition (and
         (in s172)
     )
     :effect (and
         (not (in s172))
         (in s172)
         (increase (total-cost) 30)
     )
    )

    (:action transition172-5
     :parameters ()
     :precondition (and
         (in s172)
     )
     :effect (and
         (not (in s172))
         (in s172)
         (increase (total-cost) 30)
     )
    )

    (:action transition173-0
     :parameters ()
     :precondition (and
         (in s173)
     )
     :effect (and
         (not (in s173))
         (in s273)
         (increase (total-cost) 21)
     )
    )

    (:action transition173-1
     :parameters ()
     :precondition (and
         (in s173)
     )
     :effect (and
         (not (in s173))
         (in s73)
         (increase (total-cost) 21)
     )
    )

    (:action transition173-2
     :parameters ()
     :precondition (and
         (in s173)
     )
     :effect (and
         (not (in s173))
         (in s193)
         (increase (total-cost) 21)
     )
    )

    (:action transition173-3
     :parameters ()
     :precondition (and
         (in s173)
     )
     :effect (and
         (not (in s173))
         (in s153)
         (increase (total-cost) 21)
     )
    )

    (:action transition173-4
     :parameters ()
     :precondition (and
         (in s173)
     )
     :effect (and
         (not (in s173))
         (in s173)
         (increase (total-cost) 30)
     )
    )

    (:action transition173-5
     :parameters ()
     :precondition (and
         (in s173)
     )
     :effect (and
         (not (in s173))
         (in s173)
         (increase (total-cost) 30)
     )
    )

    (:action transition174-0
     :parameters ()
     :precondition (and
         (in s174)
     )
     :effect (and
         (not (in s174))
         (in s274)
         (increase (total-cost) 21)
     )
    )

    (:action transition174-1
     :parameters ()
     :precondition (and
         (in s174)
     )
     :effect (and
         (not (in s174))
         (in s74)
         (increase (total-cost) 21)
     )
    )

    (:action transition174-2
     :parameters ()
     :precondition (and
         (in s174)
     )
     :effect (and
         (not (in s174))
         (in s194)
         (increase (total-cost) 21)
     )
    )

    (:action transition174-3
     :parameters ()
     :precondition (and
         (in s174)
     )
     :effect (and
         (not (in s174))
         (in s154)
         (increase (total-cost) 21)
     )
    )

    (:action transition174-4
     :parameters ()
     :precondition (and
         (in s174)
     )
     :effect (and
         (not (in s174))
         (in s174)
         (increase (total-cost) 30)
     )
    )

    (:action transition174-5
     :parameters ()
     :precondition (and
         (in s174)
     )
     :effect (and
         (not (in s174))
         (in s174)
         (increase (total-cost) 30)
     )
    )

    (:action transition175-0
     :parameters ()
     :precondition (and
         (in s175)
     )
     :effect (and
         (not (in s175))
         (in s275)
         (increase (total-cost) 21)
     )
    )

    (:action transition175-1
     :parameters ()
     :precondition (and
         (in s175)
     )
     :effect (and
         (not (in s175))
         (in s75)
         (increase (total-cost) 21)
     )
    )

    (:action transition175-2
     :parameters ()
     :precondition (and
         (in s175)
     )
     :effect (and
         (not (in s175))
         (in s195)
         (increase (total-cost) 21)
     )
    )

    (:action transition175-3
     :parameters ()
     :precondition (and
         (in s175)
     )
     :effect (and
         (not (in s175))
         (in s155)
         (increase (total-cost) 21)
     )
    )

    (:action transition175-4
     :parameters ()
     :precondition (and
         (in s175)
     )
     :effect (and
         (not (in s175))
         (in s175)
         (increase (total-cost) 30)
     )
    )

    (:action transition175-5
     :parameters ()
     :precondition (and
         (in s175)
     )
     :effect (and
         (not (in s175))
         (in s175)
         (increase (total-cost) 30)
     )
    )

    (:action transition176-0
     :parameters ()
     :precondition (and
         (in s176)
     )
     :effect (and
         (not (in s176))
         (in s276)
         (increase (total-cost) 21)
     )
    )

    (:action transition176-1
     :parameters ()
     :precondition (and
         (in s176)
     )
     :effect (and
         (not (in s176))
         (in s76)
         (increase (total-cost) 21)
     )
    )

    (:action transition176-2
     :parameters ()
     :precondition (and
         (in s176)
     )
     :effect (and
         (not (in s176))
         (in s196)
         (increase (total-cost) 21)
     )
    )

    (:action transition176-3
     :parameters ()
     :precondition (and
         (in s176)
     )
     :effect (and
         (not (in s176))
         (in s156)
         (increase (total-cost) 21)
     )
    )

    (:action transition176-4
     :parameters ()
     :precondition (and
         (in s176)
     )
     :effect (and
         (not (in s176))
         (in s176)
         (increase (total-cost) 30)
     )
    )

    (:action transition176-5
     :parameters ()
     :precondition (and
         (in s176)
     )
     :effect (and
         (not (in s176))
         (in s176)
         (increase (total-cost) 30)
     )
    )

    (:action transition177-0
     :parameters ()
     :precondition (and
         (in s177)
     )
     :effect (and
         (not (in s177))
         (in s277)
         (increase (total-cost) 21)
     )
    )

    (:action transition177-1
     :parameters ()
     :precondition (and
         (in s177)
     )
     :effect (and
         (not (in s177))
         (in s77)
         (increase (total-cost) 21)
     )
    )

    (:action transition177-2
     :parameters ()
     :precondition (and
         (in s177)
     )
     :effect (and
         (not (in s177))
         (in s197)
         (increase (total-cost) 21)
     )
    )

    (:action transition177-3
     :parameters ()
     :precondition (and
         (in s177)
     )
     :effect (and
         (not (in s177))
         (in s157)
         (increase (total-cost) 21)
     )
    )

    (:action transition177-4
     :parameters ()
     :precondition (and
         (in s177)
     )
     :effect (and
         (not (in s177))
         (in s177)
         (increase (total-cost) 30)
     )
    )

    (:action transition177-5
     :parameters ()
     :precondition (and
         (in s177)
     )
     :effect (and
         (not (in s177))
         (in s177)
         (increase (total-cost) 30)
     )
    )

    (:action transition178-0
     :parameters ()
     :precondition (and
         (in s178)
     )
     :effect (and
         (not (in s178))
         (in s278)
         (increase (total-cost) 21)
     )
    )

    (:action transition178-1
     :parameters ()
     :precondition (and
         (in s178)
     )
     :effect (and
         (not (in s178))
         (in s78)
         (increase (total-cost) 21)
     )
    )

    (:action transition178-2
     :parameters ()
     :precondition (and
         (in s178)
     )
     :effect (and
         (not (in s178))
         (in s198)
         (increase (total-cost) 21)
     )
    )

    (:action transition178-3
     :parameters ()
     :precondition (and
         (in s178)
     )
     :effect (and
         (not (in s178))
         (in s158)
         (increase (total-cost) 21)
     )
    )

    (:action transition178-4
     :parameters ()
     :precondition (and
         (in s178)
     )
     :effect (and
         (not (in s178))
         (in s178)
         (increase (total-cost) 30)
     )
    )

    (:action transition178-5
     :parameters ()
     :precondition (and
         (in s178)
     )
     :effect (and
         (not (in s178))
         (in s178)
         (increase (total-cost) 30)
     )
    )

    (:action transition179-0
     :parameters ()
     :precondition (and
         (in s179)
     )
     :effect (and
         (not (in s179))
         (in s279)
         (increase (total-cost) 21)
     )
    )

    (:action transition179-1
     :parameters ()
     :precondition (and
         (in s179)
     )
     :effect (and
         (not (in s179))
         (in s79)
         (increase (total-cost) 21)
     )
    )

    (:action transition179-2
     :parameters ()
     :precondition (and
         (in s179)
     )
     :effect (and
         (not (in s179))
         (in s199)
         (increase (total-cost) 21)
     )
    )

    (:action transition179-3
     :parameters ()
     :precondition (and
         (in s179)
     )
     :effect (and
         (not (in s179))
         (in s159)
         (increase (total-cost) 21)
     )
    )

    (:action transition179-4
     :parameters ()
     :precondition (and
         (in s179)
     )
     :effect (and
         (not (in s179))
         (in s179)
         (increase (total-cost) 30)
     )
    )

    (:action transition179-5
     :parameters ()
     :precondition (and
         (in s179)
     )
     :effect (and
         (not (in s179))
         (in s179)
         (increase (total-cost) 30)
     )
    )

    (:action transition180-0
     :parameters ()
     :precondition (and
         (in s180)
     )
     :effect (and
         (not (in s180))
         (in s280)
         (increase (total-cost) 21)
     )
    )

    (:action transition180-1
     :parameters ()
     :precondition (and
         (in s180)
     )
     :effect (and
         (not (in s180))
         (in s80)
         (increase (total-cost) 21)
     )
    )

    (:action transition180-2
     :parameters ()
     :precondition (and
         (in s180)
     )
     :effect (and
         (not (in s180))
         (in s180)
         (increase (total-cost) 21)
     )
    )

    (:action transition180-3
     :parameters ()
     :precondition (and
         (in s180)
     )
     :effect (and
         (not (in s180))
         (in s160)
         (increase (total-cost) 21)
     )
    )

    (:action transition180-4
     :parameters ()
     :precondition (and
         (in s180)
     )
     :effect (and
         (not (in s180))
         (in s180)
         (increase (total-cost) 30)
     )
    )

    (:action transition180-5
     :parameters ()
     :precondition (and
         (in s180)
     )
     :effect (and
         (not (in s180))
         (in s180)
         (increase (total-cost) 30)
     )
    )

    (:action transition181-0
     :parameters ()
     :precondition (and
         (in s181)
     )
     :effect (and
         (not (in s181))
         (in s281)
         (increase (total-cost) 21)
     )
    )

    (:action transition181-1
     :parameters ()
     :precondition (and
         (in s181)
     )
     :effect (and
         (not (in s181))
         (in s81)
         (increase (total-cost) 21)
     )
    )

    (:action transition181-2
     :parameters ()
     :precondition (and
         (in s181)
     )
     :effect (and
         (not (in s181))
         (in s181)
         (increase (total-cost) 21)
     )
    )

    (:action transition181-3
     :parameters ()
     :precondition (and
         (in s181)
     )
     :effect (and
         (not (in s181))
         (in s161)
         (increase (total-cost) 21)
     )
    )

    (:action transition181-4
     :parameters ()
     :precondition (and
         (in s181)
     )
     :effect (and
         (not (in s181))
         (in s181)
         (increase (total-cost) 30)
     )
    )

    (:action transition181-5
     :parameters ()
     :precondition (and
         (in s181)
     )
     :effect (and
         (not (in s181))
         (in s181)
         (increase (total-cost) 30)
     )
    )

    (:action transition182-0
     :parameters ()
     :precondition (and
         (in s182)
     )
     :effect (and
         (not (in s182))
         (in s282)
         (increase (total-cost) 21)
     )
    )

    (:action transition182-1
     :parameters ()
     :precondition (and
         (in s182)
     )
     :effect (and
         (not (in s182))
         (in s82)
         (increase (total-cost) 21)
     )
    )

    (:action transition182-2
     :parameters ()
     :precondition (and
         (in s182)
     )
     :effect (and
         (not (in s182))
         (in s182)
         (increase (total-cost) 21)
     )
    )

    (:action transition182-3
     :parameters ()
     :precondition (and
         (in s182)
     )
     :effect (and
         (not (in s182))
         (in s162)
         (increase (total-cost) 21)
     )
    )

    (:action transition182-4
     :parameters ()
     :precondition (and
         (in s182)
     )
     :effect (and
         (not (in s182))
         (in s182)
         (increase (total-cost) 30)
     )
    )

    (:action transition182-5
     :parameters ()
     :precondition (and
         (in s182)
     )
     :effect (and
         (not (in s182))
         (in s182)
         (increase (total-cost) 30)
     )
    )

    (:action transition183-0
     :parameters ()
     :precondition (and
         (in s183)
     )
     :effect (and
         (not (in s183))
         (in s283)
         (increase (total-cost) 21)
     )
    )

    (:action transition183-1
     :parameters ()
     :precondition (and
         (in s183)
     )
     :effect (and
         (not (in s183))
         (in s83)
         (increase (total-cost) 21)
     )
    )

    (:action transition183-2
     :parameters ()
     :precondition (and
         (in s183)
     )
     :effect (and
         (not (in s183))
         (in s183)
         (increase (total-cost) 21)
     )
    )

    (:action transition183-3
     :parameters ()
     :precondition (and
         (in s183)
     )
     :effect (and
         (not (in s183))
         (in s163)
         (increase (total-cost) 21)
     )
    )

    (:action transition183-4
     :parameters ()
     :precondition (and
         (in s183)
     )
     :effect (and
         (not (in s183))
         (in s183)
         (increase (total-cost) 30)
     )
    )

    (:action transition183-5
     :parameters ()
     :precondition (and
         (in s183)
     )
     :effect (and
         (not (in s183))
         (in s183)
         (increase (total-cost) 30)
     )
    )

    (:action transition184-0
     :parameters ()
     :precondition (and
         (in s184)
     )
     :effect (and
         (not (in s184))
         (in s284)
         (increase (total-cost) 21)
     )
    )

    (:action transition184-1
     :parameters ()
     :precondition (and
         (in s184)
     )
     :effect (and
         (not (in s184))
         (in s84)
         (increase (total-cost) 21)
     )
    )

    (:action transition184-2
     :parameters ()
     :precondition (and
         (in s184)
     )
     :effect (and
         (not (in s184))
         (in s184)
         (increase (total-cost) 21)
     )
    )

    (:action transition184-3
     :parameters ()
     :precondition (and
         (in s184)
     )
     :effect (and
         (not (in s184))
         (in s164)
         (increase (total-cost) 21)
     )
    )

    (:action transition184-4
     :parameters ()
     :precondition (and
         (in s184)
     )
     :effect (and
         (not (in s184))
         (in s184)
         (increase (total-cost) 30)
     )
    )

    (:action transition184-5
     :parameters ()
     :precondition (and
         (in s184)
     )
     :effect (and
         (not (in s184))
         (in s184)
         (increase (total-cost) 30)
     )
    )

    (:action transition185-0
     :parameters ()
     :precondition (and
         (in s185)
     )
     :effect (and
         (not (in s185))
         (in s285)
         (increase (total-cost) 21)
     )
    )

    (:action transition185-1
     :parameters ()
     :precondition (and
         (in s185)
     )
     :effect (and
         (not (in s185))
         (in s85)
         (increase (total-cost) 21)
     )
    )

    (:action transition185-2
     :parameters ()
     :precondition (and
         (in s185)
     )
     :effect (and
         (not (in s185))
         (in s185)
         (increase (total-cost) 21)
     )
    )

    (:action transition185-3
     :parameters ()
     :precondition (and
         (in s185)
     )
     :effect (and
         (not (in s185))
         (in s165)
         (increase (total-cost) 21)
     )
    )

    (:action transition185-4
     :parameters ()
     :precondition (and
         (in s185)
     )
     :effect (and
         (not (in s185))
         (in s185)
         (increase (total-cost) 30)
     )
    )

    (:action transition185-5
     :parameters ()
     :precondition (and
         (in s185)
     )
     :effect (and
         (not (in s185))
         (in s185)
         (increase (total-cost) 30)
     )
    )

    (:action transition186-0
     :parameters ()
     :precondition (and
         (in s186)
     )
     :effect (and
         (not (in s186))
         (in s286)
         (increase (total-cost) 21)
     )
    )

    (:action transition186-1
     :parameters ()
     :precondition (and
         (in s186)
     )
     :effect (and
         (not (in s186))
         (in s86)
         (increase (total-cost) 21)
     )
    )

    (:action transition186-2
     :parameters ()
     :precondition (and
         (in s186)
     )
     :effect (and
         (not (in s186))
         (in s186)
         (increase (total-cost) 21)
     )
    )

    (:action transition186-3
     :parameters ()
     :precondition (and
         (in s186)
     )
     :effect (and
         (not (in s186))
         (in s166)
         (increase (total-cost) 21)
     )
    )

    (:action transition186-4
     :parameters ()
     :precondition (and
         (in s186)
     )
     :effect (and
         (not (in s186))
         (in s186)
         (increase (total-cost) 30)
     )
    )

    (:action transition186-5
     :parameters ()
     :precondition (and
         (in s186)
     )
     :effect (and
         (not (in s186))
         (in s186)
         (increase (total-cost) 30)
     )
    )

    (:action transition187-0
     :parameters ()
     :precondition (and
         (in s187)
     )
     :effect (and
         (not (in s187))
         (in s287)
         (increase (total-cost) 21)
     )
    )

    (:action transition187-1
     :parameters ()
     :precondition (and
         (in s187)
     )
     :effect (and
         (not (in s187))
         (in s87)
         (increase (total-cost) 21)
     )
    )

    (:action transition187-2
     :parameters ()
     :precondition (and
         (in s187)
     )
     :effect (and
         (not (in s187))
         (in s187)
         (increase (total-cost) 21)
     )
    )

    (:action transition187-3
     :parameters ()
     :precondition (and
         (in s187)
     )
     :effect (and
         (not (in s187))
         (in s167)
         (increase (total-cost) 21)
     )
    )

    (:action transition187-4
     :parameters ()
     :precondition (and
         (in s187)
     )
     :effect (and
         (not (in s187))
         (in s187)
         (increase (total-cost) 30)
     )
    )

    (:action transition187-5
     :parameters ()
     :precondition (and
         (in s187)
     )
     :effect (and
         (not (in s187))
         (in s187)
         (increase (total-cost) 30)
     )
    )

    (:action transition188-0
     :parameters ()
     :precondition (and
         (in s188)
     )
     :effect (and
         (not (in s188))
         (in s288)
         (increase (total-cost) 21)
     )
    )

    (:action transition188-1
     :parameters ()
     :precondition (and
         (in s188)
     )
     :effect (and
         (not (in s188))
         (in s88)
         (increase (total-cost) 21)
     )
    )

    (:action transition188-2
     :parameters ()
     :precondition (and
         (in s188)
     )
     :effect (and
         (not (in s188))
         (in s188)
         (increase (total-cost) 21)
     )
    )

    (:action transition188-3
     :parameters ()
     :precondition (and
         (in s188)
     )
     :effect (and
         (not (in s188))
         (in s168)
         (increase (total-cost) 21)
     )
    )

    (:action transition188-4
     :parameters ()
     :precondition (and
         (in s188)
     )
     :effect (and
         (not (in s188))
         (in s188)
         (increase (total-cost) 30)
     )
    )

    (:action transition188-5
     :parameters ()
     :precondition (and
         (in s188)
     )
     :effect (and
         (not (in s188))
         (in s188)
         (increase (total-cost) 30)
     )
    )

    (:action transition189-0
     :parameters ()
     :precondition (and
         (in s189)
     )
     :effect (and
         (not (in s189))
         (in s289)
         (increase (total-cost) 21)
     )
    )

    (:action transition189-1
     :parameters ()
     :precondition (and
         (in s189)
     )
     :effect (and
         (not (in s189))
         (in s89)
         (increase (total-cost) 21)
     )
    )

    (:action transition189-2
     :parameters ()
     :precondition (and
         (in s189)
     )
     :effect (and
         (not (in s189))
         (in s189)
         (increase (total-cost) 21)
     )
    )

    (:action transition189-3
     :parameters ()
     :precondition (and
         (in s189)
     )
     :effect (and
         (not (in s189))
         (in s169)
         (increase (total-cost) 21)
     )
    )

    (:action transition189-4
     :parameters ()
     :precondition (and
         (in s189)
     )
     :effect (and
         (not (in s189))
         (in s189)
         (increase (total-cost) 30)
     )
    )

    (:action transition189-5
     :parameters ()
     :precondition (and
         (in s189)
     )
     :effect (and
         (not (in s189))
         (in s189)
         (increase (total-cost) 30)
     )
    )

    (:action transition190-0
     :parameters ()
     :precondition (and
         (in s190)
     )
     :effect (and
         (not (in s190))
         (in s290)
         (increase (total-cost) 21)
     )
    )

    (:action transition190-1
     :parameters ()
     :precondition (and
         (in s190)
     )
     :effect (and
         (not (in s190))
         (in s90)
         (increase (total-cost) 21)
     )
    )

    (:action transition190-2
     :parameters ()
     :precondition (and
         (in s190)
     )
     :effect (and
         (not (in s190))
         (in s190)
         (increase (total-cost) 21)
     )
    )

    (:action transition190-3
     :parameters ()
     :precondition (and
         (in s190)
     )
     :effect (and
         (not (in s190))
         (in s170)
         (increase (total-cost) 21)
     )
    )

    (:action transition190-4
     :parameters ()
     :precondition (and
         (in s190)
     )
     :effect (and
         (not (in s190))
         (in s190)
         (increase (total-cost) 30)
     )
    )

    (:action transition190-5
     :parameters ()
     :precondition (and
         (in s190)
     )
     :effect (and
         (not (in s190))
         (in s190)
         (increase (total-cost) 30)
     )
    )

    (:action transition191-0
     :parameters ()
     :precondition (and
         (in s191)
     )
     :effect (and
         (not (in s191))
         (in s291)
         (increase (total-cost) 21)
     )
    )

    (:action transition191-1
     :parameters ()
     :precondition (and
         (in s191)
     )
     :effect (and
         (not (in s191))
         (in s91)
         (increase (total-cost) 21)
     )
    )

    (:action transition191-2
     :parameters ()
     :precondition (and
         (in s191)
     )
     :effect (and
         (not (in s191))
         (in s191)
         (increase (total-cost) 21)
     )
    )

    (:action transition191-3
     :parameters ()
     :precondition (and
         (in s191)
     )
     :effect (and
         (not (in s191))
         (in s171)
         (increase (total-cost) 21)
     )
    )

    (:action transition191-4
     :parameters ()
     :precondition (and
         (in s191)
     )
     :effect (and
         (not (in s191))
         (in s191)
         (increase (total-cost) 30)
     )
    )

    (:action transition191-5
     :parameters ()
     :precondition (and
         (in s191)
     )
     :effect (and
         (not (in s191))
         (in s191)
         (increase (total-cost) 30)
     )
    )

    (:action transition192-0
     :parameters ()
     :precondition (and
         (in s192)
     )
     :effect (and
         (not (in s192))
         (in s292)
         (increase (total-cost) 21)
     )
    )

    (:action transition192-1
     :parameters ()
     :precondition (and
         (in s192)
     )
     :effect (and
         (not (in s192))
         (in s92)
         (increase (total-cost) 21)
     )
    )

    (:action transition192-2
     :parameters ()
     :precondition (and
         (in s192)
     )
     :effect (and
         (not (in s192))
         (in s192)
         (increase (total-cost) 21)
     )
    )

    (:action transition192-3
     :parameters ()
     :precondition (and
         (in s192)
     )
     :effect (and
         (not (in s192))
         (in s172)
         (increase (total-cost) 21)
     )
    )

    (:action transition192-4
     :parameters ()
     :precondition (and
         (in s192)
     )
     :effect (and
         (not (in s192))
         (in s192)
         (increase (total-cost) 30)
     )
    )

    (:action transition192-5
     :parameters ()
     :precondition (and
         (in s192)
     )
     :effect (and
         (not (in s192))
         (in s192)
         (increase (total-cost) 30)
     )
    )

    (:action transition193-0
     :parameters ()
     :precondition (and
         (in s193)
     )
     :effect (and
         (not (in s193))
         (in s293)
         (increase (total-cost) 21)
     )
    )

    (:action transition193-1
     :parameters ()
     :precondition (and
         (in s193)
     )
     :effect (and
         (not (in s193))
         (in s93)
         (increase (total-cost) 21)
     )
    )

    (:action transition193-2
     :parameters ()
     :precondition (and
         (in s193)
     )
     :effect (and
         (not (in s193))
         (in s193)
         (increase (total-cost) 21)
     )
    )

    (:action transition193-3
     :parameters ()
     :precondition (and
         (in s193)
     )
     :effect (and
         (not (in s193))
         (in s173)
         (increase (total-cost) 21)
     )
    )

    (:action transition193-4
     :parameters ()
     :precondition (and
         (in s193)
     )
     :effect (and
         (not (in s193))
         (in s193)
         (increase (total-cost) 30)
     )
    )

    (:action transition193-5
     :parameters ()
     :precondition (and
         (in s193)
     )
     :effect (and
         (not (in s193))
         (in s193)
         (increase (total-cost) 30)
     )
    )

    (:action transition194-0
     :parameters ()
     :precondition (and
         (in s194)
     )
     :effect (and
         (not (in s194))
         (in s294)
         (increase (total-cost) 21)
     )
    )

    (:action transition194-1
     :parameters ()
     :precondition (and
         (in s194)
     )
     :effect (and
         (not (in s194))
         (in s94)
         (increase (total-cost) 21)
     )
    )

    (:action transition194-2
     :parameters ()
     :precondition (and
         (in s194)
     )
     :effect (and
         (not (in s194))
         (in s194)
         (increase (total-cost) 21)
     )
    )

    (:action transition194-3
     :parameters ()
     :precondition (and
         (in s194)
     )
     :effect (and
         (not (in s194))
         (in s174)
         (increase (total-cost) 21)
     )
    )

    (:action transition194-4
     :parameters ()
     :precondition (and
         (in s194)
     )
     :effect (and
         (not (in s194))
         (in s194)
         (increase (total-cost) 30)
     )
    )

    (:action transition194-5
     :parameters ()
     :precondition (and
         (in s194)
     )
     :effect (and
         (not (in s194))
         (in s194)
         (increase (total-cost) 30)
     )
    )

    (:action transition195-0
     :parameters ()
     :precondition (and
         (in s195)
     )
     :effect (and
         (not (in s195))
         (in s295)
         (increase (total-cost) 21)
     )
    )

    (:action transition195-1
     :parameters ()
     :precondition (and
         (in s195)
     )
     :effect (and
         (not (in s195))
         (in s95)
         (increase (total-cost) 21)
     )
    )

    (:action transition195-2
     :parameters ()
     :precondition (and
         (in s195)
     )
     :effect (and
         (not (in s195))
         (in s195)
         (increase (total-cost) 21)
     )
    )

    (:action transition195-3
     :parameters ()
     :precondition (and
         (in s195)
     )
     :effect (and
         (not (in s195))
         (in s175)
         (increase (total-cost) 21)
     )
    )

    (:action transition195-4
     :parameters ()
     :precondition (and
         (in s195)
     )
     :effect (and
         (not (in s195))
         (in s195)
         (increase (total-cost) 30)
     )
    )

    (:action transition195-5
     :parameters ()
     :precondition (and
         (in s195)
     )
     :effect (and
         (not (in s195))
         (in s195)
         (increase (total-cost) 30)
     )
    )

    (:action transition196-0
     :parameters ()
     :precondition (and
         (in s196)
     )
     :effect (and
         (not (in s196))
         (in s296)
         (increase (total-cost) 21)
     )
    )

    (:action transition196-1
     :parameters ()
     :precondition (and
         (in s196)
     )
     :effect (and
         (not (in s196))
         (in s96)
         (increase (total-cost) 21)
     )
    )

    (:action transition196-2
     :parameters ()
     :precondition (and
         (in s196)
     )
     :effect (and
         (not (in s196))
         (in s196)
         (increase (total-cost) 21)
     )
    )

    (:action transition196-3
     :parameters ()
     :precondition (and
         (in s196)
     )
     :effect (and
         (not (in s196))
         (in s176)
         (increase (total-cost) 21)
     )
    )

    (:action transition196-4
     :parameters ()
     :precondition (and
         (in s196)
     )
     :effect (and
         (not (in s196))
         (in s196)
         (increase (total-cost) 30)
     )
    )

    (:action transition196-5
     :parameters ()
     :precondition (and
         (in s196)
     )
     :effect (and
         (not (in s196))
         (in s196)
         (increase (total-cost) 30)
     )
    )

    (:action transition197-0
     :parameters ()
     :precondition (and
         (in s197)
     )
     :effect (and
         (not (in s197))
         (in s297)
         (increase (total-cost) 21)
     )
    )

    (:action transition197-1
     :parameters ()
     :precondition (and
         (in s197)
     )
     :effect (and
         (not (in s197))
         (in s97)
         (increase (total-cost) 21)
     )
    )

    (:action transition197-2
     :parameters ()
     :precondition (and
         (in s197)
     )
     :effect (and
         (not (in s197))
         (in s197)
         (increase (total-cost) 21)
     )
    )

    (:action transition197-3
     :parameters ()
     :precondition (and
         (in s197)
     )
     :effect (and
         (not (in s197))
         (in s177)
         (increase (total-cost) 21)
     )
    )

    (:action transition197-4
     :parameters ()
     :precondition (and
         (in s197)
     )
     :effect (and
         (not (in s197))
         (in s197)
         (increase (total-cost) 30)
     )
    )

    (:action transition197-5
     :parameters ()
     :precondition (and
         (in s197)
     )
     :effect (and
         (not (in s197))
         (in s197)
         (increase (total-cost) 30)
     )
    )

    (:action transition198-0
     :parameters ()
     :precondition (and
         (in s198)
     )
     :effect (and
         (not (in s198))
         (in s298)
         (increase (total-cost) 21)
     )
    )

    (:action transition198-1
     :parameters ()
     :precondition (and
         (in s198)
     )
     :effect (and
         (not (in s198))
         (in s98)
         (increase (total-cost) 21)
     )
    )

    (:action transition198-2
     :parameters ()
     :precondition (and
         (in s198)
     )
     :effect (and
         (not (in s198))
         (in s198)
         (increase (total-cost) 21)
     )
    )

    (:action transition198-3
     :parameters ()
     :precondition (and
         (in s198)
     )
     :effect (and
         (not (in s198))
         (in s178)
         (increase (total-cost) 21)
     )
    )

    (:action transition198-4
     :parameters ()
     :precondition (and
         (in s198)
     )
     :effect (and
         (not (in s198))
         (in s198)
         (increase (total-cost) 30)
     )
    )

    (:action transition198-5
     :parameters ()
     :precondition (and
         (in s198)
     )
     :effect (and
         (not (in s198))
         (in s198)
         (increase (total-cost) 30)
     )
    )

    (:action transition199-0
     :parameters ()
     :precondition (and
         (in s199)
     )
     :effect (and
         (not (in s199))
         (in s299)
         (increase (total-cost) 21)
     )
    )

    (:action transition199-1
     :parameters ()
     :precondition (and
         (in s199)
     )
     :effect (and
         (not (in s199))
         (in s99)
         (increase (total-cost) 21)
     )
    )

    (:action transition199-2
     :parameters ()
     :precondition (and
         (in s199)
     )
     :effect (and
         (not (in s199))
         (in s199)
         (increase (total-cost) 21)
     )
    )

    (:action transition199-3
     :parameters ()
     :precondition (and
         (in s199)
     )
     :effect (and
         (not (in s199))
         (in s179)
         (increase (total-cost) 21)
     )
    )

    (:action transition199-4
     :parameters ()
     :precondition (and
         (in s199)
     )
     :effect (and
         (not (in s199))
         (in s199)
         (increase (total-cost) 30)
     )
    )

    (:action transition199-5
     :parameters ()
     :precondition (and
         (in s199)
     )
     :effect (and
         (not (in s199))
         (in s199)
         (increase (total-cost) 30)
     )
    )

    (:action transition200-0
     :parameters ()
     :precondition (and
         (in s200)
     )
     :effect (and
         (not (in s200))
         (in s300)
         (increase (total-cost) 21)
     )
    )

    (:action transition200-1
     :parameters ()
     :precondition (and
         (in s200)
     )
     :effect (and
         (not (in s200))
         (in s100)
         (increase (total-cost) 21)
     )
    )

    (:action transition200-2
     :parameters ()
     :precondition (and
         (in s200)
     )
     :effect (and
         (not (in s200))
         (in s220)
         (increase (total-cost) 21)
     )
    )

    (:action transition200-3
     :parameters ()
     :precondition (and
         (in s200)
     )
     :effect (and
         (not (in s200))
         (in s200)
         (increase (total-cost) 21)
     )
    )

    (:action transition200-4
     :parameters ()
     :precondition (and
         (in s200)
     )
     :effect (and
         (not (in s200))
         (in s200)
         (increase (total-cost) 30)
     )
    )

    (:action transition200-5
     :parameters ()
     :precondition (and
         (in s200)
     )
     :effect (and
         (not (in s200))
         (in s200)
         (increase (total-cost) 30)
     )
    )

    (:action transition201-0
     :parameters ()
     :precondition (and
         (in s201)
     )
     :effect (and
         (not (in s201))
         (in s301)
         (increase (total-cost) 21)
     )
    )

    (:action transition201-1
     :parameters ()
     :precondition (and
         (in s201)
     )
     :effect (and
         (not (in s201))
         (in s101)
         (increase (total-cost) 21)
     )
    )

    (:action transition201-2
     :parameters ()
     :precondition (and
         (in s201)
     )
     :effect (and
         (not (in s201))
         (in s221)
         (increase (total-cost) 21)
     )
    )

    (:action transition201-3
     :parameters ()
     :precondition (and
         (in s201)
     )
     :effect (and
         (not (in s201))
         (in s201)
         (increase (total-cost) 21)
     )
    )

    (:action transition201-4
     :parameters ()
     :precondition (and
         (in s201)
     )
     :effect (and
         (not (in s201))
         (in s201)
         (increase (total-cost) 30)
     )
    )

    (:action transition201-5
     :parameters ()
     :precondition (and
         (in s201)
     )
     :effect (and
         (not (in s201))
         (in s201)
         (increase (total-cost) 30)
     )
    )

    (:action transition202-0
     :parameters ()
     :precondition (and
         (in s202)
     )
     :effect (and
         (not (in s202))
         (in s302)
         (increase (total-cost) 21)
     )
    )

    (:action transition202-1
     :parameters ()
     :precondition (and
         (in s202)
     )
     :effect (and
         (not (in s202))
         (in s102)
         (increase (total-cost) 21)
     )
    )

    (:action transition202-2
     :parameters ()
     :precondition (and
         (in s202)
     )
     :effect (and
         (not (in s202))
         (in s222)
         (increase (total-cost) 21)
     )
    )

    (:action transition202-3
     :parameters ()
     :precondition (and
         (in s202)
     )
     :effect (and
         (not (in s202))
         (in s202)
         (increase (total-cost) 21)
     )
    )

    (:action transition202-4
     :parameters ()
     :precondition (and
         (in s202)
     )
     :effect (and
         (not (in s202))
         (in s202)
         (increase (total-cost) 30)
     )
    )

    (:action transition202-5
     :parameters ()
     :precondition (and
         (in s202)
     )
     :effect (and
         (not (in s202))
         (in s202)
         (increase (total-cost) 30)
     )
    )

    (:action transition203-0
     :parameters ()
     :precondition (and
         (in s203)
     )
     :effect (and
         (not (in s203))
         (in s303)
         (increase (total-cost) 21)
     )
    )

    (:action transition203-1
     :parameters ()
     :precondition (and
         (in s203)
     )
     :effect (and
         (not (in s203))
         (in s103)
         (increase (total-cost) 21)
     )
    )

    (:action transition203-2
     :parameters ()
     :precondition (and
         (in s203)
     )
     :effect (and
         (not (in s203))
         (in s223)
         (increase (total-cost) 21)
     )
    )

    (:action transition203-3
     :parameters ()
     :precondition (and
         (in s203)
     )
     :effect (and
         (not (in s203))
         (in s203)
         (increase (total-cost) 21)
     )
    )

    (:action transition203-4
     :parameters ()
     :precondition (and
         (in s203)
     )
     :effect (and
         (not (in s203))
         (in s203)
         (increase (total-cost) 30)
     )
    )

    (:action transition203-5
     :parameters ()
     :precondition (and
         (in s203)
     )
     :effect (and
         (not (in s203))
         (in s203)
         (increase (total-cost) 30)
     )
    )

    (:action transition204-0
     :parameters ()
     :precondition (and
         (in s204)
     )
     :effect (and
         (not (in s204))
         (in s304)
         (increase (total-cost) 21)
     )
    )

    (:action transition204-1
     :parameters ()
     :precondition (and
         (in s204)
     )
     :effect (and
         (not (in s204))
         (in s104)
         (increase (total-cost) 21)
     )
    )

    (:action transition204-2
     :parameters ()
     :precondition (and
         (in s204)
     )
     :effect (and
         (not (in s204))
         (in s224)
         (increase (total-cost) 21)
     )
    )

    (:action transition204-3
     :parameters ()
     :precondition (and
         (in s204)
     )
     :effect (and
         (not (in s204))
         (in s204)
         (increase (total-cost) 21)
     )
    )

    (:action transition204-4
     :parameters ()
     :precondition (and
         (in s204)
     )
     :effect (and
         (not (in s204))
         (in s204)
         (increase (total-cost) 30)
     )
    )

    (:action transition204-5
     :parameters ()
     :precondition (and
         (in s204)
     )
     :effect (and
         (not (in s204))
         (in s204)
         (increase (total-cost) 30)
     )
    )

    (:action transition205-0
     :parameters ()
     :precondition (and
         (in s205)
     )
     :effect (and
         (not (in s205))
         (in s305)
         (increase (total-cost) 21)
     )
    )

    (:action transition205-1
     :parameters ()
     :precondition (and
         (in s205)
     )
     :effect (and
         (not (in s205))
         (in s105)
         (increase (total-cost) 21)
     )
    )

    (:action transition205-2
     :parameters ()
     :precondition (and
         (in s205)
     )
     :effect (and
         (not (in s205))
         (in s225)
         (increase (total-cost) 21)
     )
    )

    (:action transition205-3
     :parameters ()
     :precondition (and
         (in s205)
     )
     :effect (and
         (not (in s205))
         (in s205)
         (increase (total-cost) 21)
     )
    )

    (:action transition205-4
     :parameters ()
     :precondition (and
         (in s205)
     )
     :effect (and
         (not (in s205))
         (in s205)
         (increase (total-cost) 30)
     )
    )

    (:action transition205-5
     :parameters ()
     :precondition (and
         (in s205)
     )
     :effect (and
         (not (in s205))
         (in s205)
         (increase (total-cost) 30)
     )
    )

    (:action transition206-0
     :parameters ()
     :precondition (and
         (in s206)
     )
     :effect (and
         (not (in s206))
         (in s306)
         (increase (total-cost) 21)
     )
    )

    (:action transition206-1
     :parameters ()
     :precondition (and
         (in s206)
     )
     :effect (and
         (not (in s206))
         (in s106)
         (increase (total-cost) 21)
     )
    )

    (:action transition206-2
     :parameters ()
     :precondition (and
         (in s206)
     )
     :effect (and
         (not (in s206))
         (in s226)
         (increase (total-cost) 21)
     )
    )

    (:action transition206-3
     :parameters ()
     :precondition (and
         (in s206)
     )
     :effect (and
         (not (in s206))
         (in s206)
         (increase (total-cost) 21)
     )
    )

    (:action transition206-4
     :parameters ()
     :precondition (and
         (in s206)
     )
     :effect (and
         (not (in s206))
         (in s206)
         (increase (total-cost) 30)
     )
    )

    (:action transition206-5
     :parameters ()
     :precondition (and
         (in s206)
     )
     :effect (and
         (not (in s206))
         (in s206)
         (increase (total-cost) 30)
     )
    )

    (:action transition207-0
     :parameters ()
     :precondition (and
         (in s207)
     )
     :effect (and
         (not (in s207))
         (in s307)
         (increase (total-cost) 21)
     )
    )

    (:action transition207-1
     :parameters ()
     :precondition (and
         (in s207)
     )
     :effect (and
         (not (in s207))
         (in s107)
         (increase (total-cost) 21)
     )
    )

    (:action transition207-2
     :parameters ()
     :precondition (and
         (in s207)
     )
     :effect (and
         (not (in s207))
         (in s227)
         (increase (total-cost) 21)
     )
    )

    (:action transition207-3
     :parameters ()
     :precondition (and
         (in s207)
     )
     :effect (and
         (not (in s207))
         (in s207)
         (increase (total-cost) 21)
     )
    )

    (:action transition207-4
     :parameters ()
     :precondition (and
         (in s207)
     )
     :effect (and
         (not (in s207))
         (in s207)
         (increase (total-cost) 30)
     )
    )

    (:action transition207-5
     :parameters ()
     :precondition (and
         (in s207)
     )
     :effect (and
         (not (in s207))
         (in s207)
         (increase (total-cost) 30)
     )
    )

    (:action transition208-0
     :parameters ()
     :precondition (and
         (in s208)
     )
     :effect (and
         (not (in s208))
         (in s308)
         (increase (total-cost) 21)
     )
    )

    (:action transition208-1
     :parameters ()
     :precondition (and
         (in s208)
     )
     :effect (and
         (not (in s208))
         (in s108)
         (increase (total-cost) 21)
     )
    )

    (:action transition208-2
     :parameters ()
     :precondition (and
         (in s208)
     )
     :effect (and
         (not (in s208))
         (in s228)
         (increase (total-cost) 21)
     )
    )

    (:action transition208-3
     :parameters ()
     :precondition (and
         (in s208)
     )
     :effect (and
         (not (in s208))
         (in s208)
         (increase (total-cost) 21)
     )
    )

    (:action transition208-4
     :parameters ()
     :precondition (and
         (in s208)
     )
     :effect (and
         (not (in s208))
         (in s208)
         (increase (total-cost) 30)
     )
    )

    (:action transition208-5
     :parameters ()
     :precondition (and
         (in s208)
     )
     :effect (and
         (not (in s208))
         (in s208)
         (increase (total-cost) 30)
     )
    )

    (:action transition209-0
     :parameters ()
     :precondition (and
         (in s209)
     )
     :effect (and
         (not (in s209))
         (in s309)
         (increase (total-cost) 21)
     )
    )

    (:action transition209-1
     :parameters ()
     :precondition (and
         (in s209)
     )
     :effect (and
         (not (in s209))
         (in s109)
         (increase (total-cost) 21)
     )
    )

    (:action transition209-2
     :parameters ()
     :precondition (and
         (in s209)
     )
     :effect (and
         (not (in s209))
         (in s229)
         (increase (total-cost) 21)
     )
    )

    (:action transition209-3
     :parameters ()
     :precondition (and
         (in s209)
     )
     :effect (and
         (not (in s209))
         (in s209)
         (increase (total-cost) 21)
     )
    )

    (:action transition209-4
     :parameters ()
     :precondition (and
         (in s209)
     )
     :effect (and
         (not (in s209))
         (in s209)
         (increase (total-cost) 30)
     )
    )

    (:action transition209-5
     :parameters ()
     :precondition (and
         (in s209)
     )
     :effect (and
         (not (in s209))
         (in s209)
         (increase (total-cost) 30)
     )
    )

    (:action transition210-0
     :parameters ()
     :precondition (and
         (in s210)
     )
     :effect (and
         (not (in s210))
         (in s310)
         (increase (total-cost) 21)
     )
    )

    (:action transition210-1
     :parameters ()
     :precondition (and
         (in s210)
     )
     :effect (and
         (not (in s210))
         (in s110)
         (increase (total-cost) 21)
     )
    )

    (:action transition210-2
     :parameters ()
     :precondition (and
         (in s210)
     )
     :effect (and
         (not (in s210))
         (in s230)
         (increase (total-cost) 21)
     )
    )

    (:action transition210-3
     :parameters ()
     :precondition (and
         (in s210)
     )
     :effect (and
         (not (in s210))
         (in s210)
         (increase (total-cost) 21)
     )
    )

    (:action transition210-4
     :parameters ()
     :precondition (and
         (in s210)
     )
     :effect (and
         (not (in s210))
         (in s210)
         (increase (total-cost) 30)
     )
    )

    (:action transition210-5
     :parameters ()
     :precondition (and
         (in s210)
     )
     :effect (and
         (not (in s210))
         (in s210)
         (increase (total-cost) 30)
     )
    )

    (:action transition211-0
     :parameters ()
     :precondition (and
         (in s211)
     )
     :effect (and
         (not (in s211))
         (in s311)
         (increase (total-cost) 21)
     )
    )

    (:action transition211-1
     :parameters ()
     :precondition (and
         (in s211)
     )
     :effect (and
         (not (in s211))
         (in s111)
         (increase (total-cost) 21)
     )
    )

    (:action transition211-2
     :parameters ()
     :precondition (and
         (in s211)
     )
     :effect (and
         (not (in s211))
         (in s231)
         (increase (total-cost) 21)
     )
    )

    (:action transition211-3
     :parameters ()
     :precondition (and
         (in s211)
     )
     :effect (and
         (not (in s211))
         (in s211)
         (increase (total-cost) 21)
     )
    )

    (:action transition211-4
     :parameters ()
     :precondition (and
         (in s211)
     )
     :effect (and
         (not (in s211))
         (in s211)
         (increase (total-cost) 30)
     )
    )

    (:action transition211-5
     :parameters ()
     :precondition (and
         (in s211)
     )
     :effect (and
         (not (in s211))
         (in s211)
         (increase (total-cost) 30)
     )
    )

    (:action transition212-0
     :parameters ()
     :precondition (and
         (in s212)
     )
     :effect (and
         (not (in s212))
         (in s312)
         (increase (total-cost) 21)
     )
    )

    (:action transition212-1
     :parameters ()
     :precondition (and
         (in s212)
     )
     :effect (and
         (not (in s212))
         (in s112)
         (increase (total-cost) 21)
     )
    )

    (:action transition212-2
     :parameters ()
     :precondition (and
         (in s212)
     )
     :effect (and
         (not (in s212))
         (in s232)
         (increase (total-cost) 21)
     )
    )

    (:action transition212-3
     :parameters ()
     :precondition (and
         (in s212)
     )
     :effect (and
         (not (in s212))
         (in s212)
         (increase (total-cost) 21)
     )
    )

    (:action transition212-4
     :parameters ()
     :precondition (and
         (in s212)
     )
     :effect (and
         (not (in s212))
         (in s212)
         (increase (total-cost) 30)
     )
    )

    (:action transition212-5
     :parameters ()
     :precondition (and
         (in s212)
     )
     :effect (and
         (not (in s212))
         (in s212)
         (increase (total-cost) 30)
     )
    )

    (:action transition213-0
     :parameters ()
     :precondition (and
         (in s213)
     )
     :effect (and
         (not (in s213))
         (in s313)
         (increase (total-cost) 21)
     )
    )

    (:action transition213-1
     :parameters ()
     :precondition (and
         (in s213)
     )
     :effect (and
         (not (in s213))
         (in s113)
         (increase (total-cost) 21)
     )
    )

    (:action transition213-2
     :parameters ()
     :precondition (and
         (in s213)
     )
     :effect (and
         (not (in s213))
         (in s233)
         (increase (total-cost) 21)
     )
    )

    (:action transition213-3
     :parameters ()
     :precondition (and
         (in s213)
     )
     :effect (and
         (not (in s213))
         (in s213)
         (increase (total-cost) 21)
     )
    )

    (:action transition213-4
     :parameters ()
     :precondition (and
         (in s213)
     )
     :effect (and
         (not (in s213))
         (in s213)
         (increase (total-cost) 30)
     )
    )

    (:action transition213-5
     :parameters ()
     :precondition (and
         (in s213)
     )
     :effect (and
         (not (in s213))
         (in s213)
         (increase (total-cost) 30)
     )
    )

    (:action transition214-0
     :parameters ()
     :precondition (and
         (in s214)
     )
     :effect (and
         (not (in s214))
         (in s314)
         (increase (total-cost) 21)
     )
    )

    (:action transition214-1
     :parameters ()
     :precondition (and
         (in s214)
     )
     :effect (and
         (not (in s214))
         (in s114)
         (increase (total-cost) 21)
     )
    )

    (:action transition214-2
     :parameters ()
     :precondition (and
         (in s214)
     )
     :effect (and
         (not (in s214))
         (in s234)
         (increase (total-cost) 21)
     )
    )

    (:action transition214-3
     :parameters ()
     :precondition (and
         (in s214)
     )
     :effect (and
         (not (in s214))
         (in s214)
         (increase (total-cost) 21)
     )
    )

    (:action transition214-4
     :parameters ()
     :precondition (and
         (in s214)
     )
     :effect (and
         (not (in s214))
         (in s214)
         (increase (total-cost) 30)
     )
    )

    (:action transition214-5
     :parameters ()
     :precondition (and
         (in s214)
     )
     :effect (and
         (not (in s214))
         (in s214)
         (increase (total-cost) 30)
     )
    )

    (:action transition215-0
     :parameters ()
     :precondition (and
         (in s215)
     )
     :effect (and
         (not (in s215))
         (in s315)
         (increase (total-cost) 21)
     )
    )

    (:action transition215-1
     :parameters ()
     :precondition (and
         (in s215)
     )
     :effect (and
         (not (in s215))
         (in s115)
         (increase (total-cost) 21)
     )
    )

    (:action transition215-2
     :parameters ()
     :precondition (and
         (in s215)
     )
     :effect (and
         (not (in s215))
         (in s235)
         (increase (total-cost) 21)
     )
    )

    (:action transition215-3
     :parameters ()
     :precondition (and
         (in s215)
     )
     :effect (and
         (not (in s215))
         (in s215)
         (increase (total-cost) 21)
     )
    )

    (:action transition215-4
     :parameters ()
     :precondition (and
         (in s215)
     )
     :effect (and
         (not (in s215))
         (in s215)
         (increase (total-cost) 30)
     )
    )

    (:action transition215-5
     :parameters ()
     :precondition (and
         (in s215)
     )
     :effect (and
         (not (in s215))
         (in s215)
         (increase (total-cost) 30)
     )
    )

    (:action transition216-0
     :parameters ()
     :precondition (and
         (in s216)
     )
     :effect (and
         (not (in s216))
         (in s316)
         (increase (total-cost) 21)
     )
    )

    (:action transition216-1
     :parameters ()
     :precondition (and
         (in s216)
     )
     :effect (and
         (not (in s216))
         (in s116)
         (increase (total-cost) 21)
     )
    )

    (:action transition216-2
     :parameters ()
     :precondition (and
         (in s216)
     )
     :effect (and
         (not (in s216))
         (in s236)
         (increase (total-cost) 21)
     )
    )

    (:action transition216-3
     :parameters ()
     :precondition (and
         (in s216)
     )
     :effect (and
         (not (in s216))
         (in s216)
         (increase (total-cost) 21)
     )
    )

    (:action transition216-4
     :parameters ()
     :precondition (and
         (in s216)
     )
     :effect (and
         (not (in s216))
         (in s216)
         (increase (total-cost) 30)
     )
    )

    (:action transition216-5
     :parameters ()
     :precondition (and
         (in s216)
     )
     :effect (and
         (not (in s216))
         (in s216)
         (increase (total-cost) 30)
     )
    )

    (:action transition217-0
     :parameters ()
     :precondition (and
         (in s217)
     )
     :effect (and
         (not (in s217))
         (in s317)
         (increase (total-cost) 21)
     )
    )

    (:action transition217-1
     :parameters ()
     :precondition (and
         (in s217)
     )
     :effect (and
         (not (in s217))
         (in s117)
         (increase (total-cost) 21)
     )
    )

    (:action transition217-2
     :parameters ()
     :precondition (and
         (in s217)
     )
     :effect (and
         (not (in s217))
         (in s237)
         (increase (total-cost) 21)
     )
    )

    (:action transition217-3
     :parameters ()
     :precondition (and
         (in s217)
     )
     :effect (and
         (not (in s217))
         (in s217)
         (increase (total-cost) 21)
     )
    )

    (:action transition217-4
     :parameters ()
     :precondition (and
         (in s217)
     )
     :effect (and
         (not (in s217))
         (in s217)
         (increase (total-cost) 30)
     )
    )

    (:action transition217-5
     :parameters ()
     :precondition (and
         (in s217)
     )
     :effect (and
         (not (in s217))
         (in s217)
         (increase (total-cost) 30)
     )
    )

    (:action transition218-0
     :parameters ()
     :precondition (and
         (in s218)
     )
     :effect (and
         (not (in s218))
         (in s318)
         (increase (total-cost) 21)
     )
    )

    (:action transition218-1
     :parameters ()
     :precondition (and
         (in s218)
     )
     :effect (and
         (not (in s218))
         (in s118)
         (increase (total-cost) 21)
     )
    )

    (:action transition218-2
     :parameters ()
     :precondition (and
         (in s218)
     )
     :effect (and
         (not (in s218))
         (in s238)
         (increase (total-cost) 21)
     )
    )

    (:action transition218-3
     :parameters ()
     :precondition (and
         (in s218)
     )
     :effect (and
         (not (in s218))
         (in s218)
         (increase (total-cost) 21)
     )
    )

    (:action transition218-4
     :parameters ()
     :precondition (and
         (in s218)
     )
     :effect (and
         (not (in s218))
         (in s218)
         (increase (total-cost) 30)
     )
    )

    (:action transition218-5
     :parameters ()
     :precondition (and
         (in s218)
     )
     :effect (and
         (not (in s218))
         (in s218)
         (increase (total-cost) 30)
     )
    )

    (:action transition219-0
     :parameters ()
     :precondition (and
         (in s219)
     )
     :effect (and
         (not (in s219))
         (in s319)
         (increase (total-cost) 21)
     )
    )

    (:action transition219-1
     :parameters ()
     :precondition (and
         (in s219)
     )
     :effect (and
         (not (in s219))
         (in s119)
         (increase (total-cost) 21)
     )
    )

    (:action transition219-2
     :parameters ()
     :precondition (and
         (in s219)
     )
     :effect (and
         (not (in s219))
         (in s239)
         (increase (total-cost) 21)
     )
    )

    (:action transition219-3
     :parameters ()
     :precondition (and
         (in s219)
     )
     :effect (and
         (not (in s219))
         (in s219)
         (increase (total-cost) 21)
     )
    )

    (:action transition219-4
     :parameters ()
     :precondition (and
         (in s219)
     )
     :effect (and
         (not (in s219))
         (in s219)
         (increase (total-cost) 30)
     )
    )

    (:action transition219-5
     :parameters ()
     :precondition (and
         (in s219)
     )
     :effect (and
         (not (in s219))
         (in s219)
         (increase (total-cost) 30)
     )
    )

    (:action transition220-0
     :parameters ()
     :precondition (and
         (in s220)
     )
     :effect (and
         (not (in s220))
         (in s320)
         (increase (total-cost) 21)
     )
    )

    (:action transition220-1
     :parameters ()
     :precondition (and
         (in s220)
     )
     :effect (and
         (not (in s220))
         (in s120)
         (increase (total-cost) 21)
     )
    )

    (:action transition220-2
     :parameters ()
     :precondition (and
         (in s220)
     )
     :effect (and
         (not (in s220))
         (in s240)
         (increase (total-cost) 21)
     )
    )

    (:action transition220-3
     :parameters ()
     :precondition (and
         (in s220)
     )
     :effect (and
         (not (in s220))
         (in s200)
         (increase (total-cost) 21)
     )
    )

    (:action transition220-4
     :parameters ()
     :precondition (and
         (in s220)
     )
     :effect (and
         (not (in s220))
         (in s220)
         (increase (total-cost) 30)
     )
    )

    (:action transition220-5
     :parameters ()
     :precondition (and
         (in s220)
     )
     :effect (and
         (not (in s220))
         (in s220)
         (increase (total-cost) 30)
     )
    )

    (:action transition221-0
     :parameters ()
     :precondition (and
         (in s221)
     )
     :effect (and
         (not (in s221))
         (in s321)
         (increase (total-cost) 21)
     )
    )

    (:action transition221-1
     :parameters ()
     :precondition (and
         (in s221)
     )
     :effect (and
         (not (in s221))
         (in s121)
         (increase (total-cost) 21)
     )
    )

    (:action transition221-2
     :parameters ()
     :precondition (and
         (in s221)
     )
     :effect (and
         (not (in s221))
         (in s241)
         (increase (total-cost) 21)
     )
    )

    (:action transition221-3
     :parameters ()
     :precondition (and
         (in s221)
     )
     :effect (and
         (not (in s221))
         (in s201)
         (increase (total-cost) 21)
     )
    )

    (:action transition221-4
     :parameters ()
     :precondition (and
         (in s221)
     )
     :effect (and
         (not (in s221))
         (in s221)
         (increase (total-cost) 30)
     )
    )

    (:action transition221-5
     :parameters ()
     :precondition (and
         (in s221)
     )
     :effect (and
         (not (in s221))
         (in s221)
         (increase (total-cost) 30)
     )
    )

    (:action transition222-0
     :parameters ()
     :precondition (and
         (in s222)
     )
     :effect (and
         (not (in s222))
         (in s322)
         (increase (total-cost) 21)
     )
    )

    (:action transition222-1
     :parameters ()
     :precondition (and
         (in s222)
     )
     :effect (and
         (not (in s222))
         (in s122)
         (increase (total-cost) 21)
     )
    )

    (:action transition222-2
     :parameters ()
     :precondition (and
         (in s222)
     )
     :effect (and
         (not (in s222))
         (in s242)
         (increase (total-cost) 21)
     )
    )

    (:action transition222-3
     :parameters ()
     :precondition (and
         (in s222)
     )
     :effect (and
         (not (in s222))
         (in s202)
         (increase (total-cost) 21)
     )
    )

    (:action transition222-4
     :parameters ()
     :precondition (and
         (in s222)
     )
     :effect (and
         (not (in s222))
         (in s222)
         (increase (total-cost) 30)
     )
    )

    (:action transition222-5
     :parameters ()
     :precondition (and
         (in s222)
     )
     :effect (and
         (not (in s222))
         (in s222)
         (increase (total-cost) 30)
     )
    )

    (:action transition223-0
     :parameters ()
     :precondition (and
         (in s223)
     )
     :effect (and
         (not (in s223))
         (in s323)
         (increase (total-cost) 21)
     )
    )

    (:action transition223-1
     :parameters ()
     :precondition (and
         (in s223)
     )
     :effect (and
         (not (in s223))
         (in s123)
         (increase (total-cost) 21)
     )
    )

    (:action transition223-2
     :parameters ()
     :precondition (and
         (in s223)
     )
     :effect (and
         (not (in s223))
         (in s243)
         (increase (total-cost) 21)
     )
    )

    (:action transition223-3
     :parameters ()
     :precondition (and
         (in s223)
     )
     :effect (and
         (not (in s223))
         (in s203)
         (increase (total-cost) 21)
     )
    )

    (:action transition223-4
     :parameters ()
     :precondition (and
         (in s223)
     )
     :effect (and
         (not (in s223))
         (in s223)
         (increase (total-cost) 30)
     )
    )

    (:action transition223-5
     :parameters ()
     :precondition (and
         (in s223)
     )
     :effect (and
         (not (in s223))
         (in s223)
         (increase (total-cost) 30)
     )
    )

    (:action transition224-0
     :parameters ()
     :precondition (and
         (in s224)
     )
     :effect (and
         (not (in s224))
         (in s324)
         (increase (total-cost) 21)
     )
    )

    (:action transition224-1
     :parameters ()
     :precondition (and
         (in s224)
     )
     :effect (and
         (not (in s224))
         (in s124)
         (increase (total-cost) 21)
     )
    )

    (:action transition224-2
     :parameters ()
     :precondition (and
         (in s224)
     )
     :effect (and
         (not (in s224))
         (in s244)
         (increase (total-cost) 21)
     )
    )

    (:action transition224-3
     :parameters ()
     :precondition (and
         (in s224)
     )
     :effect (and
         (not (in s224))
         (in s204)
         (increase (total-cost) 21)
     )
    )

    (:action transition224-4
     :parameters ()
     :precondition (and
         (in s224)
     )
     :effect (and
         (not (in s224))
         (in s224)
         (increase (total-cost) 30)
     )
    )

    (:action transition224-5
     :parameters ()
     :precondition (and
         (in s224)
     )
     :effect (and
         (not (in s224))
         (in s224)
         (increase (total-cost) 30)
     )
    )

    (:action transition225-0
     :parameters ()
     :precondition (and
         (in s225)
     )
     :effect (and
         (not (in s225))
         (in s325)
         (increase (total-cost) 21)
     )
    )

    (:action transition225-1
     :parameters ()
     :precondition (and
         (in s225)
     )
     :effect (and
         (not (in s225))
         (in s125)
         (increase (total-cost) 21)
     )
    )

    (:action transition225-2
     :parameters ()
     :precondition (and
         (in s225)
     )
     :effect (and
         (not (in s225))
         (in s245)
         (increase (total-cost) 21)
     )
    )

    (:action transition225-3
     :parameters ()
     :precondition (and
         (in s225)
     )
     :effect (and
         (not (in s225))
         (in s205)
         (increase (total-cost) 21)
     )
    )

    (:action transition225-4
     :parameters ()
     :precondition (and
         (in s225)
     )
     :effect (and
         (not (in s225))
         (in s225)
         (increase (total-cost) 30)
     )
    )

    (:action transition225-5
     :parameters ()
     :precondition (and
         (in s225)
     )
     :effect (and
         (not (in s225))
         (in s225)
         (increase (total-cost) 30)
     )
    )

    (:action transition226-0
     :parameters ()
     :precondition (and
         (in s226)
     )
     :effect (and
         (not (in s226))
         (in s326)
         (increase (total-cost) 21)
     )
    )

    (:action transition226-1
     :parameters ()
     :precondition (and
         (in s226)
     )
     :effect (and
         (not (in s226))
         (in s126)
         (increase (total-cost) 21)
     )
    )

    (:action transition226-2
     :parameters ()
     :precondition (and
         (in s226)
     )
     :effect (and
         (not (in s226))
         (in s246)
         (increase (total-cost) 21)
     )
    )

    (:action transition226-3
     :parameters ()
     :precondition (and
         (in s226)
     )
     :effect (and
         (not (in s226))
         (in s206)
         (increase (total-cost) 21)
     )
    )

    (:action transition226-4
     :parameters ()
     :precondition (and
         (in s226)
     )
     :effect (and
         (not (in s226))
         (in s226)
         (increase (total-cost) 30)
     )
    )

    (:action transition226-5
     :parameters ()
     :precondition (and
         (in s226)
     )
     :effect (and
         (not (in s226))
         (in s226)
         (increase (total-cost) 30)
     )
    )

    (:action transition227-0
     :parameters ()
     :precondition (and
         (in s227)
     )
     :effect (and
         (not (in s227))
         (in s327)
         (increase (total-cost) 21)
     )
    )

    (:action transition227-1
     :parameters ()
     :precondition (and
         (in s227)
     )
     :effect (and
         (not (in s227))
         (in s127)
         (increase (total-cost) 21)
     )
    )

    (:action transition227-2
     :parameters ()
     :precondition (and
         (in s227)
     )
     :effect (and
         (not (in s227))
         (in s247)
         (increase (total-cost) 21)
     )
    )

    (:action transition227-3
     :parameters ()
     :precondition (and
         (in s227)
     )
     :effect (and
         (not (in s227))
         (in s207)
         (increase (total-cost) 21)
     )
    )

    (:action transition227-4
     :parameters ()
     :precondition (and
         (in s227)
     )
     :effect (and
         (not (in s227))
         (in s227)
         (increase (total-cost) 30)
     )
    )

    (:action transition227-5
     :parameters ()
     :precondition (and
         (in s227)
     )
     :effect (and
         (not (in s227))
         (in s227)
         (increase (total-cost) 30)
     )
    )

    (:action transition228-0
     :parameters ()
     :precondition (and
         (in s228)
     )
     :effect (and
         (not (in s228))
         (in s328)
         (increase (total-cost) 21)
     )
    )

    (:action transition228-1
     :parameters ()
     :precondition (and
         (in s228)
     )
     :effect (and
         (not (in s228))
         (in s128)
         (increase (total-cost) 21)
     )
    )

    (:action transition228-2
     :parameters ()
     :precondition (and
         (in s228)
     )
     :effect (and
         (not (in s228))
         (in s248)
         (increase (total-cost) 21)
     )
    )

    (:action transition228-3
     :parameters ()
     :precondition (and
         (in s228)
     )
     :effect (and
         (not (in s228))
         (in s208)
         (increase (total-cost) 21)
     )
    )

    (:action transition228-4
     :parameters ()
     :precondition (and
         (in s228)
     )
     :effect (and
         (not (in s228))
         (in s228)
         (increase (total-cost) 30)
     )
    )

    (:action transition228-5
     :parameters ()
     :precondition (and
         (in s228)
     )
     :effect (and
         (not (in s228))
         (in s228)
         (increase (total-cost) 30)
     )
    )

    (:action transition229-0
     :parameters ()
     :precondition (and
         (in s229)
     )
     :effect (and
         (not (in s229))
         (in s329)
         (increase (total-cost) 21)
     )
    )

    (:action transition229-1
     :parameters ()
     :precondition (and
         (in s229)
     )
     :effect (and
         (not (in s229))
         (in s129)
         (increase (total-cost) 21)
     )
    )

    (:action transition229-2
     :parameters ()
     :precondition (and
         (in s229)
     )
     :effect (and
         (not (in s229))
         (in s249)
         (increase (total-cost) 21)
     )
    )

    (:action transition229-3
     :parameters ()
     :precondition (and
         (in s229)
     )
     :effect (and
         (not (in s229))
         (in s209)
         (increase (total-cost) 21)
     )
    )

    (:action transition229-4
     :parameters ()
     :precondition (and
         (in s229)
     )
     :effect (and
         (not (in s229))
         (in s229)
         (increase (total-cost) 30)
     )
    )

    (:action transition229-5
     :parameters ()
     :precondition (and
         (in s229)
     )
     :effect (and
         (not (in s229))
         (in s229)
         (increase (total-cost) 30)
     )
    )

    (:action transition230-0
     :parameters ()
     :precondition (and
         (in s230)
     )
     :effect (and
         (not (in s230))
         (in s330)
         (increase (total-cost) 21)
     )
    )

    (:action transition230-1
     :parameters ()
     :precondition (and
         (in s230)
     )
     :effect (and
         (not (in s230))
         (in s130)
         (increase (total-cost) 21)
     )
    )

    (:action transition230-2
     :parameters ()
     :precondition (and
         (in s230)
     )
     :effect (and
         (not (in s230))
         (in s250)
         (increase (total-cost) 21)
     )
    )

    (:action transition230-3
     :parameters ()
     :precondition (and
         (in s230)
     )
     :effect (and
         (not (in s230))
         (in s210)
         (increase (total-cost) 21)
     )
    )

    (:action transition230-4
     :parameters ()
     :precondition (and
         (in s230)
     )
     :effect (and
         (not (in s230))
         (in s230)
         (increase (total-cost) 30)
     )
    )

    (:action transition230-5
     :parameters ()
     :precondition (and
         (in s230)
     )
     :effect (and
         (not (in s230))
         (in s230)
         (increase (total-cost) 30)
     )
    )

    (:action transition231-0
     :parameters ()
     :precondition (and
         (in s231)
     )
     :effect (and
         (not (in s231))
         (in s331)
         (increase (total-cost) 21)
     )
    )

    (:action transition231-1
     :parameters ()
     :precondition (and
         (in s231)
     )
     :effect (and
         (not (in s231))
         (in s131)
         (increase (total-cost) 21)
     )
    )

    (:action transition231-2
     :parameters ()
     :precondition (and
         (in s231)
     )
     :effect (and
         (not (in s231))
         (in s251)
         (increase (total-cost) 21)
     )
    )

    (:action transition231-3
     :parameters ()
     :precondition (and
         (in s231)
     )
     :effect (and
         (not (in s231))
         (in s211)
         (increase (total-cost) 21)
     )
    )

    (:action transition231-4
     :parameters ()
     :precondition (and
         (in s231)
     )
     :effect (and
         (not (in s231))
         (in s231)
         (increase (total-cost) 30)
     )
    )

    (:action transition231-5
     :parameters ()
     :precondition (and
         (in s231)
     )
     :effect (and
         (not (in s231))
         (in s231)
         (increase (total-cost) 30)
     )
    )

    (:action transition232-0
     :parameters ()
     :precondition (and
         (in s232)
     )
     :effect (and
         (not (in s232))
         (in s332)
         (increase (total-cost) 21)
     )
    )

    (:action transition232-1
     :parameters ()
     :precondition (and
         (in s232)
     )
     :effect (and
         (not (in s232))
         (in s132)
         (increase (total-cost) 21)
     )
    )

    (:action transition232-2
     :parameters ()
     :precondition (and
         (in s232)
     )
     :effect (and
         (not (in s232))
         (in s252)
         (increase (total-cost) 21)
     )
    )

    (:action transition232-3
     :parameters ()
     :precondition (and
         (in s232)
     )
     :effect (and
         (not (in s232))
         (in s212)
         (increase (total-cost) 21)
     )
    )

    (:action transition232-4
     :parameters ()
     :precondition (and
         (in s232)
     )
     :effect (and
         (not (in s232))
         (in s232)
         (increase (total-cost) 30)
     )
    )

    (:action transition232-5
     :parameters ()
     :precondition (and
         (in s232)
     )
     :effect (and
         (not (in s232))
         (in s232)
         (increase (total-cost) 30)
     )
    )

    (:action transition233-0
     :parameters ()
     :precondition (and
         (in s233)
     )
     :effect (and
         (not (in s233))
         (in s333)
         (increase (total-cost) 21)
     )
    )

    (:action transition233-1
     :parameters ()
     :precondition (and
         (in s233)
     )
     :effect (and
         (not (in s233))
         (in s133)
         (increase (total-cost) 21)
     )
    )

    (:action transition233-2
     :parameters ()
     :precondition (and
         (in s233)
     )
     :effect (and
         (not (in s233))
         (in s253)
         (increase (total-cost) 21)
     )
    )

    (:action transition233-3
     :parameters ()
     :precondition (and
         (in s233)
     )
     :effect (and
         (not (in s233))
         (in s213)
         (increase (total-cost) 21)
     )
    )

    (:action transition233-4
     :parameters ()
     :precondition (and
         (in s233)
     )
     :effect (and
         (not (in s233))
         (in s233)
         (increase (total-cost) 30)
     )
    )

    (:action transition233-5
     :parameters ()
     :precondition (and
         (in s233)
     )
     :effect (and
         (not (in s233))
         (in s233)
         (increase (total-cost) 30)
     )
    )

    (:action transition234-0
     :parameters ()
     :precondition (and
         (in s234)
     )
     :effect (and
         (not (in s234))
         (in s334)
         (increase (total-cost) 21)
     )
    )

    (:action transition234-1
     :parameters ()
     :precondition (and
         (in s234)
     )
     :effect (and
         (not (in s234))
         (in s134)
         (increase (total-cost) 21)
     )
    )

    (:action transition234-2
     :parameters ()
     :precondition (and
         (in s234)
     )
     :effect (and
         (not (in s234))
         (in s254)
         (increase (total-cost) 21)
     )
    )

    (:action transition234-3
     :parameters ()
     :precondition (and
         (in s234)
     )
     :effect (and
         (not (in s234))
         (in s214)
         (increase (total-cost) 21)
     )
    )

    (:action transition234-4
     :parameters ()
     :precondition (and
         (in s234)
     )
     :effect (and
         (not (in s234))
         (in s234)
         (increase (total-cost) 30)
     )
    )

    (:action transition234-5
     :parameters ()
     :precondition (and
         (in s234)
     )
     :effect (and
         (not (in s234))
         (in s234)
         (increase (total-cost) 30)
     )
    )

    (:action transition235-0
     :parameters ()
     :precondition (and
         (in s235)
     )
     :effect (and
         (not (in s235))
         (in s335)
         (increase (total-cost) 21)
     )
    )

    (:action transition235-1
     :parameters ()
     :precondition (and
         (in s235)
     )
     :effect (and
         (not (in s235))
         (in s135)
         (increase (total-cost) 21)
     )
    )

    (:action transition235-2
     :parameters ()
     :precondition (and
         (in s235)
     )
     :effect (and
         (not (in s235))
         (in s255)
         (increase (total-cost) 21)
     )
    )

    (:action transition235-3
     :parameters ()
     :precondition (and
         (in s235)
     )
     :effect (and
         (not (in s235))
         (in s215)
         (increase (total-cost) 21)
     )
    )

    (:action transition235-4
     :parameters ()
     :precondition (and
         (in s235)
     )
     :effect (and
         (not (in s235))
         (in s235)
         (increase (total-cost) 30)
     )
    )

    (:action transition235-5
     :parameters ()
     :precondition (and
         (in s235)
     )
     :effect (and
         (not (in s235))
         (in s235)
         (increase (total-cost) 30)
     )
    )

    (:action transition236-0
     :parameters ()
     :precondition (and
         (in s236)
     )
     :effect (and
         (not (in s236))
         (in s336)
         (increase (total-cost) 21)
     )
    )

    (:action transition236-1
     :parameters ()
     :precondition (and
         (in s236)
     )
     :effect (and
         (not (in s236))
         (in s136)
         (increase (total-cost) 21)
     )
    )

    (:action transition236-2
     :parameters ()
     :precondition (and
         (in s236)
     )
     :effect (and
         (not (in s236))
         (in s256)
         (increase (total-cost) 21)
     )
    )

    (:action transition236-3
     :parameters ()
     :precondition (and
         (in s236)
     )
     :effect (and
         (not (in s236))
         (in s216)
         (increase (total-cost) 21)
     )
    )

    (:action transition236-4
     :parameters ()
     :precondition (and
         (in s236)
     )
     :effect (and
         (not (in s236))
         (in s236)
         (increase (total-cost) 30)
     )
    )

    (:action transition236-5
     :parameters ()
     :precondition (and
         (in s236)
     )
     :effect (and
         (not (in s236))
         (in s236)
         (increase (total-cost) 30)
     )
    )

    (:action transition237-0
     :parameters ()
     :precondition (and
         (in s237)
     )
     :effect (and
         (not (in s237))
         (in s337)
         (increase (total-cost) 21)
     )
    )

    (:action transition237-1
     :parameters ()
     :precondition (and
         (in s237)
     )
     :effect (and
         (not (in s237))
         (in s137)
         (increase (total-cost) 21)
     )
    )

    (:action transition237-2
     :parameters ()
     :precondition (and
         (in s237)
     )
     :effect (and
         (not (in s237))
         (in s257)
         (increase (total-cost) 21)
     )
    )

    (:action transition237-3
     :parameters ()
     :precondition (and
         (in s237)
     )
     :effect (and
         (not (in s237))
         (in s217)
         (increase (total-cost) 21)
     )
    )

    (:action transition237-4
     :parameters ()
     :precondition (and
         (in s237)
     )
     :effect (and
         (not (in s237))
         (in s237)
         (increase (total-cost) 30)
     )
    )

    (:action transition237-5
     :parameters ()
     :precondition (and
         (in s237)
     )
     :effect (and
         (not (in s237))
         (in s237)
         (increase (total-cost) 30)
     )
    )

    (:action transition238-0
     :parameters ()
     :precondition (and
         (in s238)
     )
     :effect (and
         (not (in s238))
         (in s338)
         (increase (total-cost) 21)
     )
    )

    (:action transition238-1
     :parameters ()
     :precondition (and
         (in s238)
     )
     :effect (and
         (not (in s238))
         (in s138)
         (increase (total-cost) 21)
     )
    )

    (:action transition238-2
     :parameters ()
     :precondition (and
         (in s238)
     )
     :effect (and
         (not (in s238))
         (in s258)
         (increase (total-cost) 21)
     )
    )

    (:action transition238-3
     :parameters ()
     :precondition (and
         (in s238)
     )
     :effect (and
         (not (in s238))
         (in s218)
         (increase (total-cost) 21)
     )
    )

    (:action transition238-4
     :parameters ()
     :precondition (and
         (in s238)
     )
     :effect (and
         (not (in s238))
         (in s238)
         (increase (total-cost) 30)
     )
    )

    (:action transition238-5
     :parameters ()
     :precondition (and
         (in s238)
     )
     :effect (and
         (not (in s238))
         (in s238)
         (increase (total-cost) 30)
     )
    )

    (:action transition239-0
     :parameters ()
     :precondition (and
         (in s239)
     )
     :effect (and
         (not (in s239))
         (in s339)
         (increase (total-cost) 21)
     )
    )

    (:action transition239-1
     :parameters ()
     :precondition (and
         (in s239)
     )
     :effect (and
         (not (in s239))
         (in s139)
         (increase (total-cost) 21)
     )
    )

    (:action transition239-2
     :parameters ()
     :precondition (and
         (in s239)
     )
     :effect (and
         (not (in s239))
         (in s259)
         (increase (total-cost) 21)
     )
    )

    (:action transition239-3
     :parameters ()
     :precondition (and
         (in s239)
     )
     :effect (and
         (not (in s239))
         (in s219)
         (increase (total-cost) 21)
     )
    )

    (:action transition239-4
     :parameters ()
     :precondition (and
         (in s239)
     )
     :effect (and
         (not (in s239))
         (in s239)
         (increase (total-cost) 30)
     )
    )

    (:action transition239-5
     :parameters ()
     :precondition (and
         (in s239)
     )
     :effect (and
         (not (in s239))
         (in s239)
         (increase (total-cost) 30)
     )
    )

    (:action transition240-0
     :parameters ()
     :precondition (and
         (in s240)
     )
     :effect (and
         (not (in s240))
         (in s340)
         (increase (total-cost) 21)
     )
    )

    (:action transition240-1
     :parameters ()
     :precondition (and
         (in s240)
     )
     :effect (and
         (not (in s240))
         (in s140)
         (increase (total-cost) 21)
     )
    )

    (:action transition240-2
     :parameters ()
     :precondition (and
         (in s240)
     )
     :effect (and
         (not (in s240))
         (in s260)
         (increase (total-cost) 21)
     )
    )

    (:action transition240-3
     :parameters ()
     :precondition (and
         (in s240)
     )
     :effect (and
         (not (in s240))
         (in s220)
         (increase (total-cost) 21)
     )
    )

    (:action transition240-4
     :parameters ()
     :precondition (and
         (in s240)
     )
     :effect (and
         (not (in s240))
         (in s240)
         (increase (total-cost) 30)
     )
    )

    (:action transition240-5
     :parameters ()
     :precondition (and
         (in s240)
     )
     :effect (and
         (not (in s240))
         (in s240)
         (increase (total-cost) 30)
     )
    )

    (:action transition241-0
     :parameters ()
     :precondition (and
         (in s241)
     )
     :effect (and
         (not (in s241))
         (in s341)
         (increase (total-cost) 21)
     )
    )

    (:action transition241-1
     :parameters ()
     :precondition (and
         (in s241)
     )
     :effect (and
         (not (in s241))
         (in s141)
         (increase (total-cost) 21)
     )
    )

    (:action transition241-2
     :parameters ()
     :precondition (and
         (in s241)
     )
     :effect (and
         (not (in s241))
         (in s261)
         (increase (total-cost) 21)
     )
    )

    (:action transition241-3
     :parameters ()
     :precondition (and
         (in s241)
     )
     :effect (and
         (not (in s241))
         (in s221)
         (increase (total-cost) 21)
     )
    )

    (:action transition241-4
     :parameters ()
     :precondition (and
         (in s241)
     )
     :effect (and
         (not (in s241))
         (in s241)
         (increase (total-cost) 30)
     )
    )

    (:action transition241-5
     :parameters ()
     :precondition (and
         (in s241)
     )
     :effect (and
         (not (in s241))
         (in s241)
         (increase (total-cost) 30)
     )
    )

    (:action transition242-0
     :parameters ()
     :precondition (and
         (in s242)
     )
     :effect (and
         (not (in s242))
         (in s342)
         (increase (total-cost) 21)
     )
    )

    (:action transition242-1
     :parameters ()
     :precondition (and
         (in s242)
     )
     :effect (and
         (not (in s242))
         (in s142)
         (increase (total-cost) 21)
     )
    )

    (:action transition242-2
     :parameters ()
     :precondition (and
         (in s242)
     )
     :effect (and
         (not (in s242))
         (in s262)
         (increase (total-cost) 21)
     )
    )

    (:action transition242-3
     :parameters ()
     :precondition (and
         (in s242)
     )
     :effect (and
         (not (in s242))
         (in s222)
         (increase (total-cost) 21)
     )
    )

    (:action transition242-4
     :parameters ()
     :precondition (and
         (in s242)
     )
     :effect (and
         (not (in s242))
         (in s242)
         (increase (total-cost) 30)
     )
    )

    (:action transition242-5
     :parameters ()
     :precondition (and
         (in s242)
     )
     :effect (and
         (not (in s242))
         (in s242)
         (increase (total-cost) 30)
     )
    )

    (:action transition243-0
     :parameters ()
     :precondition (and
         (in s243)
     )
     :effect (and
         (not (in s243))
         (in s343)
         (increase (total-cost) 21)
     )
    )

    (:action transition243-1
     :parameters ()
     :precondition (and
         (in s243)
     )
     :effect (and
         (not (in s243))
         (in s143)
         (increase (total-cost) 21)
     )
    )

    (:action transition243-2
     :parameters ()
     :precondition (and
         (in s243)
     )
     :effect (and
         (not (in s243))
         (in s263)
         (increase (total-cost) 21)
     )
    )

    (:action transition243-3
     :parameters ()
     :precondition (and
         (in s243)
     )
     :effect (and
         (not (in s243))
         (in s223)
         (increase (total-cost) 21)
     )
    )

    (:action transition243-4
     :parameters ()
     :precondition (and
         (in s243)
     )
     :effect (and
         (not (in s243))
         (in s243)
         (increase (total-cost) 30)
     )
    )

    (:action transition243-5
     :parameters ()
     :precondition (and
         (in s243)
     )
     :effect (and
         (not (in s243))
         (in s243)
         (increase (total-cost) 30)
     )
    )

    (:action transition244-0
     :parameters ()
     :precondition (and
         (in s244)
     )
     :effect (and
         (not (in s244))
         (in s344)
         (increase (total-cost) 21)
     )
    )

    (:action transition244-1
     :parameters ()
     :precondition (and
         (in s244)
     )
     :effect (and
         (not (in s244))
         (in s144)
         (increase (total-cost) 21)
     )
    )

    (:action transition244-2
     :parameters ()
     :precondition (and
         (in s244)
     )
     :effect (and
         (not (in s244))
         (in s264)
         (increase (total-cost) 21)
     )
    )

    (:action transition244-3
     :parameters ()
     :precondition (and
         (in s244)
     )
     :effect (and
         (not (in s244))
         (in s224)
         (increase (total-cost) 21)
     )
    )

    (:action transition244-4
     :parameters ()
     :precondition (and
         (in s244)
     )
     :effect (and
         (not (in s244))
         (in s244)
         (increase (total-cost) 30)
     )
    )

    (:action transition244-5
     :parameters ()
     :precondition (and
         (in s244)
     )
     :effect (and
         (not (in s244))
         (in s244)
         (increase (total-cost) 30)
     )
    )

    (:action transition245-0
     :parameters ()
     :precondition (and
         (in s245)
     )
     :effect (and
         (not (in s245))
         (in s345)
         (increase (total-cost) 21)
     )
    )

    (:action transition245-1
     :parameters ()
     :precondition (and
         (in s245)
     )
     :effect (and
         (not (in s245))
         (in s145)
         (increase (total-cost) 21)
     )
    )

    (:action transition245-2
     :parameters ()
     :precondition (and
         (in s245)
     )
     :effect (and
         (not (in s245))
         (in s265)
         (increase (total-cost) 21)
     )
    )

    (:action transition245-3
     :parameters ()
     :precondition (and
         (in s245)
     )
     :effect (and
         (not (in s245))
         (in s225)
         (increase (total-cost) 21)
     )
    )

    (:action transition245-4
     :parameters ()
     :precondition (and
         (in s245)
     )
     :effect (and
         (not (in s245))
         (in s245)
         (increase (total-cost) 30)
     )
    )

    (:action transition245-5
     :parameters ()
     :precondition (and
         (in s245)
     )
     :effect (and
         (not (in s245))
         (in s245)
         (increase (total-cost) 30)
     )
    )

    (:action transition246-0
     :parameters ()
     :precondition (and
         (in s246)
     )
     :effect (and
         (not (in s246))
         (in s346)
         (increase (total-cost) 21)
     )
    )

    (:action transition246-1
     :parameters ()
     :precondition (and
         (in s246)
     )
     :effect (and
         (not (in s246))
         (in s146)
         (increase (total-cost) 21)
     )
    )

    (:action transition246-2
     :parameters ()
     :precondition (and
         (in s246)
     )
     :effect (and
         (not (in s246))
         (in s266)
         (increase (total-cost) 21)
     )
    )

    (:action transition246-3
     :parameters ()
     :precondition (and
         (in s246)
     )
     :effect (and
         (not (in s246))
         (in s226)
         (increase (total-cost) 21)
     )
    )

    (:action transition246-4
     :parameters ()
     :precondition (and
         (in s246)
     )
     :effect (and
         (not (in s246))
         (in s246)
         (increase (total-cost) 30)
     )
    )

    (:action transition246-5
     :parameters ()
     :precondition (and
         (in s246)
     )
     :effect (and
         (not (in s246))
         (in s246)
         (increase (total-cost) 30)
     )
    )

    (:action transition247-0
     :parameters ()
     :precondition (and
         (in s247)
     )
     :effect (and
         (not (in s247))
         (in s347)
         (increase (total-cost) 21)
     )
    )

    (:action transition247-1
     :parameters ()
     :precondition (and
         (in s247)
     )
     :effect (and
         (not (in s247))
         (in s147)
         (increase (total-cost) 21)
     )
    )

    (:action transition247-2
     :parameters ()
     :precondition (and
         (in s247)
     )
     :effect (and
         (not (in s247))
         (in s267)
         (increase (total-cost) 21)
     )
    )

    (:action transition247-3
     :parameters ()
     :precondition (and
         (in s247)
     )
     :effect (and
         (not (in s247))
         (in s227)
         (increase (total-cost) 21)
     )
    )

    (:action transition247-4
     :parameters ()
     :precondition (and
         (in s247)
     )
     :effect (and
         (not (in s247))
         (in s247)
         (increase (total-cost) 30)
     )
    )

    (:action transition247-5
     :parameters ()
     :precondition (and
         (in s247)
     )
     :effect (and
         (not (in s247))
         (in s247)
         (increase (total-cost) 30)
     )
    )

    (:action transition248-0
     :parameters ()
     :precondition (and
         (in s248)
     )
     :effect (and
         (not (in s248))
         (in s348)
         (increase (total-cost) 21)
     )
    )

    (:action transition248-1
     :parameters ()
     :precondition (and
         (in s248)
     )
     :effect (and
         (not (in s248))
         (in s148)
         (increase (total-cost) 21)
     )
    )

    (:action transition248-2
     :parameters ()
     :precondition (and
         (in s248)
     )
     :effect (and
         (not (in s248))
         (in s268)
         (increase (total-cost) 21)
     )
    )

    (:action transition248-3
     :parameters ()
     :precondition (and
         (in s248)
     )
     :effect (and
         (not (in s248))
         (in s228)
         (increase (total-cost) 21)
     )
    )

    (:action transition248-4
     :parameters ()
     :precondition (and
         (in s248)
     )
     :effect (and
         (not (in s248))
         (in s248)
         (increase (total-cost) 30)
     )
    )

    (:action transition248-5
     :parameters ()
     :precondition (and
         (in s248)
     )
     :effect (and
         (not (in s248))
         (in s248)
         (increase (total-cost) 30)
     )
    )

    (:action transition249-0
     :parameters ()
     :precondition (and
         (in s249)
     )
     :effect (and
         (not (in s249))
         (in s349)
         (increase (total-cost) 21)
     )
    )

    (:action transition249-1
     :parameters ()
     :precondition (and
         (in s249)
     )
     :effect (and
         (not (in s249))
         (in s149)
         (increase (total-cost) 21)
     )
    )

    (:action transition249-2
     :parameters ()
     :precondition (and
         (in s249)
     )
     :effect (and
         (not (in s249))
         (in s269)
         (increase (total-cost) 21)
     )
    )

    (:action transition249-3
     :parameters ()
     :precondition (and
         (in s249)
     )
     :effect (and
         (not (in s249))
         (in s229)
         (increase (total-cost) 21)
     )
    )

    (:action transition249-4
     :parameters ()
     :precondition (and
         (in s249)
     )
     :effect (and
         (not (in s249))
         (in s249)
         (increase (total-cost) 30)
     )
    )

    (:action transition249-5
     :parameters ()
     :precondition (and
         (in s249)
     )
     :effect (and
         (not (in s249))
         (in s249)
         (increase (total-cost) 30)
     )
    )

    (:action transition250-0
     :parameters ()
     :precondition (and
         (in s250)
     )
     :effect (and
         (not (in s250))
         (in s350)
         (increase (total-cost) 21)
     )
    )

    (:action transition250-1
     :parameters ()
     :precondition (and
         (in s250)
     )
     :effect (and
         (not (in s250))
         (in s150)
         (increase (total-cost) 21)
     )
    )

    (:action transition250-2
     :parameters ()
     :precondition (and
         (in s250)
     )
     :effect (and
         (not (in s250))
         (in s270)
         (increase (total-cost) 21)
     )
    )

    (:action transition250-3
     :parameters ()
     :precondition (and
         (in s250)
     )
     :effect (and
         (not (in s250))
         (in s230)
         (increase (total-cost) 21)
     )
    )

    (:action transition250-4
     :parameters ()
     :precondition (and
         (in s250)
     )
     :effect (and
         (not (in s250))
         (in s250)
         (increase (total-cost) 30)
     )
    )

    (:action transition250-5
     :parameters ()
     :precondition (and
         (in s250)
     )
     :effect (and
         (not (in s250))
         (in s250)
         (increase (total-cost) 30)
     )
    )

    (:action transition251-0
     :parameters ()
     :precondition (and
         (in s251)
     )
     :effect (and
         (not (in s251))
         (in s351)
         (increase (total-cost) 21)
     )
    )

    (:action transition251-1
     :parameters ()
     :precondition (and
         (in s251)
     )
     :effect (and
         (not (in s251))
         (in s151)
         (increase (total-cost) 21)
     )
    )

    (:action transition251-2
     :parameters ()
     :precondition (and
         (in s251)
     )
     :effect (and
         (not (in s251))
         (in s271)
         (increase (total-cost) 21)
     )
    )

    (:action transition251-3
     :parameters ()
     :precondition (and
         (in s251)
     )
     :effect (and
         (not (in s251))
         (in s231)
         (increase (total-cost) 21)
     )
    )

    (:action transition251-4
     :parameters ()
     :precondition (and
         (in s251)
     )
     :effect (and
         (not (in s251))
         (in s251)
         (increase (total-cost) 30)
     )
    )

    (:action transition251-5
     :parameters ()
     :precondition (and
         (in s251)
     )
     :effect (and
         (not (in s251))
         (in s251)
         (increase (total-cost) 30)
     )
    )

    (:action transition252-0
     :parameters ()
     :precondition (and
         (in s252)
     )
     :effect (and
         (not (in s252))
         (in s352)
         (increase (total-cost) 21)
     )
    )

    (:action transition252-1
     :parameters ()
     :precondition (and
         (in s252)
     )
     :effect (and
         (not (in s252))
         (in s152)
         (increase (total-cost) 21)
     )
    )

    (:action transition252-2
     :parameters ()
     :precondition (and
         (in s252)
     )
     :effect (and
         (not (in s252))
         (in s272)
         (increase (total-cost) 21)
     )
    )

    (:action transition252-3
     :parameters ()
     :precondition (and
         (in s252)
     )
     :effect (and
         (not (in s252))
         (in s232)
         (increase (total-cost) 21)
     )
    )

    (:action transition252-4
     :parameters ()
     :precondition (and
         (in s252)
     )
     :effect (and
         (not (in s252))
         (in s252)
         (increase (total-cost) 30)
     )
    )

    (:action transition252-5
     :parameters ()
     :precondition (and
         (in s252)
     )
     :effect (and
         (not (in s252))
         (in s252)
         (increase (total-cost) 30)
     )
    )

    (:action transition253-0
     :parameters ()
     :precondition (and
         (in s253)
     )
     :effect (and
         (not (in s253))
         (in s353)
         (increase (total-cost) 21)
     )
    )

    (:action transition253-1
     :parameters ()
     :precondition (and
         (in s253)
     )
     :effect (and
         (not (in s253))
         (in s153)
         (increase (total-cost) 21)
     )
    )

    (:action transition253-2
     :parameters ()
     :precondition (and
         (in s253)
     )
     :effect (and
         (not (in s253))
         (in s273)
         (increase (total-cost) 21)
     )
    )

    (:action transition253-3
     :parameters ()
     :precondition (and
         (in s253)
     )
     :effect (and
         (not (in s253))
         (in s233)
         (increase (total-cost) 21)
     )
    )

    (:action transition253-4
     :parameters ()
     :precondition (and
         (in s253)
     )
     :effect (and
         (not (in s253))
         (in s253)
         (increase (total-cost) 30)
     )
    )

    (:action transition253-5
     :parameters ()
     :precondition (and
         (in s253)
     )
     :effect (and
         (not (in s253))
         (in s253)
         (increase (total-cost) 30)
     )
    )

    (:action transition254-0
     :parameters ()
     :precondition (and
         (in s254)
     )
     :effect (and
         (not (in s254))
         (in s354)
         (increase (total-cost) 21)
     )
    )

    (:action transition254-1
     :parameters ()
     :precondition (and
         (in s254)
     )
     :effect (and
         (not (in s254))
         (in s154)
         (increase (total-cost) 21)
     )
    )

    (:action transition254-2
     :parameters ()
     :precondition (and
         (in s254)
     )
     :effect (and
         (not (in s254))
         (in s274)
         (increase (total-cost) 21)
     )
    )

    (:action transition254-3
     :parameters ()
     :precondition (and
         (in s254)
     )
     :effect (and
         (not (in s254))
         (in s234)
         (increase (total-cost) 21)
     )
    )

    (:action transition254-4
     :parameters ()
     :precondition (and
         (in s254)
     )
     :effect (and
         (not (in s254))
         (in s254)
         (increase (total-cost) 30)
     )
    )

    (:action transition254-5
     :parameters ()
     :precondition (and
         (in s254)
     )
     :effect (and
         (not (in s254))
         (in s254)
         (increase (total-cost) 30)
     )
    )

    (:action transition255-0
     :parameters ()
     :precondition (and
         (in s255)
     )
     :effect (and
         (not (in s255))
         (in s355)
         (increase (total-cost) 21)
     )
    )

    (:action transition255-1
     :parameters ()
     :precondition (and
         (in s255)
     )
     :effect (and
         (not (in s255))
         (in s155)
         (increase (total-cost) 21)
     )
    )

    (:action transition255-2
     :parameters ()
     :precondition (and
         (in s255)
     )
     :effect (and
         (not (in s255))
         (in s275)
         (increase (total-cost) 21)
     )
    )

    (:action transition255-3
     :parameters ()
     :precondition (and
         (in s255)
     )
     :effect (and
         (not (in s255))
         (in s235)
         (increase (total-cost) 21)
     )
    )

    (:action transition255-4
     :parameters ()
     :precondition (and
         (in s255)
     )
     :effect (and
         (not (in s255))
         (in s255)
         (increase (total-cost) 30)
     )
    )

    (:action transition255-5
     :parameters ()
     :precondition (and
         (in s255)
     )
     :effect (and
         (not (in s255))
         (in s255)
         (increase (total-cost) 30)
     )
    )

    (:action transition256-0
     :parameters ()
     :precondition (and
         (in s256)
     )
     :effect (and
         (not (in s256))
         (in s356)
         (increase (total-cost) 21)
     )
    )

    (:action transition256-1
     :parameters ()
     :precondition (and
         (in s256)
     )
     :effect (and
         (not (in s256))
         (in s156)
         (increase (total-cost) 21)
     )
    )

    (:action transition256-2
     :parameters ()
     :precondition (and
         (in s256)
     )
     :effect (and
         (not (in s256))
         (in s276)
         (increase (total-cost) 21)
     )
    )

    (:action transition256-3
     :parameters ()
     :precondition (and
         (in s256)
     )
     :effect (and
         (not (in s256))
         (in s236)
         (increase (total-cost) 21)
     )
    )

    (:action transition256-4
     :parameters ()
     :precondition (and
         (in s256)
     )
     :effect (and
         (not (in s256))
         (in s256)
         (increase (total-cost) 30)
     )
    )

    (:action transition256-5
     :parameters ()
     :precondition (and
         (in s256)
     )
     :effect (and
         (not (in s256))
         (in s256)
         (increase (total-cost) 30)
     )
    )

    (:action transition257-0
     :parameters ()
     :precondition (and
         (in s257)
     )
     :effect (and
         (not (in s257))
         (in s357)
         (increase (total-cost) 21)
     )
    )

    (:action transition257-1
     :parameters ()
     :precondition (and
         (in s257)
     )
     :effect (and
         (not (in s257))
         (in s157)
         (increase (total-cost) 21)
     )
    )

    (:action transition257-2
     :parameters ()
     :precondition (and
         (in s257)
     )
     :effect (and
         (not (in s257))
         (in s277)
         (increase (total-cost) 21)
     )
    )

    (:action transition257-3
     :parameters ()
     :precondition (and
         (in s257)
     )
     :effect (and
         (not (in s257))
         (in s237)
         (increase (total-cost) 21)
     )
    )

    (:action transition257-4
     :parameters ()
     :precondition (and
         (in s257)
     )
     :effect (and
         (not (in s257))
         (in s257)
         (increase (total-cost) 30)
     )
    )

    (:action transition257-5
     :parameters ()
     :precondition (and
         (in s257)
     )
     :effect (and
         (not (in s257))
         (in s257)
         (increase (total-cost) 30)
     )
    )

    (:action transition258-0
     :parameters ()
     :precondition (and
         (in s258)
     )
     :effect (and
         (not (in s258))
         (in s358)
         (increase (total-cost) 21)
     )
    )

    (:action transition258-1
     :parameters ()
     :precondition (and
         (in s258)
     )
     :effect (and
         (not (in s258))
         (in s158)
         (increase (total-cost) 21)
     )
    )

    (:action transition258-2
     :parameters ()
     :precondition (and
         (in s258)
     )
     :effect (and
         (not (in s258))
         (in s278)
         (increase (total-cost) 21)
     )
    )

    (:action transition258-3
     :parameters ()
     :precondition (and
         (in s258)
     )
     :effect (and
         (not (in s258))
         (in s238)
         (increase (total-cost) 21)
     )
    )

    (:action transition258-4
     :parameters ()
     :precondition (and
         (in s258)
     )
     :effect (and
         (not (in s258))
         (in s258)
         (increase (total-cost) 30)
     )
    )

    (:action transition258-5
     :parameters ()
     :precondition (and
         (in s258)
     )
     :effect (and
         (not (in s258))
         (in s258)
         (increase (total-cost) 30)
     )
    )

    (:action transition259-0
     :parameters ()
     :precondition (and
         (in s259)
     )
     :effect (and
         (not (in s259))
         (in s359)
         (increase (total-cost) 21)
     )
    )

    (:action transition259-1
     :parameters ()
     :precondition (and
         (in s259)
     )
     :effect (and
         (not (in s259))
         (in s159)
         (increase (total-cost) 21)
     )
    )

    (:action transition259-2
     :parameters ()
     :precondition (and
         (in s259)
     )
     :effect (and
         (not (in s259))
         (in s279)
         (increase (total-cost) 21)
     )
    )

    (:action transition259-3
     :parameters ()
     :precondition (and
         (in s259)
     )
     :effect (and
         (not (in s259))
         (in s239)
         (increase (total-cost) 21)
     )
    )

    (:action transition259-4
     :parameters ()
     :precondition (and
         (in s259)
     )
     :effect (and
         (not (in s259))
         (in s259)
         (increase (total-cost) 30)
     )
    )

    (:action transition259-5
     :parameters ()
     :precondition (and
         (in s259)
     )
     :effect (and
         (not (in s259))
         (in s259)
         (increase (total-cost) 30)
     )
    )

    (:action transition260-0
     :parameters ()
     :precondition (and
         (in s260)
     )
     :effect (and
         (not (in s260))
         (in s360)
         (increase (total-cost) 21)
     )
    )

    (:action transition260-1
     :parameters ()
     :precondition (and
         (in s260)
     )
     :effect (and
         (not (in s260))
         (in s160)
         (increase (total-cost) 21)
     )
    )

    (:action transition260-2
     :parameters ()
     :precondition (and
         (in s260)
     )
     :effect (and
         (not (in s260))
         (in s280)
         (increase (total-cost) 21)
     )
    )

    (:action transition260-3
     :parameters ()
     :precondition (and
         (in s260)
     )
     :effect (and
         (not (in s260))
         (in s240)
         (increase (total-cost) 21)
     )
    )

    (:action transition260-4
     :parameters ()
     :precondition (and
         (in s260)
     )
     :effect (and
         (not (in s260))
         (in s260)
         (increase (total-cost) 30)
     )
    )

    (:action transition260-5
     :parameters ()
     :precondition (and
         (in s260)
     )
     :effect (and
         (not (in s260))
         (in s260)
         (increase (total-cost) 30)
     )
    )

    (:action transition261-0
     :parameters ()
     :precondition (and
         (in s261)
     )
     :effect (and
         (not (in s261))
         (in s361)
         (increase (total-cost) 21)
     )
    )

    (:action transition261-1
     :parameters ()
     :precondition (and
         (in s261)
     )
     :effect (and
         (not (in s261))
         (in s161)
         (increase (total-cost) 21)
     )
    )

    (:action transition261-2
     :parameters ()
     :precondition (and
         (in s261)
     )
     :effect (and
         (not (in s261))
         (in s281)
         (increase (total-cost) 21)
     )
    )

    (:action transition261-3
     :parameters ()
     :precondition (and
         (in s261)
     )
     :effect (and
         (not (in s261))
         (in s241)
         (increase (total-cost) 21)
     )
    )

    (:action transition261-4
     :parameters ()
     :precondition (and
         (in s261)
     )
     :effect (and
         (not (in s261))
         (in s261)
         (increase (total-cost) 30)
     )
    )

    (:action transition261-5
     :parameters ()
     :precondition (and
         (in s261)
     )
     :effect (and
         (not (in s261))
         (in s261)
         (increase (total-cost) 30)
     )
    )

    (:action transition262-0
     :parameters ()
     :precondition (and
         (in s262)
     )
     :effect (and
         (not (in s262))
         (in s362)
         (increase (total-cost) 21)
     )
    )

    (:action transition262-1
     :parameters ()
     :precondition (and
         (in s262)
     )
     :effect (and
         (not (in s262))
         (in s162)
         (increase (total-cost) 21)
     )
    )

    (:action transition262-2
     :parameters ()
     :precondition (and
         (in s262)
     )
     :effect (and
         (not (in s262))
         (in s282)
         (increase (total-cost) 21)
     )
    )

    (:action transition262-3
     :parameters ()
     :precondition (and
         (in s262)
     )
     :effect (and
         (not (in s262))
         (in s242)
         (increase (total-cost) 21)
     )
    )

    (:action transition262-4
     :parameters ()
     :precondition (and
         (in s262)
     )
     :effect (and
         (not (in s262))
         (in s262)
         (increase (total-cost) 30)
     )
    )

    (:action transition262-5
     :parameters ()
     :precondition (and
         (in s262)
     )
     :effect (and
         (not (in s262))
         (in s262)
         (increase (total-cost) 30)
     )
    )

    (:action transition263-0
     :parameters ()
     :precondition (and
         (in s263)
     )
     :effect (and
         (not (in s263))
         (in s363)
         (increase (total-cost) 21)
     )
    )

    (:action transition263-1
     :parameters ()
     :precondition (and
         (in s263)
     )
     :effect (and
         (not (in s263))
         (in s163)
         (increase (total-cost) 21)
     )
    )

    (:action transition263-2
     :parameters ()
     :precondition (and
         (in s263)
     )
     :effect (and
         (not (in s263))
         (in s283)
         (increase (total-cost) 21)
     )
    )

    (:action transition263-3
     :parameters ()
     :precondition (and
         (in s263)
     )
     :effect (and
         (not (in s263))
         (in s243)
         (increase (total-cost) 21)
     )
    )

    (:action transition263-4
     :parameters ()
     :precondition (and
         (in s263)
     )
     :effect (and
         (not (in s263))
         (in s263)
         (increase (total-cost) 30)
     )
    )

    (:action transition263-5
     :parameters ()
     :precondition (and
         (in s263)
     )
     :effect (and
         (not (in s263))
         (in s263)
         (increase (total-cost) 30)
     )
    )

    (:action transition264-0
     :parameters ()
     :precondition (and
         (in s264)
     )
     :effect (and
         (not (in s264))
         (in s364)
         (increase (total-cost) 21)
     )
    )

    (:action transition264-1
     :parameters ()
     :precondition (and
         (in s264)
     )
     :effect (and
         (not (in s264))
         (in s164)
         (increase (total-cost) 21)
     )
    )

    (:action transition264-2
     :parameters ()
     :precondition (and
         (in s264)
     )
     :effect (and
         (not (in s264))
         (in s284)
         (increase (total-cost) 21)
     )
    )

    (:action transition264-3
     :parameters ()
     :precondition (and
         (in s264)
     )
     :effect (and
         (not (in s264))
         (in s244)
         (increase (total-cost) 21)
     )
    )

    (:action transition264-4
     :parameters ()
     :precondition (and
         (in s264)
     )
     :effect (and
         (not (in s264))
         (in s264)
         (increase (total-cost) 30)
     )
    )

    (:action transition264-5
     :parameters ()
     :precondition (and
         (in s264)
     )
     :effect (and
         (not (in s264))
         (in s264)
         (increase (total-cost) 30)
     )
    )

    (:action transition265-0
     :parameters ()
     :precondition (and
         (in s265)
     )
     :effect (and
         (not (in s265))
         (in s365)
         (increase (total-cost) 21)
     )
    )

    (:action transition265-1
     :parameters ()
     :precondition (and
         (in s265)
     )
     :effect (and
         (not (in s265))
         (in s165)
         (increase (total-cost) 21)
     )
    )

    (:action transition265-2
     :parameters ()
     :precondition (and
         (in s265)
     )
     :effect (and
         (not (in s265))
         (in s285)
         (increase (total-cost) 21)
     )
    )

    (:action transition265-3
     :parameters ()
     :precondition (and
         (in s265)
     )
     :effect (and
         (not (in s265))
         (in s245)
         (increase (total-cost) 21)
     )
    )

    (:action transition265-4
     :parameters ()
     :precondition (and
         (in s265)
     )
     :effect (and
         (not (in s265))
         (in s265)
         (increase (total-cost) 30)
     )
    )

    (:action transition265-5
     :parameters ()
     :precondition (and
         (in s265)
     )
     :effect (and
         (not (in s265))
         (in s265)
         (increase (total-cost) 30)
     )
    )

    (:action transition266-0
     :parameters ()
     :precondition (and
         (in s266)
     )
     :effect (and
         (not (in s266))
         (in s366)
         (increase (total-cost) 21)
     )
    )

    (:action transition266-1
     :parameters ()
     :precondition (and
         (in s266)
     )
     :effect (and
         (not (in s266))
         (in s166)
         (increase (total-cost) 21)
     )
    )

    (:action transition266-2
     :parameters ()
     :precondition (and
         (in s266)
     )
     :effect (and
         (not (in s266))
         (in s286)
         (increase (total-cost) 21)
     )
    )

    (:action transition266-3
     :parameters ()
     :precondition (and
         (in s266)
     )
     :effect (and
         (not (in s266))
         (in s246)
         (increase (total-cost) 21)
     )
    )

    (:action transition266-4
     :parameters ()
     :precondition (and
         (in s266)
     )
     :effect (and
         (not (in s266))
         (in s266)
         (increase (total-cost) 30)
     )
    )

    (:action transition266-5
     :parameters ()
     :precondition (and
         (in s266)
     )
     :effect (and
         (not (in s266))
         (in s266)
         (increase (total-cost) 30)
     )
    )

    (:action transition267-0
     :parameters ()
     :precondition (and
         (in s267)
     )
     :effect (and
         (not (in s267))
         (in s367)
         (increase (total-cost) 21)
     )
    )

    (:action transition267-1
     :parameters ()
     :precondition (and
         (in s267)
     )
     :effect (and
         (not (in s267))
         (in s167)
         (increase (total-cost) 21)
     )
    )

    (:action transition267-2
     :parameters ()
     :precondition (and
         (in s267)
     )
     :effect (and
         (not (in s267))
         (in s287)
         (increase (total-cost) 21)
     )
    )

    (:action transition267-3
     :parameters ()
     :precondition (and
         (in s267)
     )
     :effect (and
         (not (in s267))
         (in s247)
         (increase (total-cost) 21)
     )
    )

    (:action transition267-4
     :parameters ()
     :precondition (and
         (in s267)
     )
     :effect (and
         (not (in s267))
         (in s267)
         (increase (total-cost) 30)
     )
    )

    (:action transition267-5
     :parameters ()
     :precondition (and
         (in s267)
     )
     :effect (and
         (not (in s267))
         (in s267)
         (increase (total-cost) 30)
     )
    )

    (:action transition268-0
     :parameters ()
     :precondition (and
         (in s268)
     )
     :effect (and
         (not (in s268))
         (in s368)
         (increase (total-cost) 21)
     )
    )

    (:action transition268-1
     :parameters ()
     :precondition (and
         (in s268)
     )
     :effect (and
         (not (in s268))
         (in s168)
         (increase (total-cost) 21)
     )
    )

    (:action transition268-2
     :parameters ()
     :precondition (and
         (in s268)
     )
     :effect (and
         (not (in s268))
         (in s288)
         (increase (total-cost) 21)
     )
    )

    (:action transition268-3
     :parameters ()
     :precondition (and
         (in s268)
     )
     :effect (and
         (not (in s268))
         (in s248)
         (increase (total-cost) 21)
     )
    )

    (:action transition268-4
     :parameters ()
     :precondition (and
         (in s268)
     )
     :effect (and
         (not (in s268))
         (in s268)
         (increase (total-cost) 30)
     )
    )

    (:action transition268-5
     :parameters ()
     :precondition (and
         (in s268)
     )
     :effect (and
         (not (in s268))
         (in s268)
         (increase (total-cost) 30)
     )
    )

    (:action transition269-0
     :parameters ()
     :precondition (and
         (in s269)
     )
     :effect (and
         (not (in s269))
         (in s369)
         (increase (total-cost) 21)
     )
    )

    (:action transition269-1
     :parameters ()
     :precondition (and
         (in s269)
     )
     :effect (and
         (not (in s269))
         (in s169)
         (increase (total-cost) 21)
     )
    )

    (:action transition269-2
     :parameters ()
     :precondition (and
         (in s269)
     )
     :effect (and
         (not (in s269))
         (in s289)
         (increase (total-cost) 21)
     )
    )

    (:action transition269-3
     :parameters ()
     :precondition (and
         (in s269)
     )
     :effect (and
         (not (in s269))
         (in s249)
         (increase (total-cost) 21)
     )
    )

    (:action transition269-4
     :parameters ()
     :precondition (and
         (in s269)
     )
     :effect (and
         (not (in s269))
         (in s269)
         (increase (total-cost) 30)
     )
    )

    (:action transition269-5
     :parameters ()
     :precondition (and
         (in s269)
     )
     :effect (and
         (not (in s269))
         (in s269)
         (increase (total-cost) 30)
     )
    )

    (:action transition270-0
     :parameters ()
     :precondition (and
         (in s270)
     )
     :effect (and
         (not (in s270))
         (in s370)
         (increase (total-cost) 21)
     )
    )

    (:action transition270-1
     :parameters ()
     :precondition (and
         (in s270)
     )
     :effect (and
         (not (in s270))
         (in s170)
         (increase (total-cost) 21)
     )
    )

    (:action transition270-2
     :parameters ()
     :precondition (and
         (in s270)
     )
     :effect (and
         (not (in s270))
         (in s290)
         (increase (total-cost) 21)
     )
    )

    (:action transition270-3
     :parameters ()
     :precondition (and
         (in s270)
     )
     :effect (and
         (not (in s270))
         (in s250)
         (increase (total-cost) 21)
     )
    )

    (:action transition270-4
     :parameters ()
     :precondition (and
         (in s270)
     )
     :effect (and
         (not (in s270))
         (in s270)
         (increase (total-cost) 30)
     )
    )

    (:action transition270-5
     :parameters ()
     :precondition (and
         (in s270)
     )
     :effect (and
         (not (in s270))
         (in s270)
         (increase (total-cost) 30)
     )
    )

    (:action transition271-0
     :parameters ()
     :precondition (and
         (in s271)
     )
     :effect (and
         (not (in s271))
         (in s371)
         (increase (total-cost) 21)
     )
    )

    (:action transition271-1
     :parameters ()
     :precondition (and
         (in s271)
     )
     :effect (and
         (not (in s271))
         (in s171)
         (increase (total-cost) 21)
     )
    )

    (:action transition271-2
     :parameters ()
     :precondition (and
         (in s271)
     )
     :effect (and
         (not (in s271))
         (in s291)
         (increase (total-cost) 21)
     )
    )

    (:action transition271-3
     :parameters ()
     :precondition (and
         (in s271)
     )
     :effect (and
         (not (in s271))
         (in s251)
         (increase (total-cost) 21)
     )
    )

    (:action transition271-4
     :parameters ()
     :precondition (and
         (in s271)
     )
     :effect (and
         (not (in s271))
         (in s271)
         (increase (total-cost) 30)
     )
    )

    (:action transition271-5
     :parameters ()
     :precondition (and
         (in s271)
     )
     :effect (and
         (not (in s271))
         (in s271)
         (increase (total-cost) 30)
     )
    )

    (:action transition272-0
     :parameters ()
     :precondition (and
         (in s272)
     )
     :effect (and
         (not (in s272))
         (in s372)
         (increase (total-cost) 21)
     )
    )

    (:action transition272-1
     :parameters ()
     :precondition (and
         (in s272)
     )
     :effect (and
         (not (in s272))
         (in s172)
         (increase (total-cost) 21)
     )
    )

    (:action transition272-2
     :parameters ()
     :precondition (and
         (in s272)
     )
     :effect (and
         (not (in s272))
         (in s292)
         (increase (total-cost) 21)
     )
    )

    (:action transition272-3
     :parameters ()
     :precondition (and
         (in s272)
     )
     :effect (and
         (not (in s272))
         (in s252)
         (increase (total-cost) 21)
     )
    )

    (:action transition272-4
     :parameters ()
     :precondition (and
         (in s272)
     )
     :effect (and
         (not (in s272))
         (in s272)
         (increase (total-cost) 30)
     )
    )

    (:action transition272-5
     :parameters ()
     :precondition (and
         (in s272)
     )
     :effect (and
         (not (in s272))
         (in s272)
         (increase (total-cost) 30)
     )
    )

    (:action transition273-0
     :parameters ()
     :precondition (and
         (in s273)
     )
     :effect (and
         (not (in s273))
         (in s373)
         (increase (total-cost) 21)
     )
    )

    (:action transition273-1
     :parameters ()
     :precondition (and
         (in s273)
     )
     :effect (and
         (not (in s273))
         (in s173)
         (increase (total-cost) 21)
     )
    )

    (:action transition273-2
     :parameters ()
     :precondition (and
         (in s273)
     )
     :effect (and
         (not (in s273))
         (in s293)
         (increase (total-cost) 21)
     )
    )

    (:action transition273-3
     :parameters ()
     :precondition (and
         (in s273)
     )
     :effect (and
         (not (in s273))
         (in s253)
         (increase (total-cost) 21)
     )
    )

    (:action transition273-4
     :parameters ()
     :precondition (and
         (in s273)
     )
     :effect (and
         (not (in s273))
         (in s273)
         (increase (total-cost) 30)
     )
    )

    (:action transition273-5
     :parameters ()
     :precondition (and
         (in s273)
     )
     :effect (and
         (not (in s273))
         (in s273)
         (increase (total-cost) 30)
     )
    )

    (:action transition274-0
     :parameters ()
     :precondition (and
         (in s274)
     )
     :effect (and
         (not (in s274))
         (in s374)
         (increase (total-cost) 21)
     )
    )

    (:action transition274-1
     :parameters ()
     :precondition (and
         (in s274)
     )
     :effect (and
         (not (in s274))
         (in s174)
         (increase (total-cost) 21)
     )
    )

    (:action transition274-2
     :parameters ()
     :precondition (and
         (in s274)
     )
     :effect (and
         (not (in s274))
         (in s294)
         (increase (total-cost) 21)
     )
    )

    (:action transition274-3
     :parameters ()
     :precondition (and
         (in s274)
     )
     :effect (and
         (not (in s274))
         (in s254)
         (increase (total-cost) 21)
     )
    )

    (:action transition274-4
     :parameters ()
     :precondition (and
         (in s274)
     )
     :effect (and
         (not (in s274))
         (in s274)
         (increase (total-cost) 30)
     )
    )

    (:action transition274-5
     :parameters ()
     :precondition (and
         (in s274)
     )
     :effect (and
         (not (in s274))
         (in s274)
         (increase (total-cost) 30)
     )
    )

    (:action transition275-0
     :parameters ()
     :precondition (and
         (in s275)
     )
     :effect (and
         (not (in s275))
         (in s375)
         (increase (total-cost) 21)
     )
    )

    (:action transition275-1
     :parameters ()
     :precondition (and
         (in s275)
     )
     :effect (and
         (not (in s275))
         (in s175)
         (increase (total-cost) 21)
     )
    )

    (:action transition275-2
     :parameters ()
     :precondition (and
         (in s275)
     )
     :effect (and
         (not (in s275))
         (in s295)
         (increase (total-cost) 21)
     )
    )

    (:action transition275-3
     :parameters ()
     :precondition (and
         (in s275)
     )
     :effect (and
         (not (in s275))
         (in s255)
         (increase (total-cost) 21)
     )
    )

    (:action transition275-4
     :parameters ()
     :precondition (and
         (in s275)
     )
     :effect (and
         (not (in s275))
         (in s275)
         (increase (total-cost) 30)
     )
    )

    (:action transition275-5
     :parameters ()
     :precondition (and
         (in s275)
     )
     :effect (and
         (not (in s275))
         (in s275)
         (increase (total-cost) 30)
     )
    )

    (:action transition276-0
     :parameters ()
     :precondition (and
         (in s276)
     )
     :effect (and
         (not (in s276))
         (in s376)
         (increase (total-cost) 21)
     )
    )

    (:action transition276-1
     :parameters ()
     :precondition (and
         (in s276)
     )
     :effect (and
         (not (in s276))
         (in s176)
         (increase (total-cost) 21)
     )
    )

    (:action transition276-2
     :parameters ()
     :precondition (and
         (in s276)
     )
     :effect (and
         (not (in s276))
         (in s296)
         (increase (total-cost) 21)
     )
    )

    (:action transition276-3
     :parameters ()
     :precondition (and
         (in s276)
     )
     :effect (and
         (not (in s276))
         (in s256)
         (increase (total-cost) 21)
     )
    )

    (:action transition276-4
     :parameters ()
     :precondition (and
         (in s276)
     )
     :effect (and
         (not (in s276))
         (in s276)
         (increase (total-cost) 30)
     )
    )

    (:action transition276-5
     :parameters ()
     :precondition (and
         (in s276)
     )
     :effect (and
         (not (in s276))
         (in s276)
         (increase (total-cost) 30)
     )
    )

    (:action transition277-0
     :parameters ()
     :precondition (and
         (in s277)
     )
     :effect (and
         (not (in s277))
         (in s377)
         (increase (total-cost) 21)
     )
    )

    (:action transition277-1
     :parameters ()
     :precondition (and
         (in s277)
     )
     :effect (and
         (not (in s277))
         (in s177)
         (increase (total-cost) 21)
     )
    )

    (:action transition277-2
     :parameters ()
     :precondition (and
         (in s277)
     )
     :effect (and
         (not (in s277))
         (in s297)
         (increase (total-cost) 21)
     )
    )

    (:action transition277-3
     :parameters ()
     :precondition (and
         (in s277)
     )
     :effect (and
         (not (in s277))
         (in s257)
         (increase (total-cost) 21)
     )
    )

    (:action transition277-4
     :parameters ()
     :precondition (and
         (in s277)
     )
     :effect (and
         (not (in s277))
         (in s277)
         (increase (total-cost) 30)
     )
    )

    (:action transition277-5
     :parameters ()
     :precondition (and
         (in s277)
     )
     :effect (and
         (not (in s277))
         (in s277)
         (increase (total-cost) 30)
     )
    )

    (:action transition278-0
     :parameters ()
     :precondition (and
         (in s278)
     )
     :effect (and
         (not (in s278))
         (in s378)
         (increase (total-cost) 21)
     )
    )

    (:action transition278-1
     :parameters ()
     :precondition (and
         (in s278)
     )
     :effect (and
         (not (in s278))
         (in s178)
         (increase (total-cost) 21)
     )
    )

    (:action transition278-2
     :parameters ()
     :precondition (and
         (in s278)
     )
     :effect (and
         (not (in s278))
         (in s298)
         (increase (total-cost) 21)
     )
    )

    (:action transition278-3
     :parameters ()
     :precondition (and
         (in s278)
     )
     :effect (and
         (not (in s278))
         (in s258)
         (increase (total-cost) 21)
     )
    )

    (:action transition278-4
     :parameters ()
     :precondition (and
         (in s278)
     )
     :effect (and
         (not (in s278))
         (in s278)
         (increase (total-cost) 30)
     )
    )

    (:action transition278-5
     :parameters ()
     :precondition (and
         (in s278)
     )
     :effect (and
         (not (in s278))
         (in s278)
         (increase (total-cost) 30)
     )
    )

    (:action transition279-0
     :parameters ()
     :precondition (and
         (in s279)
     )
     :effect (and
         (not (in s279))
         (in s379)
         (increase (total-cost) 21)
     )
    )

    (:action transition279-1
     :parameters ()
     :precondition (and
         (in s279)
     )
     :effect (and
         (not (in s279))
         (in s179)
         (increase (total-cost) 21)
     )
    )

    (:action transition279-2
     :parameters ()
     :precondition (and
         (in s279)
     )
     :effect (and
         (not (in s279))
         (in s299)
         (increase (total-cost) 21)
     )
    )

    (:action transition279-3
     :parameters ()
     :precondition (and
         (in s279)
     )
     :effect (and
         (not (in s279))
         (in s259)
         (increase (total-cost) 21)
     )
    )

    (:action transition279-4
     :parameters ()
     :precondition (and
         (in s279)
     )
     :effect (and
         (not (in s279))
         (in s279)
         (increase (total-cost) 30)
     )
    )

    (:action transition279-5
     :parameters ()
     :precondition (and
         (in s279)
     )
     :effect (and
         (not (in s279))
         (in s279)
         (increase (total-cost) 30)
     )
    )

    (:action transition280-0
     :parameters ()
     :precondition (and
         (in s280)
     )
     :effect (and
         (not (in s280))
         (in s380)
         (increase (total-cost) 21)
     )
    )

    (:action transition280-1
     :parameters ()
     :precondition (and
         (in s280)
     )
     :effect (and
         (not (in s280))
         (in s180)
         (increase (total-cost) 21)
     )
    )

    (:action transition280-2
     :parameters ()
     :precondition (and
         (in s280)
     )
     :effect (and
         (not (in s280))
         (in s280)
         (increase (total-cost) 21)
     )
    )

    (:action transition280-3
     :parameters ()
     :precondition (and
         (in s280)
     )
     :effect (and
         (not (in s280))
         (in s260)
         (increase (total-cost) 21)
     )
    )

    (:action transition280-4
     :parameters ()
     :precondition (and
         (in s280)
     )
     :effect (and
         (not (in s280))
         (in s280)
         (increase (total-cost) 30)
     )
    )

    (:action transition280-5
     :parameters ()
     :precondition (and
         (in s280)
     )
     :effect (and
         (not (in s280))
         (in s280)
         (increase (total-cost) 30)
     )
    )

    (:action transition281-0
     :parameters ()
     :precondition (and
         (in s281)
     )
     :effect (and
         (not (in s281))
         (in s381)
         (increase (total-cost) 21)
     )
    )

    (:action transition281-1
     :parameters ()
     :precondition (and
         (in s281)
     )
     :effect (and
         (not (in s281))
         (in s181)
         (increase (total-cost) 21)
     )
    )

    (:action transition281-2
     :parameters ()
     :precondition (and
         (in s281)
     )
     :effect (and
         (not (in s281))
         (in s281)
         (increase (total-cost) 21)
     )
    )

    (:action transition281-3
     :parameters ()
     :precondition (and
         (in s281)
     )
     :effect (and
         (not (in s281))
         (in s261)
         (increase (total-cost) 21)
     )
    )

    (:action transition281-4
     :parameters ()
     :precondition (and
         (in s281)
     )
     :effect (and
         (not (in s281))
         (in s281)
         (increase (total-cost) 30)
     )
    )

    (:action transition281-5
     :parameters ()
     :precondition (and
         (in s281)
     )
     :effect (and
         (not (in s281))
         (in s281)
         (increase (total-cost) 30)
     )
    )

    (:action transition282-0
     :parameters ()
     :precondition (and
         (in s282)
     )
     :effect (and
         (not (in s282))
         (in s382)
         (increase (total-cost) 21)
     )
    )

    (:action transition282-1
     :parameters ()
     :precondition (and
         (in s282)
     )
     :effect (and
         (not (in s282))
         (in s182)
         (increase (total-cost) 21)
     )
    )

    (:action transition282-2
     :parameters ()
     :precondition (and
         (in s282)
     )
     :effect (and
         (not (in s282))
         (in s282)
         (increase (total-cost) 21)
     )
    )

    (:action transition282-3
     :parameters ()
     :precondition (and
         (in s282)
     )
     :effect (and
         (not (in s282))
         (in s262)
         (increase (total-cost) 21)
     )
    )

    (:action transition282-4
     :parameters ()
     :precondition (and
         (in s282)
     )
     :effect (and
         (not (in s282))
         (in s282)
         (increase (total-cost) 30)
     )
    )

    (:action transition282-5
     :parameters ()
     :precondition (and
         (in s282)
     )
     :effect (and
         (not (in s282))
         (in s282)
         (increase (total-cost) 30)
     )
    )

    (:action transition283-0
     :parameters ()
     :precondition (and
         (in s283)
     )
     :effect (and
         (not (in s283))
         (in s383)
         (increase (total-cost) 21)
     )
    )

    (:action transition283-1
     :parameters ()
     :precondition (and
         (in s283)
     )
     :effect (and
         (not (in s283))
         (in s183)
         (increase (total-cost) 21)
     )
    )

    (:action transition283-2
     :parameters ()
     :precondition (and
         (in s283)
     )
     :effect (and
         (not (in s283))
         (in s283)
         (increase (total-cost) 21)
     )
    )

    (:action transition283-3
     :parameters ()
     :precondition (and
         (in s283)
     )
     :effect (and
         (not (in s283))
         (in s263)
         (increase (total-cost) 21)
     )
    )

    (:action transition283-4
     :parameters ()
     :precondition (and
         (in s283)
     )
     :effect (and
         (not (in s283))
         (in s283)
         (increase (total-cost) 30)
     )
    )

    (:action transition283-5
     :parameters ()
     :precondition (and
         (in s283)
     )
     :effect (and
         (not (in s283))
         (in s283)
         (increase (total-cost) 30)
     )
    )

    (:action transition284-0
     :parameters ()
     :precondition (and
         (in s284)
     )
     :effect (and
         (not (in s284))
         (in s384)
         (increase (total-cost) 21)
     )
    )

    (:action transition284-1
     :parameters ()
     :precondition (and
         (in s284)
     )
     :effect (and
         (not (in s284))
         (in s184)
         (increase (total-cost) 21)
     )
    )

    (:action transition284-2
     :parameters ()
     :precondition (and
         (in s284)
     )
     :effect (and
         (not (in s284))
         (in s284)
         (increase (total-cost) 21)
     )
    )

    (:action transition284-3
     :parameters ()
     :precondition (and
         (in s284)
     )
     :effect (and
         (not (in s284))
         (in s264)
         (increase (total-cost) 21)
     )
    )

    (:action transition284-4
     :parameters ()
     :precondition (and
         (in s284)
     )
     :effect (and
         (not (in s284))
         (in s284)
         (increase (total-cost) 30)
     )
    )

    (:action transition284-5
     :parameters ()
     :precondition (and
         (in s284)
     )
     :effect (and
         (not (in s284))
         (in s284)
         (increase (total-cost) 30)
     )
    )

    (:action transition285-0
     :parameters ()
     :precondition (and
         (in s285)
     )
     :effect (and
         (not (in s285))
         (in s385)
         (increase (total-cost) 21)
     )
    )

    (:action transition285-1
     :parameters ()
     :precondition (and
         (in s285)
     )
     :effect (and
         (not (in s285))
         (in s185)
         (increase (total-cost) 21)
     )
    )

    (:action transition285-2
     :parameters ()
     :precondition (and
         (in s285)
     )
     :effect (and
         (not (in s285))
         (in s285)
         (increase (total-cost) 21)
     )
    )

    (:action transition285-3
     :parameters ()
     :precondition (and
         (in s285)
     )
     :effect (and
         (not (in s285))
         (in s265)
         (increase (total-cost) 21)
     )
    )

    (:action transition285-4
     :parameters ()
     :precondition (and
         (in s285)
     )
     :effect (and
         (not (in s285))
         (in s285)
         (increase (total-cost) 30)
     )
    )

    (:action transition285-5
     :parameters ()
     :precondition (and
         (in s285)
     )
     :effect (and
         (not (in s285))
         (in s285)
         (increase (total-cost) 30)
     )
    )

    (:action transition286-0
     :parameters ()
     :precondition (and
         (in s286)
     )
     :effect (and
         (not (in s286))
         (in s386)
         (increase (total-cost) 21)
     )
    )

    (:action transition286-1
     :parameters ()
     :precondition (and
         (in s286)
     )
     :effect (and
         (not (in s286))
         (in s186)
         (increase (total-cost) 21)
     )
    )

    (:action transition286-2
     :parameters ()
     :precondition (and
         (in s286)
     )
     :effect (and
         (not (in s286))
         (in s286)
         (increase (total-cost) 21)
     )
    )

    (:action transition286-3
     :parameters ()
     :precondition (and
         (in s286)
     )
     :effect (and
         (not (in s286))
         (in s266)
         (increase (total-cost) 21)
     )
    )

    (:action transition286-4
     :parameters ()
     :precondition (and
         (in s286)
     )
     :effect (and
         (not (in s286))
         (in s286)
         (increase (total-cost) 30)
     )
    )

    (:action transition286-5
     :parameters ()
     :precondition (and
         (in s286)
     )
     :effect (and
         (not (in s286))
         (in s286)
         (increase (total-cost) 30)
     )
    )

    (:action transition287-0
     :parameters ()
     :precondition (and
         (in s287)
     )
     :effect (and
         (not (in s287))
         (in s387)
         (increase (total-cost) 21)
     )
    )

    (:action transition287-1
     :parameters ()
     :precondition (and
         (in s287)
     )
     :effect (and
         (not (in s287))
         (in s187)
         (increase (total-cost) 21)
     )
    )

    (:action transition287-2
     :parameters ()
     :precondition (and
         (in s287)
     )
     :effect (and
         (not (in s287))
         (in s287)
         (increase (total-cost) 21)
     )
    )

    (:action transition287-3
     :parameters ()
     :precondition (and
         (in s287)
     )
     :effect (and
         (not (in s287))
         (in s267)
         (increase (total-cost) 21)
     )
    )

    (:action transition287-4
     :parameters ()
     :precondition (and
         (in s287)
     )
     :effect (and
         (not (in s287))
         (in s287)
         (increase (total-cost) 30)
     )
    )

    (:action transition287-5
     :parameters ()
     :precondition (and
         (in s287)
     )
     :effect (and
         (not (in s287))
         (in s287)
         (increase (total-cost) 30)
     )
    )

    (:action transition288-0
     :parameters ()
     :precondition (and
         (in s288)
     )
     :effect (and
         (not (in s288))
         (in s388)
         (increase (total-cost) 21)
     )
    )

    (:action transition288-1
     :parameters ()
     :precondition (and
         (in s288)
     )
     :effect (and
         (not (in s288))
         (in s188)
         (increase (total-cost) 21)
     )
    )

    (:action transition288-2
     :parameters ()
     :precondition (and
         (in s288)
     )
     :effect (and
         (not (in s288))
         (in s288)
         (increase (total-cost) 21)
     )
    )

    (:action transition288-3
     :parameters ()
     :precondition (and
         (in s288)
     )
     :effect (and
         (not (in s288))
         (in s268)
         (increase (total-cost) 21)
     )
    )

    (:action transition288-4
     :parameters ()
     :precondition (and
         (in s288)
     )
     :effect (and
         (not (in s288))
         (in s288)
         (increase (total-cost) 30)
     )
    )

    (:action transition288-5
     :parameters ()
     :precondition (and
         (in s288)
     )
     :effect (and
         (not (in s288))
         (in s288)
         (increase (total-cost) 30)
     )
    )

    (:action transition289-0
     :parameters ()
     :precondition (and
         (in s289)
     )
     :effect (and
         (not (in s289))
         (in s389)
         (increase (total-cost) 21)
     )
    )

    (:action transition289-1
     :parameters ()
     :precondition (and
         (in s289)
     )
     :effect (and
         (not (in s289))
         (in s189)
         (increase (total-cost) 21)
     )
    )

    (:action transition289-2
     :parameters ()
     :precondition (and
         (in s289)
     )
     :effect (and
         (not (in s289))
         (in s289)
         (increase (total-cost) 21)
     )
    )

    (:action transition289-3
     :parameters ()
     :precondition (and
         (in s289)
     )
     :effect (and
         (not (in s289))
         (in s269)
         (increase (total-cost) 21)
     )
    )

    (:action transition289-4
     :parameters ()
     :precondition (and
         (in s289)
     )
     :effect (and
         (not (in s289))
         (in s289)
         (increase (total-cost) 30)
     )
    )

    (:action transition289-5
     :parameters ()
     :precondition (and
         (in s289)
     )
     :effect (and
         (not (in s289))
         (in s289)
         (increase (total-cost) 30)
     )
    )

    (:action transition290-0
     :parameters ()
     :precondition (and
         (in s290)
     )
     :effect (and
         (not (in s290))
         (in s390)
         (increase (total-cost) 21)
     )
    )

    (:action transition290-1
     :parameters ()
     :precondition (and
         (in s290)
     )
     :effect (and
         (not (in s290))
         (in s190)
         (increase (total-cost) 21)
     )
    )

    (:action transition290-2
     :parameters ()
     :precondition (and
         (in s290)
     )
     :effect (and
         (not (in s290))
         (in s290)
         (increase (total-cost) 21)
     )
    )

    (:action transition290-3
     :parameters ()
     :precondition (and
         (in s290)
     )
     :effect (and
         (not (in s290))
         (in s270)
         (increase (total-cost) 21)
     )
    )

    (:action transition290-4
     :parameters ()
     :precondition (and
         (in s290)
     )
     :effect (and
         (not (in s290))
         (in s290)
         (increase (total-cost) 30)
     )
    )

    (:action transition290-5
     :parameters ()
     :precondition (and
         (in s290)
     )
     :effect (and
         (not (in s290))
         (in s290)
         (increase (total-cost) 30)
     )
    )

    (:action transition291-0
     :parameters ()
     :precondition (and
         (in s291)
     )
     :effect (and
         (not (in s291))
         (in s391)
         (increase (total-cost) 21)
     )
    )

    (:action transition291-1
     :parameters ()
     :precondition (and
         (in s291)
     )
     :effect (and
         (not (in s291))
         (in s191)
         (increase (total-cost) 21)
     )
    )

    (:action transition291-2
     :parameters ()
     :precondition (and
         (in s291)
     )
     :effect (and
         (not (in s291))
         (in s291)
         (increase (total-cost) 21)
     )
    )

    (:action transition291-3
     :parameters ()
     :precondition (and
         (in s291)
     )
     :effect (and
         (not (in s291))
         (in s271)
         (increase (total-cost) 21)
     )
    )

    (:action transition291-4
     :parameters ()
     :precondition (and
         (in s291)
     )
     :effect (and
         (not (in s291))
         (in s291)
         (increase (total-cost) 30)
     )
    )

    (:action transition291-5
     :parameters ()
     :precondition (and
         (in s291)
     )
     :effect (and
         (not (in s291))
         (in s291)
         (increase (total-cost) 30)
     )
    )

    (:action transition292-0
     :parameters ()
     :precondition (and
         (in s292)
     )
     :effect (and
         (not (in s292))
         (in s392)
         (increase (total-cost) 21)
     )
    )

    (:action transition292-1
     :parameters ()
     :precondition (and
         (in s292)
     )
     :effect (and
         (not (in s292))
         (in s192)
         (increase (total-cost) 21)
     )
    )

    (:action transition292-2
     :parameters ()
     :precondition (and
         (in s292)
     )
     :effect (and
         (not (in s292))
         (in s292)
         (increase (total-cost) 21)
     )
    )

    (:action transition292-3
     :parameters ()
     :precondition (and
         (in s292)
     )
     :effect (and
         (not (in s292))
         (in s272)
         (increase (total-cost) 21)
     )
    )

    (:action transition292-4
     :parameters ()
     :precondition (and
         (in s292)
     )
     :effect (and
         (not (in s292))
         (in s292)
         (increase (total-cost) 30)
     )
    )

    (:action transition292-5
     :parameters ()
     :precondition (and
         (in s292)
     )
     :effect (and
         (not (in s292))
         (in s292)
         (increase (total-cost) 30)
     )
    )

    (:action transition293-0
     :parameters ()
     :precondition (and
         (in s293)
     )
     :effect (and
         (not (in s293))
         (in s393)
         (increase (total-cost) 21)
     )
    )

    (:action transition293-1
     :parameters ()
     :precondition (and
         (in s293)
     )
     :effect (and
         (not (in s293))
         (in s193)
         (increase (total-cost) 21)
     )
    )

    (:action transition293-2
     :parameters ()
     :precondition (and
         (in s293)
     )
     :effect (and
         (not (in s293))
         (in s293)
         (increase (total-cost) 21)
     )
    )

    (:action transition293-3
     :parameters ()
     :precondition (and
         (in s293)
     )
     :effect (and
         (not (in s293))
         (in s273)
         (increase (total-cost) 21)
     )
    )

    (:action transition293-4
     :parameters ()
     :precondition (and
         (in s293)
     )
     :effect (and
         (not (in s293))
         (in s293)
         (increase (total-cost) 30)
     )
    )

    (:action transition293-5
     :parameters ()
     :precondition (and
         (in s293)
     )
     :effect (and
         (not (in s293))
         (in s293)
         (increase (total-cost) 30)
     )
    )

    (:action transition294-0
     :parameters ()
     :precondition (and
         (in s294)
     )
     :effect (and
         (not (in s294))
         (in s394)
         (increase (total-cost) 21)
     )
    )

    (:action transition294-1
     :parameters ()
     :precondition (and
         (in s294)
     )
     :effect (and
         (not (in s294))
         (in s194)
         (increase (total-cost) 21)
     )
    )

    (:action transition294-2
     :parameters ()
     :precondition (and
         (in s294)
     )
     :effect (and
         (not (in s294))
         (in s294)
         (increase (total-cost) 21)
     )
    )

    (:action transition294-3
     :parameters ()
     :precondition (and
         (in s294)
     )
     :effect (and
         (not (in s294))
         (in s274)
         (increase (total-cost) 21)
     )
    )

    (:action transition294-4
     :parameters ()
     :precondition (and
         (in s294)
     )
     :effect (and
         (not (in s294))
         (in s294)
         (increase (total-cost) 30)
     )
    )

    (:action transition294-5
     :parameters ()
     :precondition (and
         (in s294)
     )
     :effect (and
         (not (in s294))
         (in s294)
         (increase (total-cost) 30)
     )
    )

    (:action transition295-0
     :parameters ()
     :precondition (and
         (in s295)
     )
     :effect (and
         (not (in s295))
         (in s395)
         (increase (total-cost) 21)
     )
    )

    (:action transition295-1
     :parameters ()
     :precondition (and
         (in s295)
     )
     :effect (and
         (not (in s295))
         (in s195)
         (increase (total-cost) 21)
     )
    )

    (:action transition295-2
     :parameters ()
     :precondition (and
         (in s295)
     )
     :effect (and
         (not (in s295))
         (in s295)
         (increase (total-cost) 21)
     )
    )

    (:action transition295-3
     :parameters ()
     :precondition (and
         (in s295)
     )
     :effect (and
         (not (in s295))
         (in s275)
         (increase (total-cost) 21)
     )
    )

    (:action transition295-4
     :parameters ()
     :precondition (and
         (in s295)
     )
     :effect (and
         (not (in s295))
         (in s295)
         (increase (total-cost) 30)
     )
    )

    (:action transition295-5
     :parameters ()
     :precondition (and
         (in s295)
     )
     :effect (and
         (not (in s295))
         (in s295)
         (increase (total-cost) 30)
     )
    )

    (:action transition296-0
     :parameters ()
     :precondition (and
         (in s296)
     )
     :effect (and
         (not (in s296))
         (in s396)
         (increase (total-cost) 21)
     )
    )

    (:action transition296-1
     :parameters ()
     :precondition (and
         (in s296)
     )
     :effect (and
         (not (in s296))
         (in s196)
         (increase (total-cost) 21)
     )
    )

    (:action transition296-2
     :parameters ()
     :precondition (and
         (in s296)
     )
     :effect (and
         (not (in s296))
         (in s296)
         (increase (total-cost) 21)
     )
    )

    (:action transition296-3
     :parameters ()
     :precondition (and
         (in s296)
     )
     :effect (and
         (not (in s296))
         (in s276)
         (increase (total-cost) 21)
     )
    )

    (:action transition296-4
     :parameters ()
     :precondition (and
         (in s296)
     )
     :effect (and
         (not (in s296))
         (in s296)
         (increase (total-cost) 30)
     )
    )

    (:action transition296-5
     :parameters ()
     :precondition (and
         (in s296)
     )
     :effect (and
         (not (in s296))
         (in s296)
         (increase (total-cost) 30)
     )
    )

    (:action transition297-0
     :parameters ()
     :precondition (and
         (in s297)
     )
     :effect (and
         (not (in s297))
         (in s397)
         (increase (total-cost) 21)
     )
    )

    (:action transition297-1
     :parameters ()
     :precondition (and
         (in s297)
     )
     :effect (and
         (not (in s297))
         (in s197)
         (increase (total-cost) 21)
     )
    )

    (:action transition297-2
     :parameters ()
     :precondition (and
         (in s297)
     )
     :effect (and
         (not (in s297))
         (in s297)
         (increase (total-cost) 21)
     )
    )

    (:action transition297-3
     :parameters ()
     :precondition (and
         (in s297)
     )
     :effect (and
         (not (in s297))
         (in s277)
         (increase (total-cost) 21)
     )
    )

    (:action transition297-4
     :parameters ()
     :precondition (and
         (in s297)
     )
     :effect (and
         (not (in s297))
         (in s297)
         (increase (total-cost) 30)
     )
    )

    (:action transition297-5
     :parameters ()
     :precondition (and
         (in s297)
     )
     :effect (and
         (not (in s297))
         (in s297)
         (increase (total-cost) 30)
     )
    )

    (:action transition298-0
     :parameters ()
     :precondition (and
         (in s298)
     )
     :effect (and
         (not (in s298))
         (in s398)
         (increase (total-cost) 21)
     )
    )

    (:action transition298-1
     :parameters ()
     :precondition (and
         (in s298)
     )
     :effect (and
         (not (in s298))
         (in s198)
         (increase (total-cost) 21)
     )
    )

    (:action transition298-2
     :parameters ()
     :precondition (and
         (in s298)
     )
     :effect (and
         (not (in s298))
         (in s298)
         (increase (total-cost) 21)
     )
    )

    (:action transition298-3
     :parameters ()
     :precondition (and
         (in s298)
     )
     :effect (and
         (not (in s298))
         (in s278)
         (increase (total-cost) 21)
     )
    )

    (:action transition298-4
     :parameters ()
     :precondition (and
         (in s298)
     )
     :effect (and
         (not (in s298))
         (in s298)
         (increase (total-cost) 30)
     )
    )

    (:action transition298-5
     :parameters ()
     :precondition (and
         (in s298)
     )
     :effect (and
         (not (in s298))
         (in s298)
         (increase (total-cost) 30)
     )
    )

    (:action transition299-0
     :parameters ()
     :precondition (and
         (in s299)
     )
     :effect (and
         (not (in s299))
         (in s399)
         (increase (total-cost) 21)
     )
    )

    (:action transition299-1
     :parameters ()
     :precondition (and
         (in s299)
     )
     :effect (and
         (not (in s299))
         (in s199)
         (increase (total-cost) 21)
     )
    )

    (:action transition299-2
     :parameters ()
     :precondition (and
         (in s299)
     )
     :effect (and
         (not (in s299))
         (in s299)
         (increase (total-cost) 21)
     )
    )

    (:action transition299-3
     :parameters ()
     :precondition (and
         (in s299)
     )
     :effect (and
         (not (in s299))
         (in s279)
         (increase (total-cost) 21)
     )
    )

    (:action transition299-4
     :parameters ()
     :precondition (and
         (in s299)
     )
     :effect (and
         (not (in s299))
         (in s299)
         (increase (total-cost) 30)
     )
    )

    (:action transition299-5
     :parameters ()
     :precondition (and
         (in s299)
     )
     :effect (and
         (not (in s299))
         (in s299)
         (increase (total-cost) 30)
     )
    )

    (:action transition300-0
     :parameters ()
     :precondition (and
         (in s300)
     )
     :effect (and
         (not (in s300))
         (in s400)
         (increase (total-cost) 21)
     )
    )

    (:action transition300-1
     :parameters ()
     :precondition (and
         (in s300)
     )
     :effect (and
         (not (in s300))
         (in s200)
         (increase (total-cost) 21)
     )
    )

    (:action transition300-2
     :parameters ()
     :precondition (and
         (in s300)
     )
     :effect (and
         (not (in s300))
         (in s300)
         (increase (total-cost) 21)
     )
    )

    (:action transition300-3
     :parameters ()
     :precondition (and
         (in s300)
     )
     :effect (and
         (not (in s300))
         (in s300)
         (increase (total-cost) 21)
     )
    )

    (:action transition300-4
     :parameters ()
     :precondition (and
         (in s300)
     )
     :effect (and
         (not (in s300))
         (in s300)
         (increase (total-cost) 30)
     )
    )

    (:action transition300-5
     :parameters ()
     :precondition (and
         (in s300)
     )
     :effect (and
         (not (in s300))
         (in s300)
         (increase (total-cost) 30)
     )
    )

    (:action transition301-0
     :parameters ()
     :precondition (and
         (in s301)
     )
     :effect (and
         (not (in s301))
         (in s401)
         (increase (total-cost) 21)
     )
    )

    (:action transition301-1
     :parameters ()
     :precondition (and
         (in s301)
     )
     :effect (and
         (not (in s301))
         (in s201)
         (increase (total-cost) 21)
     )
    )

    (:action transition301-2
     :parameters ()
     :precondition (and
         (in s301)
     )
     :effect (and
         (not (in s301))
         (in s301)
         (increase (total-cost) 21)
     )
    )

    (:action transition301-3
     :parameters ()
     :precondition (and
         (in s301)
     )
     :effect (and
         (not (in s301))
         (in s301)
         (increase (total-cost) 21)
     )
    )

    (:action transition301-4
     :parameters ()
     :precondition (and
         (in s301)
     )
     :effect (and
         (not (in s301))
         (in s301)
         (increase (total-cost) 30)
     )
    )

    (:action transition301-5
     :parameters ()
     :precondition (and
         (in s301)
     )
     :effect (and
         (not (in s301))
         (in s301)
         (increase (total-cost) 30)
     )
    )

    (:action transition302-0
     :parameters ()
     :precondition (and
         (in s302)
     )
     :effect (and
         (not (in s302))
         (in s402)
         (increase (total-cost) 21)
     )
    )

    (:action transition302-1
     :parameters ()
     :precondition (and
         (in s302)
     )
     :effect (and
         (not (in s302))
         (in s202)
         (increase (total-cost) 21)
     )
    )

    (:action transition302-2
     :parameters ()
     :precondition (and
         (in s302)
     )
     :effect (and
         (not (in s302))
         (in s302)
         (increase (total-cost) 21)
     )
    )

    (:action transition302-3
     :parameters ()
     :precondition (and
         (in s302)
     )
     :effect (and
         (not (in s302))
         (in s302)
         (increase (total-cost) 21)
     )
    )

    (:action transition302-4
     :parameters ()
     :precondition (and
         (in s302)
     )
     :effect (and
         (not (in s302))
         (in s302)
         (increase (total-cost) 30)
     )
    )

    (:action transition302-5
     :parameters ()
     :precondition (and
         (in s302)
     )
     :effect (and
         (not (in s302))
         (in s302)
         (increase (total-cost) 30)
     )
    )

    (:action transition303-0
     :parameters ()
     :precondition (and
         (in s303)
     )
     :effect (and
         (not (in s303))
         (in s403)
         (increase (total-cost) 21)
     )
    )

    (:action transition303-1
     :parameters ()
     :precondition (and
         (in s303)
     )
     :effect (and
         (not (in s303))
         (in s203)
         (increase (total-cost) 21)
     )
    )

    (:action transition303-2
     :parameters ()
     :precondition (and
         (in s303)
     )
     :effect (and
         (not (in s303))
         (in s303)
         (increase (total-cost) 21)
     )
    )

    (:action transition303-3
     :parameters ()
     :precondition (and
         (in s303)
     )
     :effect (and
         (not (in s303))
         (in s303)
         (increase (total-cost) 21)
     )
    )

    (:action transition303-4
     :parameters ()
     :precondition (and
         (in s303)
     )
     :effect (and
         (not (in s303))
         (in s303)
         (increase (total-cost) 30)
     )
    )

    (:action transition303-5
     :parameters ()
     :precondition (and
         (in s303)
     )
     :effect (and
         (not (in s303))
         (in s303)
         (increase (total-cost) 30)
     )
    )

    (:action transition304-0
     :parameters ()
     :precondition (and
         (in s304)
     )
     :effect (and
         (not (in s304))
         (in s404)
         (increase (total-cost) 21)
     )
    )

    (:action transition304-1
     :parameters ()
     :precondition (and
         (in s304)
     )
     :effect (and
         (not (in s304))
         (in s204)
         (increase (total-cost) 21)
     )
    )

    (:action transition304-2
     :parameters ()
     :precondition (and
         (in s304)
     )
     :effect (and
         (not (in s304))
         (in s304)
         (increase (total-cost) 21)
     )
    )

    (:action transition304-3
     :parameters ()
     :precondition (and
         (in s304)
     )
     :effect (and
         (not (in s304))
         (in s304)
         (increase (total-cost) 21)
     )
    )

    (:action transition304-4
     :parameters ()
     :precondition (and
         (in s304)
     )
     :effect (and
         (not (in s304))
         (in s304)
         (increase (total-cost) 30)
     )
    )

    (:action transition304-5
     :parameters ()
     :precondition (and
         (in s304)
     )
     :effect (and
         (not (in s304))
         (in s304)
         (increase (total-cost) 30)
     )
    )

    (:action transition305-0
     :parameters ()
     :precondition (and
         (in s305)
     )
     :effect (and
         (not (in s305))
         (in s405)
         (increase (total-cost) 21)
     )
    )

    (:action transition305-1
     :parameters ()
     :precondition (and
         (in s305)
     )
     :effect (and
         (not (in s305))
         (in s205)
         (increase (total-cost) 21)
     )
    )

    (:action transition305-2
     :parameters ()
     :precondition (and
         (in s305)
     )
     :effect (and
         (not (in s305))
         (in s305)
         (increase (total-cost) 21)
     )
    )

    (:action transition305-3
     :parameters ()
     :precondition (and
         (in s305)
     )
     :effect (and
         (not (in s305))
         (in s305)
         (increase (total-cost) 21)
     )
    )

    (:action transition305-4
     :parameters ()
     :precondition (and
         (in s305)
     )
     :effect (and
         (not (in s305))
         (in s305)
         (increase (total-cost) 30)
     )
    )

    (:action transition305-5
     :parameters ()
     :precondition (and
         (in s305)
     )
     :effect (and
         (not (in s305))
         (in s305)
         (increase (total-cost) 30)
     )
    )

    (:action transition306-0
     :parameters ()
     :precondition (and
         (in s306)
     )
     :effect (and
         (not (in s306))
         (in s406)
         (increase (total-cost) 21)
     )
    )

    (:action transition306-1
     :parameters ()
     :precondition (and
         (in s306)
     )
     :effect (and
         (not (in s306))
         (in s206)
         (increase (total-cost) 21)
     )
    )

    (:action transition306-2
     :parameters ()
     :precondition (and
         (in s306)
     )
     :effect (and
         (not (in s306))
         (in s306)
         (increase (total-cost) 21)
     )
    )

    (:action transition306-3
     :parameters ()
     :precondition (and
         (in s306)
     )
     :effect (and
         (not (in s306))
         (in s306)
         (increase (total-cost) 21)
     )
    )

    (:action transition306-4
     :parameters ()
     :precondition (and
         (in s306)
     )
     :effect (and
         (not (in s306))
         (in s306)
         (increase (total-cost) 30)
     )
    )

    (:action transition306-5
     :parameters ()
     :precondition (and
         (in s306)
     )
     :effect (and
         (not (in s306))
         (in s306)
         (increase (total-cost) 30)
     )
    )

    (:action transition307-0
     :parameters ()
     :precondition (and
         (in s307)
     )
     :effect (and
         (not (in s307))
         (in s407)
         (increase (total-cost) 21)
     )
    )

    (:action transition307-1
     :parameters ()
     :precondition (and
         (in s307)
     )
     :effect (and
         (not (in s307))
         (in s207)
         (increase (total-cost) 21)
     )
    )

    (:action transition307-2
     :parameters ()
     :precondition (and
         (in s307)
     )
     :effect (and
         (not (in s307))
         (in s307)
         (increase (total-cost) 21)
     )
    )

    (:action transition307-3
     :parameters ()
     :precondition (and
         (in s307)
     )
     :effect (and
         (not (in s307))
         (in s307)
         (increase (total-cost) 21)
     )
    )

    (:action transition307-4
     :parameters ()
     :precondition (and
         (in s307)
     )
     :effect (and
         (not (in s307))
         (in s307)
         (increase (total-cost) 30)
     )
    )

    (:action transition307-5
     :parameters ()
     :precondition (and
         (in s307)
     )
     :effect (and
         (not (in s307))
         (in s307)
         (increase (total-cost) 30)
     )
    )

    (:action transition308-0
     :parameters ()
     :precondition (and
         (in s308)
     )
     :effect (and
         (not (in s308))
         (in s408)
         (increase (total-cost) 21)
     )
    )

    (:action transition308-1
     :parameters ()
     :precondition (and
         (in s308)
     )
     :effect (and
         (not (in s308))
         (in s208)
         (increase (total-cost) 21)
     )
    )

    (:action transition308-2
     :parameters ()
     :precondition (and
         (in s308)
     )
     :effect (and
         (not (in s308))
         (in s308)
         (increase (total-cost) 21)
     )
    )

    (:action transition308-3
     :parameters ()
     :precondition (and
         (in s308)
     )
     :effect (and
         (not (in s308))
         (in s308)
         (increase (total-cost) 21)
     )
    )

    (:action transition308-4
     :parameters ()
     :precondition (and
         (in s308)
     )
     :effect (and
         (not (in s308))
         (in s308)
         (increase (total-cost) 30)
     )
    )

    (:action transition308-5
     :parameters ()
     :precondition (and
         (in s308)
     )
     :effect (and
         (not (in s308))
         (in s308)
         (increase (total-cost) 30)
     )
    )

    (:action transition309-0
     :parameters ()
     :precondition (and
         (in s309)
     )
     :effect (and
         (not (in s309))
         (in s409)
         (increase (total-cost) 21)
     )
    )

    (:action transition309-1
     :parameters ()
     :precondition (and
         (in s309)
     )
     :effect (and
         (not (in s309))
         (in s209)
         (increase (total-cost) 21)
     )
    )

    (:action transition309-2
     :parameters ()
     :precondition (and
         (in s309)
     )
     :effect (and
         (not (in s309))
         (in s309)
         (increase (total-cost) 21)
     )
    )

    (:action transition309-3
     :parameters ()
     :precondition (and
         (in s309)
     )
     :effect (and
         (not (in s309))
         (in s309)
         (increase (total-cost) 21)
     )
    )

    (:action transition309-4
     :parameters ()
     :precondition (and
         (in s309)
     )
     :effect (and
         (not (in s309))
         (in s309)
         (increase (total-cost) 30)
     )
    )

    (:action transition309-5
     :parameters ()
     :precondition (and
         (in s309)
     )
     :effect (and
         (not (in s309))
         (in s309)
         (increase (total-cost) 30)
     )
    )

    (:action transition310-0
     :parameters ()
     :precondition (and
         (in s310)
     )
     :effect (and
         (not (in s310))
         (in s410)
         (increase (total-cost) 21)
     )
    )

    (:action transition310-1
     :parameters ()
     :precondition (and
         (in s310)
     )
     :effect (and
         (not (in s310))
         (in s210)
         (increase (total-cost) 21)
     )
    )

    (:action transition310-2
     :parameters ()
     :precondition (and
         (in s310)
     )
     :effect (and
         (not (in s310))
         (in s310)
         (increase (total-cost) 21)
     )
    )

    (:action transition310-3
     :parameters ()
     :precondition (and
         (in s310)
     )
     :effect (and
         (not (in s310))
         (in s310)
         (increase (total-cost) 21)
     )
    )

    (:action transition310-4
     :parameters ()
     :precondition (and
         (in s310)
     )
     :effect (and
         (not (in s310))
         (in s310)
         (increase (total-cost) 30)
     )
    )

    (:action transition310-5
     :parameters ()
     :precondition (and
         (in s310)
     )
     :effect (and
         (not (in s310))
         (in s310)
         (increase (total-cost) 30)
     )
    )

    (:action transition311-0
     :parameters ()
     :precondition (and
         (in s311)
     )
     :effect (and
         (not (in s311))
         (in s411)
         (increase (total-cost) 21)
     )
    )

    (:action transition311-1
     :parameters ()
     :precondition (and
         (in s311)
     )
     :effect (and
         (not (in s311))
         (in s211)
         (increase (total-cost) 21)
     )
    )

    (:action transition311-2
     :parameters ()
     :precondition (and
         (in s311)
     )
     :effect (and
         (not (in s311))
         (in s311)
         (increase (total-cost) 21)
     )
    )

    (:action transition311-3
     :parameters ()
     :precondition (and
         (in s311)
     )
     :effect (and
         (not (in s311))
         (in s311)
         (increase (total-cost) 21)
     )
    )

    (:action transition311-4
     :parameters ()
     :precondition (and
         (in s311)
     )
     :effect (and
         (not (in s311))
         (in s311)
         (increase (total-cost) 30)
     )
    )

    (:action transition311-5
     :parameters ()
     :precondition (and
         (in s311)
     )
     :effect (and
         (not (in s311))
         (in s311)
         (increase (total-cost) 30)
     )
    )

    (:action transition312-0
     :parameters ()
     :precondition (and
         (in s312)
     )
     :effect (and
         (not (in s312))
         (in s412)
         (increase (total-cost) 21)
     )
    )

    (:action transition312-1
     :parameters ()
     :precondition (and
         (in s312)
     )
     :effect (and
         (not (in s312))
         (in s212)
         (increase (total-cost) 21)
     )
    )

    (:action transition312-2
     :parameters ()
     :precondition (and
         (in s312)
     )
     :effect (and
         (not (in s312))
         (in s312)
         (increase (total-cost) 21)
     )
    )

    (:action transition312-3
     :parameters ()
     :precondition (and
         (in s312)
     )
     :effect (and
         (not (in s312))
         (in s312)
         (increase (total-cost) 21)
     )
    )

    (:action transition312-4
     :parameters ()
     :precondition (and
         (in s312)
     )
     :effect (and
         (not (in s312))
         (in s312)
         (increase (total-cost) 30)
     )
    )

    (:action transition312-5
     :parameters ()
     :precondition (and
         (in s312)
     )
     :effect (and
         (not (in s312))
         (in s312)
         (increase (total-cost) 30)
     )
    )

    (:action transition313-0
     :parameters ()
     :precondition (and
         (in s313)
     )
     :effect (and
         (not (in s313))
         (in s413)
         (increase (total-cost) 21)
     )
    )

    (:action transition313-1
     :parameters ()
     :precondition (and
         (in s313)
     )
     :effect (and
         (not (in s313))
         (in s213)
         (increase (total-cost) 21)
     )
    )

    (:action transition313-2
     :parameters ()
     :precondition (and
         (in s313)
     )
     :effect (and
         (not (in s313))
         (in s313)
         (increase (total-cost) 21)
     )
    )

    (:action transition313-3
     :parameters ()
     :precondition (and
         (in s313)
     )
     :effect (and
         (not (in s313))
         (in s313)
         (increase (total-cost) 21)
     )
    )

    (:action transition313-4
     :parameters ()
     :precondition (and
         (in s313)
     )
     :effect (and
         (not (in s313))
         (in s313)
         (increase (total-cost) 30)
     )
    )

    (:action transition313-5
     :parameters ()
     :precondition (and
         (in s313)
     )
     :effect (and
         (not (in s313))
         (in s313)
         (increase (total-cost) 30)
     )
    )

    (:action transition314-0
     :parameters ()
     :precondition (and
         (in s314)
     )
     :effect (and
         (not (in s314))
         (in s414)
         (increase (total-cost) 21)
     )
    )

    (:action transition314-1
     :parameters ()
     :precondition (and
         (in s314)
     )
     :effect (and
         (not (in s314))
         (in s214)
         (increase (total-cost) 21)
     )
    )

    (:action transition314-2
     :parameters ()
     :precondition (and
         (in s314)
     )
     :effect (and
         (not (in s314))
         (in s314)
         (increase (total-cost) 21)
     )
    )

    (:action transition314-3
     :parameters ()
     :precondition (and
         (in s314)
     )
     :effect (and
         (not (in s314))
         (in s314)
         (increase (total-cost) 21)
     )
    )

    (:action transition314-4
     :parameters ()
     :precondition (and
         (in s314)
     )
     :effect (and
         (not (in s314))
         (in s314)
         (increase (total-cost) 30)
     )
    )

    (:action transition314-5
     :parameters ()
     :precondition (and
         (in s314)
     )
     :effect (and
         (not (in s314))
         (in s314)
         (increase (total-cost) 30)
     )
    )

    (:action transition315-0
     :parameters ()
     :precondition (and
         (in s315)
     )
     :effect (and
         (not (in s315))
         (in s415)
         (increase (total-cost) 21)
     )
    )

    (:action transition315-1
     :parameters ()
     :precondition (and
         (in s315)
     )
     :effect (and
         (not (in s315))
         (in s215)
         (increase (total-cost) 21)
     )
    )

    (:action transition315-2
     :parameters ()
     :precondition (and
         (in s315)
     )
     :effect (and
         (not (in s315))
         (in s315)
         (increase (total-cost) 21)
     )
    )

    (:action transition315-3
     :parameters ()
     :precondition (and
         (in s315)
     )
     :effect (and
         (not (in s315))
         (in s315)
         (increase (total-cost) 21)
     )
    )

    (:action transition315-4
     :parameters ()
     :precondition (and
         (in s315)
     )
     :effect (and
         (not (in s315))
         (in s315)
         (increase (total-cost) 30)
     )
    )

    (:action transition315-5
     :parameters ()
     :precondition (and
         (in s315)
     )
     :effect (and
         (not (in s315))
         (in s315)
         (increase (total-cost) 30)
     )
    )

    (:action transition316-0
     :parameters ()
     :precondition (and
         (in s316)
     )
     :effect (and
         (not (in s316))
         (in s416)
         (increase (total-cost) 21)
     )
    )

    (:action transition316-1
     :parameters ()
     :precondition (and
         (in s316)
     )
     :effect (and
         (not (in s316))
         (in s216)
         (increase (total-cost) 21)
     )
    )

    (:action transition316-2
     :parameters ()
     :precondition (and
         (in s316)
     )
     :effect (and
         (not (in s316))
         (in s316)
         (increase (total-cost) 21)
     )
    )

    (:action transition316-3
     :parameters ()
     :precondition (and
         (in s316)
     )
     :effect (and
         (not (in s316))
         (in s316)
         (increase (total-cost) 21)
     )
    )

    (:action transition316-4
     :parameters ()
     :precondition (and
         (in s316)
     )
     :effect (and
         (not (in s316))
         (in s316)
         (increase (total-cost) 30)
     )
    )

    (:action transition316-5
     :parameters ()
     :precondition (and
         (in s316)
     )
     :effect (and
         (not (in s316))
         (in s316)
         (increase (total-cost) 30)
     )
    )

    (:action transition317-0
     :parameters ()
     :precondition (and
         (in s317)
     )
     :effect (and
         (not (in s317))
         (in s417)
         (increase (total-cost) 21)
     )
    )

    (:action transition317-1
     :parameters ()
     :precondition (and
         (in s317)
     )
     :effect (and
         (not (in s317))
         (in s217)
         (increase (total-cost) 21)
     )
    )

    (:action transition317-2
     :parameters ()
     :precondition (and
         (in s317)
     )
     :effect (and
         (not (in s317))
         (in s317)
         (increase (total-cost) 21)
     )
    )

    (:action transition317-3
     :parameters ()
     :precondition (and
         (in s317)
     )
     :effect (and
         (not (in s317))
         (in s317)
         (increase (total-cost) 21)
     )
    )

    (:action transition317-4
     :parameters ()
     :precondition (and
         (in s317)
     )
     :effect (and
         (not (in s317))
         (in s317)
         (increase (total-cost) 30)
     )
    )

    (:action transition317-5
     :parameters ()
     :precondition (and
         (in s317)
     )
     :effect (and
         (not (in s317))
         (in s317)
         (increase (total-cost) 30)
     )
    )

    (:action transition318-0
     :parameters ()
     :precondition (and
         (in s318)
     )
     :effect (and
         (not (in s318))
         (in s418)
         (increase (total-cost) 21)
     )
    )

    (:action transition318-1
     :parameters ()
     :precondition (and
         (in s318)
     )
     :effect (and
         (not (in s318))
         (in s218)
         (increase (total-cost) 21)
     )
    )

    (:action transition318-2
     :parameters ()
     :precondition (and
         (in s318)
     )
     :effect (and
         (not (in s318))
         (in s318)
         (increase (total-cost) 21)
     )
    )

    (:action transition318-3
     :parameters ()
     :precondition (and
         (in s318)
     )
     :effect (and
         (not (in s318))
         (in s318)
         (increase (total-cost) 21)
     )
    )

    (:action transition318-4
     :parameters ()
     :precondition (and
         (in s318)
     )
     :effect (and
         (not (in s318))
         (in s318)
         (increase (total-cost) 30)
     )
    )

    (:action transition318-5
     :parameters ()
     :precondition (and
         (in s318)
     )
     :effect (and
         (not (in s318))
         (in s318)
         (increase (total-cost) 30)
     )
    )

    (:action transition319-0
     :parameters ()
     :precondition (and
         (in s319)
     )
     :effect (and
         (not (in s319))
         (in s419)
         (increase (total-cost) 21)
     )
    )

    (:action transition319-1
     :parameters ()
     :precondition (and
         (in s319)
     )
     :effect (and
         (not (in s319))
         (in s219)
         (increase (total-cost) 21)
     )
    )

    (:action transition319-2
     :parameters ()
     :precondition (and
         (in s319)
     )
     :effect (and
         (not (in s319))
         (in s319)
         (increase (total-cost) 21)
     )
    )

    (:action transition319-3
     :parameters ()
     :precondition (and
         (in s319)
     )
     :effect (and
         (not (in s319))
         (in s319)
         (increase (total-cost) 21)
     )
    )

    (:action transition319-4
     :parameters ()
     :precondition (and
         (in s319)
     )
     :effect (and
         (not (in s319))
         (in s319)
         (increase (total-cost) 30)
     )
    )

    (:action transition319-5
     :parameters ()
     :precondition (and
         (in s319)
     )
     :effect (and
         (not (in s319))
         (in s319)
         (increase (total-cost) 30)
     )
    )

    (:action transition320-0
     :parameters ()
     :precondition (and
         (in s320)
     )
     :effect (and
         (not (in s320))
         (in s420)
         (increase (total-cost) 21)
     )
    )

    (:action transition320-1
     :parameters ()
     :precondition (and
         (in s320)
     )
     :effect (and
         (not (in s320))
         (in s220)
         (increase (total-cost) 21)
     )
    )

    (:action transition320-2
     :parameters ()
     :precondition (and
         (in s320)
     )
     :effect (and
         (not (in s320))
         (in s340)
         (increase (total-cost) 21)
     )
    )

    (:action transition320-3
     :parameters ()
     :precondition (and
         (in s320)
     )
     :effect (and
         (not (in s320))
         (in s320)
         (increase (total-cost) 21)
     )
    )

    (:action transition320-4
     :parameters ()
     :precondition (and
         (in s320)
     )
     :effect (and
         (not (in s320))
         (in s320)
         (increase (total-cost) 30)
     )
    )

    (:action transition320-5
     :parameters ()
     :precondition (and
         (in s320)
     )
     :effect (and
         (not (in s320))
         (in s320)
         (increase (total-cost) 30)
     )
    )

    (:action transition321-0
     :parameters ()
     :precondition (and
         (in s321)
     )
     :effect (and
         (not (in s321))
         (in s421)
         (increase (total-cost) 21)
     )
    )

    (:action transition321-1
     :parameters ()
     :precondition (and
         (in s321)
     )
     :effect (and
         (not (in s321))
         (in s221)
         (increase (total-cost) 21)
     )
    )

    (:action transition321-2
     :parameters ()
     :precondition (and
         (in s321)
     )
     :effect (and
         (not (in s321))
         (in s341)
         (increase (total-cost) 21)
     )
    )

    (:action transition321-3
     :parameters ()
     :precondition (and
         (in s321)
     )
     :effect (and
         (not (in s321))
         (in s321)
         (increase (total-cost) 21)
     )
    )

    (:action transition321-4
     :parameters ()
     :precondition (and
         (in s321)
     )
     :effect (and
         (not (in s321))
         (in s321)
         (increase (total-cost) 30)
     )
    )

    (:action transition321-5
     :parameters ()
     :precondition (and
         (in s321)
     )
     :effect (and
         (not (in s321))
         (in s321)
         (increase (total-cost) 30)
     )
    )

    (:action transition322-0
     :parameters ()
     :precondition (and
         (in s322)
     )
     :effect (and
         (not (in s322))
         (in s422)
         (increase (total-cost) 21)
     )
    )

    (:action transition322-1
     :parameters ()
     :precondition (and
         (in s322)
     )
     :effect (and
         (not (in s322))
         (in s222)
         (increase (total-cost) 21)
     )
    )

    (:action transition322-2
     :parameters ()
     :precondition (and
         (in s322)
     )
     :effect (and
         (not (in s322))
         (in s342)
         (increase (total-cost) 21)
     )
    )

    (:action transition322-3
     :parameters ()
     :precondition (and
         (in s322)
     )
     :effect (and
         (not (in s322))
         (in s322)
         (increase (total-cost) 21)
     )
    )

    (:action transition322-4
     :parameters ()
     :precondition (and
         (in s322)
     )
     :effect (and
         (not (in s322))
         (in s322)
         (increase (total-cost) 30)
     )
    )

    (:action transition322-5
     :parameters ()
     :precondition (and
         (in s322)
     )
     :effect (and
         (not (in s322))
         (in s322)
         (increase (total-cost) 30)
     )
    )

    (:action transition323-0
     :parameters ()
     :precondition (and
         (in s323)
     )
     :effect (and
         (not (in s323))
         (in s423)
         (increase (total-cost) 21)
     )
    )

    (:action transition323-1
     :parameters ()
     :precondition (and
         (in s323)
     )
     :effect (and
         (not (in s323))
         (in s223)
         (increase (total-cost) 21)
     )
    )

    (:action transition323-2
     :parameters ()
     :precondition (and
         (in s323)
     )
     :effect (and
         (not (in s323))
         (in s343)
         (increase (total-cost) 21)
     )
    )

    (:action transition323-3
     :parameters ()
     :precondition (and
         (in s323)
     )
     :effect (and
         (not (in s323))
         (in s323)
         (increase (total-cost) 21)
     )
    )

    (:action transition323-4
     :parameters ()
     :precondition (and
         (in s323)
     )
     :effect (and
         (not (in s323))
         (in s323)
         (increase (total-cost) 30)
     )
    )

    (:action transition323-5
     :parameters ()
     :precondition (and
         (in s323)
     )
     :effect (and
         (not (in s323))
         (in s323)
         (increase (total-cost) 30)
     )
    )

    (:action transition324-0
     :parameters ()
     :precondition (and
         (in s324)
     )
     :effect (and
         (not (in s324))
         (in s424)
         (increase (total-cost) 21)
     )
    )

    (:action transition324-1
     :parameters ()
     :precondition (and
         (in s324)
     )
     :effect (and
         (not (in s324))
         (in s224)
         (increase (total-cost) 21)
     )
    )

    (:action transition324-2
     :parameters ()
     :precondition (and
         (in s324)
     )
     :effect (and
         (not (in s324))
         (in s344)
         (increase (total-cost) 21)
     )
    )

    (:action transition324-3
     :parameters ()
     :precondition (and
         (in s324)
     )
     :effect (and
         (not (in s324))
         (in s324)
         (increase (total-cost) 21)
     )
    )

    (:action transition324-4
     :parameters ()
     :precondition (and
         (in s324)
     )
     :effect (and
         (not (in s324))
         (in s324)
         (increase (total-cost) 30)
     )
    )

    (:action transition324-5
     :parameters ()
     :precondition (and
         (in s324)
     )
     :effect (and
         (not (in s324))
         (in s324)
         (increase (total-cost) 30)
     )
    )

    (:action transition325-0
     :parameters ()
     :precondition (and
         (in s325)
     )
     :effect (and
         (not (in s325))
         (in s425)
         (increase (total-cost) 21)
     )
    )

    (:action transition325-1
     :parameters ()
     :precondition (and
         (in s325)
     )
     :effect (and
         (not (in s325))
         (in s225)
         (increase (total-cost) 21)
     )
    )

    (:action transition325-2
     :parameters ()
     :precondition (and
         (in s325)
     )
     :effect (and
         (not (in s325))
         (in s345)
         (increase (total-cost) 21)
     )
    )

    (:action transition325-3
     :parameters ()
     :precondition (and
         (in s325)
     )
     :effect (and
         (not (in s325))
         (in s325)
         (increase (total-cost) 21)
     )
    )

    (:action transition325-4
     :parameters ()
     :precondition (and
         (in s325)
     )
     :effect (and
         (not (in s325))
         (in s325)
         (increase (total-cost) 30)
     )
    )

    (:action transition325-5
     :parameters ()
     :precondition (and
         (in s325)
     )
     :effect (and
         (not (in s325))
         (in s325)
         (increase (total-cost) 30)
     )
    )

    (:action transition326-0
     :parameters ()
     :precondition (and
         (in s326)
     )
     :effect (and
         (not (in s326))
         (in s426)
         (increase (total-cost) 21)
     )
    )

    (:action transition326-1
     :parameters ()
     :precondition (and
         (in s326)
     )
     :effect (and
         (not (in s326))
         (in s226)
         (increase (total-cost) 21)
     )
    )

    (:action transition326-2
     :parameters ()
     :precondition (and
         (in s326)
     )
     :effect (and
         (not (in s326))
         (in s346)
         (increase (total-cost) 21)
     )
    )

    (:action transition326-3
     :parameters ()
     :precondition (and
         (in s326)
     )
     :effect (and
         (not (in s326))
         (in s326)
         (increase (total-cost) 21)
     )
    )

    (:action transition326-4
     :parameters ()
     :precondition (and
         (in s326)
     )
     :effect (and
         (not (in s326))
         (in s326)
         (increase (total-cost) 30)
     )
    )

    (:action transition326-5
     :parameters ()
     :precondition (and
         (in s326)
     )
     :effect (and
         (not (in s326))
         (in s326)
         (increase (total-cost) 30)
     )
    )

    (:action transition327-0
     :parameters ()
     :precondition (and
         (in s327)
     )
     :effect (and
         (not (in s327))
         (in s427)
         (increase (total-cost) 21)
     )
    )

    (:action transition327-1
     :parameters ()
     :precondition (and
         (in s327)
     )
     :effect (and
         (not (in s327))
         (in s227)
         (increase (total-cost) 21)
     )
    )

    (:action transition327-2
     :parameters ()
     :precondition (and
         (in s327)
     )
     :effect (and
         (not (in s327))
         (in s347)
         (increase (total-cost) 21)
     )
    )

    (:action transition327-3
     :parameters ()
     :precondition (and
         (in s327)
     )
     :effect (and
         (not (in s327))
         (in s327)
         (increase (total-cost) 21)
     )
    )

    (:action transition327-4
     :parameters ()
     :precondition (and
         (in s327)
     )
     :effect (and
         (not (in s327))
         (in s327)
         (increase (total-cost) 30)
     )
    )

    (:action transition327-5
     :parameters ()
     :precondition (and
         (in s327)
     )
     :effect (and
         (not (in s327))
         (in s327)
         (increase (total-cost) 30)
     )
    )

    (:action transition328-0
     :parameters ()
     :precondition (and
         (in s328)
     )
     :effect (and
         (not (in s328))
         (in s428)
         (increase (total-cost) 21)
     )
    )

    (:action transition328-1
     :parameters ()
     :precondition (and
         (in s328)
     )
     :effect (and
         (not (in s328))
         (in s228)
         (increase (total-cost) 21)
     )
    )

    (:action transition328-2
     :parameters ()
     :precondition (and
         (in s328)
     )
     :effect (and
         (not (in s328))
         (in s348)
         (increase (total-cost) 21)
     )
    )

    (:action transition328-3
     :parameters ()
     :precondition (and
         (in s328)
     )
     :effect (and
         (not (in s328))
         (in s328)
         (increase (total-cost) 21)
     )
    )

    (:action transition328-4
     :parameters ()
     :precondition (and
         (in s328)
     )
     :effect (and
         (not (in s328))
         (in s328)
         (increase (total-cost) 30)
     )
    )

    (:action transition328-5
     :parameters ()
     :precondition (and
         (in s328)
     )
     :effect (and
         (not (in s328))
         (in s328)
         (increase (total-cost) 30)
     )
    )

    (:action transition329-0
     :parameters ()
     :precondition (and
         (in s329)
     )
     :effect (and
         (not (in s329))
         (in s429)
         (increase (total-cost) 21)
     )
    )

    (:action transition329-1
     :parameters ()
     :precondition (and
         (in s329)
     )
     :effect (and
         (not (in s329))
         (in s229)
         (increase (total-cost) 21)
     )
    )

    (:action transition329-2
     :parameters ()
     :precondition (and
         (in s329)
     )
     :effect (and
         (not (in s329))
         (in s349)
         (increase (total-cost) 21)
     )
    )

    (:action transition329-3
     :parameters ()
     :precondition (and
         (in s329)
     )
     :effect (and
         (not (in s329))
         (in s329)
         (increase (total-cost) 21)
     )
    )

    (:action transition329-4
     :parameters ()
     :precondition (and
         (in s329)
     )
     :effect (and
         (not (in s329))
         (in s329)
         (increase (total-cost) 30)
     )
    )

    (:action transition329-5
     :parameters ()
     :precondition (and
         (in s329)
     )
     :effect (and
         (not (in s329))
         (in s329)
         (increase (total-cost) 30)
     )
    )

    (:action transition330-0
     :parameters ()
     :precondition (and
         (in s330)
     )
     :effect (and
         (not (in s330))
         (in s430)
         (increase (total-cost) 21)
     )
    )

    (:action transition330-1
     :parameters ()
     :precondition (and
         (in s330)
     )
     :effect (and
         (not (in s330))
         (in s230)
         (increase (total-cost) 21)
     )
    )

    (:action transition330-2
     :parameters ()
     :precondition (and
         (in s330)
     )
     :effect (and
         (not (in s330))
         (in s350)
         (increase (total-cost) 21)
     )
    )

    (:action transition330-3
     :parameters ()
     :precondition (and
         (in s330)
     )
     :effect (and
         (not (in s330))
         (in s330)
         (increase (total-cost) 21)
     )
    )

    (:action transition330-4
     :parameters ()
     :precondition (and
         (in s330)
     )
     :effect (and
         (not (in s330))
         (in s330)
         (increase (total-cost) 30)
     )
    )

    (:action transition330-5
     :parameters ()
     :precondition (and
         (in s330)
     )
     :effect (and
         (not (in s330))
         (in s330)
         (increase (total-cost) 30)
     )
    )

    (:action transition331-0
     :parameters ()
     :precondition (and
         (in s331)
     )
     :effect (and
         (not (in s331))
         (in s431)
         (increase (total-cost) 21)
     )
    )

    (:action transition331-1
     :parameters ()
     :precondition (and
         (in s331)
     )
     :effect (and
         (not (in s331))
         (in s231)
         (increase (total-cost) 21)
     )
    )

    (:action transition331-2
     :parameters ()
     :precondition (and
         (in s331)
     )
     :effect (and
         (not (in s331))
         (in s351)
         (increase (total-cost) 21)
     )
    )

    (:action transition331-3
     :parameters ()
     :precondition (and
         (in s331)
     )
     :effect (and
         (not (in s331))
         (in s331)
         (increase (total-cost) 21)
     )
    )

    (:action transition331-4
     :parameters ()
     :precondition (and
         (in s331)
     )
     :effect (and
         (not (in s331))
         (in s331)
         (increase (total-cost) 30)
     )
    )

    (:action transition331-5
     :parameters ()
     :precondition (and
         (in s331)
     )
     :effect (and
         (not (in s331))
         (in s331)
         (increase (total-cost) 30)
     )
    )

    (:action transition332-0
     :parameters ()
     :precondition (and
         (in s332)
     )
     :effect (and
         (not (in s332))
         (in s432)
         (increase (total-cost) 21)
     )
    )

    (:action transition332-1
     :parameters ()
     :precondition (and
         (in s332)
     )
     :effect (and
         (not (in s332))
         (in s232)
         (increase (total-cost) 21)
     )
    )

    (:action transition332-2
     :parameters ()
     :precondition (and
         (in s332)
     )
     :effect (and
         (not (in s332))
         (in s352)
         (increase (total-cost) 21)
     )
    )

    (:action transition332-3
     :parameters ()
     :precondition (and
         (in s332)
     )
     :effect (and
         (not (in s332))
         (in s332)
         (increase (total-cost) 21)
     )
    )

    (:action transition332-4
     :parameters ()
     :precondition (and
         (in s332)
     )
     :effect (and
         (not (in s332))
         (in s332)
         (increase (total-cost) 30)
     )
    )

    (:action transition332-5
     :parameters ()
     :precondition (and
         (in s332)
     )
     :effect (and
         (not (in s332))
         (in s332)
         (increase (total-cost) 30)
     )
    )

    (:action transition333-0
     :parameters ()
     :precondition (and
         (in s333)
     )
     :effect (and
         (not (in s333))
         (in s433)
         (increase (total-cost) 21)
     )
    )

    (:action transition333-1
     :parameters ()
     :precondition (and
         (in s333)
     )
     :effect (and
         (not (in s333))
         (in s233)
         (increase (total-cost) 21)
     )
    )

    (:action transition333-2
     :parameters ()
     :precondition (and
         (in s333)
     )
     :effect (and
         (not (in s333))
         (in s353)
         (increase (total-cost) 21)
     )
    )

    (:action transition333-3
     :parameters ()
     :precondition (and
         (in s333)
     )
     :effect (and
         (not (in s333))
         (in s333)
         (increase (total-cost) 21)
     )
    )

    (:action transition333-4
     :parameters ()
     :precondition (and
         (in s333)
     )
     :effect (and
         (not (in s333))
         (in s333)
         (increase (total-cost) 30)
     )
    )

    (:action transition333-5
     :parameters ()
     :precondition (and
         (in s333)
     )
     :effect (and
         (not (in s333))
         (in s333)
         (increase (total-cost) 30)
     )
    )

    (:action transition334-0
     :parameters ()
     :precondition (and
         (in s334)
     )
     :effect (and
         (not (in s334))
         (in s434)
         (increase (total-cost) 21)
     )
    )

    (:action transition334-1
     :parameters ()
     :precondition (and
         (in s334)
     )
     :effect (and
         (not (in s334))
         (in s234)
         (increase (total-cost) 21)
     )
    )

    (:action transition334-2
     :parameters ()
     :precondition (and
         (in s334)
     )
     :effect (and
         (not (in s334))
         (in s354)
         (increase (total-cost) 21)
     )
    )

    (:action transition334-3
     :parameters ()
     :precondition (and
         (in s334)
     )
     :effect (and
         (not (in s334))
         (in s334)
         (increase (total-cost) 21)
     )
    )

    (:action transition334-4
     :parameters ()
     :precondition (and
         (in s334)
     )
     :effect (and
         (not (in s334))
         (in s334)
         (increase (total-cost) 30)
     )
    )

    (:action transition334-5
     :parameters ()
     :precondition (and
         (in s334)
     )
     :effect (and
         (not (in s334))
         (in s334)
         (increase (total-cost) 30)
     )
    )

    (:action transition335-0
     :parameters ()
     :precondition (and
         (in s335)
     )
     :effect (and
         (not (in s335))
         (in s435)
         (increase (total-cost) 21)
     )
    )

    (:action transition335-1
     :parameters ()
     :precondition (and
         (in s335)
     )
     :effect (and
         (not (in s335))
         (in s235)
         (increase (total-cost) 21)
     )
    )

    (:action transition335-2
     :parameters ()
     :precondition (and
         (in s335)
     )
     :effect (and
         (not (in s335))
         (in s355)
         (increase (total-cost) 21)
     )
    )

    (:action transition335-3
     :parameters ()
     :precondition (and
         (in s335)
     )
     :effect (and
         (not (in s335))
         (in s335)
         (increase (total-cost) 21)
     )
    )

    (:action transition335-4
     :parameters ()
     :precondition (and
         (in s335)
     )
     :effect (and
         (not (in s335))
         (in s335)
         (increase (total-cost) 30)
     )
    )

    (:action transition335-5
     :parameters ()
     :precondition (and
         (in s335)
     )
     :effect (and
         (not (in s335))
         (in s335)
         (increase (total-cost) 30)
     )
    )

    (:action transition336-0
     :parameters ()
     :precondition (and
         (in s336)
     )
     :effect (and
         (not (in s336))
         (in s436)
         (increase (total-cost) 21)
     )
    )

    (:action transition336-1
     :parameters ()
     :precondition (and
         (in s336)
     )
     :effect (and
         (not (in s336))
         (in s236)
         (increase (total-cost) 21)
     )
    )

    (:action transition336-2
     :parameters ()
     :precondition (and
         (in s336)
     )
     :effect (and
         (not (in s336))
         (in s356)
         (increase (total-cost) 21)
     )
    )

    (:action transition336-3
     :parameters ()
     :precondition (and
         (in s336)
     )
     :effect (and
         (not (in s336))
         (in s336)
         (increase (total-cost) 21)
     )
    )

    (:action transition336-4
     :parameters ()
     :precondition (and
         (in s336)
     )
     :effect (and
         (not (in s336))
         (in s336)
         (increase (total-cost) 30)
     )
    )

    (:action transition336-5
     :parameters ()
     :precondition (and
         (in s336)
     )
     :effect (and
         (not (in s336))
         (in s336)
         (increase (total-cost) 30)
     )
    )

    (:action transition337-0
     :parameters ()
     :precondition (and
         (in s337)
     )
     :effect (and
         (not (in s337))
         (in s437)
         (increase (total-cost) 21)
     )
    )

    (:action transition337-1
     :parameters ()
     :precondition (and
         (in s337)
     )
     :effect (and
         (not (in s337))
         (in s237)
         (increase (total-cost) 21)
     )
    )

    (:action transition337-2
     :parameters ()
     :precondition (and
         (in s337)
     )
     :effect (and
         (not (in s337))
         (in s357)
         (increase (total-cost) 21)
     )
    )

    (:action transition337-3
     :parameters ()
     :precondition (and
         (in s337)
     )
     :effect (and
         (not (in s337))
         (in s337)
         (increase (total-cost) 21)
     )
    )

    (:action transition337-4
     :parameters ()
     :precondition (and
         (in s337)
     )
     :effect (and
         (not (in s337))
         (in s337)
         (increase (total-cost) 30)
     )
    )

    (:action transition337-5
     :parameters ()
     :precondition (and
         (in s337)
     )
     :effect (and
         (not (in s337))
         (in s337)
         (increase (total-cost) 30)
     )
    )

    (:action transition338-0
     :parameters ()
     :precondition (and
         (in s338)
     )
     :effect (and
         (not (in s338))
         (in s438)
         (increase (total-cost) 21)
     )
    )

    (:action transition338-1
     :parameters ()
     :precondition (and
         (in s338)
     )
     :effect (and
         (not (in s338))
         (in s238)
         (increase (total-cost) 21)
     )
    )

    (:action transition338-2
     :parameters ()
     :precondition (and
         (in s338)
     )
     :effect (and
         (not (in s338))
         (in s358)
         (increase (total-cost) 21)
     )
    )

    (:action transition338-3
     :parameters ()
     :precondition (and
         (in s338)
     )
     :effect (and
         (not (in s338))
         (in s338)
         (increase (total-cost) 21)
     )
    )

    (:action transition338-4
     :parameters ()
     :precondition (and
         (in s338)
     )
     :effect (and
         (not (in s338))
         (in s338)
         (increase (total-cost) 30)
     )
    )

    (:action transition338-5
     :parameters ()
     :precondition (and
         (in s338)
     )
     :effect (and
         (not (in s338))
         (in s338)
         (increase (total-cost) 30)
     )
    )

    (:action transition339-0
     :parameters ()
     :precondition (and
         (in s339)
     )
     :effect (and
         (not (in s339))
         (in s439)
         (increase (total-cost) 21)
     )
    )

    (:action transition339-1
     :parameters ()
     :precondition (and
         (in s339)
     )
     :effect (and
         (not (in s339))
         (in s239)
         (increase (total-cost) 21)
     )
    )

    (:action transition339-2
     :parameters ()
     :precondition (and
         (in s339)
     )
     :effect (and
         (not (in s339))
         (in s359)
         (increase (total-cost) 21)
     )
    )

    (:action transition339-3
     :parameters ()
     :precondition (and
         (in s339)
     )
     :effect (and
         (not (in s339))
         (in s339)
         (increase (total-cost) 21)
     )
    )

    (:action transition339-4
     :parameters ()
     :precondition (and
         (in s339)
     )
     :effect (and
         (not (in s339))
         (in s339)
         (increase (total-cost) 30)
     )
    )

    (:action transition339-5
     :parameters ()
     :precondition (and
         (in s339)
     )
     :effect (and
         (not (in s339))
         (in s339)
         (increase (total-cost) 30)
     )
    )

    (:action transition340-0
     :parameters ()
     :precondition (and
         (in s340)
     )
     :effect (and
         (not (in s340))
         (in s440)
         (increase (total-cost) 21)
     )
    )

    (:action transition340-1
     :parameters ()
     :precondition (and
         (in s340)
     )
     :effect (and
         (not (in s340))
         (in s240)
         (increase (total-cost) 21)
     )
    )

    (:action transition340-2
     :parameters ()
     :precondition (and
         (in s340)
     )
     :effect (and
         (not (in s340))
         (in s340)
         (increase (total-cost) 21)
     )
    )

    (:action transition340-3
     :parameters ()
     :precondition (and
         (in s340)
     )
     :effect (and
         (not (in s340))
         (in s320)
         (increase (total-cost) 21)
     )
    )

    (:action transition340-4
     :parameters ()
     :precondition (and
         (in s340)
     )
     :effect (and
         (not (in s340))
         (in s340)
         (increase (total-cost) 30)
     )
    )

    (:action transition340-5
     :parameters ()
     :precondition (and
         (in s340)
     )
     :effect (and
         (not (in s340))
         (in s340)
         (increase (total-cost) 30)
     )
    )

    (:action transition341-0
     :parameters ()
     :precondition (and
         (in s341)
     )
     :effect (and
         (not (in s341))
         (in s441)
         (increase (total-cost) 21)
     )
    )

    (:action transition341-1
     :parameters ()
     :precondition (and
         (in s341)
     )
     :effect (and
         (not (in s341))
         (in s241)
         (increase (total-cost) 21)
     )
    )

    (:action transition341-2
     :parameters ()
     :precondition (and
         (in s341)
     )
     :effect (and
         (not (in s341))
         (in s341)
         (increase (total-cost) 21)
     )
    )

    (:action transition341-3
     :parameters ()
     :precondition (and
         (in s341)
     )
     :effect (and
         (not (in s341))
         (in s321)
         (increase (total-cost) 21)
     )
    )

    (:action transition341-4
     :parameters ()
     :precondition (and
         (in s341)
     )
     :effect (and
         (not (in s341))
         (in s341)
         (increase (total-cost) 30)
     )
    )

    (:action transition341-5
     :parameters ()
     :precondition (and
         (in s341)
     )
     :effect (and
         (not (in s341))
         (in s341)
         (increase (total-cost) 30)
     )
    )

    (:action transition342-0
     :parameters ()
     :precondition (and
         (in s342)
     )
     :effect (and
         (not (in s342))
         (in s442)
         (increase (total-cost) 21)
     )
    )

    (:action transition342-1
     :parameters ()
     :precondition (and
         (in s342)
     )
     :effect (and
         (not (in s342))
         (in s242)
         (increase (total-cost) 21)
     )
    )

    (:action transition342-2
     :parameters ()
     :precondition (and
         (in s342)
     )
     :effect (and
         (not (in s342))
         (in s342)
         (increase (total-cost) 21)
     )
    )

    (:action transition342-3
     :parameters ()
     :precondition (and
         (in s342)
     )
     :effect (and
         (not (in s342))
         (in s322)
         (increase (total-cost) 21)
     )
    )

    (:action transition342-4
     :parameters ()
     :precondition (and
         (in s342)
     )
     :effect (and
         (not (in s342))
         (in s342)
         (increase (total-cost) 30)
     )
    )

    (:action transition342-5
     :parameters ()
     :precondition (and
         (in s342)
     )
     :effect (and
         (not (in s342))
         (in s342)
         (increase (total-cost) 30)
     )
    )

    (:action transition343-0
     :parameters ()
     :precondition (and
         (in s343)
     )
     :effect (and
         (not (in s343))
         (in s443)
         (increase (total-cost) 21)
     )
    )

    (:action transition343-1
     :parameters ()
     :precondition (and
         (in s343)
     )
     :effect (and
         (not (in s343))
         (in s243)
         (increase (total-cost) 21)
     )
    )

    (:action transition343-2
     :parameters ()
     :precondition (and
         (in s343)
     )
     :effect (and
         (not (in s343))
         (in s343)
         (increase (total-cost) 21)
     )
    )

    (:action transition343-3
     :parameters ()
     :precondition (and
         (in s343)
     )
     :effect (and
         (not (in s343))
         (in s323)
         (increase (total-cost) 21)
     )
    )

    (:action transition343-4
     :parameters ()
     :precondition (and
         (in s343)
     )
     :effect (and
         (not (in s343))
         (in s343)
         (increase (total-cost) 30)
     )
    )

    (:action transition343-5
     :parameters ()
     :precondition (and
         (in s343)
     )
     :effect (and
         (not (in s343))
         (in s343)
         (increase (total-cost) 30)
     )
    )

    (:action transition344-0
     :parameters ()
     :precondition (and
         (in s344)
     )
     :effect (and
         (not (in s344))
         (in s444)
         (increase (total-cost) 21)
     )
    )

    (:action transition344-1
     :parameters ()
     :precondition (and
         (in s344)
     )
     :effect (and
         (not (in s344))
         (in s244)
         (increase (total-cost) 21)
     )
    )

    (:action transition344-2
     :parameters ()
     :precondition (and
         (in s344)
     )
     :effect (and
         (not (in s344))
         (in s344)
         (increase (total-cost) 21)
     )
    )

    (:action transition344-3
     :parameters ()
     :precondition (and
         (in s344)
     )
     :effect (and
         (not (in s344))
         (in s324)
         (increase (total-cost) 21)
     )
    )

    (:action transition344-4
     :parameters ()
     :precondition (and
         (in s344)
     )
     :effect (and
         (not (in s344))
         (in s344)
         (increase (total-cost) 30)
     )
    )

    (:action transition344-5
     :parameters ()
     :precondition (and
         (in s344)
     )
     :effect (and
         (not (in s344))
         (in s344)
         (increase (total-cost) 30)
     )
    )

    (:action transition345-0
     :parameters ()
     :precondition (and
         (in s345)
     )
     :effect (and
         (not (in s345))
         (in s445)
         (increase (total-cost) 21)
     )
    )

    (:action transition345-1
     :parameters ()
     :precondition (and
         (in s345)
     )
     :effect (and
         (not (in s345))
         (in s245)
         (increase (total-cost) 21)
     )
    )

    (:action transition345-2
     :parameters ()
     :precondition (and
         (in s345)
     )
     :effect (and
         (not (in s345))
         (in s345)
         (increase (total-cost) 21)
     )
    )

    (:action transition345-3
     :parameters ()
     :precondition (and
         (in s345)
     )
     :effect (and
         (not (in s345))
         (in s325)
         (increase (total-cost) 21)
     )
    )

    (:action transition345-4
     :parameters ()
     :precondition (and
         (in s345)
     )
     :effect (and
         (not (in s345))
         (in s345)
         (increase (total-cost) 30)
     )
    )

    (:action transition345-5
     :parameters ()
     :precondition (and
         (in s345)
     )
     :effect (and
         (not (in s345))
         (in s345)
         (increase (total-cost) 30)
     )
    )

    (:action transition346-0
     :parameters ()
     :precondition (and
         (in s346)
     )
     :effect (and
         (not (in s346))
         (in s446)
         (increase (total-cost) 21)
     )
    )

    (:action transition346-1
     :parameters ()
     :precondition (and
         (in s346)
     )
     :effect (and
         (not (in s346))
         (in s246)
         (increase (total-cost) 21)
     )
    )

    (:action transition346-2
     :parameters ()
     :precondition (and
         (in s346)
     )
     :effect (and
         (not (in s346))
         (in s346)
         (increase (total-cost) 21)
     )
    )

    (:action transition346-3
     :parameters ()
     :precondition (and
         (in s346)
     )
     :effect (and
         (not (in s346))
         (in s326)
         (increase (total-cost) 21)
     )
    )

    (:action transition346-4
     :parameters ()
     :precondition (and
         (in s346)
     )
     :effect (and
         (not (in s346))
         (in s346)
         (increase (total-cost) 30)
     )
    )

    (:action transition346-5
     :parameters ()
     :precondition (and
         (in s346)
     )
     :effect (and
         (not (in s346))
         (in s346)
         (increase (total-cost) 30)
     )
    )

    (:action transition347-0
     :parameters ()
     :precondition (and
         (in s347)
     )
     :effect (and
         (not (in s347))
         (in s447)
         (increase (total-cost) 21)
     )
    )

    (:action transition347-1
     :parameters ()
     :precondition (and
         (in s347)
     )
     :effect (and
         (not (in s347))
         (in s247)
         (increase (total-cost) 21)
     )
    )

    (:action transition347-2
     :parameters ()
     :precondition (and
         (in s347)
     )
     :effect (and
         (not (in s347))
         (in s347)
         (increase (total-cost) 21)
     )
    )

    (:action transition347-3
     :parameters ()
     :precondition (and
         (in s347)
     )
     :effect (and
         (not (in s347))
         (in s327)
         (increase (total-cost) 21)
     )
    )

    (:action transition347-4
     :parameters ()
     :precondition (and
         (in s347)
     )
     :effect (and
         (not (in s347))
         (in s347)
         (increase (total-cost) 30)
     )
    )

    (:action transition347-5
     :parameters ()
     :precondition (and
         (in s347)
     )
     :effect (and
         (not (in s347))
         (in s347)
         (increase (total-cost) 30)
     )
    )

    (:action transition348-0
     :parameters ()
     :precondition (and
         (in s348)
     )
     :effect (and
         (not (in s348))
         (in s448)
         (increase (total-cost) 21)
     )
    )

    (:action transition348-1
     :parameters ()
     :precondition (and
         (in s348)
     )
     :effect (and
         (not (in s348))
         (in s248)
         (increase (total-cost) 21)
     )
    )

    (:action transition348-2
     :parameters ()
     :precondition (and
         (in s348)
     )
     :effect (and
         (not (in s348))
         (in s348)
         (increase (total-cost) 21)
     )
    )

    (:action transition348-3
     :parameters ()
     :precondition (and
         (in s348)
     )
     :effect (and
         (not (in s348))
         (in s328)
         (increase (total-cost) 21)
     )
    )

    (:action transition348-4
     :parameters ()
     :precondition (and
         (in s348)
     )
     :effect (and
         (not (in s348))
         (in s348)
         (increase (total-cost) 30)
     )
    )

    (:action transition348-5
     :parameters ()
     :precondition (and
         (in s348)
     )
     :effect (and
         (not (in s348))
         (in s348)
         (increase (total-cost) 30)
     )
    )

    (:action transition349-0
     :parameters ()
     :precondition (and
         (in s349)
     )
     :effect (and
         (not (in s349))
         (in s449)
         (increase (total-cost) 21)
     )
    )

    (:action transition349-1
     :parameters ()
     :precondition (and
         (in s349)
     )
     :effect (and
         (not (in s349))
         (in s249)
         (increase (total-cost) 21)
     )
    )

    (:action transition349-2
     :parameters ()
     :precondition (and
         (in s349)
     )
     :effect (and
         (not (in s349))
         (in s349)
         (increase (total-cost) 21)
     )
    )

    (:action transition349-3
     :parameters ()
     :precondition (and
         (in s349)
     )
     :effect (and
         (not (in s349))
         (in s329)
         (increase (total-cost) 21)
     )
    )

    (:action transition349-4
     :parameters ()
     :precondition (and
         (in s349)
     )
     :effect (and
         (not (in s349))
         (in s349)
         (increase (total-cost) 30)
     )
    )

    (:action transition349-5
     :parameters ()
     :precondition (and
         (in s349)
     )
     :effect (and
         (not (in s349))
         (in s349)
         (increase (total-cost) 30)
     )
    )

    (:action transition350-0
     :parameters ()
     :precondition (and
         (in s350)
     )
     :effect (and
         (not (in s350))
         (in s450)
         (increase (total-cost) 21)
     )
    )

    (:action transition350-1
     :parameters ()
     :precondition (and
         (in s350)
     )
     :effect (and
         (not (in s350))
         (in s250)
         (increase (total-cost) 21)
     )
    )

    (:action transition350-2
     :parameters ()
     :precondition (and
         (in s350)
     )
     :effect (and
         (not (in s350))
         (in s350)
         (increase (total-cost) 21)
     )
    )

    (:action transition350-3
     :parameters ()
     :precondition (and
         (in s350)
     )
     :effect (and
         (not (in s350))
         (in s330)
         (increase (total-cost) 21)
     )
    )

    (:action transition350-4
     :parameters ()
     :precondition (and
         (in s350)
     )
     :effect (and
         (not (in s350))
         (in s350)
         (increase (total-cost) 30)
     )
    )

    (:action transition350-5
     :parameters ()
     :precondition (and
         (in s350)
     )
     :effect (and
         (not (in s350))
         (in s350)
         (increase (total-cost) 30)
     )
    )

    (:action transition351-0
     :parameters ()
     :precondition (and
         (in s351)
     )
     :effect (and
         (not (in s351))
         (in s451)
         (increase (total-cost) 21)
     )
    )

    (:action transition351-1
     :parameters ()
     :precondition (and
         (in s351)
     )
     :effect (and
         (not (in s351))
         (in s251)
         (increase (total-cost) 21)
     )
    )

    (:action transition351-2
     :parameters ()
     :precondition (and
         (in s351)
     )
     :effect (and
         (not (in s351))
         (in s351)
         (increase (total-cost) 21)
     )
    )

    (:action transition351-3
     :parameters ()
     :precondition (and
         (in s351)
     )
     :effect (and
         (not (in s351))
         (in s331)
         (increase (total-cost) 21)
     )
    )

    (:action transition351-4
     :parameters ()
     :precondition (and
         (in s351)
     )
     :effect (and
         (not (in s351))
         (in s351)
         (increase (total-cost) 30)
     )
    )

    (:action transition351-5
     :parameters ()
     :precondition (and
         (in s351)
     )
     :effect (and
         (not (in s351))
         (in s351)
         (increase (total-cost) 30)
     )
    )

    (:action transition352-0
     :parameters ()
     :precondition (and
         (in s352)
     )
     :effect (and
         (not (in s352))
         (in s452)
         (increase (total-cost) 21)
     )
    )

    (:action transition352-1
     :parameters ()
     :precondition (and
         (in s352)
     )
     :effect (and
         (not (in s352))
         (in s252)
         (increase (total-cost) 21)
     )
    )

    (:action transition352-2
     :parameters ()
     :precondition (and
         (in s352)
     )
     :effect (and
         (not (in s352))
         (in s352)
         (increase (total-cost) 21)
     )
    )

    (:action transition352-3
     :parameters ()
     :precondition (and
         (in s352)
     )
     :effect (and
         (not (in s352))
         (in s332)
         (increase (total-cost) 21)
     )
    )

    (:action transition352-4
     :parameters ()
     :precondition (and
         (in s352)
     )
     :effect (and
         (not (in s352))
         (in s352)
         (increase (total-cost) 30)
     )
    )

    (:action transition352-5
     :parameters ()
     :precondition (and
         (in s352)
     )
     :effect (and
         (not (in s352))
         (in s352)
         (increase (total-cost) 30)
     )
    )

    (:action transition353-0
     :parameters ()
     :precondition (and
         (in s353)
     )
     :effect (and
         (not (in s353))
         (in s453)
         (increase (total-cost) 21)
     )
    )

    (:action transition353-1
     :parameters ()
     :precondition (and
         (in s353)
     )
     :effect (and
         (not (in s353))
         (in s253)
         (increase (total-cost) 21)
     )
    )

    (:action transition353-2
     :parameters ()
     :precondition (and
         (in s353)
     )
     :effect (and
         (not (in s353))
         (in s353)
         (increase (total-cost) 21)
     )
    )

    (:action transition353-3
     :parameters ()
     :precondition (and
         (in s353)
     )
     :effect (and
         (not (in s353))
         (in s333)
         (increase (total-cost) 21)
     )
    )

    (:action transition353-4
     :parameters ()
     :precondition (and
         (in s353)
     )
     :effect (and
         (not (in s353))
         (in s353)
         (increase (total-cost) 30)
     )
    )

    (:action transition353-5
     :parameters ()
     :precondition (and
         (in s353)
     )
     :effect (and
         (not (in s353))
         (in s353)
         (increase (total-cost) 30)
     )
    )

    (:action transition354-0
     :parameters ()
     :precondition (and
         (in s354)
     )
     :effect (and
         (not (in s354))
         (in s454)
         (increase (total-cost) 21)
     )
    )

    (:action transition354-1
     :parameters ()
     :precondition (and
         (in s354)
     )
     :effect (and
         (not (in s354))
         (in s254)
         (increase (total-cost) 21)
     )
    )

    (:action transition354-2
     :parameters ()
     :precondition (and
         (in s354)
     )
     :effect (and
         (not (in s354))
         (in s354)
         (increase (total-cost) 21)
     )
    )

    (:action transition354-3
     :parameters ()
     :precondition (and
         (in s354)
     )
     :effect (and
         (not (in s354))
         (in s334)
         (increase (total-cost) 21)
     )
    )

    (:action transition354-4
     :parameters ()
     :precondition (and
         (in s354)
     )
     :effect (and
         (not (in s354))
         (in s354)
         (increase (total-cost) 30)
     )
    )

    (:action transition354-5
     :parameters ()
     :precondition (and
         (in s354)
     )
     :effect (and
         (not (in s354))
         (in s354)
         (increase (total-cost) 30)
     )
    )

    (:action transition355-0
     :parameters ()
     :precondition (and
         (in s355)
     )
     :effect (and
         (not (in s355))
         (in s455)
         (increase (total-cost) 21)
     )
    )

    (:action transition355-1
     :parameters ()
     :precondition (and
         (in s355)
     )
     :effect (and
         (not (in s355))
         (in s255)
         (increase (total-cost) 21)
     )
    )

    (:action transition355-2
     :parameters ()
     :precondition (and
         (in s355)
     )
     :effect (and
         (not (in s355))
         (in s355)
         (increase (total-cost) 21)
     )
    )

    (:action transition355-3
     :parameters ()
     :precondition (and
         (in s355)
     )
     :effect (and
         (not (in s355))
         (in s335)
         (increase (total-cost) 21)
     )
    )

    (:action transition355-4
     :parameters ()
     :precondition (and
         (in s355)
     )
     :effect (and
         (not (in s355))
         (in s355)
         (increase (total-cost) 30)
     )
    )

    (:action transition355-5
     :parameters ()
     :precondition (and
         (in s355)
     )
     :effect (and
         (not (in s355))
         (in s355)
         (increase (total-cost) 30)
     )
    )

    (:action transition356-0
     :parameters ()
     :precondition (and
         (in s356)
     )
     :effect (and
         (not (in s356))
         (in s456)
         (increase (total-cost) 21)
     )
    )

    (:action transition356-1
     :parameters ()
     :precondition (and
         (in s356)
     )
     :effect (and
         (not (in s356))
         (in s256)
         (increase (total-cost) 21)
     )
    )

    (:action transition356-2
     :parameters ()
     :precondition (and
         (in s356)
     )
     :effect (and
         (not (in s356))
         (in s356)
         (increase (total-cost) 21)
     )
    )

    (:action transition356-3
     :parameters ()
     :precondition (and
         (in s356)
     )
     :effect (and
         (not (in s356))
         (in s336)
         (increase (total-cost) 21)
     )
    )

    (:action transition356-4
     :parameters ()
     :precondition (and
         (in s356)
     )
     :effect (and
         (not (in s356))
         (in s356)
         (increase (total-cost) 30)
     )
    )

    (:action transition356-5
     :parameters ()
     :precondition (and
         (in s356)
     )
     :effect (and
         (not (in s356))
         (in s356)
         (increase (total-cost) 30)
     )
    )

    (:action transition357-0
     :parameters ()
     :precondition (and
         (in s357)
     )
     :effect (and
         (not (in s357))
         (in s457)
         (increase (total-cost) 21)
     )
    )

    (:action transition357-1
     :parameters ()
     :precondition (and
         (in s357)
     )
     :effect (and
         (not (in s357))
         (in s257)
         (increase (total-cost) 21)
     )
    )

    (:action transition357-2
     :parameters ()
     :precondition (and
         (in s357)
     )
     :effect (and
         (not (in s357))
         (in s357)
         (increase (total-cost) 21)
     )
    )

    (:action transition357-3
     :parameters ()
     :precondition (and
         (in s357)
     )
     :effect (and
         (not (in s357))
         (in s337)
         (increase (total-cost) 21)
     )
    )

    (:action transition357-4
     :parameters ()
     :precondition (and
         (in s357)
     )
     :effect (and
         (not (in s357))
         (in s357)
         (increase (total-cost) 30)
     )
    )

    (:action transition357-5
     :parameters ()
     :precondition (and
         (in s357)
     )
     :effect (and
         (not (in s357))
         (in s357)
         (increase (total-cost) 30)
     )
    )

    (:action transition358-0
     :parameters ()
     :precondition (and
         (in s358)
     )
     :effect (and
         (not (in s358))
         (in s458)
         (increase (total-cost) 21)
     )
    )

    (:action transition358-1
     :parameters ()
     :precondition (and
         (in s358)
     )
     :effect (and
         (not (in s358))
         (in s258)
         (increase (total-cost) 21)
     )
    )

    (:action transition358-2
     :parameters ()
     :precondition (and
         (in s358)
     )
     :effect (and
         (not (in s358))
         (in s358)
         (increase (total-cost) 21)
     )
    )

    (:action transition358-3
     :parameters ()
     :precondition (and
         (in s358)
     )
     :effect (and
         (not (in s358))
         (in s338)
         (increase (total-cost) 21)
     )
    )

    (:action transition358-4
     :parameters ()
     :precondition (and
         (in s358)
     )
     :effect (and
         (not (in s358))
         (in s358)
         (increase (total-cost) 30)
     )
    )

    (:action transition358-5
     :parameters ()
     :precondition (and
         (in s358)
     )
     :effect (and
         (not (in s358))
         (in s358)
         (increase (total-cost) 30)
     )
    )

    (:action transition359-0
     :parameters ()
     :precondition (and
         (in s359)
     )
     :effect (and
         (not (in s359))
         (in s459)
         (increase (total-cost) 21)
     )
    )

    (:action transition359-1
     :parameters ()
     :precondition (and
         (in s359)
     )
     :effect (and
         (not (in s359))
         (in s259)
         (increase (total-cost) 21)
     )
    )

    (:action transition359-2
     :parameters ()
     :precondition (and
         (in s359)
     )
     :effect (and
         (not (in s359))
         (in s359)
         (increase (total-cost) 21)
     )
    )

    (:action transition359-3
     :parameters ()
     :precondition (and
         (in s359)
     )
     :effect (and
         (not (in s359))
         (in s339)
         (increase (total-cost) 21)
     )
    )

    (:action transition359-4
     :parameters ()
     :precondition (and
         (in s359)
     )
     :effect (and
         (not (in s359))
         (in s359)
         (increase (total-cost) 30)
     )
    )

    (:action transition359-5
     :parameters ()
     :precondition (and
         (in s359)
     )
     :effect (and
         (not (in s359))
         (in s359)
         (increase (total-cost) 30)
     )
    )

    (:action transition360-0
     :parameters ()
     :precondition (and
         (in s360)
     )
     :effect (and
         (not (in s360))
         (in s460)
         (increase (total-cost) 21)
     )
    )

    (:action transition360-1
     :parameters ()
     :precondition (and
         (in s360)
     )
     :effect (and
         (not (in s360))
         (in s260)
         (increase (total-cost) 21)
     )
    )

    (:action transition360-2
     :parameters ()
     :precondition (and
         (in s360)
     )
     :effect (and
         (not (in s360))
         (in s380)
         (increase (total-cost) 21)
     )
    )

    (:action transition360-3
     :parameters ()
     :precondition (and
         (in s360)
     )
     :effect (and
         (not (in s360))
         (in s360)
         (increase (total-cost) 21)
     )
    )

    (:action transition360-4
     :parameters ()
     :precondition (and
         (in s360)
     )
     :effect (and
         (not (in s360))
         (in s360)
         (increase (total-cost) 30)
     )
    )

    (:action transition360-5
     :parameters ()
     :precondition (and
         (in s360)
     )
     :effect (and
         (not (in s360))
         (in s360)
         (increase (total-cost) 30)
     )
    )

    (:action transition361-0
     :parameters ()
     :precondition (and
         (in s361)
     )
     :effect (and
         (not (in s361))
         (in s461)
         (increase (total-cost) 21)
     )
    )

    (:action transition361-1
     :parameters ()
     :precondition (and
         (in s361)
     )
     :effect (and
         (not (in s361))
         (in s261)
         (increase (total-cost) 21)
     )
    )

    (:action transition361-2
     :parameters ()
     :precondition (and
         (in s361)
     )
     :effect (and
         (not (in s361))
         (in s381)
         (increase (total-cost) 21)
     )
    )

    (:action transition361-3
     :parameters ()
     :precondition (and
         (in s361)
     )
     :effect (and
         (not (in s361))
         (in s361)
         (increase (total-cost) 21)
     )
    )

    (:action transition361-4
     :parameters ()
     :precondition (and
         (in s361)
     )
     :effect (and
         (not (in s361))
         (in s361)
         (increase (total-cost) 30)
     )
    )

    (:action transition361-5
     :parameters ()
     :precondition (and
         (in s361)
     )
     :effect (and
         (not (in s361))
         (in s361)
         (increase (total-cost) 30)
     )
    )

    (:action transition362-0
     :parameters ()
     :precondition (and
         (in s362)
     )
     :effect (and
         (not (in s362))
         (in s462)
         (increase (total-cost) 21)
     )
    )

    (:action transition362-1
     :parameters ()
     :precondition (and
         (in s362)
     )
     :effect (and
         (not (in s362))
         (in s262)
         (increase (total-cost) 21)
     )
    )

    (:action transition362-2
     :parameters ()
     :precondition (and
         (in s362)
     )
     :effect (and
         (not (in s362))
         (in s382)
         (increase (total-cost) 21)
     )
    )

    (:action transition362-3
     :parameters ()
     :precondition (and
         (in s362)
     )
     :effect (and
         (not (in s362))
         (in s362)
         (increase (total-cost) 21)
     )
    )

    (:action transition362-4
     :parameters ()
     :precondition (and
         (in s362)
     )
     :effect (and
         (not (in s362))
         (in s362)
         (increase (total-cost) 30)
     )
    )

    (:action transition362-5
     :parameters ()
     :precondition (and
         (in s362)
     )
     :effect (and
         (not (in s362))
         (in s362)
         (increase (total-cost) 30)
     )
    )

    (:action transition363-0
     :parameters ()
     :precondition (and
         (in s363)
     )
     :effect (and
         (not (in s363))
         (in s463)
         (increase (total-cost) 21)
     )
    )

    (:action transition363-1
     :parameters ()
     :precondition (and
         (in s363)
     )
     :effect (and
         (not (in s363))
         (in s263)
         (increase (total-cost) 21)
     )
    )

    (:action transition363-2
     :parameters ()
     :precondition (and
         (in s363)
     )
     :effect (and
         (not (in s363))
         (in s383)
         (increase (total-cost) 21)
     )
    )

    (:action transition363-3
     :parameters ()
     :precondition (and
         (in s363)
     )
     :effect (and
         (not (in s363))
         (in s363)
         (increase (total-cost) 21)
     )
    )

    (:action transition363-4
     :parameters ()
     :precondition (and
         (in s363)
     )
     :effect (and
         (not (in s363))
         (in s363)
         (increase (total-cost) 30)
     )
    )

    (:action transition363-5
     :parameters ()
     :precondition (and
         (in s363)
     )
     :effect (and
         (not (in s363))
         (in s363)
         (increase (total-cost) 30)
     )
    )

    (:action transition364-0
     :parameters ()
     :precondition (and
         (in s364)
     )
     :effect (and
         (not (in s364))
         (in s464)
         (increase (total-cost) 21)
     )
    )

    (:action transition364-1
     :parameters ()
     :precondition (and
         (in s364)
     )
     :effect (and
         (not (in s364))
         (in s264)
         (increase (total-cost) 21)
     )
    )

    (:action transition364-2
     :parameters ()
     :precondition (and
         (in s364)
     )
     :effect (and
         (not (in s364))
         (in s384)
         (increase (total-cost) 21)
     )
    )

    (:action transition364-3
     :parameters ()
     :precondition (and
         (in s364)
     )
     :effect (and
         (not (in s364))
         (in s364)
         (increase (total-cost) 21)
     )
    )

    (:action transition364-4
     :parameters ()
     :precondition (and
         (in s364)
     )
     :effect (and
         (not (in s364))
         (in s364)
         (increase (total-cost) 30)
     )
    )

    (:action transition364-5
     :parameters ()
     :precondition (and
         (in s364)
     )
     :effect (and
         (not (in s364))
         (in s364)
         (increase (total-cost) 30)
     )
    )

    (:action transition365-0
     :parameters ()
     :precondition (and
         (in s365)
     )
     :effect (and
         (not (in s365))
         (in s465)
         (increase (total-cost) 21)
     )
    )

    (:action transition365-1
     :parameters ()
     :precondition (and
         (in s365)
     )
     :effect (and
         (not (in s365))
         (in s265)
         (increase (total-cost) 21)
     )
    )

    (:action transition365-2
     :parameters ()
     :precondition (and
         (in s365)
     )
     :effect (and
         (not (in s365))
         (in s385)
         (increase (total-cost) 21)
     )
    )

    (:action transition365-3
     :parameters ()
     :precondition (and
         (in s365)
     )
     :effect (and
         (not (in s365))
         (in s365)
         (increase (total-cost) 21)
     )
    )

    (:action transition365-4
     :parameters ()
     :precondition (and
         (in s365)
     )
     :effect (and
         (not (in s365))
         (in s365)
         (increase (total-cost) 30)
     )
    )

    (:action transition365-5
     :parameters ()
     :precondition (and
         (in s365)
     )
     :effect (and
         (not (in s365))
         (in s365)
         (increase (total-cost) 30)
     )
    )

    (:action transition366-0
     :parameters ()
     :precondition (and
         (in s366)
     )
     :effect (and
         (not (in s366))
         (in s466)
         (increase (total-cost) 21)
     )
    )

    (:action transition366-1
     :parameters ()
     :precondition (and
         (in s366)
     )
     :effect (and
         (not (in s366))
         (in s266)
         (increase (total-cost) 21)
     )
    )

    (:action transition366-2
     :parameters ()
     :precondition (and
         (in s366)
     )
     :effect (and
         (not (in s366))
         (in s386)
         (increase (total-cost) 21)
     )
    )

    (:action transition366-3
     :parameters ()
     :precondition (and
         (in s366)
     )
     :effect (and
         (not (in s366))
         (in s366)
         (increase (total-cost) 21)
     )
    )

    (:action transition366-4
     :parameters ()
     :precondition (and
         (in s366)
     )
     :effect (and
         (not (in s366))
         (in s366)
         (increase (total-cost) 30)
     )
    )

    (:action transition366-5
     :parameters ()
     :precondition (and
         (in s366)
     )
     :effect (and
         (not (in s366))
         (in s366)
         (increase (total-cost) 30)
     )
    )

    (:action transition367-0
     :parameters ()
     :precondition (and
         (in s367)
     )
     :effect (and
         (not (in s367))
         (in s467)
         (increase (total-cost) 21)
     )
    )

    (:action transition367-1
     :parameters ()
     :precondition (and
         (in s367)
     )
     :effect (and
         (not (in s367))
         (in s267)
         (increase (total-cost) 21)
     )
    )

    (:action transition367-2
     :parameters ()
     :precondition (and
         (in s367)
     )
     :effect (and
         (not (in s367))
         (in s387)
         (increase (total-cost) 21)
     )
    )

    (:action transition367-3
     :parameters ()
     :precondition (and
         (in s367)
     )
     :effect (and
         (not (in s367))
         (in s367)
         (increase (total-cost) 21)
     )
    )

    (:action transition367-4
     :parameters ()
     :precondition (and
         (in s367)
     )
     :effect (and
         (not (in s367))
         (in s367)
         (increase (total-cost) 30)
     )
    )

    (:action transition367-5
     :parameters ()
     :precondition (and
         (in s367)
     )
     :effect (and
         (not (in s367))
         (in s367)
         (increase (total-cost) 30)
     )
    )

    (:action transition368-0
     :parameters ()
     :precondition (and
         (in s368)
     )
     :effect (and
         (not (in s368))
         (in s468)
         (increase (total-cost) 21)
     )
    )

    (:action transition368-1
     :parameters ()
     :precondition (and
         (in s368)
     )
     :effect (and
         (not (in s368))
         (in s268)
         (increase (total-cost) 21)
     )
    )

    (:action transition368-2
     :parameters ()
     :precondition (and
         (in s368)
     )
     :effect (and
         (not (in s368))
         (in s388)
         (increase (total-cost) 21)
     )
    )

    (:action transition368-3
     :parameters ()
     :precondition (and
         (in s368)
     )
     :effect (and
         (not (in s368))
         (in s368)
         (increase (total-cost) 21)
     )
    )

    (:action transition368-4
     :parameters ()
     :precondition (and
         (in s368)
     )
     :effect (and
         (not (in s368))
         (in s368)
         (increase (total-cost) 30)
     )
    )

    (:action transition368-5
     :parameters ()
     :precondition (and
         (in s368)
     )
     :effect (and
         (not (in s368))
         (in s368)
         (increase (total-cost) 30)
     )
    )

    (:action transition369-0
     :parameters ()
     :precondition (and
         (in s369)
     )
     :effect (and
         (not (in s369))
         (in s469)
         (increase (total-cost) 21)
     )
    )

    (:action transition369-1
     :parameters ()
     :precondition (and
         (in s369)
     )
     :effect (and
         (not (in s369))
         (in s269)
         (increase (total-cost) 21)
     )
    )

    (:action transition369-2
     :parameters ()
     :precondition (and
         (in s369)
     )
     :effect (and
         (not (in s369))
         (in s389)
         (increase (total-cost) 21)
     )
    )

    (:action transition369-3
     :parameters ()
     :precondition (and
         (in s369)
     )
     :effect (and
         (not (in s369))
         (in s369)
         (increase (total-cost) 21)
     )
    )

    (:action transition369-4
     :parameters ()
     :precondition (and
         (in s369)
     )
     :effect (and
         (not (in s369))
         (in s369)
         (increase (total-cost) 30)
     )
    )

    (:action transition369-5
     :parameters ()
     :precondition (and
         (in s369)
     )
     :effect (and
         (not (in s369))
         (in s369)
         (increase (total-cost) 30)
     )
    )

    (:action transition370-0
     :parameters ()
     :precondition (and
         (in s370)
     )
     :effect (and
         (not (in s370))
         (in s470)
         (increase (total-cost) 21)
     )
    )

    (:action transition370-1
     :parameters ()
     :precondition (and
         (in s370)
     )
     :effect (and
         (not (in s370))
         (in s270)
         (increase (total-cost) 21)
     )
    )

    (:action transition370-2
     :parameters ()
     :precondition (and
         (in s370)
     )
     :effect (and
         (not (in s370))
         (in s390)
         (increase (total-cost) 21)
     )
    )

    (:action transition370-3
     :parameters ()
     :precondition (and
         (in s370)
     )
     :effect (and
         (not (in s370))
         (in s370)
         (increase (total-cost) 21)
     )
    )

    (:action transition370-4
     :parameters ()
     :precondition (and
         (in s370)
     )
     :effect (and
         (not (in s370))
         (in s370)
         (increase (total-cost) 30)
     )
    )

    (:action transition370-5
     :parameters ()
     :precondition (and
         (in s370)
     )
     :effect (and
         (not (in s370))
         (in s370)
         (increase (total-cost) 30)
     )
    )

    (:action transition371-0
     :parameters ()
     :precondition (and
         (in s371)
     )
     :effect (and
         (not (in s371))
         (in s471)
         (increase (total-cost) 21)
     )
    )

    (:action transition371-1
     :parameters ()
     :precondition (and
         (in s371)
     )
     :effect (and
         (not (in s371))
         (in s271)
         (increase (total-cost) 21)
     )
    )

    (:action transition371-2
     :parameters ()
     :precondition (and
         (in s371)
     )
     :effect (and
         (not (in s371))
         (in s391)
         (increase (total-cost) 21)
     )
    )

    (:action transition371-3
     :parameters ()
     :precondition (and
         (in s371)
     )
     :effect (and
         (not (in s371))
         (in s371)
         (increase (total-cost) 21)
     )
    )

    (:action transition371-4
     :parameters ()
     :precondition (and
         (in s371)
     )
     :effect (and
         (not (in s371))
         (in s371)
         (increase (total-cost) 30)
     )
    )

    (:action transition371-5
     :parameters ()
     :precondition (and
         (in s371)
     )
     :effect (and
         (not (in s371))
         (in s371)
         (increase (total-cost) 30)
     )
    )

    (:action transition372-0
     :parameters ()
     :precondition (and
         (in s372)
     )
     :effect (and
         (not (in s372))
         (in s472)
         (increase (total-cost) 21)
     )
    )

    (:action transition372-1
     :parameters ()
     :precondition (and
         (in s372)
     )
     :effect (and
         (not (in s372))
         (in s272)
         (increase (total-cost) 21)
     )
    )

    (:action transition372-2
     :parameters ()
     :precondition (and
         (in s372)
     )
     :effect (and
         (not (in s372))
         (in s392)
         (increase (total-cost) 21)
     )
    )

    (:action transition372-3
     :parameters ()
     :precondition (and
         (in s372)
     )
     :effect (and
         (not (in s372))
         (in s372)
         (increase (total-cost) 21)
     )
    )

    (:action transition372-4
     :parameters ()
     :precondition (and
         (in s372)
     )
     :effect (and
         (not (in s372))
         (in s372)
         (increase (total-cost) 30)
     )
    )

    (:action transition372-5
     :parameters ()
     :precondition (and
         (in s372)
     )
     :effect (and
         (not (in s372))
         (in s372)
         (increase (total-cost) 30)
     )
    )

    (:action transition373-0
     :parameters ()
     :precondition (and
         (in s373)
     )
     :effect (and
         (not (in s373))
         (in s473)
         (increase (total-cost) 21)
     )
    )

    (:action transition373-1
     :parameters ()
     :precondition (and
         (in s373)
     )
     :effect (and
         (not (in s373))
         (in s273)
         (increase (total-cost) 21)
     )
    )

    (:action transition373-2
     :parameters ()
     :precondition (and
         (in s373)
     )
     :effect (and
         (not (in s373))
         (in s393)
         (increase (total-cost) 21)
     )
    )

    (:action transition373-3
     :parameters ()
     :precondition (and
         (in s373)
     )
     :effect (and
         (not (in s373))
         (in s373)
         (increase (total-cost) 21)
     )
    )

    (:action transition373-4
     :parameters ()
     :precondition (and
         (in s373)
     )
     :effect (and
         (not (in s373))
         (in s373)
         (increase (total-cost) 30)
     )
    )

    (:action transition373-5
     :parameters ()
     :precondition (and
         (in s373)
     )
     :effect (and
         (not (in s373))
         (in s373)
         (increase (total-cost) 30)
     )
    )

    (:action transition374-0
     :parameters ()
     :precondition (and
         (in s374)
     )
     :effect (and
         (not (in s374))
         (in s474)
         (increase (total-cost) 21)
     )
    )

    (:action transition374-1
     :parameters ()
     :precondition (and
         (in s374)
     )
     :effect (and
         (not (in s374))
         (in s274)
         (increase (total-cost) 21)
     )
    )

    (:action transition374-2
     :parameters ()
     :precondition (and
         (in s374)
     )
     :effect (and
         (not (in s374))
         (in s394)
         (increase (total-cost) 21)
     )
    )

    (:action transition374-3
     :parameters ()
     :precondition (and
         (in s374)
     )
     :effect (and
         (not (in s374))
         (in s374)
         (increase (total-cost) 21)
     )
    )

    (:action transition374-4
     :parameters ()
     :precondition (and
         (in s374)
     )
     :effect (and
         (not (in s374))
         (in s374)
         (increase (total-cost) 30)
     )
    )

    (:action transition374-5
     :parameters ()
     :precondition (and
         (in s374)
     )
     :effect (and
         (not (in s374))
         (in s374)
         (increase (total-cost) 30)
     )
    )

    (:action transition375-0
     :parameters ()
     :precondition (and
         (in s375)
     )
     :effect (and
         (not (in s375))
         (in s475)
         (increase (total-cost) 21)
     )
    )

    (:action transition375-1
     :parameters ()
     :precondition (and
         (in s375)
     )
     :effect (and
         (not (in s375))
         (in s275)
         (increase (total-cost) 21)
     )
    )

    (:action transition375-2
     :parameters ()
     :precondition (and
         (in s375)
     )
     :effect (and
         (not (in s375))
         (in s395)
         (increase (total-cost) 21)
     )
    )

    (:action transition375-3
     :parameters ()
     :precondition (and
         (in s375)
     )
     :effect (and
         (not (in s375))
         (in s375)
         (increase (total-cost) 21)
     )
    )

    (:action transition375-4
     :parameters ()
     :precondition (and
         (in s375)
     )
     :effect (and
         (not (in s375))
         (in s375)
         (increase (total-cost) 30)
     )
    )

    (:action transition375-5
     :parameters ()
     :precondition (and
         (in s375)
     )
     :effect (and
         (not (in s375))
         (in s375)
         (increase (total-cost) 30)
     )
    )

    (:action transition376-0
     :parameters ()
     :precondition (and
         (in s376)
     )
     :effect (and
         (not (in s376))
         (in s476)
         (increase (total-cost) 21)
     )
    )

    (:action transition376-1
     :parameters ()
     :precondition (and
         (in s376)
     )
     :effect (and
         (not (in s376))
         (in s276)
         (increase (total-cost) 21)
     )
    )

    (:action transition376-2
     :parameters ()
     :precondition (and
         (in s376)
     )
     :effect (and
         (not (in s376))
         (in s396)
         (increase (total-cost) 21)
     )
    )

    (:action transition376-3
     :parameters ()
     :precondition (and
         (in s376)
     )
     :effect (and
         (not (in s376))
         (in s376)
         (increase (total-cost) 21)
     )
    )

    (:action transition376-4
     :parameters ()
     :precondition (and
         (in s376)
     )
     :effect (and
         (not (in s376))
         (in s376)
         (increase (total-cost) 30)
     )
    )

    (:action transition376-5
     :parameters ()
     :precondition (and
         (in s376)
     )
     :effect (and
         (not (in s376))
         (in s376)
         (increase (total-cost) 30)
     )
    )

    (:action transition377-0
     :parameters ()
     :precondition (and
         (in s377)
     )
     :effect (and
         (not (in s377))
         (in s477)
         (increase (total-cost) 21)
     )
    )

    (:action transition377-1
     :parameters ()
     :precondition (and
         (in s377)
     )
     :effect (and
         (not (in s377))
         (in s277)
         (increase (total-cost) 21)
     )
    )

    (:action transition377-2
     :parameters ()
     :precondition (and
         (in s377)
     )
     :effect (and
         (not (in s377))
         (in s397)
         (increase (total-cost) 21)
     )
    )

    (:action transition377-3
     :parameters ()
     :precondition (and
         (in s377)
     )
     :effect (and
         (not (in s377))
         (in s377)
         (increase (total-cost) 21)
     )
    )

    (:action transition377-4
     :parameters ()
     :precondition (and
         (in s377)
     )
     :effect (and
         (not (in s377))
         (in s377)
         (increase (total-cost) 30)
     )
    )

    (:action transition377-5
     :parameters ()
     :precondition (and
         (in s377)
     )
     :effect (and
         (not (in s377))
         (in s377)
         (increase (total-cost) 30)
     )
    )

    (:action transition378-0
     :parameters ()
     :precondition (and
         (in s378)
     )
     :effect (and
         (not (in s378))
         (in s478)
         (increase (total-cost) 21)
     )
    )

    (:action transition378-1
     :parameters ()
     :precondition (and
         (in s378)
     )
     :effect (and
         (not (in s378))
         (in s278)
         (increase (total-cost) 21)
     )
    )

    (:action transition378-2
     :parameters ()
     :precondition (and
         (in s378)
     )
     :effect (and
         (not (in s378))
         (in s398)
         (increase (total-cost) 21)
     )
    )

    (:action transition378-3
     :parameters ()
     :precondition (and
         (in s378)
     )
     :effect (and
         (not (in s378))
         (in s378)
         (increase (total-cost) 21)
     )
    )

    (:action transition378-4
     :parameters ()
     :precondition (and
         (in s378)
     )
     :effect (and
         (not (in s378))
         (in s378)
         (increase (total-cost) 30)
     )
    )

    (:action transition378-5
     :parameters ()
     :precondition (and
         (in s378)
     )
     :effect (and
         (not (in s378))
         (in s378)
         (increase (total-cost) 30)
     )
    )

    (:action transition379-0
     :parameters ()
     :precondition (and
         (in s379)
     )
     :effect (and
         (not (in s379))
         (in s479)
         (increase (total-cost) 21)
     )
    )

    (:action transition379-1
     :parameters ()
     :precondition (and
         (in s379)
     )
     :effect (and
         (not (in s379))
         (in s279)
         (increase (total-cost) 21)
     )
    )

    (:action transition379-2
     :parameters ()
     :precondition (and
         (in s379)
     )
     :effect (and
         (not (in s379))
         (in s399)
         (increase (total-cost) 21)
     )
    )

    (:action transition379-3
     :parameters ()
     :precondition (and
         (in s379)
     )
     :effect (and
         (not (in s379))
         (in s379)
         (increase (total-cost) 21)
     )
    )

    (:action transition379-4
     :parameters ()
     :precondition (and
         (in s379)
     )
     :effect (and
         (not (in s379))
         (in s379)
         (increase (total-cost) 30)
     )
    )

    (:action transition379-5
     :parameters ()
     :precondition (and
         (in s379)
     )
     :effect (and
         (not (in s379))
         (in s379)
         (increase (total-cost) 30)
     )
    )

    (:action transition380-0
     :parameters ()
     :precondition (and
         (in s380)
     )
     :effect (and
         (not (in s380))
         (in s480)
         (increase (total-cost) 21)
     )
    )

    (:action transition380-1
     :parameters ()
     :precondition (and
         (in s380)
     )
     :effect (and
         (not (in s380))
         (in s280)
         (increase (total-cost) 21)
     )
    )

    (:action transition380-2
     :parameters ()
     :precondition (and
         (in s380)
     )
     :effect (and
         (not (in s380))
         (in s380)
         (increase (total-cost) 21)
     )
    )

    (:action transition380-3
     :parameters ()
     :precondition (and
         (in s380)
     )
     :effect (and
         (not (in s380))
         (in s360)
         (increase (total-cost) 21)
     )
    )

    (:action transition380-4
     :parameters ()
     :precondition (and
         (in s380)
     )
     :effect (and
         (not (in s380))
         (in s380)
         (increase (total-cost) 30)
     )
    )

    (:action transition380-5
     :parameters ()
     :precondition (and
         (in s380)
     )
     :effect (and
         (not (in s380))
         (in s380)
         (increase (total-cost) 30)
     )
    )

    (:action transition381-0
     :parameters ()
     :precondition (and
         (in s381)
     )
     :effect (and
         (not (in s381))
         (in s481)
         (increase (total-cost) 21)
     )
    )

    (:action transition381-1
     :parameters ()
     :precondition (and
         (in s381)
     )
     :effect (and
         (not (in s381))
         (in s281)
         (increase (total-cost) 21)
     )
    )

    (:action transition381-2
     :parameters ()
     :precondition (and
         (in s381)
     )
     :effect (and
         (not (in s381))
         (in s381)
         (increase (total-cost) 21)
     )
    )

    (:action transition381-3
     :parameters ()
     :precondition (and
         (in s381)
     )
     :effect (and
         (not (in s381))
         (in s361)
         (increase (total-cost) 21)
     )
    )

    (:action transition381-4
     :parameters ()
     :precondition (and
         (in s381)
     )
     :effect (and
         (not (in s381))
         (in s381)
         (increase (total-cost) 30)
     )
    )

    (:action transition381-5
     :parameters ()
     :precondition (and
         (in s381)
     )
     :effect (and
         (not (in s381))
         (in s381)
         (increase (total-cost) 30)
     )
    )

    (:action transition382-0
     :parameters ()
     :precondition (and
         (in s382)
     )
     :effect (and
         (not (in s382))
         (in s482)
         (increase (total-cost) 21)
     )
    )

    (:action transition382-1
     :parameters ()
     :precondition (and
         (in s382)
     )
     :effect (and
         (not (in s382))
         (in s282)
         (increase (total-cost) 21)
     )
    )

    (:action transition382-2
     :parameters ()
     :precondition (and
         (in s382)
     )
     :effect (and
         (not (in s382))
         (in s382)
         (increase (total-cost) 21)
     )
    )

    (:action transition382-3
     :parameters ()
     :precondition (and
         (in s382)
     )
     :effect (and
         (not (in s382))
         (in s362)
         (increase (total-cost) 21)
     )
    )

    (:action transition382-4
     :parameters ()
     :precondition (and
         (in s382)
     )
     :effect (and
         (not (in s382))
         (in s382)
         (increase (total-cost) 30)
     )
    )

    (:action transition382-5
     :parameters ()
     :precondition (and
         (in s382)
     )
     :effect (and
         (not (in s382))
         (in s382)
         (increase (total-cost) 30)
     )
    )

    (:action transition383-0
     :parameters ()
     :precondition (and
         (in s383)
     )
     :effect (and
         (not (in s383))
         (in s483)
         (increase (total-cost) 21)
     )
    )

    (:action transition383-1
     :parameters ()
     :precondition (and
         (in s383)
     )
     :effect (and
         (not (in s383))
         (in s283)
         (increase (total-cost) 21)
     )
    )

    (:action transition383-2
     :parameters ()
     :precondition (and
         (in s383)
     )
     :effect (and
         (not (in s383))
         (in s383)
         (increase (total-cost) 21)
     )
    )

    (:action transition383-3
     :parameters ()
     :precondition (and
         (in s383)
     )
     :effect (and
         (not (in s383))
         (in s363)
         (increase (total-cost) 21)
     )
    )

    (:action transition383-4
     :parameters ()
     :precondition (and
         (in s383)
     )
     :effect (and
         (not (in s383))
         (in s383)
         (increase (total-cost) 30)
     )
    )

    (:action transition383-5
     :parameters ()
     :precondition (and
         (in s383)
     )
     :effect (and
         (not (in s383))
         (in s383)
         (increase (total-cost) 30)
     )
    )

    (:action transition384-0
     :parameters ()
     :precondition (and
         (in s384)
     )
     :effect (and
         (not (in s384))
         (in s484)
         (increase (total-cost) 21)
     )
    )

    (:action transition384-1
     :parameters ()
     :precondition (and
         (in s384)
     )
     :effect (and
         (not (in s384))
         (in s284)
         (increase (total-cost) 21)
     )
    )

    (:action transition384-2
     :parameters ()
     :precondition (and
         (in s384)
     )
     :effect (and
         (not (in s384))
         (in s384)
         (increase (total-cost) 21)
     )
    )

    (:action transition384-3
     :parameters ()
     :precondition (and
         (in s384)
     )
     :effect (and
         (not (in s384))
         (in s364)
         (increase (total-cost) 21)
     )
    )

    (:action transition384-4
     :parameters ()
     :precondition (and
         (in s384)
     )
     :effect (and
         (not (in s384))
         (in s384)
         (increase (total-cost) 30)
     )
    )

    (:action transition384-5
     :parameters ()
     :precondition (and
         (in s384)
     )
     :effect (and
         (not (in s384))
         (in s384)
         (increase (total-cost) 30)
     )
    )

    (:action transition385-0
     :parameters ()
     :precondition (and
         (in s385)
     )
     :effect (and
         (not (in s385))
         (in s485)
         (increase (total-cost) 21)
     )
    )

    (:action transition385-1
     :parameters ()
     :precondition (and
         (in s385)
     )
     :effect (and
         (not (in s385))
         (in s285)
         (increase (total-cost) 21)
     )
    )

    (:action transition385-2
     :parameters ()
     :precondition (and
         (in s385)
     )
     :effect (and
         (not (in s385))
         (in s385)
         (increase (total-cost) 21)
     )
    )

    (:action transition385-3
     :parameters ()
     :precondition (and
         (in s385)
     )
     :effect (and
         (not (in s385))
         (in s365)
         (increase (total-cost) 21)
     )
    )

    (:action transition385-4
     :parameters ()
     :precondition (and
         (in s385)
     )
     :effect (and
         (not (in s385))
         (in s385)
         (increase (total-cost) 30)
     )
    )

    (:action transition385-5
     :parameters ()
     :precondition (and
         (in s385)
     )
     :effect (and
         (not (in s385))
         (in s385)
         (increase (total-cost) 30)
     )
    )

    (:action transition386-0
     :parameters ()
     :precondition (and
         (in s386)
     )
     :effect (and
         (not (in s386))
         (in s486)
         (increase (total-cost) 21)
     )
    )

    (:action transition386-1
     :parameters ()
     :precondition (and
         (in s386)
     )
     :effect (and
         (not (in s386))
         (in s286)
         (increase (total-cost) 21)
     )
    )

    (:action transition386-2
     :parameters ()
     :precondition (and
         (in s386)
     )
     :effect (and
         (not (in s386))
         (in s386)
         (increase (total-cost) 21)
     )
    )

    (:action transition386-3
     :parameters ()
     :precondition (and
         (in s386)
     )
     :effect (and
         (not (in s386))
         (in s366)
         (increase (total-cost) 21)
     )
    )

    (:action transition386-4
     :parameters ()
     :precondition (and
         (in s386)
     )
     :effect (and
         (not (in s386))
         (in s386)
         (increase (total-cost) 30)
     )
    )

    (:action transition386-5
     :parameters ()
     :precondition (and
         (in s386)
     )
     :effect (and
         (not (in s386))
         (in s386)
         (increase (total-cost) 30)
     )
    )

    (:action transition387-0
     :parameters ()
     :precondition (and
         (in s387)
     )
     :effect (and
         (not (in s387))
         (in s487)
         (increase (total-cost) 21)
     )
    )

    (:action transition387-1
     :parameters ()
     :precondition (and
         (in s387)
     )
     :effect (and
         (not (in s387))
         (in s287)
         (increase (total-cost) 21)
     )
    )

    (:action transition387-2
     :parameters ()
     :precondition (and
         (in s387)
     )
     :effect (and
         (not (in s387))
         (in s387)
         (increase (total-cost) 21)
     )
    )

    (:action transition387-3
     :parameters ()
     :precondition (and
         (in s387)
     )
     :effect (and
         (not (in s387))
         (in s367)
         (increase (total-cost) 21)
     )
    )

    (:action transition387-4
     :parameters ()
     :precondition (and
         (in s387)
     )
     :effect (and
         (not (in s387))
         (in s387)
         (increase (total-cost) 30)
     )
    )

    (:action transition387-5
     :parameters ()
     :precondition (and
         (in s387)
     )
     :effect (and
         (not (in s387))
         (in s387)
         (increase (total-cost) 30)
     )
    )

    (:action transition388-0
     :parameters ()
     :precondition (and
         (in s388)
     )
     :effect (and
         (not (in s388))
         (in s488)
         (increase (total-cost) 21)
     )
    )

    (:action transition388-1
     :parameters ()
     :precondition (and
         (in s388)
     )
     :effect (and
         (not (in s388))
         (in s288)
         (increase (total-cost) 21)
     )
    )

    (:action transition388-2
     :parameters ()
     :precondition (and
         (in s388)
     )
     :effect (and
         (not (in s388))
         (in s388)
         (increase (total-cost) 21)
     )
    )

    (:action transition388-3
     :parameters ()
     :precondition (and
         (in s388)
     )
     :effect (and
         (not (in s388))
         (in s368)
         (increase (total-cost) 21)
     )
    )

    (:action transition388-4
     :parameters ()
     :precondition (and
         (in s388)
     )
     :effect (and
         (not (in s388))
         (in s388)
         (increase (total-cost) 30)
     )
    )

    (:action transition388-5
     :parameters ()
     :precondition (and
         (in s388)
     )
     :effect (and
         (not (in s388))
         (in s388)
         (increase (total-cost) 30)
     )
    )

    (:action transition389-0
     :parameters ()
     :precondition (and
         (in s389)
     )
     :effect (and
         (not (in s389))
         (in s489)
         (increase (total-cost) 21)
     )
    )

    (:action transition389-1
     :parameters ()
     :precondition (and
         (in s389)
     )
     :effect (and
         (not (in s389))
         (in s289)
         (increase (total-cost) 21)
     )
    )

    (:action transition389-2
     :parameters ()
     :precondition (and
         (in s389)
     )
     :effect (and
         (not (in s389))
         (in s389)
         (increase (total-cost) 21)
     )
    )

    (:action transition389-3
     :parameters ()
     :precondition (and
         (in s389)
     )
     :effect (and
         (not (in s389))
         (in s369)
         (increase (total-cost) 21)
     )
    )

    (:action transition389-4
     :parameters ()
     :precondition (and
         (in s389)
     )
     :effect (and
         (not (in s389))
         (in s389)
         (increase (total-cost) 30)
     )
    )

    (:action transition389-5
     :parameters ()
     :precondition (and
         (in s389)
     )
     :effect (and
         (not (in s389))
         (in s389)
         (increase (total-cost) 30)
     )
    )

    (:action transition390-0
     :parameters ()
     :precondition (and
         (in s390)
     )
     :effect (and
         (not (in s390))
         (in s490)
         (increase (total-cost) 21)
     )
    )

    (:action transition390-1
     :parameters ()
     :precondition (and
         (in s390)
     )
     :effect (and
         (not (in s390))
         (in s290)
         (increase (total-cost) 21)
     )
    )

    (:action transition390-2
     :parameters ()
     :precondition (and
         (in s390)
     )
     :effect (and
         (not (in s390))
         (in s390)
         (increase (total-cost) 21)
     )
    )

    (:action transition390-3
     :parameters ()
     :precondition (and
         (in s390)
     )
     :effect (and
         (not (in s390))
         (in s370)
         (increase (total-cost) 21)
     )
    )

    (:action transition390-4
     :parameters ()
     :precondition (and
         (in s390)
     )
     :effect (and
         (not (in s390))
         (in s390)
         (increase (total-cost) 30)
     )
    )

    (:action transition390-5
     :parameters ()
     :precondition (and
         (in s390)
     )
     :effect (and
         (not (in s390))
         (in s390)
         (increase (total-cost) 30)
     )
    )

    (:action transition391-0
     :parameters ()
     :precondition (and
         (in s391)
     )
     :effect (and
         (not (in s391))
         (in s491)
         (increase (total-cost) 21)
     )
    )

    (:action transition391-1
     :parameters ()
     :precondition (and
         (in s391)
     )
     :effect (and
         (not (in s391))
         (in s291)
         (increase (total-cost) 21)
     )
    )

    (:action transition391-2
     :parameters ()
     :precondition (and
         (in s391)
     )
     :effect (and
         (not (in s391))
         (in s391)
         (increase (total-cost) 21)
     )
    )

    (:action transition391-3
     :parameters ()
     :precondition (and
         (in s391)
     )
     :effect (and
         (not (in s391))
         (in s371)
         (increase (total-cost) 21)
     )
    )

    (:action transition391-4
     :parameters ()
     :precondition (and
         (in s391)
     )
     :effect (and
         (not (in s391))
         (in s391)
         (increase (total-cost) 30)
     )
    )

    (:action transition391-5
     :parameters ()
     :precondition (and
         (in s391)
     )
     :effect (and
         (not (in s391))
         (in s391)
         (increase (total-cost) 30)
     )
    )

    (:action transition392-0
     :parameters ()
     :precondition (and
         (in s392)
     )
     :effect (and
         (not (in s392))
         (in s492)
         (increase (total-cost) 21)
     )
    )

    (:action transition392-1
     :parameters ()
     :precondition (and
         (in s392)
     )
     :effect (and
         (not (in s392))
         (in s292)
         (increase (total-cost) 21)
     )
    )

    (:action transition392-2
     :parameters ()
     :precondition (and
         (in s392)
     )
     :effect (and
         (not (in s392))
         (in s392)
         (increase (total-cost) 21)
     )
    )

    (:action transition392-3
     :parameters ()
     :precondition (and
         (in s392)
     )
     :effect (and
         (not (in s392))
         (in s372)
         (increase (total-cost) 21)
     )
    )

    (:action transition392-4
     :parameters ()
     :precondition (and
         (in s392)
     )
     :effect (and
         (not (in s392))
         (in s392)
         (increase (total-cost) 30)
     )
    )

    (:action transition392-5
     :parameters ()
     :precondition (and
         (in s392)
     )
     :effect (and
         (not (in s392))
         (in s392)
         (increase (total-cost) 30)
     )
    )

    (:action transition393-0
     :parameters ()
     :precondition (and
         (in s393)
     )
     :effect (and
         (not (in s393))
         (in s493)
         (increase (total-cost) 21)
     )
    )

    (:action transition393-1
     :parameters ()
     :precondition (and
         (in s393)
     )
     :effect (and
         (not (in s393))
         (in s293)
         (increase (total-cost) 21)
     )
    )

    (:action transition393-2
     :parameters ()
     :precondition (and
         (in s393)
     )
     :effect (and
         (not (in s393))
         (in s393)
         (increase (total-cost) 21)
     )
    )

    (:action transition393-3
     :parameters ()
     :precondition (and
         (in s393)
     )
     :effect (and
         (not (in s393))
         (in s373)
         (increase (total-cost) 21)
     )
    )

    (:action transition393-4
     :parameters ()
     :precondition (and
         (in s393)
     )
     :effect (and
         (not (in s393))
         (in s393)
         (increase (total-cost) 30)
     )
    )

    (:action transition393-5
     :parameters ()
     :precondition (and
         (in s393)
     )
     :effect (and
         (not (in s393))
         (in s393)
         (increase (total-cost) 30)
     )
    )

    (:action transition394-0
     :parameters ()
     :precondition (and
         (in s394)
     )
     :effect (and
         (not (in s394))
         (in s494)
         (increase (total-cost) 21)
     )
    )

    (:action transition394-1
     :parameters ()
     :precondition (and
         (in s394)
     )
     :effect (and
         (not (in s394))
         (in s294)
         (increase (total-cost) 21)
     )
    )

    (:action transition394-2
     :parameters ()
     :precondition (and
         (in s394)
     )
     :effect (and
         (not (in s394))
         (in s394)
         (increase (total-cost) 21)
     )
    )

    (:action transition394-3
     :parameters ()
     :precondition (and
         (in s394)
     )
     :effect (and
         (not (in s394))
         (in s374)
         (increase (total-cost) 21)
     )
    )

    (:action transition394-4
     :parameters ()
     :precondition (and
         (in s394)
     )
     :effect (and
         (not (in s394))
         (in s394)
         (increase (total-cost) 30)
     )
    )

    (:action transition394-5
     :parameters ()
     :precondition (and
         (in s394)
     )
     :effect (and
         (not (in s394))
         (in s394)
         (increase (total-cost) 30)
     )
    )

    (:action transition395-0
     :parameters ()
     :precondition (and
         (in s395)
     )
     :effect (and
         (not (in s395))
         (in s495)
         (increase (total-cost) 21)
     )
    )

    (:action transition395-1
     :parameters ()
     :precondition (and
         (in s395)
     )
     :effect (and
         (not (in s395))
         (in s295)
         (increase (total-cost) 21)
     )
    )

    (:action transition395-2
     :parameters ()
     :precondition (and
         (in s395)
     )
     :effect (and
         (not (in s395))
         (in s395)
         (increase (total-cost) 21)
     )
    )

    (:action transition395-3
     :parameters ()
     :precondition (and
         (in s395)
     )
     :effect (and
         (not (in s395))
         (in s375)
         (increase (total-cost) 21)
     )
    )

    (:action transition395-4
     :parameters ()
     :precondition (and
         (in s395)
     )
     :effect (and
         (not (in s395))
         (in s395)
         (increase (total-cost) 30)
     )
    )

    (:action transition395-5
     :parameters ()
     :precondition (and
         (in s395)
     )
     :effect (and
         (not (in s395))
         (in s395)
         (increase (total-cost) 30)
     )
    )

    (:action transition396-0
     :parameters ()
     :precondition (and
         (in s396)
     )
     :effect (and
         (not (in s396))
         (in s496)
         (increase (total-cost) 21)
     )
    )

    (:action transition396-1
     :parameters ()
     :precondition (and
         (in s396)
     )
     :effect (and
         (not (in s396))
         (in s296)
         (increase (total-cost) 21)
     )
    )

    (:action transition396-2
     :parameters ()
     :precondition (and
         (in s396)
     )
     :effect (and
         (not (in s396))
         (in s396)
         (increase (total-cost) 21)
     )
    )

    (:action transition396-3
     :parameters ()
     :precondition (and
         (in s396)
     )
     :effect (and
         (not (in s396))
         (in s376)
         (increase (total-cost) 21)
     )
    )

    (:action transition396-4
     :parameters ()
     :precondition (and
         (in s396)
     )
     :effect (and
         (not (in s396))
         (in s396)
         (increase (total-cost) 30)
     )
    )

    (:action transition396-5
     :parameters ()
     :precondition (and
         (in s396)
     )
     :effect (and
         (not (in s396))
         (in s396)
         (increase (total-cost) 30)
     )
    )

    (:action transition397-0
     :parameters ()
     :precondition (and
         (in s397)
     )
     :effect (and
         (not (in s397))
         (in s497)
         (increase (total-cost) 21)
     )
    )

    (:action transition397-1
     :parameters ()
     :precondition (and
         (in s397)
     )
     :effect (and
         (not (in s397))
         (in s297)
         (increase (total-cost) 21)
     )
    )

    (:action transition397-2
     :parameters ()
     :precondition (and
         (in s397)
     )
     :effect (and
         (not (in s397))
         (in s397)
         (increase (total-cost) 21)
     )
    )

    (:action transition397-3
     :parameters ()
     :precondition (and
         (in s397)
     )
     :effect (and
         (not (in s397))
         (in s377)
         (increase (total-cost) 21)
     )
    )

    (:action transition397-4
     :parameters ()
     :precondition (and
         (in s397)
     )
     :effect (and
         (not (in s397))
         (in s397)
         (increase (total-cost) 30)
     )
    )

    (:action transition397-5
     :parameters ()
     :precondition (and
         (in s397)
     )
     :effect (and
         (not (in s397))
         (in s397)
         (increase (total-cost) 30)
     )
    )

    (:action transition398-0
     :parameters ()
     :precondition (and
         (in s398)
     )
     :effect (and
         (not (in s398))
         (in s498)
         (increase (total-cost) 21)
     )
    )

    (:action transition398-1
     :parameters ()
     :precondition (and
         (in s398)
     )
     :effect (and
         (not (in s398))
         (in s298)
         (increase (total-cost) 21)
     )
    )

    (:action transition398-2
     :parameters ()
     :precondition (and
         (in s398)
     )
     :effect (and
         (not (in s398))
         (in s398)
         (increase (total-cost) 21)
     )
    )

    (:action transition398-3
     :parameters ()
     :precondition (and
         (in s398)
     )
     :effect (and
         (not (in s398))
         (in s378)
         (increase (total-cost) 21)
     )
    )

    (:action transition398-4
     :parameters ()
     :precondition (and
         (in s398)
     )
     :effect (and
         (not (in s398))
         (in s398)
         (increase (total-cost) 30)
     )
    )

    (:action transition398-5
     :parameters ()
     :precondition (and
         (in s398)
     )
     :effect (and
         (not (in s398))
         (in s398)
         (increase (total-cost) 30)
     )
    )

    (:action transition399-0
     :parameters ()
     :precondition (and
         (in s399)
     )
     :effect (and
         (not (in s399))
         (in s499)
         (increase (total-cost) 21)
     )
    )

    (:action transition399-1
     :parameters ()
     :precondition (and
         (in s399)
     )
     :effect (and
         (not (in s399))
         (in s299)
         (increase (total-cost) 21)
     )
    )

    (:action transition399-2
     :parameters ()
     :precondition (and
         (in s399)
     )
     :effect (and
         (not (in s399))
         (in s399)
         (increase (total-cost) 21)
     )
    )

    (:action transition399-3
     :parameters ()
     :precondition (and
         (in s399)
     )
     :effect (and
         (not (in s399))
         (in s379)
         (increase (total-cost) 21)
     )
    )

    (:action transition399-4
     :parameters ()
     :precondition (and
         (in s399)
     )
     :effect (and
         (not (in s399))
         (in s399)
         (increase (total-cost) 30)
     )
    )

    (:action transition399-5
     :parameters ()
     :precondition (and
         (in s399)
     )
     :effect (and
         (not (in s399))
         (in s399)
         (increase (total-cost) 30)
     )
    )

    (:action transition400-0
     :parameters ()
     :precondition (and
         (in s400)
     )
     :effect (and
         (not (in s400))
         (in s400)
         (increase (total-cost) 21)
     )
    )

    (:action transition400-1
     :parameters ()
     :precondition (and
         (in s400)
     )
     :effect (and
         (not (in s400))
         (in s300)
         (increase (total-cost) 21)
     )
    )

    (:action transition400-2
     :parameters ()
     :precondition (and
         (in s400)
     )
     :effect (and
         (not (in s400))
         (in s400)
         (increase (total-cost) 21)
     )
    )

    (:action transition400-3
     :parameters ()
     :precondition (and
         (in s400)
     )
     :effect (and
         (not (in s400))
         (in s400)
         (increase (total-cost) 21)
     )
    )

    (:action transition400-4
     :parameters ()
     :precondition (and
         (in s400)
     )
     :effect (and
         (not (in s400))
         (in s400)
         (increase (total-cost) 30)
     )
    )

    (:action transition400-5
     :parameters ()
     :precondition (and
         (in s400)
     )
     :effect (and
         (not (in s400))
         (in s400)
         (increase (total-cost) 30)
     )
    )

    (:action transition401-0
     :parameters ()
     :precondition (and
         (in s401)
     )
     :effect (and
         (not (in s401))
         (in s401)
         (increase (total-cost) 21)
     )
    )

    (:action transition401-1
     :parameters ()
     :precondition (and
         (in s401)
     )
     :effect (and
         (not (in s401))
         (in s301)
         (increase (total-cost) 21)
     )
    )

    (:action transition401-2
     :parameters ()
     :precondition (and
         (in s401)
     )
     :effect (and
         (not (in s401))
         (in s401)
         (increase (total-cost) 21)
     )
    )

    (:action transition401-3
     :parameters ()
     :precondition (and
         (in s401)
     )
     :effect (and
         (not (in s401))
         (in s401)
         (increase (total-cost) 21)
     )
    )

    (:action transition401-4
     :parameters ()
     :precondition (and
         (in s401)
     )
     :effect (and
         (not (in s401))
         (in s401)
         (increase (total-cost) 30)
     )
    )

    (:action transition401-5
     :parameters ()
     :precondition (and
         (in s401)
     )
     :effect (and
         (not (in s401))
         (in s401)
         (increase (total-cost) 30)
     )
    )

    (:action transition402-0
     :parameters ()
     :precondition (and
         (in s402)
     )
     :effect (and
         (not (in s402))
         (in s402)
         (increase (total-cost) 21)
     )
    )

    (:action transition402-1
     :parameters ()
     :precondition (and
         (in s402)
     )
     :effect (and
         (not (in s402))
         (in s302)
         (increase (total-cost) 21)
     )
    )

    (:action transition402-2
     :parameters ()
     :precondition (and
         (in s402)
     )
     :effect (and
         (not (in s402))
         (in s402)
         (increase (total-cost) 21)
     )
    )

    (:action transition402-3
     :parameters ()
     :precondition (and
         (in s402)
     )
     :effect (and
         (not (in s402))
         (in s402)
         (increase (total-cost) 21)
     )
    )

    (:action transition402-4
     :parameters ()
     :precondition (and
         (in s402)
     )
     :effect (and
         (not (in s402))
         (in s402)
         (increase (total-cost) 30)
     )
    )

    (:action transition402-5
     :parameters ()
     :precondition (and
         (in s402)
     )
     :effect (and
         (not (in s402))
         (in s402)
         (increase (total-cost) 30)
     )
    )

    (:action transition403-0
     :parameters ()
     :precondition (and
         (in s403)
     )
     :effect (and
         (not (in s403))
         (in s403)
         (increase (total-cost) 21)
     )
    )

    (:action transition403-1
     :parameters ()
     :precondition (and
         (in s403)
     )
     :effect (and
         (not (in s403))
         (in s303)
         (increase (total-cost) 21)
     )
    )

    (:action transition403-2
     :parameters ()
     :precondition (and
         (in s403)
     )
     :effect (and
         (not (in s403))
         (in s403)
         (increase (total-cost) 21)
     )
    )

    (:action transition403-3
     :parameters ()
     :precondition (and
         (in s403)
     )
     :effect (and
         (not (in s403))
         (in s403)
         (increase (total-cost) 21)
     )
    )

    (:action transition403-4
     :parameters ()
     :precondition (and
         (in s403)
     )
     :effect (and
         (not (in s403))
         (in s403)
         (increase (total-cost) 30)
     )
    )

    (:action transition403-5
     :parameters ()
     :precondition (and
         (in s403)
     )
     :effect (and
         (not (in s403))
         (in s403)
         (increase (total-cost) 30)
     )
    )

    (:action transition404-0
     :parameters ()
     :precondition (and
         (in s404)
     )
     :effect (and
         (not (in s404))
         (in s404)
         (increase (total-cost) 21)
     )
    )

    (:action transition404-1
     :parameters ()
     :precondition (and
         (in s404)
     )
     :effect (and
         (not (in s404))
         (in s304)
         (increase (total-cost) 21)
     )
    )

    (:action transition404-2
     :parameters ()
     :precondition (and
         (in s404)
     )
     :effect (and
         (not (in s404))
         (in s404)
         (increase (total-cost) 21)
     )
    )

    (:action transition404-3
     :parameters ()
     :precondition (and
         (in s404)
     )
     :effect (and
         (not (in s404))
         (in s404)
         (increase (total-cost) 21)
     )
    )

    (:action transition404-4
     :parameters ()
     :precondition (and
         (in s404)
     )
     :effect (and
         (not (in s404))
         (in s404)
         (increase (total-cost) 30)
     )
    )

    (:action transition404-5
     :parameters ()
     :precondition (and
         (in s404)
     )
     :effect (and
         (not (in s404))
         (in s404)
         (increase (total-cost) 30)
     )
    )

    (:action transition405-0
     :parameters ()
     :precondition (and
         (in s405)
     )
     :effect (and
         (not (in s405))
         (in s405)
         (increase (total-cost) 21)
     )
    )

    (:action transition405-1
     :parameters ()
     :precondition (and
         (in s405)
     )
     :effect (and
         (not (in s405))
         (in s305)
         (increase (total-cost) 21)
     )
    )

    (:action transition405-2
     :parameters ()
     :precondition (and
         (in s405)
     )
     :effect (and
         (not (in s405))
         (in s405)
         (increase (total-cost) 21)
     )
    )

    (:action transition405-3
     :parameters ()
     :precondition (and
         (in s405)
     )
     :effect (and
         (not (in s405))
         (in s405)
         (increase (total-cost) 21)
     )
    )

    (:action transition405-4
     :parameters ()
     :precondition (and
         (in s405)
     )
     :effect (and
         (not (in s405))
         (in s405)
         (increase (total-cost) 30)
     )
    )

    (:action transition405-5
     :parameters ()
     :precondition (and
         (in s405)
     )
     :effect (and
         (not (in s405))
         (in s405)
         (increase (total-cost) 30)
     )
    )

    (:action transition406-0
     :parameters ()
     :precondition (and
         (in s406)
     )
     :effect (and
         (not (in s406))
         (in s406)
         (increase (total-cost) 21)
     )
    )

    (:action transition406-1
     :parameters ()
     :precondition (and
         (in s406)
     )
     :effect (and
         (not (in s406))
         (in s306)
         (increase (total-cost) 21)
     )
    )

    (:action transition406-2
     :parameters ()
     :precondition (and
         (in s406)
     )
     :effect (and
         (not (in s406))
         (in s406)
         (increase (total-cost) 21)
     )
    )

    (:action transition406-3
     :parameters ()
     :precondition (and
         (in s406)
     )
     :effect (and
         (not (in s406))
         (in s406)
         (increase (total-cost) 21)
     )
    )

    (:action transition406-4
     :parameters ()
     :precondition (and
         (in s406)
     )
     :effect (and
         (not (in s406))
         (in s406)
         (increase (total-cost) 30)
     )
    )

    (:action transition406-5
     :parameters ()
     :precondition (and
         (in s406)
     )
     :effect (and
         (not (in s406))
         (in s406)
         (increase (total-cost) 30)
     )
    )

    (:action transition407-0
     :parameters ()
     :precondition (and
         (in s407)
     )
     :effect (and
         (not (in s407))
         (in s407)
         (increase (total-cost) 21)
     )
    )

    (:action transition407-1
     :parameters ()
     :precondition (and
         (in s407)
     )
     :effect (and
         (not (in s407))
         (in s307)
         (increase (total-cost) 21)
     )
    )

    (:action transition407-2
     :parameters ()
     :precondition (and
         (in s407)
     )
     :effect (and
         (not (in s407))
         (in s407)
         (increase (total-cost) 21)
     )
    )

    (:action transition407-3
     :parameters ()
     :precondition (and
         (in s407)
     )
     :effect (and
         (not (in s407))
         (in s407)
         (increase (total-cost) 21)
     )
    )

    (:action transition407-4
     :parameters ()
     :precondition (and
         (in s407)
     )
     :effect (and
         (not (in s407))
         (in s407)
         (increase (total-cost) 30)
     )
    )

    (:action transition407-5
     :parameters ()
     :precondition (and
         (in s407)
     )
     :effect (and
         (not (in s407))
         (in s407)
         (increase (total-cost) 30)
     )
    )

    (:action transition408-0
     :parameters ()
     :precondition (and
         (in s408)
     )
     :effect (and
         (not (in s408))
         (in s408)
         (increase (total-cost) 21)
     )
    )

    (:action transition408-1
     :parameters ()
     :precondition (and
         (in s408)
     )
     :effect (and
         (not (in s408))
         (in s308)
         (increase (total-cost) 21)
     )
    )

    (:action transition408-2
     :parameters ()
     :precondition (and
         (in s408)
     )
     :effect (and
         (not (in s408))
         (in s408)
         (increase (total-cost) 21)
     )
    )

    (:action transition408-3
     :parameters ()
     :precondition (and
         (in s408)
     )
     :effect (and
         (not (in s408))
         (in s408)
         (increase (total-cost) 21)
     )
    )

    (:action transition408-4
     :parameters ()
     :precondition (and
         (in s408)
     )
     :effect (and
         (not (in s408))
         (in s416)
         (increase (total-cost) 21)
     )
    )

    (:action transition408-5
     :parameters ()
     :precondition (and
         (in s408)
     )
     :effect (and
         (not (in s408))
         (in s408)
         (increase (total-cost) 30)
     )
    )

    (:action transition409-0
     :parameters ()
     :precondition (and
         (in s409)
     )
     :effect (and
         (not (in s409))
         (in s409)
         (increase (total-cost) 21)
     )
    )

    (:action transition409-1
     :parameters ()
     :precondition (and
         (in s409)
     )
     :effect (and
         (not (in s409))
         (in s309)
         (increase (total-cost) 21)
     )
    )

    (:action transition409-2
     :parameters ()
     :precondition (and
         (in s409)
     )
     :effect (and
         (not (in s409))
         (in s409)
         (increase (total-cost) 21)
     )
    )

    (:action transition409-3
     :parameters ()
     :precondition (and
         (in s409)
     )
     :effect (and
         (not (in s409))
         (in s409)
         (increase (total-cost) 21)
     )
    )

    (:action transition409-4
     :parameters ()
     :precondition (and
         (in s409)
     )
     :effect (and
         (not (in s409))
         (in s417)
         (increase (total-cost) 21)
     )
    )

    (:action transition409-5
     :parameters ()
     :precondition (and
         (in s409)
     )
     :effect (and
         (not (in s409))
         (in s409)
         (increase (total-cost) 30)
     )
    )

    (:action transition410-0
     :parameters ()
     :precondition (and
         (in s410)
     )
     :effect (and
         (not (in s410))
         (in s410)
         (increase (total-cost) 21)
     )
    )

    (:action transition410-1
     :parameters ()
     :precondition (and
         (in s410)
     )
     :effect (and
         (not (in s410))
         (in s310)
         (increase (total-cost) 21)
     )
    )

    (:action transition410-2
     :parameters ()
     :precondition (and
         (in s410)
     )
     :effect (and
         (not (in s410))
         (in s410)
         (increase (total-cost) 21)
     )
    )

    (:action transition410-3
     :parameters ()
     :precondition (and
         (in s410)
     )
     :effect (and
         (not (in s410))
         (in s410)
         (increase (total-cost) 21)
     )
    )

    (:action transition410-4
     :parameters ()
     :precondition (and
         (in s410)
     )
     :effect (and
         (not (in s410))
         (in s418)
         (increase (total-cost) 21)
     )
    )

    (:action transition410-5
     :parameters ()
     :precondition (and
         (in s410)
     )
     :effect (and
         (not (in s410))
         (in s410)
         (increase (total-cost) 30)
     )
    )

    (:action transition411-0
     :parameters ()
     :precondition (and
         (in s411)
     )
     :effect (and
         (not (in s411))
         (in s411)
         (increase (total-cost) 21)
     )
    )

    (:action transition411-1
     :parameters ()
     :precondition (and
         (in s411)
     )
     :effect (and
         (not (in s411))
         (in s311)
         (increase (total-cost) 21)
     )
    )

    (:action transition411-2
     :parameters ()
     :precondition (and
         (in s411)
     )
     :effect (and
         (not (in s411))
         (in s411)
         (increase (total-cost) 21)
     )
    )

    (:action transition411-3
     :parameters ()
     :precondition (and
         (in s411)
     )
     :effect (and
         (not (in s411))
         (in s411)
         (increase (total-cost) 21)
     )
    )

    (:action transition411-4
     :parameters ()
     :precondition (and
         (in s411)
     )
     :effect (and
         (not (in s411))
         (in s419)
         (increase (total-cost) 21)
     )
    )

    (:action transition411-5
     :parameters ()
     :precondition (and
         (in s411)
     )
     :effect (and
         (not (in s411))
         (in s411)
         (increase (total-cost) 30)
     )
    )

    (:action transition412-0
     :parameters ()
     :precondition (and
         (in s412)
     )
     :effect (and
         (not (in s412))
         (in s412)
         (increase (total-cost) 21)
     )
    )

    (:action transition412-1
     :parameters ()
     :precondition (and
         (in s412)
     )
     :effect (and
         (not (in s412))
         (in s312)
         (increase (total-cost) 21)
     )
    )

    (:action transition412-2
     :parameters ()
     :precondition (and
         (in s412)
     )
     :effect (and
         (not (in s412))
         (in s412)
         (increase (total-cost) 21)
     )
    )

    (:action transition412-3
     :parameters ()
     :precondition (and
         (in s412)
     )
     :effect (and
         (not (in s412))
         (in s412)
         (increase (total-cost) 21)
     )
    )

    (:action transition412-4
     :parameters ()
     :precondition (and
         (in s412)
     )
     :effect (and
         (not (in s412))
         (in s412)
         (increase (total-cost) 30)
     )
    )

    (:action transition412-5
     :parameters ()
     :precondition (and
         (in s412)
     )
     :effect (and
         (not (in s412))
         (in s412)
         (increase (total-cost) 30)
     )
    )

    (:action transition413-0
     :parameters ()
     :precondition (and
         (in s413)
     )
     :effect (and
         (not (in s413))
         (in s413)
         (increase (total-cost) 21)
     )
    )

    (:action transition413-1
     :parameters ()
     :precondition (and
         (in s413)
     )
     :effect (and
         (not (in s413))
         (in s313)
         (increase (total-cost) 21)
     )
    )

    (:action transition413-2
     :parameters ()
     :precondition (and
         (in s413)
     )
     :effect (and
         (not (in s413))
         (in s413)
         (increase (total-cost) 21)
     )
    )

    (:action transition413-3
     :parameters ()
     :precondition (and
         (in s413)
     )
     :effect (and
         (not (in s413))
         (in s413)
         (increase (total-cost) 21)
     )
    )

    (:action transition413-4
     :parameters ()
     :precondition (and
         (in s413)
     )
     :effect (and
         (not (in s413))
         (in s413)
         (increase (total-cost) 30)
     )
    )

    (:action transition413-5
     :parameters ()
     :precondition (and
         (in s413)
     )
     :effect (and
         (not (in s413))
         (in s413)
         (increase (total-cost) 30)
     )
    )

    (:action transition414-0
     :parameters ()
     :precondition (and
         (in s414)
     )
     :effect (and
         (not (in s414))
         (in s414)
         (increase (total-cost) 21)
     )
    )

    (:action transition414-1
     :parameters ()
     :precondition (and
         (in s414)
     )
     :effect (and
         (not (in s414))
         (in s314)
         (increase (total-cost) 21)
     )
    )

    (:action transition414-2
     :parameters ()
     :precondition (and
         (in s414)
     )
     :effect (and
         (not (in s414))
         (in s414)
         (increase (total-cost) 21)
     )
    )

    (:action transition414-3
     :parameters ()
     :precondition (and
         (in s414)
     )
     :effect (and
         (not (in s414))
         (in s414)
         (increase (total-cost) 21)
     )
    )

    (:action transition414-4
     :parameters ()
     :precondition (and
         (in s414)
     )
     :effect (and
         (not (in s414))
         (in s414)
         (increase (total-cost) 30)
     )
    )

    (:action transition414-5
     :parameters ()
     :precondition (and
         (in s414)
     )
     :effect (and
         (not (in s414))
         (in s414)
         (increase (total-cost) 30)
     )
    )

    (:action transition415-0
     :parameters ()
     :precondition (and
         (in s415)
     )
     :effect (and
         (not (in s415))
         (in s415)
         (increase (total-cost) 21)
     )
    )

    (:action transition415-1
     :parameters ()
     :precondition (and
         (in s415)
     )
     :effect (and
         (not (in s415))
         (in s315)
         (increase (total-cost) 21)
     )
    )

    (:action transition415-2
     :parameters ()
     :precondition (and
         (in s415)
     )
     :effect (and
         (not (in s415))
         (in s415)
         (increase (total-cost) 21)
     )
    )

    (:action transition415-3
     :parameters ()
     :precondition (and
         (in s415)
     )
     :effect (and
         (not (in s415))
         (in s415)
         (increase (total-cost) 21)
     )
    )

    (:action transition415-4
     :parameters ()
     :precondition (and
         (in s415)
     )
     :effect (and
         (not (in s415))
         (in s415)
         (increase (total-cost) 30)
     )
    )

    (:action transition415-5
     :parameters ()
     :precondition (and
         (in s415)
     )
     :effect (and
         (not (in s415))
         (in s415)
         (increase (total-cost) 30)
     )
    )

    (:action transition416-0
     :parameters ()
     :precondition (and
         (in s416)
     )
     :effect (and
         (not (in s416))
         (in s416)
         (increase (total-cost) 21)
     )
    )

    (:action transition416-1
     :parameters ()
     :precondition (and
         (in s416)
     )
     :effect (and
         (not (in s416))
         (in s316)
         (increase (total-cost) 21)
     )
    )

    (:action transition416-2
     :parameters ()
     :precondition (and
         (in s416)
     )
     :effect (and
         (not (in s416))
         (in s416)
         (increase (total-cost) 21)
     )
    )

    (:action transition416-3
     :parameters ()
     :precondition (and
         (in s416)
     )
     :effect (and
         (not (in s416))
         (in s416)
         (increase (total-cost) 21)
     )
    )

    (:action transition416-4
     :parameters ()
     :precondition (and
         (in s416)
     )
     :effect (and
         (not (in s416))
         (in s416)
         (increase (total-cost) 30)
     )
    )

    (:action transition416-5
     :parameters ()
     :precondition (and
         (in s416)
     )
     :effect (and
         (not (in s416))
         (in s408)
         (increase (total-cost) 21)
     )
    )

    (:action transition417-0
     :parameters ()
     :precondition (and
         (in s417)
     )
     :effect (and
         (not (in s417))
         (in s417)
         (increase (total-cost) 21)
     )
    )

    (:action transition417-1
     :parameters ()
     :precondition (and
         (in s417)
     )
     :effect (and
         (not (in s417))
         (in s317)
         (increase (total-cost) 21)
     )
    )

    (:action transition417-2
     :parameters ()
     :precondition (and
         (in s417)
     )
     :effect (and
         (not (in s417))
         (in s417)
         (increase (total-cost) 21)
     )
    )

    (:action transition417-3
     :parameters ()
     :precondition (and
         (in s417)
     )
     :effect (and
         (not (in s417))
         (in s417)
         (increase (total-cost) 21)
     )
    )

    (:action transition417-4
     :parameters ()
     :precondition (and
         (in s417)
     )
     :effect (and
         (not (in s417))
         (in s417)
         (increase (total-cost) 30)
     )
    )

    (:action transition417-5
     :parameters ()
     :precondition (and
         (in s417)
     )
     :effect (and
         (not (in s417))
         (in s409)
         (increase (total-cost) 21)
     )
    )

    (:action transition418-0
     :parameters ()
     :precondition (and
         (in s418)
     )
     :effect (and
         (not (in s418))
         (in s418)
         (increase (total-cost) 21)
     )
    )

    (:action transition418-1
     :parameters ()
     :precondition (and
         (in s418)
     )
     :effect (and
         (not (in s418))
         (in s318)
         (increase (total-cost) 21)
     )
    )

    (:action transition418-2
     :parameters ()
     :precondition (and
         (in s418)
     )
     :effect (and
         (not (in s418))
         (in s418)
         (increase (total-cost) 21)
     )
    )

    (:action transition418-3
     :parameters ()
     :precondition (and
         (in s418)
     )
     :effect (and
         (not (in s418))
         (in s418)
         (increase (total-cost) 21)
     )
    )

    (:action transition418-4
     :parameters ()
     :precondition (and
         (in s418)
     )
     :effect (and
         (not (in s418))
         (in s418)
         (increase (total-cost) 30)
     )
    )

    (:action transition418-5
     :parameters ()
     :precondition (and
         (in s418)
     )
     :effect (and
         (not (in s418))
         (in s410)
		 (done)
         (increase (total-cost) 0)
     )
    )

    (:action transition419-0
     :parameters ()
     :precondition (and
         (in s419)
     )
     :effect (and
         (not (in s419))
         (in s419)
         (increase (total-cost) 21)
     )
    )

    (:action transition419-1
     :parameters ()
     :precondition (and
         (in s419)
     )
     :effect (and
         (not (in s419))
         (in s319)
         (increase (total-cost) 21)
     )
    )

    (:action transition419-2
     :parameters ()
     :precondition (and
         (in s419)
     )
     :effect (and
         (not (in s419))
         (in s419)
         (increase (total-cost) 21)
     )
    )

    (:action transition419-3
     :parameters ()
     :precondition (and
         (in s419)
     )
     :effect (and
         (not (in s419))
         (in s419)
         (increase (total-cost) 21)
     )
    )

    (:action transition419-4
     :parameters ()
     :precondition (and
         (in s419)
     )
     :effect (and
         (not (in s419))
         (in s419)
         (increase (total-cost) 30)
     )
    )

    (:action transition419-5
     :parameters ()
     :precondition (and
         (in s419)
     )
     :effect (and
         (not (in s419))
         (in s411)
         (increase (total-cost) 21)
     )
    )

    (:action transition420-0
     :parameters ()
     :precondition (and
         (in s420)
     )
     :effect (and
         (not (in s420))
         (in s420)
         (increase (total-cost) 21)
     )
    )

    (:action transition420-1
     :parameters ()
     :precondition (and
         (in s420)
     )
     :effect (and
         (not (in s420))
         (in s320)
         (increase (total-cost) 21)
     )
    )

    (:action transition420-2
     :parameters ()
     :precondition (and
         (in s420)
     )
     :effect (and
         (not (in s420))
         (in s440)
         (increase (total-cost) 21)
     )
    )

    (:action transition420-3
     :parameters ()
     :precondition (and
         (in s420)
     )
     :effect (and
         (not (in s420))
         (in s420)
         (increase (total-cost) 21)
     )
    )

    (:action transition420-4
     :parameters ()
     :precondition (and
         (in s420)
     )
     :effect (and
         (not (in s420))
         (in s420)
         (increase (total-cost) 30)
     )
    )

    (:action transition420-5
     :parameters ()
     :precondition (and
         (in s420)
     )
     :effect (and
         (not (in s420))
         (in s420)
         (increase (total-cost) 30)
     )
    )

    (:action transition421-0
     :parameters ()
     :precondition (and
         (in s421)
     )
     :effect (and
         (not (in s421))
         (in s421)
         (increase (total-cost) 21)
     )
    )

    (:action transition421-1
     :parameters ()
     :precondition (and
         (in s421)
     )
     :effect (and
         (not (in s421))
         (in s321)
         (increase (total-cost) 21)
     )
    )

    (:action transition421-2
     :parameters ()
     :precondition (and
         (in s421)
     )
     :effect (and
         (not (in s421))
         (in s441)
         (increase (total-cost) 21)
     )
    )

    (:action transition421-3
     :parameters ()
     :precondition (and
         (in s421)
     )
     :effect (and
         (not (in s421))
         (in s421)
         (increase (total-cost) 21)
     )
    )

    (:action transition421-4
     :parameters ()
     :precondition (and
         (in s421)
     )
     :effect (and
         (not (in s421))
         (in s421)
         (increase (total-cost) 30)
     )
    )

    (:action transition421-5
     :parameters ()
     :precondition (and
         (in s421)
     )
     :effect (and
         (not (in s421))
         (in s421)
         (increase (total-cost) 30)
     )
    )

    (:action transition422-0
     :parameters ()
     :precondition (and
         (in s422)
     )
     :effect (and
         (not (in s422))
         (in s422)
         (increase (total-cost) 21)
     )
    )

    (:action transition422-1
     :parameters ()
     :precondition (and
         (in s422)
     )
     :effect (and
         (not (in s422))
         (in s322)
         (increase (total-cost) 21)
     )
    )

    (:action transition422-2
     :parameters ()
     :precondition (and
         (in s422)
     )
     :effect (and
         (not (in s422))
         (in s442)
         (increase (total-cost) 21)
     )
    )

    (:action transition422-3
     :parameters ()
     :precondition (and
         (in s422)
     )
     :effect (and
         (not (in s422))
         (in s422)
         (increase (total-cost) 21)
     )
    )

    (:action transition422-4
     :parameters ()
     :precondition (and
         (in s422)
     )
     :effect (and
         (not (in s422))
         (in s422)
         (increase (total-cost) 30)
     )
    )

    (:action transition422-5
     :parameters ()
     :precondition (and
         (in s422)
     )
     :effect (and
         (not (in s422))
         (in s422)
         (increase (total-cost) 30)
     )
    )

    (:action transition423-0
     :parameters ()
     :precondition (and
         (in s423)
     )
     :effect (and
         (not (in s423))
         (in s423)
         (increase (total-cost) 21)
     )
    )

    (:action transition423-1
     :parameters ()
     :precondition (and
         (in s423)
     )
     :effect (and
         (not (in s423))
         (in s323)
         (increase (total-cost) 21)
     )
    )

    (:action transition423-2
     :parameters ()
     :precondition (and
         (in s423)
     )
     :effect (and
         (not (in s423))
         (in s443)
         (increase (total-cost) 21)
     )
    )

    (:action transition423-3
     :parameters ()
     :precondition (and
         (in s423)
     )
     :effect (and
         (not (in s423))
         (in s423)
         (increase (total-cost) 21)
     )
    )

    (:action transition423-4
     :parameters ()
     :precondition (and
         (in s423)
     )
     :effect (and
         (not (in s423))
         (in s423)
         (increase (total-cost) 30)
     )
    )

    (:action transition423-5
     :parameters ()
     :precondition (and
         (in s423)
     )
     :effect (and
         (not (in s423))
         (in s423)
         (increase (total-cost) 30)
     )
    )

    (:action transition424-0
     :parameters ()
     :precondition (and
         (in s424)
     )
     :effect (and
         (not (in s424))
         (in s424)
         (increase (total-cost) 21)
     )
    )

    (:action transition424-1
     :parameters ()
     :precondition (and
         (in s424)
     )
     :effect (and
         (not (in s424))
         (in s324)
         (increase (total-cost) 21)
     )
    )

    (:action transition424-2
     :parameters ()
     :precondition (and
         (in s424)
     )
     :effect (and
         (not (in s424))
         (in s444)
         (increase (total-cost) 21)
     )
    )

    (:action transition424-3
     :parameters ()
     :precondition (and
         (in s424)
     )
     :effect (and
         (not (in s424))
         (in s424)
         (increase (total-cost) 21)
     )
    )

    (:action transition424-4
     :parameters ()
     :precondition (and
         (in s424)
     )
     :effect (and
         (not (in s424))
         (in s424)
         (increase (total-cost) 30)
     )
    )

    (:action transition424-5
     :parameters ()
     :precondition (and
         (in s424)
     )
     :effect (and
         (not (in s424))
         (in s424)
         (increase (total-cost) 30)
     )
    )

    (:action transition425-0
     :parameters ()
     :precondition (and
         (in s425)
     )
     :effect (and
         (not (in s425))
         (in s425)
         (increase (total-cost) 21)
     )
    )

    (:action transition425-1
     :parameters ()
     :precondition (and
         (in s425)
     )
     :effect (and
         (not (in s425))
         (in s325)
         (increase (total-cost) 21)
     )
    )

    (:action transition425-2
     :parameters ()
     :precondition (and
         (in s425)
     )
     :effect (and
         (not (in s425))
         (in s445)
         (increase (total-cost) 21)
     )
    )

    (:action transition425-3
     :parameters ()
     :precondition (and
         (in s425)
     )
     :effect (and
         (not (in s425))
         (in s425)
         (increase (total-cost) 21)
     )
    )

    (:action transition425-4
     :parameters ()
     :precondition (and
         (in s425)
     )
     :effect (and
         (not (in s425))
         (in s425)
         (increase (total-cost) 30)
     )
    )

    (:action transition425-5
     :parameters ()
     :precondition (and
         (in s425)
     )
     :effect (and
         (not (in s425))
         (in s425)
         (increase (total-cost) 30)
     )
    )

    (:action transition426-0
     :parameters ()
     :precondition (and
         (in s426)
     )
     :effect (and
         (not (in s426))
         (in s426)
         (increase (total-cost) 21)
     )
    )

    (:action transition426-1
     :parameters ()
     :precondition (and
         (in s426)
     )
     :effect (and
         (not (in s426))
         (in s326)
         (increase (total-cost) 21)
     )
    )

    (:action transition426-2
     :parameters ()
     :precondition (and
         (in s426)
     )
     :effect (and
         (not (in s426))
         (in s446)
         (increase (total-cost) 21)
     )
    )

    (:action transition426-3
     :parameters ()
     :precondition (and
         (in s426)
     )
     :effect (and
         (not (in s426))
         (in s426)
         (increase (total-cost) 21)
     )
    )

    (:action transition426-4
     :parameters ()
     :precondition (and
         (in s426)
     )
     :effect (and
         (not (in s426))
         (in s426)
         (increase (total-cost) 30)
     )
    )

    (:action transition426-5
     :parameters ()
     :precondition (and
         (in s426)
     )
     :effect (and
         (not (in s426))
         (in s426)
         (increase (total-cost) 30)
     )
    )

    (:action transition427-0
     :parameters ()
     :precondition (and
         (in s427)
     )
     :effect (and
         (not (in s427))
         (in s427)
         (increase (total-cost) 21)
     )
    )

    (:action transition427-1
     :parameters ()
     :precondition (and
         (in s427)
     )
     :effect (and
         (not (in s427))
         (in s327)
         (increase (total-cost) 21)
     )
    )

    (:action transition427-2
     :parameters ()
     :precondition (and
         (in s427)
     )
     :effect (and
         (not (in s427))
         (in s447)
         (increase (total-cost) 21)
     )
    )

    (:action transition427-3
     :parameters ()
     :precondition (and
         (in s427)
     )
     :effect (and
         (not (in s427))
         (in s427)
         (increase (total-cost) 21)
     )
    )

    (:action transition427-4
     :parameters ()
     :precondition (and
         (in s427)
     )
     :effect (and
         (not (in s427))
         (in s427)
         (increase (total-cost) 30)
     )
    )

    (:action transition427-5
     :parameters ()
     :precondition (and
         (in s427)
     )
     :effect (and
         (not (in s427))
         (in s427)
         (increase (total-cost) 30)
     )
    )

    (:action transition428-0
     :parameters ()
     :precondition (and
         (in s428)
     )
     :effect (and
         (not (in s428))
         (in s428)
         (increase (total-cost) 21)
     )
    )

    (:action transition428-1
     :parameters ()
     :precondition (and
         (in s428)
     )
     :effect (and
         (not (in s428))
         (in s328)
         (increase (total-cost) 21)
     )
    )

    (:action transition428-2
     :parameters ()
     :precondition (and
         (in s428)
     )
     :effect (and
         (not (in s428))
         (in s448)
         (increase (total-cost) 21)
     )
    )

    (:action transition428-3
     :parameters ()
     :precondition (and
         (in s428)
     )
     :effect (and
         (not (in s428))
         (in s428)
         (increase (total-cost) 21)
     )
    )

    (:action transition428-4
     :parameters ()
     :precondition (and
         (in s428)
     )
     :effect (and
         (not (in s428))
         (in s428)
         (increase (total-cost) 30)
     )
    )

    (:action transition428-5
     :parameters ()
     :precondition (and
         (in s428)
     )
     :effect (and
         (not (in s428))
         (in s428)
         (increase (total-cost) 30)
     )
    )

    (:action transition429-0
     :parameters ()
     :precondition (and
         (in s429)
     )
     :effect (and
         (not (in s429))
         (in s429)
         (increase (total-cost) 21)
     )
    )

    (:action transition429-1
     :parameters ()
     :precondition (and
         (in s429)
     )
     :effect (and
         (not (in s429))
         (in s329)
         (increase (total-cost) 21)
     )
    )

    (:action transition429-2
     :parameters ()
     :precondition (and
         (in s429)
     )
     :effect (and
         (not (in s429))
         (in s449)
         (increase (total-cost) 21)
     )
    )

    (:action transition429-3
     :parameters ()
     :precondition (and
         (in s429)
     )
     :effect (and
         (not (in s429))
         (in s429)
         (increase (total-cost) 21)
     )
    )

    (:action transition429-4
     :parameters ()
     :precondition (and
         (in s429)
     )
     :effect (and
         (not (in s429))
         (in s429)
         (increase (total-cost) 30)
     )
    )

    (:action transition429-5
     :parameters ()
     :precondition (and
         (in s429)
     )
     :effect (and
         (not (in s429))
         (in s429)
         (increase (total-cost) 30)
     )
    )

    (:action transition430-0
     :parameters ()
     :precondition (and
         (in s430)
     )
     :effect (and
         (not (in s430))
         (in s430)
         (increase (total-cost) 21)
     )
    )

    (:action transition430-1
     :parameters ()
     :precondition (and
         (in s430)
     )
     :effect (and
         (not (in s430))
         (in s330)
         (increase (total-cost) 21)
     )
    )

    (:action transition430-2
     :parameters ()
     :precondition (and
         (in s430)
     )
     :effect (and
         (not (in s430))
         (in s450)
         (increase (total-cost) 21)
     )
    )

    (:action transition430-3
     :parameters ()
     :precondition (and
         (in s430)
     )
     :effect (and
         (not (in s430))
         (in s430)
         (increase (total-cost) 21)
     )
    )

    (:action transition430-4
     :parameters ()
     :precondition (and
         (in s430)
     )
     :effect (and
         (not (in s430))
         (in s430)
         (increase (total-cost) 30)
     )
    )

    (:action transition430-5
     :parameters ()
     :precondition (and
         (in s430)
     )
     :effect (and
         (not (in s430))
         (in s430)
         (increase (total-cost) 30)
     )
    )

    (:action transition431-0
     :parameters ()
     :precondition (and
         (in s431)
     )
     :effect (and
         (not (in s431))
         (in s431)
         (increase (total-cost) 21)
     )
    )

    (:action transition431-1
     :parameters ()
     :precondition (and
         (in s431)
     )
     :effect (and
         (not (in s431))
         (in s331)
         (increase (total-cost) 21)
     )
    )

    (:action transition431-2
     :parameters ()
     :precondition (and
         (in s431)
     )
     :effect (and
         (not (in s431))
         (in s451)
         (increase (total-cost) 21)
     )
    )

    (:action transition431-3
     :parameters ()
     :precondition (and
         (in s431)
     )
     :effect (and
         (not (in s431))
         (in s431)
         (increase (total-cost) 21)
     )
    )

    (:action transition431-4
     :parameters ()
     :precondition (and
         (in s431)
     )
     :effect (and
         (not (in s431))
         (in s431)
         (increase (total-cost) 30)
     )
    )

    (:action transition431-5
     :parameters ()
     :precondition (and
         (in s431)
     )
     :effect (and
         (not (in s431))
         (in s431)
         (increase (total-cost) 30)
     )
    )

    (:action transition432-0
     :parameters ()
     :precondition (and
         (in s432)
     )
     :effect (and
         (not (in s432))
         (in s432)
         (increase (total-cost) 21)
     )
    )

    (:action transition432-1
     :parameters ()
     :precondition (and
         (in s432)
     )
     :effect (and
         (not (in s432))
         (in s332)
         (increase (total-cost) 21)
     )
    )

    (:action transition432-2
     :parameters ()
     :precondition (and
         (in s432)
     )
     :effect (and
         (not (in s432))
         (in s452)
         (increase (total-cost) 21)
     )
    )

    (:action transition432-3
     :parameters ()
     :precondition (and
         (in s432)
     )
     :effect (and
         (not (in s432))
         (in s432)
         (increase (total-cost) 21)
     )
    )

    (:action transition432-4
     :parameters ()
     :precondition (and
         (in s432)
     )
     :effect (and
         (not (in s432))
         (in s432)
         (increase (total-cost) 30)
     )
    )

    (:action transition432-5
     :parameters ()
     :precondition (and
         (in s432)
     )
     :effect (and
         (not (in s432))
         (in s432)
         (increase (total-cost) 30)
     )
    )

    (:action transition433-0
     :parameters ()
     :precondition (and
         (in s433)
     )
     :effect (and
         (not (in s433))
         (in s433)
         (increase (total-cost) 21)
     )
    )

    (:action transition433-1
     :parameters ()
     :precondition (and
         (in s433)
     )
     :effect (and
         (not (in s433))
         (in s333)
         (increase (total-cost) 21)
     )
    )

    (:action transition433-2
     :parameters ()
     :precondition (and
         (in s433)
     )
     :effect (and
         (not (in s433))
         (in s453)
         (increase (total-cost) 21)
     )
    )

    (:action transition433-3
     :parameters ()
     :precondition (and
         (in s433)
     )
     :effect (and
         (not (in s433))
         (in s433)
         (increase (total-cost) 21)
     )
    )

    (:action transition433-4
     :parameters ()
     :precondition (and
         (in s433)
     )
     :effect (and
         (not (in s433))
         (in s433)
         (increase (total-cost) 30)
     )
    )

    (:action transition433-5
     :parameters ()
     :precondition (and
         (in s433)
     )
     :effect (and
         (not (in s433))
         (in s433)
         (increase (total-cost) 30)
     )
    )

    (:action transition434-0
     :parameters ()
     :precondition (and
         (in s434)
     )
     :effect (and
         (not (in s434))
         (in s434)
         (increase (total-cost) 21)
     )
    )

    (:action transition434-1
     :parameters ()
     :precondition (and
         (in s434)
     )
     :effect (and
         (not (in s434))
         (in s334)
         (increase (total-cost) 21)
     )
    )

    (:action transition434-2
     :parameters ()
     :precondition (and
         (in s434)
     )
     :effect (and
         (not (in s434))
         (in s454)
         (increase (total-cost) 21)
     )
    )

    (:action transition434-3
     :parameters ()
     :precondition (and
         (in s434)
     )
     :effect (and
         (not (in s434))
         (in s434)
         (increase (total-cost) 21)
     )
    )

    (:action transition434-4
     :parameters ()
     :precondition (and
         (in s434)
     )
     :effect (and
         (not (in s434))
         (in s434)
         (increase (total-cost) 30)
     )
    )

    (:action transition434-5
     :parameters ()
     :precondition (and
         (in s434)
     )
     :effect (and
         (not (in s434))
         (in s434)
         (increase (total-cost) 30)
     )
    )

    (:action transition435-0
     :parameters ()
     :precondition (and
         (in s435)
     )
     :effect (and
         (not (in s435))
         (in s435)
         (increase (total-cost) 21)
     )
    )

    (:action transition435-1
     :parameters ()
     :precondition (and
         (in s435)
     )
     :effect (and
         (not (in s435))
         (in s335)
         (increase (total-cost) 21)
     )
    )

    (:action transition435-2
     :parameters ()
     :precondition (and
         (in s435)
     )
     :effect (and
         (not (in s435))
         (in s455)
         (increase (total-cost) 21)
     )
    )

    (:action transition435-3
     :parameters ()
     :precondition (and
         (in s435)
     )
     :effect (and
         (not (in s435))
         (in s435)
         (increase (total-cost) 21)
     )
    )

    (:action transition435-4
     :parameters ()
     :precondition (and
         (in s435)
     )
     :effect (and
         (not (in s435))
         (in s435)
         (increase (total-cost) 30)
     )
    )

    (:action transition435-5
     :parameters ()
     :precondition (and
         (in s435)
     )
     :effect (and
         (not (in s435))
         (in s435)
         (increase (total-cost) 30)
     )
    )

    (:action transition436-0
     :parameters ()
     :precondition (and
         (in s436)
     )
     :effect (and
         (not (in s436))
         (in s436)
         (increase (total-cost) 21)
     )
    )

    (:action transition436-1
     :parameters ()
     :precondition (and
         (in s436)
     )
     :effect (and
         (not (in s436))
         (in s336)
         (increase (total-cost) 21)
     )
    )

    (:action transition436-2
     :parameters ()
     :precondition (and
         (in s436)
     )
     :effect (and
         (not (in s436))
         (in s456)
         (increase (total-cost) 21)
     )
    )

    (:action transition436-3
     :parameters ()
     :precondition (and
         (in s436)
     )
     :effect (and
         (not (in s436))
         (in s436)
         (increase (total-cost) 21)
     )
    )

    (:action transition436-4
     :parameters ()
     :precondition (and
         (in s436)
     )
     :effect (and
         (not (in s436))
         (in s436)
         (increase (total-cost) 30)
     )
    )

    (:action transition436-5
     :parameters ()
     :precondition (and
         (in s436)
     )
     :effect (and
         (not (in s436))
         (in s436)
         (increase (total-cost) 30)
     )
    )

    (:action transition437-0
     :parameters ()
     :precondition (and
         (in s437)
     )
     :effect (and
         (not (in s437))
         (in s437)
         (increase (total-cost) 21)
     )
    )

    (:action transition437-1
     :parameters ()
     :precondition (and
         (in s437)
     )
     :effect (and
         (not (in s437))
         (in s337)
         (increase (total-cost) 21)
     )
    )

    (:action transition437-2
     :parameters ()
     :precondition (and
         (in s437)
     )
     :effect (and
         (not (in s437))
         (in s457)
         (increase (total-cost) 21)
     )
    )

    (:action transition437-3
     :parameters ()
     :precondition (and
         (in s437)
     )
     :effect (and
         (not (in s437))
         (in s437)
         (increase (total-cost) 21)
     )
    )

    (:action transition437-4
     :parameters ()
     :precondition (and
         (in s437)
     )
     :effect (and
         (not (in s437))
         (in s437)
         (increase (total-cost) 30)
     )
    )

    (:action transition437-5
     :parameters ()
     :precondition (and
         (in s437)
     )
     :effect (and
         (not (in s437))
         (in s437)
         (increase (total-cost) 30)
     )
    )

    (:action transition438-0
     :parameters ()
     :precondition (and
         (in s438)
     )
     :effect (and
         (not (in s438))
         (in s438)
         (increase (total-cost) 21)
     )
    )

    (:action transition438-1
     :parameters ()
     :precondition (and
         (in s438)
     )
     :effect (and
         (not (in s438))
         (in s338)
         (increase (total-cost) 21)
     )
    )

    (:action transition438-2
     :parameters ()
     :precondition (and
         (in s438)
     )
     :effect (and
         (not (in s438))
         (in s458)
         (increase (total-cost) 21)
     )
    )

    (:action transition438-3
     :parameters ()
     :precondition (and
         (in s438)
     )
     :effect (and
         (not (in s438))
         (in s438)
         (increase (total-cost) 21)
     )
    )

    (:action transition438-4
     :parameters ()
     :precondition (and
         (in s438)
     )
     :effect (and
         (not (in s438))
         (in s438)
         (increase (total-cost) 30)
     )
    )

    (:action transition438-5
     :parameters ()
     :precondition (and
         (in s438)
     )
     :effect (and
         (not (in s438))
         (in s438)
         (increase (total-cost) 30)
     )
    )

    (:action transition439-0
     :parameters ()
     :precondition (and
         (in s439)
     )
     :effect (and
         (not (in s439))
         (in s439)
         (increase (total-cost) 21)
     )
    )

    (:action transition439-1
     :parameters ()
     :precondition (and
         (in s439)
     )
     :effect (and
         (not (in s439))
         (in s339)
         (increase (total-cost) 21)
     )
    )

    (:action transition439-2
     :parameters ()
     :precondition (and
         (in s439)
     )
     :effect (and
         (not (in s439))
         (in s459)
         (increase (total-cost) 21)
     )
    )

    (:action transition439-3
     :parameters ()
     :precondition (and
         (in s439)
     )
     :effect (and
         (not (in s439))
         (in s439)
         (increase (total-cost) 21)
     )
    )

    (:action transition439-4
     :parameters ()
     :precondition (and
         (in s439)
     )
     :effect (and
         (not (in s439))
         (in s439)
         (increase (total-cost) 30)
     )
    )

    (:action transition439-5
     :parameters ()
     :precondition (and
         (in s439)
     )
     :effect (and
         (not (in s439))
         (in s439)
         (increase (total-cost) 30)
     )
    )

    (:action transition440-0
     :parameters ()
     :precondition (and
         (in s440)
     )
     :effect (and
         (not (in s440))
         (in s440)
         (increase (total-cost) 21)
     )
    )

    (:action transition440-1
     :parameters ()
     :precondition (and
         (in s440)
     )
     :effect (and
         (not (in s440))
         (in s340)
         (increase (total-cost) 21)
     )
    )

    (:action transition440-2
     :parameters ()
     :precondition (and
         (in s440)
     )
     :effect (and
         (not (in s440))
         (in s440)
         (increase (total-cost) 21)
     )
    )

    (:action transition440-3
     :parameters ()
     :precondition (and
         (in s440)
     )
     :effect (and
         (not (in s440))
         (in s420)
         (increase (total-cost) 21)
     )
    )

    (:action transition440-4
     :parameters ()
     :precondition (and
         (in s440)
     )
     :effect (and
         (not (in s440))
         (in s440)
         (increase (total-cost) 30)
     )
    )

    (:action transition440-5
     :parameters ()
     :precondition (and
         (in s440)
     )
     :effect (and
         (not (in s440))
         (in s440)
         (increase (total-cost) 30)
     )
    )

    (:action transition441-0
     :parameters ()
     :precondition (and
         (in s441)
     )
     :effect (and
         (not (in s441))
         (in s441)
         (increase (total-cost) 21)
     )
    )

    (:action transition441-1
     :parameters ()
     :precondition (and
         (in s441)
     )
     :effect (and
         (not (in s441))
         (in s341)
         (increase (total-cost) 21)
     )
    )

    (:action transition441-2
     :parameters ()
     :precondition (and
         (in s441)
     )
     :effect (and
         (not (in s441))
         (in s441)
         (increase (total-cost) 21)
     )
    )

    (:action transition441-3
     :parameters ()
     :precondition (and
         (in s441)
     )
     :effect (and
         (not (in s441))
         (in s421)
         (increase (total-cost) 21)
     )
    )

    (:action transition441-4
     :parameters ()
     :precondition (and
         (in s441)
     )
     :effect (and
         (not (in s441))
         (in s441)
         (increase (total-cost) 30)
     )
    )

    (:action transition441-5
     :parameters ()
     :precondition (and
         (in s441)
     )
     :effect (and
         (not (in s441))
         (in s441)
         (increase (total-cost) 30)
     )
    )

    (:action transition442-0
     :parameters ()
     :precondition (and
         (in s442)
     )
     :effect (and
         (not (in s442))
         (in s442)
         (increase (total-cost) 21)
     )
    )

    (:action transition442-1
     :parameters ()
     :precondition (and
         (in s442)
     )
     :effect (and
         (not (in s442))
         (in s342)
         (increase (total-cost) 21)
     )
    )

    (:action transition442-2
     :parameters ()
     :precondition (and
         (in s442)
     )
     :effect (and
         (not (in s442))
         (in s442)
         (increase (total-cost) 21)
     )
    )

    (:action transition442-3
     :parameters ()
     :precondition (and
         (in s442)
     )
     :effect (and
         (not (in s442))
         (in s422)
         (increase (total-cost) 21)
     )
    )

    (:action transition442-4
     :parameters ()
     :precondition (and
         (in s442)
     )
     :effect (and
         (not (in s442))
         (in s442)
         (increase (total-cost) 30)
     )
    )

    (:action transition442-5
     :parameters ()
     :precondition (and
         (in s442)
     )
     :effect (and
         (not (in s442))
         (in s442)
         (increase (total-cost) 30)
     )
    )

    (:action transition443-0
     :parameters ()
     :precondition (and
         (in s443)
     )
     :effect (and
         (not (in s443))
         (in s443)
         (increase (total-cost) 21)
     )
    )

    (:action transition443-1
     :parameters ()
     :precondition (and
         (in s443)
     )
     :effect (and
         (not (in s443))
         (in s343)
         (increase (total-cost) 21)
     )
    )

    (:action transition443-2
     :parameters ()
     :precondition (and
         (in s443)
     )
     :effect (and
         (not (in s443))
         (in s443)
         (increase (total-cost) 21)
     )
    )

    (:action transition443-3
     :parameters ()
     :precondition (and
         (in s443)
     )
     :effect (and
         (not (in s443))
         (in s423)
         (increase (total-cost) 21)
     )
    )

    (:action transition443-4
     :parameters ()
     :precondition (and
         (in s443)
     )
     :effect (and
         (not (in s443))
         (in s443)
         (increase (total-cost) 30)
     )
    )

    (:action transition443-5
     :parameters ()
     :precondition (and
         (in s443)
     )
     :effect (and
         (not (in s443))
         (in s443)
         (increase (total-cost) 30)
     )
    )

    (:action transition444-0
     :parameters ()
     :precondition (and
         (in s444)
     )
     :effect (and
         (not (in s444))
         (in s444)
         (increase (total-cost) 21)
     )
    )

    (:action transition444-1
     :parameters ()
     :precondition (and
         (in s444)
     )
     :effect (and
         (not (in s444))
         (in s344)
         (increase (total-cost) 21)
     )
    )

    (:action transition444-2
     :parameters ()
     :precondition (and
         (in s444)
     )
     :effect (and
         (not (in s444))
         (in s444)
         (increase (total-cost) 21)
     )
    )

    (:action transition444-3
     :parameters ()
     :precondition (and
         (in s444)
     )
     :effect (and
         (not (in s444))
         (in s424)
         (increase (total-cost) 21)
     )
    )

    (:action transition444-4
     :parameters ()
     :precondition (and
         (in s444)
     )
     :effect (and
         (not (in s444))
         (in s444)
         (increase (total-cost) 30)
     )
    )

    (:action transition444-5
     :parameters ()
     :precondition (and
         (in s444)
     )
     :effect (and
         (not (in s444))
         (in s444)
         (increase (total-cost) 30)
     )
    )

    (:action transition445-0
     :parameters ()
     :precondition (and
         (in s445)
     )
     :effect (and
         (not (in s445))
         (in s445)
         (increase (total-cost) 21)
     )
    )

    (:action transition445-1
     :parameters ()
     :precondition (and
         (in s445)
     )
     :effect (and
         (not (in s445))
         (in s345)
         (increase (total-cost) 21)
     )
    )

    (:action transition445-2
     :parameters ()
     :precondition (and
         (in s445)
     )
     :effect (and
         (not (in s445))
         (in s445)
         (increase (total-cost) 21)
     )
    )

    (:action transition445-3
     :parameters ()
     :precondition (and
         (in s445)
     )
     :effect (and
         (not (in s445))
         (in s425)
         (increase (total-cost) 21)
     )
    )

    (:action transition445-4
     :parameters ()
     :precondition (and
         (in s445)
     )
     :effect (and
         (not (in s445))
         (in s445)
         (increase (total-cost) 30)
     )
    )

    (:action transition445-5
     :parameters ()
     :precondition (and
         (in s445)
     )
     :effect (and
         (not (in s445))
         (in s445)
         (increase (total-cost) 30)
     )
    )

    (:action transition446-0
     :parameters ()
     :precondition (and
         (in s446)
     )
     :effect (and
         (not (in s446))
         (in s446)
         (increase (total-cost) 21)
     )
    )

    (:action transition446-1
     :parameters ()
     :precondition (and
         (in s446)
     )
     :effect (and
         (not (in s446))
         (in s346)
         (increase (total-cost) 21)
     )
    )

    (:action transition446-2
     :parameters ()
     :precondition (and
         (in s446)
     )
     :effect (and
         (not (in s446))
         (in s446)
         (increase (total-cost) 21)
     )
    )

    (:action transition446-3
     :parameters ()
     :precondition (and
         (in s446)
     )
     :effect (and
         (not (in s446))
         (in s426)
         (increase (total-cost) 21)
     )
    )

    (:action transition446-4
     :parameters ()
     :precondition (and
         (in s446)
     )
     :effect (and
         (not (in s446))
         (in s446)
         (increase (total-cost) 30)
     )
    )

    (:action transition446-5
     :parameters ()
     :precondition (and
         (in s446)
     )
     :effect (and
         (not (in s446))
         (in s446)
         (increase (total-cost) 30)
     )
    )

    (:action transition447-0
     :parameters ()
     :precondition (and
         (in s447)
     )
     :effect (and
         (not (in s447))
         (in s447)
         (increase (total-cost) 21)
     )
    )

    (:action transition447-1
     :parameters ()
     :precondition (and
         (in s447)
     )
     :effect (and
         (not (in s447))
         (in s347)
         (increase (total-cost) 21)
     )
    )

    (:action transition447-2
     :parameters ()
     :precondition (and
         (in s447)
     )
     :effect (and
         (not (in s447))
         (in s447)
         (increase (total-cost) 21)
     )
    )

    (:action transition447-3
     :parameters ()
     :precondition (and
         (in s447)
     )
     :effect (and
         (not (in s447))
         (in s427)
         (increase (total-cost) 21)
     )
    )

    (:action transition447-4
     :parameters ()
     :precondition (and
         (in s447)
     )
     :effect (and
         (not (in s447))
         (in s447)
         (increase (total-cost) 30)
     )
    )

    (:action transition447-5
     :parameters ()
     :precondition (and
         (in s447)
     )
     :effect (and
         (not (in s447))
         (in s447)
         (increase (total-cost) 30)
     )
    )

    (:action transition448-0
     :parameters ()
     :precondition (and
         (in s448)
     )
     :effect (and
         (not (in s448))
         (in s448)
         (increase (total-cost) 21)
     )
    )

    (:action transition448-1
     :parameters ()
     :precondition (and
         (in s448)
     )
     :effect (and
         (not (in s448))
         (in s348)
         (increase (total-cost) 21)
     )
    )

    (:action transition448-2
     :parameters ()
     :precondition (and
         (in s448)
     )
     :effect (and
         (not (in s448))
         (in s448)
         (increase (total-cost) 21)
     )
    )

    (:action transition448-3
     :parameters ()
     :precondition (and
         (in s448)
     )
     :effect (and
         (not (in s448))
         (in s428)
         (increase (total-cost) 21)
     )
    )

    (:action transition448-4
     :parameters ()
     :precondition (and
         (in s448)
     )
     :effect (and
         (not (in s448))
         (in s448)
         (increase (total-cost) 30)
     )
    )

    (:action transition448-5
     :parameters ()
     :precondition (and
         (in s448)
     )
     :effect (and
         (not (in s448))
         (in s448)
         (increase (total-cost) 30)
     )
    )

    (:action transition449-0
     :parameters ()
     :precondition (and
         (in s449)
     )
     :effect (and
         (not (in s449))
         (in s449)
         (increase (total-cost) 21)
     )
    )

    (:action transition449-1
     :parameters ()
     :precondition (and
         (in s449)
     )
     :effect (and
         (not (in s449))
         (in s349)
         (increase (total-cost) 21)
     )
    )

    (:action transition449-2
     :parameters ()
     :precondition (and
         (in s449)
     )
     :effect (and
         (not (in s449))
         (in s449)
         (increase (total-cost) 21)
     )
    )

    (:action transition449-3
     :parameters ()
     :precondition (and
         (in s449)
     )
     :effect (and
         (not (in s449))
         (in s429)
         (increase (total-cost) 21)
     )
    )

    (:action transition449-4
     :parameters ()
     :precondition (and
         (in s449)
     )
     :effect (and
         (not (in s449))
         (in s449)
         (increase (total-cost) 30)
     )
    )

    (:action transition449-5
     :parameters ()
     :precondition (and
         (in s449)
     )
     :effect (and
         (not (in s449))
         (in s449)
         (increase (total-cost) 30)
     )
    )

    (:action transition450-0
     :parameters ()
     :precondition (and
         (in s450)
     )
     :effect (and
         (not (in s450))
         (in s450)
         (increase (total-cost) 21)
     )
    )

    (:action transition450-1
     :parameters ()
     :precondition (and
         (in s450)
     )
     :effect (and
         (not (in s450))
         (in s350)
         (increase (total-cost) 21)
     )
    )

    (:action transition450-2
     :parameters ()
     :precondition (and
         (in s450)
     )
     :effect (and
         (not (in s450))
         (in s450)
         (increase (total-cost) 21)
     )
    )

    (:action transition450-3
     :parameters ()
     :precondition (and
         (in s450)
     )
     :effect (and
         (not (in s450))
         (in s430)
         (increase (total-cost) 21)
     )
    )

    (:action transition450-4
     :parameters ()
     :precondition (and
         (in s450)
     )
     :effect (and
         (not (in s450))
         (in s450)
         (increase (total-cost) 30)
     )
    )

    (:action transition450-5
     :parameters ()
     :precondition (and
         (in s450)
     )
     :effect (and
         (not (in s450))
         (in s450)
         (increase (total-cost) 30)
     )
    )

    (:action transition451-0
     :parameters ()
     :precondition (and
         (in s451)
     )
     :effect (and
         (not (in s451))
         (in s451)
         (increase (total-cost) 21)
     )
    )

    (:action transition451-1
     :parameters ()
     :precondition (and
         (in s451)
     )
     :effect (and
         (not (in s451))
         (in s351)
         (increase (total-cost) 21)
     )
    )

    (:action transition451-2
     :parameters ()
     :precondition (and
         (in s451)
     )
     :effect (and
         (not (in s451))
         (in s451)
         (increase (total-cost) 21)
     )
    )

    (:action transition451-3
     :parameters ()
     :precondition (and
         (in s451)
     )
     :effect (and
         (not (in s451))
         (in s431)
         (increase (total-cost) 21)
     )
    )

    (:action transition451-4
     :parameters ()
     :precondition (and
         (in s451)
     )
     :effect (and
         (not (in s451))
         (in s451)
         (increase (total-cost) 30)
     )
    )

    (:action transition451-5
     :parameters ()
     :precondition (and
         (in s451)
     )
     :effect (and
         (not (in s451))
         (in s451)
         (increase (total-cost) 30)
     )
    )

    (:action transition452-0
     :parameters ()
     :precondition (and
         (in s452)
     )
     :effect (and
         (not (in s452))
         (in s452)
         (increase (total-cost) 21)
     )
    )

    (:action transition452-1
     :parameters ()
     :precondition (and
         (in s452)
     )
     :effect (and
         (not (in s452))
         (in s352)
         (increase (total-cost) 21)
     )
    )

    (:action transition452-2
     :parameters ()
     :precondition (and
         (in s452)
     )
     :effect (and
         (not (in s452))
         (in s452)
         (increase (total-cost) 21)
     )
    )

    (:action transition452-3
     :parameters ()
     :precondition (and
         (in s452)
     )
     :effect (and
         (not (in s452))
         (in s432)
         (increase (total-cost) 21)
     )
    )

    (:action transition452-4
     :parameters ()
     :precondition (and
         (in s452)
     )
     :effect (and
         (not (in s452))
         (in s452)
         (increase (total-cost) 30)
     )
    )

    (:action transition452-5
     :parameters ()
     :precondition (and
         (in s452)
     )
     :effect (and
         (not (in s452))
         (in s452)
         (increase (total-cost) 30)
     )
    )

    (:action transition453-0
     :parameters ()
     :precondition (and
         (in s453)
     )
     :effect (and
         (not (in s453))
         (in s453)
         (increase (total-cost) 21)
     )
    )

    (:action transition453-1
     :parameters ()
     :precondition (and
         (in s453)
     )
     :effect (and
         (not (in s453))
         (in s353)
         (increase (total-cost) 21)
     )
    )

    (:action transition453-2
     :parameters ()
     :precondition (and
         (in s453)
     )
     :effect (and
         (not (in s453))
         (in s453)
         (increase (total-cost) 21)
     )
    )

    (:action transition453-3
     :parameters ()
     :precondition (and
         (in s453)
     )
     :effect (and
         (not (in s453))
         (in s433)
         (increase (total-cost) 21)
     )
    )

    (:action transition453-4
     :parameters ()
     :precondition (and
         (in s453)
     )
     :effect (and
         (not (in s453))
         (in s453)
         (increase (total-cost) 30)
     )
    )

    (:action transition453-5
     :parameters ()
     :precondition (and
         (in s453)
     )
     :effect (and
         (not (in s453))
         (in s453)
         (increase (total-cost) 30)
     )
    )

    (:action transition454-0
     :parameters ()
     :precondition (and
         (in s454)
     )
     :effect (and
         (not (in s454))
         (in s454)
         (increase (total-cost) 21)
     )
    )

    (:action transition454-1
     :parameters ()
     :precondition (and
         (in s454)
     )
     :effect (and
         (not (in s454))
         (in s354)
         (increase (total-cost) 21)
     )
    )

    (:action transition454-2
     :parameters ()
     :precondition (and
         (in s454)
     )
     :effect (and
         (not (in s454))
         (in s454)
         (increase (total-cost) 21)
     )
    )

    (:action transition454-3
     :parameters ()
     :precondition (and
         (in s454)
     )
     :effect (and
         (not (in s454))
         (in s434)
         (increase (total-cost) 21)
     )
    )

    (:action transition454-4
     :parameters ()
     :precondition (and
         (in s454)
     )
     :effect (and
         (not (in s454))
         (in s454)
         (increase (total-cost) 30)
     )
    )

    (:action transition454-5
     :parameters ()
     :precondition (and
         (in s454)
     )
     :effect (and
         (not (in s454))
         (in s454)
         (increase (total-cost) 30)
     )
    )

    (:action transition455-0
     :parameters ()
     :precondition (and
         (in s455)
     )
     :effect (and
         (not (in s455))
         (in s455)
         (increase (total-cost) 21)
     )
    )

    (:action transition455-1
     :parameters ()
     :precondition (and
         (in s455)
     )
     :effect (and
         (not (in s455))
         (in s355)
         (increase (total-cost) 21)
     )
    )

    (:action transition455-2
     :parameters ()
     :precondition (and
         (in s455)
     )
     :effect (and
         (not (in s455))
         (in s455)
         (increase (total-cost) 21)
     )
    )

    (:action transition455-3
     :parameters ()
     :precondition (and
         (in s455)
     )
     :effect (and
         (not (in s455))
         (in s435)
         (increase (total-cost) 21)
     )
    )

    (:action transition455-4
     :parameters ()
     :precondition (and
         (in s455)
     )
     :effect (and
         (not (in s455))
         (in s455)
         (increase (total-cost) 30)
     )
    )

    (:action transition455-5
     :parameters ()
     :precondition (and
         (in s455)
     )
     :effect (and
         (not (in s455))
         (in s455)
         (increase (total-cost) 30)
     )
    )

    (:action transition456-0
     :parameters ()
     :precondition (and
         (in s456)
     )
     :effect (and
         (not (in s456))
         (in s456)
         (increase (total-cost) 21)
     )
    )

    (:action transition456-1
     :parameters ()
     :precondition (and
         (in s456)
     )
     :effect (and
         (not (in s456))
         (in s356)
         (increase (total-cost) 21)
     )
    )

    (:action transition456-2
     :parameters ()
     :precondition (and
         (in s456)
     )
     :effect (and
         (not (in s456))
         (in s456)
         (increase (total-cost) 21)
     )
    )

    (:action transition456-3
     :parameters ()
     :precondition (and
         (in s456)
     )
     :effect (and
         (not (in s456))
         (in s436)
         (increase (total-cost) 21)
     )
    )

    (:action transition456-4
     :parameters ()
     :precondition (and
         (in s456)
     )
     :effect (and
         (not (in s456))
         (in s456)
         (increase (total-cost) 30)
     )
    )

    (:action transition456-5
     :parameters ()
     :precondition (and
         (in s456)
     )
     :effect (and
         (not (in s456))
         (in s456)
         (increase (total-cost) 30)
     )
    )

    (:action transition457-0
     :parameters ()
     :precondition (and
         (in s457)
     )
     :effect (and
         (not (in s457))
         (in s457)
         (increase (total-cost) 21)
     )
    )

    (:action transition457-1
     :parameters ()
     :precondition (and
         (in s457)
     )
     :effect (and
         (not (in s457))
         (in s357)
         (increase (total-cost) 21)
     )
    )

    (:action transition457-2
     :parameters ()
     :precondition (and
         (in s457)
     )
     :effect (and
         (not (in s457))
         (in s457)
         (increase (total-cost) 21)
     )
    )

    (:action transition457-3
     :parameters ()
     :precondition (and
         (in s457)
     )
     :effect (and
         (not (in s457))
         (in s437)
         (increase (total-cost) 21)
     )
    )

    (:action transition457-4
     :parameters ()
     :precondition (and
         (in s457)
     )
     :effect (and
         (not (in s457))
         (in s457)
         (increase (total-cost) 30)
     )
    )

    (:action transition457-5
     :parameters ()
     :precondition (and
         (in s457)
     )
     :effect (and
         (not (in s457))
         (in s457)
         (increase (total-cost) 30)
     )
    )

    (:action transition458-0
     :parameters ()
     :precondition (and
         (in s458)
     )
     :effect (and
         (not (in s458))
         (in s458)
         (increase (total-cost) 21)
     )
    )

    (:action transition458-1
     :parameters ()
     :precondition (and
         (in s458)
     )
     :effect (and
         (not (in s458))
         (in s358)
         (increase (total-cost) 21)
     )
    )

    (:action transition458-2
     :parameters ()
     :precondition (and
         (in s458)
     )
     :effect (and
         (not (in s458))
         (in s458)
         (increase (total-cost) 21)
     )
    )

    (:action transition458-3
     :parameters ()
     :precondition (and
         (in s458)
     )
     :effect (and
         (not (in s458))
         (in s438)
         (increase (total-cost) 21)
     )
    )

    (:action transition458-4
     :parameters ()
     :precondition (and
         (in s458)
     )
     :effect (and
         (not (in s458))
         (in s458)
         (increase (total-cost) 30)
     )
    )

    (:action transition458-5
     :parameters ()
     :precondition (and
         (in s458)
     )
     :effect (and
         (not (in s458))
         (in s458)
         (increase (total-cost) 30)
     )
    )

    (:action transition459-0
     :parameters ()
     :precondition (and
         (in s459)
     )
     :effect (and
         (not (in s459))
         (in s459)
         (increase (total-cost) 21)
     )
    )

    (:action transition459-1
     :parameters ()
     :precondition (and
         (in s459)
     )
     :effect (and
         (not (in s459))
         (in s359)
         (increase (total-cost) 21)
     )
    )

    (:action transition459-2
     :parameters ()
     :precondition (and
         (in s459)
     )
     :effect (and
         (not (in s459))
         (in s459)
         (increase (total-cost) 21)
     )
    )

    (:action transition459-3
     :parameters ()
     :precondition (and
         (in s459)
     )
     :effect (and
         (not (in s459))
         (in s439)
         (increase (total-cost) 21)
     )
    )

    (:action transition459-4
     :parameters ()
     :precondition (and
         (in s459)
     )
     :effect (and
         (not (in s459))
         (in s459)
         (increase (total-cost) 30)
     )
    )

    (:action transition459-5
     :parameters ()
     :precondition (and
         (in s459)
     )
     :effect (and
         (not (in s459))
         (in s459)
         (increase (total-cost) 30)
     )
    )

    (:action transition460-0
     :parameters ()
     :precondition (and
         (in s460)
     )
     :effect (and
         (not (in s460))
         (in s460)
         (increase (total-cost) 21)
     )
    )

    (:action transition460-1
     :parameters ()
     :precondition (and
         (in s460)
     )
     :effect (and
         (not (in s460))
         (in s360)
         (increase (total-cost) 21)
     )
    )

    (:action transition460-2
     :parameters ()
     :precondition (and
         (in s460)
     )
     :effect (and
         (not (in s460))
         (in s480)
         (increase (total-cost) 21)
     )
    )

    (:action transition460-3
     :parameters ()
     :precondition (and
         (in s460)
     )
     :effect (and
         (not (in s460))
         (in s460)
         (increase (total-cost) 21)
     )
    )

    (:action transition460-4
     :parameters ()
     :precondition (and
         (in s460)
     )
     :effect (and
         (not (in s460))
         (in s460)
         (increase (total-cost) 30)
     )
    )

    (:action transition460-5
     :parameters ()
     :precondition (and
         (in s460)
     )
     :effect (and
         (not (in s460))
         (in s460)
         (increase (total-cost) 30)
     )
    )

    (:action transition461-0
     :parameters ()
     :precondition (and
         (in s461)
     )
     :effect (and
         (not (in s461))
         (in s461)
         (increase (total-cost) 21)
     )
    )

    (:action transition461-1
     :parameters ()
     :precondition (and
         (in s461)
     )
     :effect (and
         (not (in s461))
         (in s361)
         (increase (total-cost) 21)
     )
    )

    (:action transition461-2
     :parameters ()
     :precondition (and
         (in s461)
     )
     :effect (and
         (not (in s461))
         (in s481)
         (increase (total-cost) 21)
     )
    )

    (:action transition461-3
     :parameters ()
     :precondition (and
         (in s461)
     )
     :effect (and
         (not (in s461))
         (in s461)
         (increase (total-cost) 21)
     )
    )

    (:action transition461-4
     :parameters ()
     :precondition (and
         (in s461)
     )
     :effect (and
         (not (in s461))
         (in s461)
         (increase (total-cost) 30)
     )
    )

    (:action transition461-5
     :parameters ()
     :precondition (and
         (in s461)
     )
     :effect (and
         (not (in s461))
         (in s461)
         (increase (total-cost) 30)
     )
    )

    (:action transition462-0
     :parameters ()
     :precondition (and
         (in s462)
     )
     :effect (and
         (not (in s462))
         (in s462)
         (increase (total-cost) 21)
     )
    )

    (:action transition462-1
     :parameters ()
     :precondition (and
         (in s462)
     )
     :effect (and
         (not (in s462))
         (in s362)
         (increase (total-cost) 21)
     )
    )

    (:action transition462-2
     :parameters ()
     :precondition (and
         (in s462)
     )
     :effect (and
         (not (in s462))
         (in s482)
         (increase (total-cost) 21)
     )
    )

    (:action transition462-3
     :parameters ()
     :precondition (and
         (in s462)
     )
     :effect (and
         (not (in s462))
         (in s462)
         (increase (total-cost) 21)
     )
    )

    (:action transition462-4
     :parameters ()
     :precondition (and
         (in s462)
     )
     :effect (and
         (not (in s462))
         (in s462)
         (increase (total-cost) 30)
     )
    )

    (:action transition462-5
     :parameters ()
     :precondition (and
         (in s462)
     )
     :effect (and
         (not (in s462))
         (in s462)
         (increase (total-cost) 30)
     )
    )

    (:action transition463-0
     :parameters ()
     :precondition (and
         (in s463)
     )
     :effect (and
         (not (in s463))
         (in s463)
         (increase (total-cost) 21)
     )
    )

    (:action transition463-1
     :parameters ()
     :precondition (and
         (in s463)
     )
     :effect (and
         (not (in s463))
         (in s363)
         (increase (total-cost) 21)
     )
    )

    (:action transition463-2
     :parameters ()
     :precondition (and
         (in s463)
     )
     :effect (and
         (not (in s463))
         (in s483)
         (increase (total-cost) 21)
     )
    )

    (:action transition463-3
     :parameters ()
     :precondition (and
         (in s463)
     )
     :effect (and
         (not (in s463))
         (in s463)
         (increase (total-cost) 21)
     )
    )

    (:action transition463-4
     :parameters ()
     :precondition (and
         (in s463)
     )
     :effect (and
         (not (in s463))
         (in s463)
         (increase (total-cost) 30)
     )
    )

    (:action transition463-5
     :parameters ()
     :precondition (and
         (in s463)
     )
     :effect (and
         (not (in s463))
         (in s463)
         (increase (total-cost) 30)
     )
    )

    (:action transition464-0
     :parameters ()
     :precondition (and
         (in s464)
     )
     :effect (and
         (not (in s464))
         (in s464)
         (increase (total-cost) 21)
     )
    )

    (:action transition464-1
     :parameters ()
     :precondition (and
         (in s464)
     )
     :effect (and
         (not (in s464))
         (in s364)
         (increase (total-cost) 21)
     )
    )

    (:action transition464-2
     :parameters ()
     :precondition (and
         (in s464)
     )
     :effect (and
         (not (in s464))
         (in s484)
         (increase (total-cost) 21)
     )
    )

    (:action transition464-3
     :parameters ()
     :precondition (and
         (in s464)
     )
     :effect (and
         (not (in s464))
         (in s464)
         (increase (total-cost) 21)
     )
    )

    (:action transition464-4
     :parameters ()
     :precondition (and
         (in s464)
     )
     :effect (and
         (not (in s464))
         (in s464)
         (increase (total-cost) 30)
     )
    )

    (:action transition464-5
     :parameters ()
     :precondition (and
         (in s464)
     )
     :effect (and
         (not (in s464))
         (in s464)
         (increase (total-cost) 30)
     )
    )

    (:action transition465-0
     :parameters ()
     :precondition (and
         (in s465)
     )
     :effect (and
         (not (in s465))
         (in s465)
         (increase (total-cost) 21)
     )
    )

    (:action transition465-1
     :parameters ()
     :precondition (and
         (in s465)
     )
     :effect (and
         (not (in s465))
         (in s365)
         (increase (total-cost) 21)
     )
    )

    (:action transition465-2
     :parameters ()
     :precondition (and
         (in s465)
     )
     :effect (and
         (not (in s465))
         (in s485)
         (increase (total-cost) 21)
     )
    )

    (:action transition465-3
     :parameters ()
     :precondition (and
         (in s465)
     )
     :effect (and
         (not (in s465))
         (in s465)
         (increase (total-cost) 21)
     )
    )

    (:action transition465-4
     :parameters ()
     :precondition (and
         (in s465)
     )
     :effect (and
         (not (in s465))
         (in s465)
         (increase (total-cost) 30)
     )
    )

    (:action transition465-5
     :parameters ()
     :precondition (and
         (in s465)
     )
     :effect (and
         (not (in s465))
         (in s465)
         (increase (total-cost) 30)
     )
    )

    (:action transition466-0
     :parameters ()
     :precondition (and
         (in s466)
     )
     :effect (and
         (not (in s466))
         (in s466)
         (increase (total-cost) 21)
     )
    )

    (:action transition466-1
     :parameters ()
     :precondition (and
         (in s466)
     )
     :effect (and
         (not (in s466))
         (in s366)
         (increase (total-cost) 21)
     )
    )

    (:action transition466-2
     :parameters ()
     :precondition (and
         (in s466)
     )
     :effect (and
         (not (in s466))
         (in s486)
         (increase (total-cost) 21)
     )
    )

    (:action transition466-3
     :parameters ()
     :precondition (and
         (in s466)
     )
     :effect (and
         (not (in s466))
         (in s466)
         (increase (total-cost) 21)
     )
    )

    (:action transition466-4
     :parameters ()
     :precondition (and
         (in s466)
     )
     :effect (and
         (not (in s466))
         (in s466)
         (increase (total-cost) 30)
     )
    )

    (:action transition466-5
     :parameters ()
     :precondition (and
         (in s466)
     )
     :effect (and
         (not (in s466))
         (in s466)
         (increase (total-cost) 30)
     )
    )

    (:action transition467-0
     :parameters ()
     :precondition (and
         (in s467)
     )
     :effect (and
         (not (in s467))
         (in s467)
         (increase (total-cost) 21)
     )
    )

    (:action transition467-1
     :parameters ()
     :precondition (and
         (in s467)
     )
     :effect (and
         (not (in s467))
         (in s367)
         (increase (total-cost) 21)
     )
    )

    (:action transition467-2
     :parameters ()
     :precondition (and
         (in s467)
     )
     :effect (and
         (not (in s467))
         (in s487)
         (increase (total-cost) 21)
     )
    )

    (:action transition467-3
     :parameters ()
     :precondition (and
         (in s467)
     )
     :effect (and
         (not (in s467))
         (in s467)
         (increase (total-cost) 21)
     )
    )

    (:action transition467-4
     :parameters ()
     :precondition (and
         (in s467)
     )
     :effect (and
         (not (in s467))
         (in s467)
         (increase (total-cost) 30)
     )
    )

    (:action transition467-5
     :parameters ()
     :precondition (and
         (in s467)
     )
     :effect (and
         (not (in s467))
         (in s467)
         (increase (total-cost) 30)
     )
    )

    (:action transition468-0
     :parameters ()
     :precondition (and
         (in s468)
     )
     :effect (and
         (not (in s468))
         (in s468)
         (increase (total-cost) 21)
     )
    )

    (:action transition468-1
     :parameters ()
     :precondition (and
         (in s468)
     )
     :effect (and
         (not (in s468))
         (in s368)
         (increase (total-cost) 21)
     )
    )

    (:action transition468-2
     :parameters ()
     :precondition (and
         (in s468)
     )
     :effect (and
         (not (in s468))
         (in s488)
         (increase (total-cost) 21)
     )
    )

    (:action transition468-3
     :parameters ()
     :precondition (and
         (in s468)
     )
     :effect (and
         (not (in s468))
         (in s468)
         (increase (total-cost) 21)
     )
    )

    (:action transition468-4
     :parameters ()
     :precondition (and
         (in s468)
     )
     :effect (and
         (not (in s468))
         (in s468)
         (increase (total-cost) 30)
     )
    )

    (:action transition468-5
     :parameters ()
     :precondition (and
         (in s468)
     )
     :effect (and
         (not (in s468))
         (in s468)
         (increase (total-cost) 30)
     )
    )

    (:action transition469-0
     :parameters ()
     :precondition (and
         (in s469)
     )
     :effect (and
         (not (in s469))
         (in s469)
         (increase (total-cost) 21)
     )
    )

    (:action transition469-1
     :parameters ()
     :precondition (and
         (in s469)
     )
     :effect (and
         (not (in s469))
         (in s369)
         (increase (total-cost) 21)
     )
    )

    (:action transition469-2
     :parameters ()
     :precondition (and
         (in s469)
     )
     :effect (and
         (not (in s469))
         (in s489)
         (increase (total-cost) 21)
     )
    )

    (:action transition469-3
     :parameters ()
     :precondition (and
         (in s469)
     )
     :effect (and
         (not (in s469))
         (in s469)
         (increase (total-cost) 21)
     )
    )

    (:action transition469-4
     :parameters ()
     :precondition (and
         (in s469)
     )
     :effect (and
         (not (in s469))
         (in s469)
         (increase (total-cost) 30)
     )
    )

    (:action transition469-5
     :parameters ()
     :precondition (and
         (in s469)
     )
     :effect (and
         (not (in s469))
         (in s469)
         (increase (total-cost) 30)
     )
    )

    (:action transition470-0
     :parameters ()
     :precondition (and
         (in s470)
     )
     :effect (and
         (not (in s470))
         (in s470)
         (increase (total-cost) 21)
     )
    )

    (:action transition470-1
     :parameters ()
     :precondition (and
         (in s470)
     )
     :effect (and
         (not (in s470))
         (in s370)
         (increase (total-cost) 21)
     )
    )

    (:action transition470-2
     :parameters ()
     :precondition (and
         (in s470)
     )
     :effect (and
         (not (in s470))
         (in s490)
         (increase (total-cost) 21)
     )
    )

    (:action transition470-3
     :parameters ()
     :precondition (and
         (in s470)
     )
     :effect (and
         (not (in s470))
         (in s470)
         (increase (total-cost) 21)
     )
    )

    (:action transition470-4
     :parameters ()
     :precondition (and
         (in s470)
     )
     :effect (and
         (not (in s470))
         (in s470)
         (increase (total-cost) 30)
     )
    )

    (:action transition470-5
     :parameters ()
     :precondition (and
         (in s470)
     )
     :effect (and
         (not (in s470))
         (in s470)
         (increase (total-cost) 30)
     )
    )

    (:action transition471-0
     :parameters ()
     :precondition (and
         (in s471)
     )
     :effect (and
         (not (in s471))
         (in s471)
         (increase (total-cost) 21)
     )
    )

    (:action transition471-1
     :parameters ()
     :precondition (and
         (in s471)
     )
     :effect (and
         (not (in s471))
         (in s371)
         (increase (total-cost) 21)
     )
    )

    (:action transition471-2
     :parameters ()
     :precondition (and
         (in s471)
     )
     :effect (and
         (not (in s471))
         (in s491)
         (increase (total-cost) 21)
     )
    )

    (:action transition471-3
     :parameters ()
     :precondition (and
         (in s471)
     )
     :effect (and
         (not (in s471))
         (in s471)
         (increase (total-cost) 21)
     )
    )

    (:action transition471-4
     :parameters ()
     :precondition (and
         (in s471)
     )
     :effect (and
         (not (in s471))
         (in s471)
         (increase (total-cost) 30)
     )
    )

    (:action transition471-5
     :parameters ()
     :precondition (and
         (in s471)
     )
     :effect (and
         (not (in s471))
         (in s471)
         (increase (total-cost) 30)
     )
    )

    (:action transition472-0
     :parameters ()
     :precondition (and
         (in s472)
     )
     :effect (and
         (not (in s472))
         (in s472)
         (increase (total-cost) 21)
     )
    )

    (:action transition472-1
     :parameters ()
     :precondition (and
         (in s472)
     )
     :effect (and
         (not (in s472))
         (in s372)
         (increase (total-cost) 21)
     )
    )

    (:action transition472-2
     :parameters ()
     :precondition (and
         (in s472)
     )
     :effect (and
         (not (in s472))
         (in s492)
         (increase (total-cost) 21)
     )
    )

    (:action transition472-3
     :parameters ()
     :precondition (and
         (in s472)
     )
     :effect (and
         (not (in s472))
         (in s472)
         (increase (total-cost) 21)
     )
    )

    (:action transition472-4
     :parameters ()
     :precondition (and
         (in s472)
     )
     :effect (and
         (not (in s472))
         (in s476)
         (increase (total-cost) 21)
     )
    )

    (:action transition472-5
     :parameters ()
     :precondition (and
         (in s472)
     )
     :effect (and
         (not (in s472))
         (in s472)
         (increase (total-cost) 30)
     )
    )

    (:action transition473-0
     :parameters ()
     :precondition (and
         (in s473)
     )
     :effect (and
         (not (in s473))
         (in s473)
         (increase (total-cost) 21)
     )
    )

    (:action transition473-1
     :parameters ()
     :precondition (and
         (in s473)
     )
     :effect (and
         (not (in s473))
         (in s373)
         (increase (total-cost) 21)
     )
    )

    (:action transition473-2
     :parameters ()
     :precondition (and
         (in s473)
     )
     :effect (and
         (not (in s473))
         (in s493)
         (increase (total-cost) 21)
     )
    )

    (:action transition473-3
     :parameters ()
     :precondition (and
         (in s473)
     )
     :effect (and
         (not (in s473))
         (in s473)
         (increase (total-cost) 21)
     )
    )

    (:action transition473-4
     :parameters ()
     :precondition (and
         (in s473)
     )
     :effect (and
         (not (in s473))
         (in s477)
         (increase (total-cost) 21)
     )
    )

    (:action transition473-5
     :parameters ()
     :precondition (and
         (in s473)
     )
     :effect (and
         (not (in s473))
         (in s473)
         (increase (total-cost) 30)
     )
    )

    (:action transition474-0
     :parameters ()
     :precondition (and
         (in s474)
     )
     :effect (and
         (not (in s474))
         (in s474)
         (increase (total-cost) 21)
     )
    )

    (:action transition474-1
     :parameters ()
     :precondition (and
         (in s474)
     )
     :effect (and
         (not (in s474))
         (in s374)
         (increase (total-cost) 21)
     )
    )

    (:action transition474-2
     :parameters ()
     :precondition (and
         (in s474)
     )
     :effect (and
         (not (in s474))
         (in s494)
         (increase (total-cost) 21)
     )
    )

    (:action transition474-3
     :parameters ()
     :precondition (and
         (in s474)
     )
     :effect (and
         (not (in s474))
         (in s474)
         (increase (total-cost) 21)
     )
    )

    (:action transition474-4
     :parameters ()
     :precondition (and
         (in s474)
     )
     :effect (and
         (not (in s474))
         (in s478)
         (increase (total-cost) 21)
     )
    )

    (:action transition474-5
     :parameters ()
     :precondition (and
         (in s474)
     )
     :effect (and
         (not (in s474))
         (in s474)
         (increase (total-cost) 30)
     )
    )

    (:action transition475-0
     :parameters ()
     :precondition (and
         (in s475)
     )
     :effect (and
         (not (in s475))
         (in s475)
         (increase (total-cost) 21)
     )
    )

    (:action transition475-1
     :parameters ()
     :precondition (and
         (in s475)
     )
     :effect (and
         (not (in s475))
         (in s375)
         (increase (total-cost) 21)
     )
    )

    (:action transition475-2
     :parameters ()
     :precondition (and
         (in s475)
     )
     :effect (and
         (not (in s475))
         (in s495)
         (increase (total-cost) 21)
     )
    )

    (:action transition475-3
     :parameters ()
     :precondition (and
         (in s475)
     )
     :effect (and
         (not (in s475))
         (in s475)
         (increase (total-cost) 21)
     )
    )

    (:action transition475-4
     :parameters ()
     :precondition (and
         (in s475)
     )
     :effect (and
         (not (in s475))
         (in s479)
         (increase (total-cost) 21)
     )
    )

    (:action transition475-5
     :parameters ()
     :precondition (and
         (in s475)
     )
     :effect (and
         (not (in s475))
         (in s475)
         (increase (total-cost) 30)
     )
    )

    (:action transition476-0
     :parameters ()
     :precondition (and
         (in s476)
     )
     :effect (and
         (not (in s476))
         (in s476)
         (increase (total-cost) 21)
     )
    )

    (:action transition476-1
     :parameters ()
     :precondition (and
         (in s476)
     )
     :effect (and
         (not (in s476))
         (in s376)
         (increase (total-cost) 21)
     )
    )

    (:action transition476-2
     :parameters ()
     :precondition (and
         (in s476)
     )
     :effect (and
         (not (in s476))
         (in s496)
         (increase (total-cost) 21)
     )
    )

    (:action transition476-3
     :parameters ()
     :precondition (and
         (in s476)
     )
     :effect (and
         (not (in s476))
         (in s476)
         (increase (total-cost) 21)
     )
    )

    (:action transition476-4
     :parameters ()
     :precondition (and
         (in s476)
     )
     :effect (and
         (not (in s476))
         (in s476)
         (increase (total-cost) 30)
     )
    )

    (:action transition476-5
     :parameters ()
     :precondition (and
         (in s476)
     )
     :effect (and
         (not (in s476))
         (in s472)
         (increase (total-cost) 21)
     )
    )

    (:action transition477-0
     :parameters ()
     :precondition (and
         (in s477)
     )
     :effect (and
         (not (in s477))
         (in s477)
         (increase (total-cost) 21)
     )
    )

    (:action transition477-1
     :parameters ()
     :precondition (and
         (in s477)
     )
     :effect (and
         (not (in s477))
         (in s377)
         (increase (total-cost) 21)
     )
    )

    (:action transition477-2
     :parameters ()
     :precondition (and
         (in s477)
     )
     :effect (and
         (not (in s477))
         (in s497)
         (increase (total-cost) 21)
     )
    )

    (:action transition477-3
     :parameters ()
     :precondition (and
         (in s477)
     )
     :effect (and
         (not (in s477))
         (in s477)
         (increase (total-cost) 21)
     )
    )

    (:action transition477-4
     :parameters ()
     :precondition (and
         (in s477)
     )
     :effect (and
         (not (in s477))
         (in s477)
         (increase (total-cost) 30)
     )
    )

    (:action transition477-5
     :parameters ()
     :precondition (and
         (in s477)
     )
     :effect (and
         (not (in s477))
         (in s473)
         (increase (total-cost) 21)
     )
    )

    (:action transition478-0
     :parameters ()
     :precondition (and
         (in s478)
     )
     :effect (and
         (not (in s478))
         (in s478)
         (increase (total-cost) 21)
     )
    )

    (:action transition478-1
     :parameters ()
     :precondition (and
         (in s478)
     )
     :effect (and
         (not (in s478))
         (in s378)
         (increase (total-cost) 21)
     )
    )

    (:action transition478-2
     :parameters ()
     :precondition (and
         (in s478)
     )
     :effect (and
         (not (in s478))
         (in s498)
         (increase (total-cost) 21)
     )
    )

    (:action transition478-3
     :parameters ()
     :precondition (and
         (in s478)
     )
     :effect (and
         (not (in s478))
         (in s478)
         (increase (total-cost) 21)
     )
    )

    (:action transition478-4
     :parameters ()
     :precondition (and
         (in s478)
     )
     :effect (and
         (not (in s478))
         (in s478)
         (increase (total-cost) 30)
     )
    )

    (:action transition478-5
     :parameters ()
     :precondition (and
         (in s478)
     )
     :effect (and
         (not (in s478))
         (in s474)
         (increase (total-cost) 21)
     )
    )

    (:action transition479-0
     :parameters ()
     :precondition (and
         (in s479)
     )
     :effect (and
         (not (in s479))
         (in s479)
         (increase (total-cost) 21)
     )
    )

    (:action transition479-1
     :parameters ()
     :precondition (and
         (in s479)
     )
     :effect (and
         (not (in s479))
         (in s379)
         (increase (total-cost) 21)
     )
    )

    (:action transition479-2
     :parameters ()
     :precondition (and
         (in s479)
     )
     :effect (and
         (not (in s479))
         (in s499)
         (increase (total-cost) 21)
     )
    )

    (:action transition479-3
     :parameters ()
     :precondition (and
         (in s479)
     )
     :effect (and
         (not (in s479))
         (in s479)
         (increase (total-cost) 21)
     )
    )

    (:action transition479-4
     :parameters ()
     :precondition (and
         (in s479)
     )
     :effect (and
         (not (in s479))
         (in s479)
         (increase (total-cost) 30)
     )
    )

    (:action transition479-5
     :parameters ()
     :precondition (and
         (in s479)
     )
     :effect (and
         (not (in s479))
         (in s475)
		 (done)
         (increase (total-cost) 0)
     )
    )

    (:action transition480-0
     :parameters ()
     :precondition (and
         (in s480)
     )
     :effect (and
         (not (in s480))
         (in s480)
         (increase (total-cost) 21)
     )
    )

    (:action transition480-1
     :parameters ()
     :precondition (and
         (in s480)
     )
     :effect (and
         (not (in s480))
         (in s380)
         (increase (total-cost) 21)
     )
    )

    (:action transition480-2
     :parameters ()
     :precondition (and
         (in s480)
     )
     :effect (and
         (not (in s480))
         (in s480)
         (increase (total-cost) 21)
     )
    )

    (:action transition480-3
     :parameters ()
     :precondition (and
         (in s480)
     )
     :effect (and
         (not (in s480))
         (in s460)
         (increase (total-cost) 21)
     )
    )

    (:action transition480-4
     :parameters ()
     :precondition (and
         (in s480)
     )
     :effect (and
         (not (in s480))
         (in s480)
         (increase (total-cost) 30)
     )
    )

    (:action transition480-5
     :parameters ()
     :precondition (and
         (in s480)
     )
     :effect (and
         (not (in s480))
         (in s480)
         (increase (total-cost) 30)
     )
    )

    (:action transition481-0
     :parameters ()
     :precondition (and
         (in s481)
     )
     :effect (and
         (not (in s481))
         (in s481)
         (increase (total-cost) 21)
     )
    )

    (:action transition481-1
     :parameters ()
     :precondition (and
         (in s481)
     )
     :effect (and
         (not (in s481))
         (in s381)
         (increase (total-cost) 21)
     )
    )

    (:action transition481-2
     :parameters ()
     :precondition (and
         (in s481)
     )
     :effect (and
         (not (in s481))
         (in s481)
         (increase (total-cost) 21)
     )
    )

    (:action transition481-3
     :parameters ()
     :precondition (and
         (in s481)
     )
     :effect (and
         (not (in s481))
         (in s461)
         (increase (total-cost) 21)
     )
    )

    (:action transition481-4
     :parameters ()
     :precondition (and
         (in s481)
     )
     :effect (and
         (not (in s481))
         (in s481)
         (increase (total-cost) 30)
     )
    )

    (:action transition481-5
     :parameters ()
     :precondition (and
         (in s481)
     )
     :effect (and
         (not (in s481))
         (in s481)
         (increase (total-cost) 30)
     )
    )

    (:action transition482-0
     :parameters ()
     :precondition (and
         (in s482)
     )
     :effect (and
         (not (in s482))
         (in s482)
         (increase (total-cost) 21)
     )
    )

    (:action transition482-1
     :parameters ()
     :precondition (and
         (in s482)
     )
     :effect (and
         (not (in s482))
         (in s382)
         (increase (total-cost) 21)
     )
    )

    (:action transition482-2
     :parameters ()
     :precondition (and
         (in s482)
     )
     :effect (and
         (not (in s482))
         (in s482)
         (increase (total-cost) 21)
     )
    )

    (:action transition482-3
     :parameters ()
     :precondition (and
         (in s482)
     )
     :effect (and
         (not (in s482))
         (in s462)
         (increase (total-cost) 21)
     )
    )

    (:action transition482-4
     :parameters ()
     :precondition (and
         (in s482)
     )
     :effect (and
         (not (in s482))
         (in s482)
         (increase (total-cost) 30)
     )
    )

    (:action transition482-5
     :parameters ()
     :precondition (and
         (in s482)
     )
     :effect (and
         (not (in s482))
         (in s482)
         (increase (total-cost) 30)
     )
    )

    (:action transition483-0
     :parameters ()
     :precondition (and
         (in s483)
     )
     :effect (and
         (not (in s483))
         (in s483)
         (increase (total-cost) 21)
     )
    )

    (:action transition483-1
     :parameters ()
     :precondition (and
         (in s483)
     )
     :effect (and
         (not (in s483))
         (in s383)
         (increase (total-cost) 21)
     )
    )

    (:action transition483-2
     :parameters ()
     :precondition (and
         (in s483)
     )
     :effect (and
         (not (in s483))
         (in s483)
         (increase (total-cost) 21)
     )
    )

    (:action transition483-3
     :parameters ()
     :precondition (and
         (in s483)
     )
     :effect (and
         (not (in s483))
         (in s463)
         (increase (total-cost) 21)
     )
    )

    (:action transition483-4
     :parameters ()
     :precondition (and
         (in s483)
     )
     :effect (and
         (not (in s483))
         (in s483)
         (increase (total-cost) 30)
     )
    )

    (:action transition483-5
     :parameters ()
     :precondition (and
         (in s483)
     )
     :effect (and
         (not (in s483))
         (in s483)
         (increase (total-cost) 30)
     )
    )

    (:action transition484-0
     :parameters ()
     :precondition (and
         (in s484)
     )
     :effect (and
         (not (in s484))
         (in s484)
         (increase (total-cost) 21)
     )
    )

    (:action transition484-1
     :parameters ()
     :precondition (and
         (in s484)
     )
     :effect (and
         (not (in s484))
         (in s384)
         (increase (total-cost) 21)
     )
    )

    (:action transition484-2
     :parameters ()
     :precondition (and
         (in s484)
     )
     :effect (and
         (not (in s484))
         (in s484)
         (increase (total-cost) 21)
     )
    )

    (:action transition484-3
     :parameters ()
     :precondition (and
         (in s484)
     )
     :effect (and
         (not (in s484))
         (in s464)
         (increase (total-cost) 21)
     )
    )

    (:action transition484-4
     :parameters ()
     :precondition (and
         (in s484)
     )
     :effect (and
         (not (in s484))
         (in s484)
         (increase (total-cost) 30)
     )
    )

    (:action transition484-5
     :parameters ()
     :precondition (and
         (in s484)
     )
     :effect (and
         (not (in s484))
         (in s484)
         (increase (total-cost) 30)
     )
    )

    (:action transition485-0
     :parameters ()
     :precondition (and
         (in s485)
     )
     :effect (and
         (not (in s485))
         (in s485)
         (increase (total-cost) 21)
     )
    )

    (:action transition485-1
     :parameters ()
     :precondition (and
         (in s485)
     )
     :effect (and
         (not (in s485))
         (in s385)
         (increase (total-cost) 21)
     )
    )

    (:action transition485-2
     :parameters ()
     :precondition (and
         (in s485)
     )
     :effect (and
         (not (in s485))
         (in s485)
         (increase (total-cost) 21)
     )
    )

    (:action transition485-3
     :parameters ()
     :precondition (and
         (in s485)
     )
     :effect (and
         (not (in s485))
         (in s465)
         (increase (total-cost) 21)
     )
    )

    (:action transition485-4
     :parameters ()
     :precondition (and
         (in s485)
     )
     :effect (and
         (not (in s485))
         (in s485)
         (increase (total-cost) 30)
     )
    )

    (:action transition485-5
     :parameters ()
     :precondition (and
         (in s485)
     )
     :effect (and
         (not (in s485))
         (in s485)
         (increase (total-cost) 30)
     )
    )

    (:action transition486-0
     :parameters ()
     :precondition (and
         (in s486)
     )
     :effect (and
         (not (in s486))
         (in s486)
         (increase (total-cost) 21)
     )
    )

    (:action transition486-1
     :parameters ()
     :precondition (and
         (in s486)
     )
     :effect (and
         (not (in s486))
         (in s386)
         (increase (total-cost) 21)
     )
    )

    (:action transition486-2
     :parameters ()
     :precondition (and
         (in s486)
     )
     :effect (and
         (not (in s486))
         (in s486)
         (increase (total-cost) 21)
     )
    )

    (:action transition486-3
     :parameters ()
     :precondition (and
         (in s486)
     )
     :effect (and
         (not (in s486))
         (in s466)
         (increase (total-cost) 21)
     )
    )

    (:action transition486-4
     :parameters ()
     :precondition (and
         (in s486)
     )
     :effect (and
         (not (in s486))
         (in s486)
         (increase (total-cost) 30)
     )
    )

    (:action transition486-5
     :parameters ()
     :precondition (and
         (in s486)
     )
     :effect (and
         (not (in s486))
         (in s486)
         (increase (total-cost) 30)
     )
    )

    (:action transition487-0
     :parameters ()
     :precondition (and
         (in s487)
     )
     :effect (and
         (not (in s487))
         (in s487)
         (increase (total-cost) 21)
     )
    )

    (:action transition487-1
     :parameters ()
     :precondition (and
         (in s487)
     )
     :effect (and
         (not (in s487))
         (in s387)
         (increase (total-cost) 21)
     )
    )

    (:action transition487-2
     :parameters ()
     :precondition (and
         (in s487)
     )
     :effect (and
         (not (in s487))
         (in s487)
         (increase (total-cost) 21)
     )
    )

    (:action transition487-3
     :parameters ()
     :precondition (and
         (in s487)
     )
     :effect (and
         (not (in s487))
         (in s467)
         (increase (total-cost) 21)
     )
    )

    (:action transition487-4
     :parameters ()
     :precondition (and
         (in s487)
     )
     :effect (and
         (not (in s487))
         (in s487)
         (increase (total-cost) 30)
     )
    )

    (:action transition487-5
     :parameters ()
     :precondition (and
         (in s487)
     )
     :effect (and
         (not (in s487))
         (in s487)
         (increase (total-cost) 30)
     )
    )

    (:action transition488-0
     :parameters ()
     :precondition (and
         (in s488)
     )
     :effect (and
         (not (in s488))
         (in s488)
         (increase (total-cost) 21)
     )
    )

    (:action transition488-1
     :parameters ()
     :precondition (and
         (in s488)
     )
     :effect (and
         (not (in s488))
         (in s388)
         (increase (total-cost) 21)
     )
    )

    (:action transition488-2
     :parameters ()
     :precondition (and
         (in s488)
     )
     :effect (and
         (not (in s488))
         (in s488)
         (increase (total-cost) 21)
     )
    )

    (:action transition488-3
     :parameters ()
     :precondition (and
         (in s488)
     )
     :effect (and
         (not (in s488))
         (in s468)
         (increase (total-cost) 21)
     )
    )

    (:action transition488-4
     :parameters ()
     :precondition (and
         (in s488)
     )
     :effect (and
         (not (in s488))
         (in s488)
         (increase (total-cost) 30)
     )
    )

    (:action transition488-5
     :parameters ()
     :precondition (and
         (in s488)
     )
     :effect (and
         (not (in s488))
         (in s488)
         (increase (total-cost) 30)
     )
    )

    (:action transition489-0
     :parameters ()
     :precondition (and
         (in s489)
     )
     :effect (and
         (not (in s489))
         (in s489)
         (increase (total-cost) 21)
     )
    )

    (:action transition489-1
     :parameters ()
     :precondition (and
         (in s489)
     )
     :effect (and
         (not (in s489))
         (in s389)
         (increase (total-cost) 21)
     )
    )

    (:action transition489-2
     :parameters ()
     :precondition (and
         (in s489)
     )
     :effect (and
         (not (in s489))
         (in s489)
         (increase (total-cost) 21)
     )
    )

    (:action transition489-3
     :parameters ()
     :precondition (and
         (in s489)
     )
     :effect (and
         (not (in s489))
         (in s469)
         (increase (total-cost) 21)
     )
    )

    (:action transition489-4
     :parameters ()
     :precondition (and
         (in s489)
     )
     :effect (and
         (not (in s489))
         (in s489)
         (increase (total-cost) 30)
     )
    )

    (:action transition489-5
     :parameters ()
     :precondition (and
         (in s489)
     )
     :effect (and
         (not (in s489))
         (in s489)
         (increase (total-cost) 30)
     )
    )

    (:action transition490-0
     :parameters ()
     :precondition (and
         (in s490)
     )
     :effect (and
         (not (in s490))
         (in s490)
         (increase (total-cost) 21)
     )
    )

    (:action transition490-1
     :parameters ()
     :precondition (and
         (in s490)
     )
     :effect (and
         (not (in s490))
         (in s390)
         (increase (total-cost) 21)
     )
    )

    (:action transition490-2
     :parameters ()
     :precondition (and
         (in s490)
     )
     :effect (and
         (not (in s490))
         (in s490)
         (increase (total-cost) 21)
     )
    )

    (:action transition490-3
     :parameters ()
     :precondition (and
         (in s490)
     )
     :effect (and
         (not (in s490))
         (in s470)
         (increase (total-cost) 21)
     )
    )

    (:action transition490-4
     :parameters ()
     :precondition (and
         (in s490)
     )
     :effect (and
         (not (in s490))
         (in s490)
         (increase (total-cost) 30)
     )
    )

    (:action transition490-5
     :parameters ()
     :precondition (and
         (in s490)
     )
     :effect (and
         (not (in s490))
         (in s490)
         (increase (total-cost) 30)
     )
    )

    (:action transition491-0
     :parameters ()
     :precondition (and
         (in s491)
     )
     :effect (and
         (not (in s491))
         (in s491)
         (increase (total-cost) 21)
     )
    )

    (:action transition491-1
     :parameters ()
     :precondition (and
         (in s491)
     )
     :effect (and
         (not (in s491))
         (in s391)
         (increase (total-cost) 21)
     )
    )

    (:action transition491-2
     :parameters ()
     :precondition (and
         (in s491)
     )
     :effect (and
         (not (in s491))
         (in s491)
         (increase (total-cost) 21)
     )
    )

    (:action transition491-3
     :parameters ()
     :precondition (and
         (in s491)
     )
     :effect (and
         (not (in s491))
         (in s471)
         (increase (total-cost) 21)
     )
    )

    (:action transition491-4
     :parameters ()
     :precondition (and
         (in s491)
     )
     :effect (and
         (not (in s491))
         (in s491)
         (increase (total-cost) 30)
     )
    )

    (:action transition491-5
     :parameters ()
     :precondition (and
         (in s491)
     )
     :effect (and
         (not (in s491))
         (in s491)
         (increase (total-cost) 30)
     )
    )

    (:action transition492-0
     :parameters ()
     :precondition (and
         (in s492)
     )
     :effect (and
         (not (in s492))
         (in s492)
         (increase (total-cost) 21)
     )
    )

    (:action transition492-1
     :parameters ()
     :precondition (and
         (in s492)
     )
     :effect (and
         (not (in s492))
         (in s392)
         (increase (total-cost) 21)
     )
    )

    (:action transition492-2
     :parameters ()
     :precondition (and
         (in s492)
     )
     :effect (and
         (not (in s492))
         (in s492)
         (increase (total-cost) 21)
     )
    )

    (:action transition492-3
     :parameters ()
     :precondition (and
         (in s492)
     )
     :effect (and
         (not (in s492))
         (in s472)
         (increase (total-cost) 21)
     )
    )

    (:action transition492-4
     :parameters ()
     :precondition (and
         (in s492)
     )
     :effect (and
         (not (in s492))
         (in s492)
         (increase (total-cost) 30)
     )
    )

    (:action transition492-5
     :parameters ()
     :precondition (and
         (in s492)
     )
     :effect (and
         (not (in s492))
         (in s492)
         (increase (total-cost) 30)
     )
    )

    (:action transition493-0
     :parameters ()
     :precondition (and
         (in s493)
     )
     :effect (and
         (not (in s493))
         (in s493)
         (increase (total-cost) 21)
     )
    )

    (:action transition493-1
     :parameters ()
     :precondition (and
         (in s493)
     )
     :effect (and
         (not (in s493))
         (in s393)
         (increase (total-cost) 21)
     )
    )

    (:action transition493-2
     :parameters ()
     :precondition (and
         (in s493)
     )
     :effect (and
         (not (in s493))
         (in s493)
         (increase (total-cost) 21)
     )
    )

    (:action transition493-3
     :parameters ()
     :precondition (and
         (in s493)
     )
     :effect (and
         (not (in s493))
         (in s473)
         (increase (total-cost) 21)
     )
    )

    (:action transition493-4
     :parameters ()
     :precondition (and
         (in s493)
     )
     :effect (and
         (not (in s493))
         (in s493)
         (increase (total-cost) 30)
     )
    )

    (:action transition493-5
     :parameters ()
     :precondition (and
         (in s493)
     )
     :effect (and
         (not (in s493))
         (in s493)
         (increase (total-cost) 30)
     )
    )

    (:action transition494-0
     :parameters ()
     :precondition (and
         (in s494)
     )
     :effect (and
         (not (in s494))
         (in s494)
         (increase (total-cost) 21)
     )
    )

    (:action transition494-1
     :parameters ()
     :precondition (and
         (in s494)
     )
     :effect (and
         (not (in s494))
         (in s394)
         (increase (total-cost) 21)
     )
    )

    (:action transition494-2
     :parameters ()
     :precondition (and
         (in s494)
     )
     :effect (and
         (not (in s494))
         (in s494)
         (increase (total-cost) 21)
     )
    )

    (:action transition494-3
     :parameters ()
     :precondition (and
         (in s494)
     )
     :effect (and
         (not (in s494))
         (in s474)
         (increase (total-cost) 21)
     )
    )

    (:action transition494-4
     :parameters ()
     :precondition (and
         (in s494)
     )
     :effect (and
         (not (in s494))
         (in s494)
         (increase (total-cost) 30)
     )
    )

    (:action transition494-5
     :parameters ()
     :precondition (and
         (in s494)
     )
     :effect (and
         (not (in s494))
         (in s494)
         (increase (total-cost) 30)
     )
    )

    (:action transition495-0
     :parameters ()
     :precondition (and
         (in s495)
     )
     :effect (and
         (not (in s495))
         (in s495)
         (increase (total-cost) 21)
     )
    )

    (:action transition495-1
     :parameters ()
     :precondition (and
         (in s495)
     )
     :effect (and
         (not (in s495))
         (in s395)
         (increase (total-cost) 21)
     )
    )

    (:action transition495-2
     :parameters ()
     :precondition (and
         (in s495)
     )
     :effect (and
         (not (in s495))
         (in s495)
         (increase (total-cost) 21)
     )
    )

    (:action transition495-3
     :parameters ()
     :precondition (and
         (in s495)
     )
     :effect (and
         (not (in s495))
         (in s475)
         (increase (total-cost) 21)
     )
    )

    (:action transition495-4
     :parameters ()
     :precondition (and
         (in s495)
     )
     :effect (and
         (not (in s495))
         (in s495)
         (increase (total-cost) 30)
     )
    )

    (:action transition495-5
     :parameters ()
     :precondition (and
         (in s495)
     )
     :effect (and
         (not (in s495))
         (in s495)
         (increase (total-cost) 30)
     )
    )

    (:action transition496-0
     :parameters ()
     :precondition (and
         (in s496)
     )
     :effect (and
         (not (in s496))
         (in s496)
         (increase (total-cost) 21)
     )
    )

    (:action transition496-1
     :parameters ()
     :precondition (and
         (in s496)
     )
     :effect (and
         (not (in s496))
         (in s396)
         (increase (total-cost) 21)
     )
    )

    (:action transition496-2
     :parameters ()
     :precondition (and
         (in s496)
     )
     :effect (and
         (not (in s496))
         (in s496)
         (increase (total-cost) 21)
     )
    )

    (:action transition496-3
     :parameters ()
     :precondition (and
         (in s496)
     )
     :effect (and
         (not (in s496))
         (in s476)
         (increase (total-cost) 21)
     )
    )

    (:action transition496-4
     :parameters ()
     :precondition (and
         (in s496)
     )
     :effect (and
         (not (in s496))
         (in s496)
         (increase (total-cost) 30)
     )
    )

    (:action transition496-5
     :parameters ()
     :precondition (and
         (in s496)
     )
     :effect (and
         (not (in s496))
         (in s496)
         (increase (total-cost) 30)
     )
    )

    (:action transition497-0
     :parameters ()
     :precondition (and
         (in s497)
     )
     :effect (and
         (not (in s497))
         (in s497)
         (increase (total-cost) 21)
     )
    )

    (:action transition497-1
     :parameters ()
     :precondition (and
         (in s497)
     )
     :effect (and
         (not (in s497))
         (in s397)
         (increase (total-cost) 21)
     )
    )

    (:action transition497-2
     :parameters ()
     :precondition (and
         (in s497)
     )
     :effect (and
         (not (in s497))
         (in s497)
         (increase (total-cost) 21)
     )
    )

    (:action transition497-3
     :parameters ()
     :precondition (and
         (in s497)
     )
     :effect (and
         (not (in s497))
         (in s477)
         (increase (total-cost) 21)
     )
    )

    (:action transition497-4
     :parameters ()
     :precondition (and
         (in s497)
     )
     :effect (and
         (not (in s497))
         (in s497)
         (increase (total-cost) 30)
     )
    )

    (:action transition497-5
     :parameters ()
     :precondition (and
         (in s497)
     )
     :effect (and
         (not (in s497))
         (in s497)
         (increase (total-cost) 30)
     )
    )

    (:action transition498-0
     :parameters ()
     :precondition (and
         (in s498)
     )
     :effect (and
         (not (in s498))
         (in s498)
         (increase (total-cost) 21)
     )
    )

    (:action transition498-1
     :parameters ()
     :precondition (and
         (in s498)
     )
     :effect (and
         (not (in s498))
         (in s398)
         (increase (total-cost) 21)
     )
    )

    (:action transition498-2
     :parameters ()
     :precondition (and
         (in s498)
     )
     :effect (and
         (not (in s498))
         (in s498)
         (increase (total-cost) 21)
     )
    )

    (:action transition498-3
     :parameters ()
     :precondition (and
         (in s498)
     )
     :effect (and
         (not (in s498))
         (in s478)
         (increase (total-cost) 21)
     )
    )

    (:action transition498-4
     :parameters ()
     :precondition (and
         (in s498)
     )
     :effect (and
         (not (in s498))
         (in s498)
         (increase (total-cost) 30)
     )
    )

    (:action transition498-5
     :parameters ()
     :precondition (and
         (in s498)
     )
     :effect (and
         (not (in s498))
         (in s498)
         (increase (total-cost) 30)
     )
    )

    (:action transition499-0
     :parameters ()
     :precondition (and
         (in s499)
     )
     :effect (and
         (not (in s499))
         (in s499)
         (increase (total-cost) 21)
     )
    )

    (:action transition499-1
     :parameters ()
     :precondition (and
         (in s499)
     )
     :effect (and
         (not (in s499))
         (in s399)
         (increase (total-cost) 21)
     )
    )

    (:action transition499-2
     :parameters ()
     :precondition (and
         (in s499)
     )
     :effect (and
         (not (in s499))
         (in s499)
         (increase (total-cost) 21)
     )
    )

    (:action transition499-3
     :parameters ()
     :precondition (and
         (in s499)
     )
     :effect (and
         (not (in s499))
         (in s479)
         (increase (total-cost) 21)
     )
    )

    (:action transition499-4
     :parameters ()
     :precondition (and
         (in s499)
     )
     :effect (and
         (not (in s499))
         (in s499)
         (increase (total-cost) 30)
     )
    )

    (:action transition499-5
     :parameters ()
     :precondition (and
         (in s499)
     )
     :effect (and
         (not (in s499))
         (in s499)
         (increase (total-cost) 30)
     )
    )

)
