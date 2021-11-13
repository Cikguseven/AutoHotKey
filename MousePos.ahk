#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#Persistent
CoordMode, ToolTip, screen
CoordMode, Mouse, Screen

SetTimer, WatchCursor, 50

WatchCursor:
MouseGetPos, x, y

ToolTip, x: %x% y: %y%, 1920, 0

`::ExitApp