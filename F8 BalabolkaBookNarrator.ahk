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
 
return