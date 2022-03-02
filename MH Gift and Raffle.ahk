#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


Rand(min, max){
    Random, rand, min, max
    return rand
}

;VRift Random, y, 1030, 1035
Random, y, 1004, 1009

`::ExitApp

F8::
CoordMode, Mouse, screen

Run, https://www.mousehuntgame.com/friends.php
Sleep % Rand(4400, 4500)

MouseClick, L, % Rand(1, 400), % Rand(150, 1000)
Sleep % Rand(210, 220)

Send ^{0}
Sleep % Rand(350, 360)

Send ^{WheelUp}
Sleep % Rand(390, 399)

Send ^{WheelUp}
Sleep % Rand(310, 320)

Loop, 20
{
	MouseClick, L, % Rand(1150, 1195), y
	Sleep % Rand(100, 120)

	MouseClick, L, % Rand(1220, 1270), y
	Sleep % Rand(140, 150)

	Send {Down 3}
	Sleep % Rand(180, 190)
}

Send ^{0}

ExitApp
