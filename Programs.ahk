#NoEnv ;recommended for performance and compatibility with future AutoHotkey releases.
#Warn ;enable warnings to assist with detecting common errors.
SendMode Input ;recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir% ;ensures a consistent starting directory.
#SingleInstance force

#NoTrayIcon
;changing the tray icon
;Menu, Tray, Icon, %A_ScriptDir%/programsIcon.ico
;return

;updates and reloads scripts on Ctrl+S
~^s::
    SetTitleMatchMode, 2
    IfWinActive, .ahk
    {
        Send, ^s
        SplashTextOn,,,Updated script!,
        Sleep,750
        SplashTextOff
        Reload
    }
    else
        Send, ^s
return

;hotkey to launch a google search of any highlighted text using Alt + Space
!Space::
    {
        Send, ^c
        Sleep 50
        Run, http://www.google.com/search?q=%clipboard%
        return
    }
    ;programs
    
    ;firefox
#f::
    IfWinExist, ahk_class MozillaWindowClass
    { WinActivate
        Send ^t
        Sleep 1000
    }
    else
        Run, "C:\Program Files\Mozilla Firefox\firefox.exe"
return

;Mail
F8:: Run, "shell:AppsFolder\microsoft.windowscommunicationsapps_8wekyb3d8bbwe!microsoft.windowslive.mail"

;unity Hub
#u:: Run, "D:\Programs\UnityHub\Unity Hub\Unity Hub.exe"

;vsCode
#v:: Run, "C:\Users\Shubham\AppData\Local\Programs\Microsoft VS Code\code.exe"

;qBitTorrent
#q:: Run, "D:\Programs\qBittorrent\qbittorrent.exe"

;steam
#s:: Run, "E:\Steam\Steam.exe"

;terminal
#c:: Run, "C:\Users\Shubham\AppData\Local\hyper\Hyper.exe"

;Your Phone
#p:: Run, "shell:AppsFolder\Microsoft.YourPhone_8wekyb3d8bbwe!App"

;urls

;gitHub
#g:: Run, "https://github.com/shubham-saudolla"

;youTube
#y:: Run, "https://www.youtube.com/"

;whatsApp web
#w:: Run, "https://web.whatsapp.com"
