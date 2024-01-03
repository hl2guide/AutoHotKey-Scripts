#Requires AutoHotkey v2.0

; Script Version: 1.0

; Allows for faster seeking when using Twitch VODs since the site refuses to add the feature.
; Only works for if an active window has a Twitch video loaded.

; Binds:
; Ctrl+Left - Seeks 30s backwards
; Alt+Left - Seeks 60s backwards
; Ctrl+Right - Seeks 30s forwards
; Alt+Right - Seeks 60s forwards

; Seeks 30s backwards
; Ctrl + Left
^Left::
{
    Title := ""
    ;Title := WinGetActiveTitle
    Title := WinGetTitle("A")
    if(InStr(Title, " - Twitch"))
    {
        Send "{Left}"
        Sleep 400
        Send "{Left}"
        Sleep 400
        Send "{Left}"
    }
}

; Seeks 30s forwards
; Ctrl + Right
^Right::
{
    Title := ""
    ;Title := WinGetActiveTitle
    Title := WinGetTitle("A")
    if(InStr(Title, " - Twitch"))
    {
        Send "{Right}"
        Sleep 400
        Send "{Right}"
        Sleep 400
        Send "{Right}"
    }
}

; Seeks 60s backwards
; Alt + Left
!Left::
{
    Title := ""
    ;Title := WinGetActiveTitle
    Title := WinGetTitle("A")
    if(InStr(Title, " - Twitch"))
    {
        Send "{Left}"
        Sleep 400
        Send "{Left}"
        Sleep 400
        Send "{Left}"
        Sleep 400
        Send "{Left}"
        Sleep 400
        Send "{Left}"
        Sleep 400
        Send "{Left}"
    }
}

; Seeks 60s forwards
; Alt + Right
!Right::
{
    Title := ""
    ;Title := WinGetActiveTitle
    Title := WinGetTitle("A")
    if(InStr(Title, " - Twitch"))
    {
        Send "{Right}"
        Sleep 400
        Send "{Right}"
        Sleep 400
        Send "{Right}"
        Sleep 400
        Send "{Right}"
        Sleep 400
        Send "{Right}"
        Sleep 400
        Send "{Right}"
    }
}
