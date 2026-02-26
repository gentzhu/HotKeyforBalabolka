#SingleInstance Force
#Requires AutoHotkey v2.0
CoordMode "Mouse","Screen"
/* #HotIf thewin("ahk_id 656796", "ahk_exe SumatraPDF.exe")
thewin(WinTitle, WinTitle2) {   
TTS_ID:=WinActive(WinTitle)
PDF_ID:=WinActive(WinTitle2)
if (TTS_ID || PDF_ID)
    { ;MsgBox true
        return true
    }
else
    { ;MsgBox false
        return false
    }    
} */
#HotIf WinActive("ahk_exe balabolka.exe")
WheelUp::
    {MouseGetPos &xpos,&ypos
    if (5<xpos && xpos<400)
        {  
          ;  ControlSend "^{Left}",,"ahk_exe balabolka.exe"
            ;WinActivate "ahk_exe balabolka.exe"
            SendEvent "^{Left}"
            ;hwnd1:=WinGetTitle("A")
            ;MsgBox hwnd1,,"T0.25"
        }
    else
        { ; MsgBox "x不在范围内",,"T1"
           Send "{WheelUp}"
        }
    }

WheelDown::{
    MouseGetPos &xpos,&ypos
    if (5<xpos && xpos<400){
        ;ControlSend "^{Right}",,"ahk_exe balabolka.exe"
        SendEvent "^{Right}"
        }
    else
        {Send "{WheelDown}"
        }
    }
#HotIf