#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


Loop, 1{
	CoordMode, Mouse, Screen

	Sleep 1000

	Send #d

	Sleep, 300

	MouseClick, L, 67, 1071

	Sleep, 800

	Send, edit{Space}power{Space}plan

	Sleep, 200

	MouseClick, L, 169, 513

	Sleep, 750

	MouseClick, L, 401, 36

	Sleep, 501

	MouseClick, L, 240, 180

	MouseClick, L, 245, 185

	MouseClick, L, 250, 190

	Sleep 200

	MouseClick, L, 1919, 0
}

