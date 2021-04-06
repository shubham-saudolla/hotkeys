#NoEnv ;recommended for performance and compatibility with future AutoHotkey releases.
#Warn ;enable warnings to assist with detecting common errors.
SendMode Input ;recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir% ;ensures a consistent starting directory.
#SingleInstance force
#NoTrayIcon

;updates and reloads scripts on Ctrl+S
~^s::
    SetTitleMatchMode, 2
    IfWinActive, .ahk
    {
        Send, ^s
        SplashTextOn,,,Updated script!,
        Sleep,1000
        SplashTextOff
        Reload
    }
    else
        Send, ^s
return

;programs

;firefox
F5::
    IfWinExist, ahk_class MozillaWindowClass
    { WinActivate
        Send ^t
        Sleep 1000
    }
    else
        Run, "C:\Program Files\Mozilla Firefox\firefox.exe"
return

;workspace login
F6::
    run cmd.exe
    WinWait, ahk_exe cmd.exe
    Send e:{enter}
    Send cd E:\Projects\ubs-login\{enter}
    Send python login.py{enter}
return

;Mail
F7:: Run, "shell:AppsFolder\microsoft.windowscommunicationsapps_8wekyb3d8bbwe!microsoft.windowslive.mail"

;unity Hub
;#u:: Run, "D:\Programs\UnityHub\Unity Hub\Unity Hub.exe"

;vsCode
#v:: Run, "C:\Users\Shubham\AppData\Local\Programs\Microsoft VS Code\code.exe"

;qBitTorrent
#q:: Run, "D:\Programs\qBittorrent\qbittorrent.exe"

;steam
#s:: Run, "E:\Steam\Steam.exe"

;terminal
#c:: Run, "C:\Users\Shubham\AppData\Local\hyper\Hyper.exe"

;Your Phone
;#p:: Run, "shell:AppsFolder\Microsoft.YourPhone_8wekyb3d8bbwe!App"

;urls

;gitHub
#g:: Run, "https://github.com/shubham-saudolla"

;youTube
#y:: Run, "https://www.youtube.com/"

;whatsApp web
#w:: Run, "https://web.whatsapp.com"



; iTunes
; NumpadEnter::
;     If ProcessExist("iTunes.exe") && ProcessExist("Last.fm Desktop Scrobbler.exe")
;     {
;         Run, nircmd closeprocess iTunes.exe
;         Run, nircmd closeprocess "C:\Program Files (x86)\Last.fm\Last.fm Desktop Scrobbler\Last.fm Desktop Scrobbler.exe"
;     }
;     Else
;     {
;         Run, "C:\Program Files\iTunes\iTunes.exe"
;         Run, "C:\Program Files (x86)\Last.fm\Last.fm Desktop Scrobbler\Last.fm Desktop Scrobbler.exe"
;     }

;     ProcessExist(Name){
;         Process,Exist,%Name%
;         return Errorlevel
;     }
; Return