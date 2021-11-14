#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


Rand(min, max){
    Random, rand, min, max
    return rand
}

Random, y, 1030, 1033

`::ExitApp

F8::
CoordMode, Mouse, screen

Run, https://www.mousehuntgame.com/friends.php
Sleep % Rand(3899, 4050)

Send ^{0}
Sleep % Rand(290, 311)

Send ^{WheelUp}
Sleep % Rand(240, 261)

Send ^{WheelUp}
Sleep % Rand(300, 312)

Loop, 15
{
	MouseClick, L, % Rand(1150, 1195), y
	Sleep % Rand(301, 309)

	MouseClick, L, % Rand(1220, 1270), y
	Sleep % Rand(301, 309)

	Send {Down}
	Sleep % Rand(199, 223)

	Send {Down}
	Sleep % Rand(189, 233)

	Send {Down}
	Sleep % Rand(199, 213)
}

Loop, 5
{
	MouseClick, L, % Rand(1220, 1270), y
	Sleep % Rand(301, 309)

	Send {Down}
	Sleep % Rand(199, 223)

	Send {Down}
	Sleep % Rand(189, 233)

	Send {Down}
	Sleep % Rand(199, 213)
}

ExitApp
