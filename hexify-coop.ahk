if not A_IsAdmin
{
   run *runas "%A_ScriptFullPath%"
   exitapp
}

#NoEnv
sendmode input
setworkingdir %A_ScriptDir%

Menu, Tray, NoStandard 
Menu, Tray, Add, Exit, Cease
Menu, Tray, Default, Exit 

global colraw

updcol()
{
    ifnotexist %A_ScriptDir%\data\picker.config
        run https://www.color-hex.com/
    inputbox colraw, hexify-coop configuration, A window should've opened in your browser`n`nInput your chat color in hex (first character must be a poundsign; 6 other chars)
    if errorlevel
        msgbox 0, hexify-coop notice, Color update canceled.
    else
        filedelete, %A_ScriptDir%\data\col.dat
        fileappend,
        (
        %col%
        ), %A_ScriptDir%\data\col.dat
    msgbox 0, hexify-coop notice, You can re-enter your color code at any time by pressing ctrl+shift+d.`n`nKeep in mind that your chat hotkey must be set to Enter!
}

ifnotexist %A_ScriptDir%\data\setup.config
    updcol()

~^+d::
    updcol()
return

~^+e::
    clipboard = \%colraw%\
    send ^v
return

~^+r::
    clipboard = \#FFFFFF\
    send ^v
return

#if winactive("sm64ex-coop")
~Enter::
    send {Enter}
    clipboard = \%colraw%\
    send ^v
return

Cease:
    ExitApp
return
