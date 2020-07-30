
(define (problem footwear) (:domain footwear)
  (:objects
        beach0 - place
	beach1 - place
	beach2 - place
	beach3 - place
	beach4 - place
	beach5 - place
	foot1 - foot
	foot2 - foot
	forest0 - place
	forest1 - place
	forest2 - place
	forest3 - place
	forest4 - place
	forest5 - place
	gym0 - place
	gym1 - place
	gym2 - place
	gym3 - place
	gym4 - place
	gym5 - place
	home - place
	office0 - place
	office1 - place
	office2 - place
	office3 - place
	office4 - place
	office5 - place
	shoe0 - shoe
	shoe1 - shoe
	shoe10 - shoe
	shoe11 - shoe
	shoe12 - shoe
	shoe13 - shoe
	shoe14 - shoe
	shoe15 - shoe
	shoe16 - shoe
	shoe17 - shoe
	shoe18 - shoe
	shoe19 - shoe
	shoe2 - shoe
	shoe20 - shoe
	shoe21 - shoe
	shoe22 - shoe
	shoe23 - shoe
	shoe24 - shoe
	shoe25 - shoe
	shoe26 - shoe
	shoe27 - shoe
	shoe28 - shoe
	shoe29 - shoe
	shoe3 - shoe
	shoe30 - shoe
	shoe31 - shoe
	shoe32 - shoe
	shoe33 - shoe
	shoe34 - shoe
	shoe35 - shoe
	shoe36 - shoe
	shoe37 - shoe
	shoe38 - shoe
	shoe39 - shoe
	shoe4 - shoe
	shoe40 - shoe
	shoe41 - shoe
	shoe42 - shoe
	shoe43 - shoe
	shoe44 - shoe
	shoe45 - shoe
	shoe46 - shoe
	shoe47 - shoe
	shoe5 - shoe
	shoe6 - shoe
	shoe7 - shoe
	shoe8 - shoe
	shoe9 - shoe
	sock0 - sock
	sock1 - sock
	sock10 - sock
	sock11 - sock
	sock12 - sock
	sock13 - sock
	sock14 - sock
	sock15 - sock
	sock16 - sock
	sock17 - sock
	sock18 - sock
	sock19 - sock
	sock2 - sock
	sock20 - sock
	sock21 - sock
	sock22 - sock
	sock23 - sock
	sock24 - sock
	sock25 - sock
	sock26 - sock
	sock27 - sock
	sock28 - sock
	sock29 - sock
	sock3 - sock
	sock30 - sock
	sock31 - sock
	sock32 - sock
	sock33 - sock
	sock34 - sock
	sock35 - sock
	sock36 - sock
	sock37 - sock
	sock38 - sock
	sock39 - sock
	sock4 - sock
	sock5 - sock
	sock6 - sock
	sock7 - sock
	sock8 - sock
	sock9 - sock
  )
  (:init 
	(at home)
	(beach beach0)
	(beach beach1)
	(beach beach2)
	(beach beach3)
	(beach beach4)
	(beach beach5)
	(forest forest0)
	(forest forest1)
	(forest forest2)
	(forest forest3)
	(forest forest4)
	(forest forest5)
	(gym gym0)
	(gym gym1)
	(gym gym2)
	(gym gym3)
	(gym gym4)
	(gym gym5)
	(home home)
	(isbare foot1)
	(isbare foot2)
	(isblue sock10)
	(isblue sock11)
	(isblue sock14)
	(isblue sock15)
	(isblue sock18)
	(isblue sock19)
	(isblue sock20)
	(isblue sock21)
	(isblue sock24)
	(isblue sock25)
	(isblue sock26)
	(isblue sock27)
	(isblue sock2)
	(isblue sock3)
	(isblue sock4)
	(isblue sock5)
	(isboot shoe0)
	(isboot shoe16)
	(isboot shoe17)
	(isboot shoe1)
	(isboot shoe2)
	(isboot shoe30)
	(isboot shoe31)
	(isboot shoe34)
	(isboot shoe35)
	(isboot shoe36)
	(isboot shoe37)
	(isboot shoe3)
	(isboot shoe44)
	(isboot shoe45)
	(isboot shoe6)
	(isboot shoe7)
	(isdressshoe shoe10)
	(isdressshoe shoe11)
	(isdressshoe shoe14)
	(isdressshoe shoe15)
	(isdressshoe shoe18)
	(isdressshoe shoe19)
	(isdressshoe shoe24)
	(isdressshoe shoe25)
	(isdressshoe shoe38)
	(isdressshoe shoe39)
	(isdressshoe shoe42)
	(isdressshoe shoe43)
	(isplain sock14)
	(isplain sock15)
	(isplain sock20)
	(isplain sock21)
	(isplain sock2)
	(isplain sock32)
	(isplain sock33)
	(isplain sock34)
	(isplain sock35)
	(isplain sock38)
	(isplain sock39)
	(isplain sock3)
	(isplain sock4)
	(isplain sock5)
	(isplain sock8)
	(isplain sock9)
	(isred sock0)
	(isred sock12)
	(isred sock13)
	(isred sock16)
	(isred sock17)
	(isred sock1)
	(isred sock22)
	(isred sock23)
	(isred sock28)
	(isred sock29)
	(isred sock30)
	(isred sock31)
	(isred sock32)
	(isred sock33)
	(isred sock34)
	(isred sock35)
	(isred sock36)
	(isred sock37)
	(isred sock38)
	(isred sock39)
	(isred sock6)
	(isred sock7)
	(isred sock8)
	(isred sock9)
	(issandle shoe40)
	(issandle shoe41)
	(issandle shoe46)
	(issandle shoe47)
	(issneaker shoe12)
	(issneaker shoe13)
	(issneaker shoe20)
	(issneaker shoe21)
	(issneaker shoe22)
	(issneaker shoe23)
	(issneaker shoe26)
	(issneaker shoe27)
	(issneaker shoe28)
	(issneaker shoe29)
	(issneaker shoe32)
	(issneaker shoe33)
	(issneaker shoe4)
	(issneaker shoe5)
	(issneaker shoe8)
	(issneaker shoe9)
	(isstriped sock0)
	(isstriped sock10)
	(isstriped sock11)
	(isstriped sock12)
	(isstriped sock13)
	(isstriped sock16)
	(isstriped sock17)
	(isstriped sock18)
	(isstriped sock19)
	(isstriped sock1)
	(isstriped sock22)
	(isstriped sock23)
	(isstriped sock24)
	(isstriped sock25)
	(isstriped sock26)
	(isstriped sock27)
	(isstriped sock28)
	(isstriped sock29)
	(isstriped sock30)
	(isstriped sock31)
	(isstriped sock36)
	(isstriped sock37)
	(isstriped sock6)
	(isstriped sock7)
	(office office0)
	(office office1)
	(office office2)
	(office office3)
	(office office4)
	(office office5)
	(shoefree shoe0)
	(shoefree shoe10)
	(shoefree shoe11)
	(shoefree shoe12)
	(shoefree shoe13)
	(shoefree shoe14)
	(shoefree shoe15)
	(shoefree shoe16)
	(shoefree shoe17)
	(shoefree shoe18)
	(shoefree shoe19)
	(shoefree shoe1)
	(shoefree shoe20)
	(shoefree shoe21)
	(shoefree shoe22)
	(shoefree shoe23)
	(shoefree shoe24)
	(shoefree shoe25)
	(shoefree shoe26)
	(shoefree shoe27)
	(shoefree shoe28)
	(shoefree shoe29)
	(shoefree shoe2)
	(shoefree shoe30)
	(shoefree shoe31)
	(shoefree shoe32)
	(shoefree shoe33)
	(shoefree shoe34)
	(shoefree shoe35)
	(shoefree shoe36)
	(shoefree shoe37)
	(shoefree shoe38)
	(shoefree shoe39)
	(shoefree shoe3)
	(shoefree shoe40)
	(shoefree shoe41)
	(shoefree shoe42)
	(shoefree shoe43)
	(shoefree shoe44)
	(shoefree shoe45)
	(shoefree shoe46)
	(shoefree shoe47)
	(shoefree shoe4)
	(shoefree shoe5)
	(shoefree shoe6)
	(shoefree shoe7)
	(shoefree shoe8)
	(shoefree shoe9)
	(sockfree sock0)
	(sockfree sock10)
	(sockfree sock11)
	(sockfree sock12)
	(sockfree sock13)
	(sockfree sock14)
	(sockfree sock15)
	(sockfree sock16)
	(sockfree sock17)
	(sockfree sock18)
	(sockfree sock19)
	(sockfree sock1)
	(sockfree sock20)
	(sockfree sock21)
	(sockfree sock22)
	(sockfree sock23)
	(sockfree sock24)
	(sockfree sock25)
	(sockfree sock26)
	(sockfree sock27)
	(sockfree sock28)
	(sockfree sock29)
	(sockfree sock2)
	(sockfree sock30)
	(sockfree sock31)
	(sockfree sock32)
	(sockfree sock33)
	(sockfree sock34)
	(sockfree sock35)
	(sockfree sock36)
	(sockfree sock37)
	(sockfree sock38)
	(sockfree sock39)
	(sockfree sock3)
	(sockfree sock4)
	(sockfree sock5)
	(sockfree sock6)
	(sockfree sock7)
	(sockfree sock8)
	(sockfree sock9)
	(socksmatch sock0 sock1)
	(socksmatch sock10 sock11)
	(socksmatch sock11 sock10)
	(socksmatch sock12 sock13)
	(socksmatch sock13 sock12)
	(socksmatch sock14 sock15)
	(socksmatch sock15 sock14)
	(socksmatch sock16 sock17)
	(socksmatch sock17 sock16)
	(socksmatch sock18 sock19)
	(socksmatch sock19 sock18)
	(socksmatch sock1 sock0)
	(socksmatch sock20 sock21)
	(socksmatch sock21 sock20)
	(socksmatch sock22 sock23)
	(socksmatch sock23 sock22)
	(socksmatch sock24 sock25)
	(socksmatch sock25 sock24)
	(socksmatch sock26 sock27)
	(socksmatch sock27 sock26)
	(socksmatch sock28 sock29)
	(socksmatch sock29 sock28)
	(socksmatch sock2 sock3)
	(socksmatch sock30 sock31)
	(socksmatch sock31 sock30)
	(socksmatch sock32 sock33)
	(socksmatch sock33 sock32)
	(socksmatch sock34 sock35)
	(socksmatch sock35 sock34)
	(socksmatch sock36 sock37)
	(socksmatch sock37 sock36)
	(socksmatch sock38 sock39)
	(socksmatch sock39 sock38)
	(socksmatch sock3 sock2)
	(socksmatch sock4 sock5)
	(socksmatch sock5 sock4)
	(socksmatch sock6 sock7)
	(socksmatch sock7 sock6)
	(socksmatch sock8 sock9)
	(socksmatch sock9 sock8)
  )
  (:goal (and
	(presentationdoneat office2)
	(presentationdoneat office1)
	(workedoutat gym1)))
)
