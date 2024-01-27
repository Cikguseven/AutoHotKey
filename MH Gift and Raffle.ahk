#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


Rand(min, max){
    Random, rand, min, max
    return rand
}

;Random, y, 1030, 1035 ;VRift 
Random, y, 1004, 1009 ;Floating Islands
;Random, y, 920, 930
;Random, y, 1038, 1039

`::ExitApp

F8::
CoordMode, Mouse, screen

Run, https://www.mousehuntgame.com/friends.php
Sleep % Rand(4000, 4100)

MouseClick, L, % Rand(1, 400), % Rand(150, 1000)
Sleep % Rand(210, 220)

Send ^{0}
Sleep % Rand(350, 360)

Send ^{WheelUp}
Sleep % Rand(490, 499)

Send ^{WheelUp}
Sleep % Rand(210, 220)

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
