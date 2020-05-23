#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; Changing the tray icon
Menu, Tray, Icon, %A_ScriptDir%/programsIcon.ico
return

; Updates and reloads scripts on Ctrl+S
~^s::
SetTitleMatchMode, 2
IfWinActive, .ahk
{
    Send, ^s
    SplashTextOn,,,Updated script,
    Sleep,750
    SplashTextOff
    Reload
}
else
    Send, ^s
return

; variables as paths to my programs and urls
firefox = "C:\Program Files\Mozilla Firefox\firefox.exe"

; Unity Hub
#u:: Run, "D:\Programs\UnityHub\Unity Hub\Unity Hub.exe"

; VS Code
#v:: Run, "C:\Users\Shubham\AppData\Local\Programs\Microsoft VS Code\Code.exe"

; Firefox Run, "C:\Program Files\Mozilla Firefox\firefox.exe"
#f::
IfWinExist, ahk_class MozillaWindowClass
{   WinActivate
    Send ^t
    sleep 1000
}
else
    run firefox
return

; GitHub
#g:: Run, "https://github.com/shubham-saudolla"

; YouTube
#y:: Run, "https://www.youtube.com/"

; Gmail Inbox
#i:: Run, "https://mail.google.com/mail/u/1/#inbox"

; Steam
#s:: Run, "E:\Steam\Steam.exe"

; Projects
#p:: Run, "E:\Projects"

; Terminal
#c:: Run, "C:\Users\Shubham\AppData\Local\hyper\Hyper.exe"

; WhatsApp Web
#w:: Run, "https://web.whatsapp.com"

; QBitTorrent
#q:: Run, "D:\Programs\qBittorrent\qbittorrent.exe"
