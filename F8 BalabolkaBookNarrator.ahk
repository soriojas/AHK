;754px wide
;192 207 top left
;840 1000 bottom right

pause
highlightspeed = 10
setkeydelay, 30
;********EDIT ME***************
startpage = 99
finalpage = 117
;******************************
loopcount := finalpage-startpage
currentpage = 0

 loop % (loopcount)
 {
  ; type page number
  currentpage := startpage+loopcount
  send --%currentpage%-- 
  ; mouse over document
  MouseMove, 202 , 227 , 4
  click
  sleep 30
  ; select all
  send {ctrl down}{a down}{a up}{ctrl up}
  ; copy
  send {ctrl down}{c down}{c up}{ctrl up}
  ; change window to wordpad
  send {alt down}{tab down}{tab up}{alt up}
  ; scroll down
  send {ctrl down}{pgdn down}{pgdn up}{ctrl up}
  ; mouse over Wordpad
  MouseMove, 1442 , 970 , 4
  ; paste
  send {ctrl down}{v down}{v up}{ctrl up}
  ; reformat text
  ;                            |            |      |
  ;send {ctrl down}{up}{ctrl up}{right}{right}{space}{right}{right}{right}{right}{right}{right}{right}{space}{right}{space}{ctrl down}{pgdn down}{pgdn up}{ctrl up}{enter}
  send {ctrl down}{pgdn down}{pgdn up}{ctrl up}{enter}
  ; change window to document
  send {alt down}{tab down}{tab up}{alt up}
  ; mouse over document
  MouseMove, 202 , 227 , 4
  click
  sleep 30
  ; next page
  ;MouseMove, 920 , 628, 4
  ;click
  send {right}
  ; wait for page to load
  sleep 2000
 }
 
 
F8::pause