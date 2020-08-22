;754px wide
;192 207 top left
;840 1000 bottom right
highlightspeed = 10

F8::
 MouseMove, 202 , 227 , 4
 click, down
 sleep 30
 MouseMove, 840 , 1000 , %highlightspeed%
 click, up
 sleep 30
 ; mouse to copy
 MouseMove, 604 , 232 , %highlightspeed%
return