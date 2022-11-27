#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance Force
msgbox,32,Hey ! :), Welcome ! Press ctrl + alt + h for help !
^!h:: ; help msgbox
msgbox,32,Help section,
(
ctrl + shift + w -> autoclick (u just need to hold ctrl + w after activation) `n`n 
f5 -> join hideout `n`n f2 -> show timed played on character `n`n 
f3 -> show passives skills point `n`n 
ctrl + alt + t -> open official trade site `n`n 
ctrl + alt + n -> open npc trade cheatsheet `n`n 
ctrl+ alt + c -> open craftofexile site `n`n 
ctrl + alt + s -> open exile global cheat sheet `n`n 
ctrl + alt + a -> open vironlawck patreon page with all his achievement guide `n`n 
ctrl + alt + v -> open vorici chroma calculator
ctrl + alt + l -> open PoE Lab
)
^+w:: ; autoclicker to bulk trade
while GetKeyState("W", "P"){
Click
Sleep 10
}
return

f5:: ; send /hideout to the in game chat
;WinGetTitle, NewTitle, A
;msgbox %NewTitle%
if WinExist("Path of Exile"){
    WinActivate
    Send, {enter}/hideout{enter}
}
else{
    msgbox,48,Cannot join the hideout, I didn't detect PoE has  a running application, are you sure you launched it ?
}
return


f2:: ; send /played to the in game chat
if WinExist("Path of Exile"){
    WinActivate
    Send, {enter}/played{enter}
}
else{
    msgbox,48,Cannot show played time, I didn't detect PoE has  a running application, are you sure you launched it ?
}
return

f3:: ; send /passives to the in game chat
if WinExist("Path of Exile"){
    WinActivate
Send, {enter}/passives{enter}
}
else{
    msgbox,48,Cannot show passives, I didn't detect PoE has  a running application, are you sure you launched it ?
}
return

; third party tool

^!t:: ; run the official trade page
run https://www.pathofexile.com/trade/search/
return

^!n:: ; run the npc trade cheatsheet 
run https://docs.google.com/spreadsheets/d/1vvDNwh4-A8p2JgV7Y-jwfzbmjrNLXRUh8_q0AWgp7O0/edit?usp=sharing
return

^!c:: ; run craft of exile
run https://www.craftofexile.com/?cl=us
return

^!s:: ; run casual exile guide sync on my copy
run https://docs.google.com/spreadsheets/d/14NU6ZD2unp4mx0A-XHmlSpcdlKEkPL3T_VzoILV_8-M/edit?usp=sharing
return

^!a:: ; run achievement patron page (all achievment guides are on)
run https://www.patreon.com/vironlawck
return

^!v:: ; run vorici chroma calculator
run https://siveran.github.io/calc.html
return

^!l:: ; run poe lab 
run https://www.poelab.com/
return

^!d:: ;run poedb
run https://poedb.tw/us
return