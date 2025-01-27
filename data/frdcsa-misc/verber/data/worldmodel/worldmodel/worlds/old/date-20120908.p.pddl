(define (problem date-20120902)

 (:domain date-20120902)

 (:objects
  andrew-dougherty - person
  date-20120821 date-20120822 date-20120823 date-20120824 date-20120825 date-20120826 date-20120827 - date
  Monday Tuesday Wednesday Thursday Friday Saturday Sunday - day

  outside - location

  den - officeroom
  den-door - door
  basement-door - door
  garage - space
  garage-door - door
  crawl-space - space
  crawl-space-door - door
  garage-entry-way - entry-way
  basement-to-entry-stairwell - stairwell
  entry - entry-way
  coat-closet - closet
  front-door - perimeter-door
  entry-to-first-floor-stairwell - stairwell
  living-room - room
  guest-bathroom - bathroom
  dining-room - room
  dining-room-closet - closet
  kitchen - room
  kitchen-closet - closet
  balcony - space
  balcony-door - perimeter-door
  first-floor-to-landing-stairwell - stairwell
  landing - landing
  landing-closet - closet
  landing-to-second-floor-stairwell - stairwell
  second-floor-landing - landing
  utility-room - space
  bedroom - room
  bedroom-closet - closet
  upstairs-bathroom - bathroom

  walmart-oswego starbucks-aurora caribou-coffee-batavia - store

  towel-1 towel-2 towel-3 - towel

  clothing-grey-shirt-1 clothing-grey-shirt-2 clothing-blue-shirt-1 clothing-green-shirt-1 - shirt
  clothing-khaki-shorts-1 clothing-khaki-shorts-2 - pants
  
  upstairs-washer - laundry-washing-machine
  upstairs-dryer - laundry-dryer-machine

  couch guestbed - bed
  upstairs-bathroom-outlets kitchen-outlets den-outlets - outlet
  upstairs-shower - shower
  columcille-computer - laptop
  dennis-computer - computer
  laptop-backpack - lockable-container
  den - office
  townhome - building
  woodmans tigerdirect frys cvs-indian-trail-and-orchard - store
  cell-phone bluetooth-headset - battery-powered-device
  finger-clippers towel-1 towel-2 towel-3 shampoo - hygiene-tool
  hair-trimmers food-cans shirts can-opener hair-brush - stuff
  padlock shampoo wallet sleeping-bag camouflage - stuff
  computer-desk - desk

  meal-velveeta-shells-and-cheese meal-palek-paneer meal-pindi-chana meal-miso-soup - mealtype

  laundry-load - laundry-load

  electric-razor-0 - electric-razor

  )

 (:init
  ;; relatively necessary facts
  (has-door garage-door garage outside)
  (has-door basement-door garage garage-entry-way)
  (has-door crawl-space-door crawl-space garage-entry-way)
  (has-door front-door entry outside)
  (has-door balcony-door balcony dining-room)
  (has-door den-door den garage-entry-way)

  ;; somewhat necessary facts
  (autonomous andrew-dougherty)

  (at-location den townhome)
  (at-location garage townhome)
  (at-location crawl-space townhome)
  (at-location garage-entry-way townhome)
  (at-location basement-to-entry-stairwell townhome)
  (at-location entry townhome)
  (at-location coat-closet townhome)
  (at-location entry-to-first-floor-stairwell townhome)
  (at-location living-room townhome)
  (at-location guest-bathroom townhome)
  (at-location dining-room townhome)
  (at-location dining-room-closet townhome)
  (at-location kitchen townhome)
  (at-location kitchen-closet townhome)
  (at-location balcony townhome)
  (at-location first-floor-to-landing-stairwell townhome)
  (at-location landing townhome)
  (at-location landing-closet townhome)
  (at-location landing-to-second-floor-stairwell townhome)
  (at-location second-floor-landing townhome)
  (at-location utility-room townhome)
  (at-location bedroom townhome)
  (at-location bedroom-closet townhome)
  (at-location upstairs-bathroom townhome)

  ;; store hours
  (at 0 (inaccessible walmart-oswego))
  (at 7 (not (inaccessible walmart-oswego)))

  (at 0 (isolated living-room))
  (at 7 (not (isolated living-room)))
  (at 23 (isolated living-room))
  (at 31 (not (isolated living-room)))

  ;; APPARENTLY DOESN'T WORK
  ;; (at 1 (= (hunger-level andrew-dougherty) 0.5))
  ;; (at 1 (assign (hunger-level andrew-dougherty) 0.5))
  ;; (at 1 (decrease (hunger-level andrew-dougherty) 0.5))

  (at 0 (today date-20120821))
  (at 24 (not (today date-20120821)))
  (at 24 (today date-20120822))
  (at 48 (not (today date-20120822)))
  (at 48 (today date-20120823))
  (at 72 (not (today date-20120823)))
  (at 72 (today date-20120824))
  (at 96 (not (today date-20120824)))
  (at 96 (today date-20120825))
  (at 120 (not (today date-20120825)))
  (at 120 (today date-20120826))
  (at 144 (not (today date-20120826)))
  (at 144 (today date-20120827))
  (at 168 (not (today date-20120827)))

  (weekday date-20120821)
  (day-of-week date-20120821 Tuesday)
  (weekday date-20120822)
  (day-of-week date-20120822 Wednesday)
  (weekday date-20120823)
  (day-of-week date-20120823 Thursday)
  (weekday date-20120824)
  (day-of-week date-20120824 Friday)
  (weekday date-20120825)
  (day-of-week date-20120825 Saturday)
  (day-of-week date-20120826 Sunday)
  (day-of-week date-20120827 Monday)

  ;; contingent facts stuff
  (= (quantity meal-velveeta-shells-and-cheese kitchen-closet) 1)
  (= (quantity meal-miso-soup kitchen-closet) 3)
  (= (quantity meal-palek-paneer kitchen-closet) 2)
  (= (quantity meal-pindi-chana kitchen-closet) 2)

  (locked-door garage-door)
  (locked-door basement-door)
  (locked-door front-door)
  (= (cash andrew-dougherty) 49)

  (at-location electric-razor-0 upstairs-bathroom)
  (at-location laundry-load bedroom)
  (at-location towel-1 bedroom)
  (at-location towel-2 bedroom)
  (at-location towel-3 bedroom)

  (at-location laptop-backpack den)
  (at-location finger-clippers den)

  (at-location upstairs-washer utility-room)
  (at-location upstairs-dryer utility-room)
  (at-location guestbed bedroom)
  (at-location couch living-room)

  (at-location upstairs-bathroom-outlets upstairs-bathroom)
  (at-location kitchen-outlets kitchen)
  (at-location den-outlets den)

  (at-location upstairs-shower upstairs-bathroom)
  (at-location andrew-dougherty den)
  (at-location columcille-computer living-room)
  (at-location dennis-computer den)

  (= (fee-for-use upstairs-washer) 0)
  (= (fee-for-use upstairs-dryer) 0)

  (plugged-in dennis-computer)

  (mobile laptop-backpack)
  (mobile electric-razor-0)
  (mobile towel-1)
  (mobile towel-2)
  (mobile towel-3)
  (mobile laundry-load)
  (mobile columcille-computer)
  (mobile finger-clippers)
  (mobile cell-phone)
  (mobile bluetooth-headset)
  (mobile clothing-grey-shirt-1)
  (mobile clothing-grey-shirt-2)
  (mobile clothing-khaki-shorts-1)
  (mobile clothing-khaki-shorts-2)
  (mobile clothing-blue-shirt-1)
  (mobile clothing-green-shirt-1)

  (exhausted andrew-dougherty)

  (= (hunger-level andrew-dougherty) 1)

  (= (speed andrew-dougherty) 1)
  (= (actions) 0)
  (= (total-walking-distance) 0)

  (= (charge-level cell-phone) 0.1)
  (= (charge-rate cell-phone) 1)
  (= (discharge-rate cell-phone) 0.07)

  (= (charge-level columcille-computer) 1)
  (= (charge-rate columcille-computer) 0.6)
  (= (discharge-rate columcille-computer) 0.3)

  (= (charge-level bluetooth-headset) 0.3)
  (= (charge-rate bluetooth-headset) 0.5)
  (= (discharge-rate bluetooth-headset) 0.01) ;; fixme

  (= (charge-level electric-razor-0) 0.0)
  (= (charge-rate electric-razor-0) 0.5)
  (= (discharge-rate electric-razor-0) 2.5)

  (= (hours-worked-on-date Andrew-Dougherty date-20120821) 0)
  (= (hours-worked-on-date Andrew-Dougherty date-20120822) 0)
  (= (hours-worked-on-date Andrew-Dougherty date-20120823) 0)
  (= (hours-worked-on-date Andrew-Dougherty date-20120824) 0)

  ;; (use-is-required finger-clippers)

  (has-permission-to-use Andrew-Dougherty upstairs-bathroom)

  (at-location computer-desk den)

  ;; (dirty computer-desk)

  (dirty upstairs-bathroom)
  (dirty den)
  (dirty garage)

  (dirty towel-1)
  (dirty towel-2)
  (dirty towel-3)


  (dirty clothing-grey-shirt-1)
  (dirty clothing-grey-shirt-2)
  (dirty clothing-khaki-shorts-1)
  (dirty clothing-khaki-shorts-2)
  (dirty clothing-blue-shirt-1)
  (dirty clothing-green-shirt-1)

  (at-location clothing-grey-shirt-1 bedroom)
  (at-location clothing-grey-shirt-2 bedroom)
  (at-location clothing-khaki-shorts-1 bedroom)
  (at-location clothing-khaki-shorts-2 bedroom)
  (at-location clothing-blue-shirt-1 bedroom)
  (at-location clothing-green-shirt-1 bedroom)

  (wearing Andrew-Dougherty clothing-grey-shirt-1)
  (wearing Andrew-Dougherty clothing-khaki-shorts-1)

  (= (rate-of-eating Andrew-Dougherty) 5.0)
  (= (how-filling meal-miso-soup Andrew-Dougherty) 0.7)
  (= (how-filling meal-velveeta-shells-and-cheese Andrew-Dougherty) 1.0)
  (= (how-filling meal-pindi-chana Andrew-Dougherty) 0.4)
  (= (how-filling meal-palek-paneer Andrew-Dougherty) 0.4)
  )

 (:goal 
  (and
   ;; (is-contained-by clothing-grey-shirt-1 laundry-load)
   ;; (not (dirty clothing-grey-shirt-1))
   ;; (and
   ;;  (ready-for-work Andrew-Dougherty)
   ;;  (<= (hunger-level andrew-dougherty) 0.25)
   ;;  (>= (hours-worked-on-date Andrew-Dougherty date-20120821) 1)
   ;;  )
   (location-is-clean townhome)
   ;; ;; (autonomous andrew-dougherty)
   )
  )

 (:metric minimize (+
		    (+ 
		     (total-time) 
		     (actions))
		    (total-walking-distance)))

 )

