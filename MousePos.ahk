#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#Persistent
CoordMode, ToolTip, screen
SetTimer, WatchCursor, 50
`::ExitApp
return

WatchCursor:
CoordMode, mouse, Screen ; Coordinates are relative to the desktop (entire screen).
MouseGetPos, x, y, id_1, control_1

ToolTip, x: %x% y: %y%, % A_ScreenWidth-0, % A_ScreenHeight-1080
return