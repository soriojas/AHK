MouseGetPos, xpos, ypos 
MsgBox, The cursor is at X%xpos% Y%ypos%. 

; This example allows you to move the mouse around to see
; the title of the window currently under the cursor:
#Persistent
SetTimer, WatchCursor, 100
return

WatchCursor:
CoordMode, Mouse, Screen ; Comment this for mouse-to-window position.
MouseGetPos, xpos, ypos, id, control
WinGetTitle, title, ahk_id %id%
WinGetClass, class, ahk_id %id%
ToolTip, ahk_id %id%`nahk_class %class%`n%title%`nControl: %control%`nX: %xpos%`nY: %ypos%`n Win+C to popup mouse position.
return

~LWin & C::
MsgBox, The cursor is at X%xpos% Y%ypos%. 
return