;; (clip finger nails)
;; (have regular hair cuts)
;; (dispose of all clothes that I don't regularly wear, or that are
;;  worn at all
;;  (donate some)
;;  (throw out others))
;; (buy a lot of new clothes)
;; (buy new socks, underwear)
;; (donate belts)
;; (buy workout clothes)
;; (shower every three days)
;; (regular dental cleaning)
;; (quit pop)
;; (get on top of candida)
;; (get rid of the dust)
;; (security cameras)
;; (?cleaning lady?)

;; (undo the damage of the new laundry system, or wait some more
;; answer back from LPG-td folks, fork actually, and then - be sure to
;; use git repo for all of this)

;; (add planning for the placement of the headset)




;; (add trips to the gym)
;; (read and process the mail with paperless office)
;; (go to the grocery)
;; (take out the trash)
;; (completed (clean the bathroom))
;; (completed (clean the computer room))
;; (remove pops)
;; (get breakfast)
;; (have enough time to go to the bathroom after breakfast, and not have food coma when starting work)
;; (do online purchases)
;; (do offline purchases)
;; (have social time)
;; (have AI time)
;; (work)
;; (integrate the goals of SPSE2)
;; (plan other agents days as well)
;; (hygiene domain)
;; (classes)
;; (cooking)

;; (in the morning when ready for work
;;  (clean desk)
;;  (clean den)?
;;  (exists (pop-1 - pop)
;;   (and
;;    (at-location pop-1 refrigerator)
;;    (chilled pop-1)
;;    ))
;;  (clean upstairs-bathroom)
;;  (full water-machine)
;;  (exists (glass-1 - glass)
;;   (and
;;    (at-location glass-1 desk)
;;    (clean glass-1)
;;    ))
;;  (not (needs-to-use Andrew-Dougherty upstairs-bathroom))
;;  (not (tired Andrew-Dougherty))
;;  (not (overheated Andrew-Dougherty))
;;  (has-clean-clothes-on Andrew-Dougherty)
;;  (showered Andrew-Dougherty)

;; (planning system
;;           (add bedtimes)
;;           (add breakfast
;;                (eat cereal if nothing else is available))
;;           (add morning car trips)
;;           )

;; (add times to read newsfeeds)

;; (make a daily schedule instead of a plan)

;; (clean office every two days)

;; (reduce the amount of driving I do)

;; (use the primitive: (total-time))

;; (contemplate switching from types (i.e. closet - room) to preconditions like (is-closet ?room))

;; (add action to refill meds)
;; (prepare trash the day before they should be taken out, so it actually gets done)
;; (go to gym)

;; (pay-day date-20121001)
;; (pay-day date-20121015)
;; (pay-day date-20121101)
;; (pay-day date-20121115)
;; (pay-day date-20121201)
;; (pay-day date-20121215)
;; (pay-day date-20130101)
;; (pay-day date-20130115)
;; (pay-day date-20130201)
;; (pay-day date-20130215)
;; (pay-day date-20130301)
;; (pay-day date-20130315)
;; (pay-day date-20130401)
;; (pay-day date-20130415)
;; (pay-day date-20130501)
;; (pay-day date-20130515)
;; (pay-day date-20130601)
;; (pay-day date-20130615)
;; (pay-day date-20130701)
;; (pay-day date-20130715)
;; (pay-day date-20130801)
;; (pay-day date-20130815)
;; (pay-day date-20130831)
;; (pay-day date-20130914)
;; (pay-day date-20131001)
;; (pay-day date-20131015)
;; (pay-day date-20131101)
;; (pay-day date-20131115)
;; (pay-day date-20131130)
;; (pay-day date-20131214)
;; (pay-day date-20140101)
;; (pay-day date-20140115)
