;754px wide
;192 207 top left
;840 1000 bottom right
highlightspeed = 10
setkeydelay, 30

F8::
 ; mouse over document
 MouseMove, 202 , 227 , 4
 click
 sleep 30
 ; select all
 send {ctrl down}{a down}{a up}{ctrl up}
 ; copy
 send {ctrl down}{c down}{c up}{ctrl up}
 ; change window
 send {alt down}{tab down}{tab up}{alt up}
 ; scroll down
 send {ctrl down}{pgdn down}{pgdn up}{ctrl up}
 ; mouse over Wordpad
 MouseMove, 1442 , 970 , 4
 ; paste
 send {ctrl down}{v down}{v up}{ctrl up}
 ; reformat text
 ;                            |            |      |
 send {ctrl down}{up}{ctrl up}{right}{right}{space}{right}{right}{right}{right}{right}{right}{right}{space}{right}{space}
 ; next page
 ;MouseMove, 920 , 628, 4
 ;click
 send {right}
 ; wait for page to load
 sleep 2000
return