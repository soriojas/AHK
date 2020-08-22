;754px wide
;192 207 top left
;840 1000 bottom right

pause
highlightspeed = 10
setkeydelay, 30
;********EDIT ME***************
startpage = 99
finalpage = 117
header = ch5
;******************************
loopcount := finalpage-startpage
currentpage := startpage

 loop % (loopcount)
 {
  ; mouse over document
  MouseMove, 202 , 227 , 6
  click
  sleep 30

  ; select all
  send {ctrl down}{a down}{a up}{ctrl up}

  ; copy
  send {ctrl down}{c down}{c up}{ctrl up}

  ; next page
  ;MouseMove, 920 , 628, 4
  ;click
  send {right}

  ; change window to wordpad
  send {alt down}{tab down}{tab up}{alt up}

  ; scroll down
  send {ctrl down}{pgdn down}{pgdn up}{ctrl up}

  ; mouse over Wordpad
  MouseMove, 1442 , 970 , 4

  ; paste
  send {ctrl down}{v down}{v up}{ctrl up}

  ; reformat text
  send {ctrl down}{pgdn down}{pgdn up}{ctrl up}{enter}

  ; type header
  currentpage := currentpage+1
  send -- pg%currentpage% %header% --

  ; reformat text
  send {ctrl down}{pgdn down}{pgdn up}{ctrl up}{enter}

  ; change window to document
  send {alt down}{tab down}{tab up}{alt up}

  ; mouse over document
  MouseMove, 202 , 227 , 4
  click
  sleep 30

  ; next page
  ;--removed

  ; wait for page to load
  sleep 2000
 }
 
 
F8::pause