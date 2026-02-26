#SingleInstance Force
#Requires AutoHotkey v2.0
CoordMode "Mouse","Screen"
#HotIf thewin("ahk_id 656796", "ahk_exe SumatraPDF.exe")
thewin(WinTitle, WinTitle2) {   
TTS_ID:=WinActive(WinTitle)
PDF_ID:=WinActive(WinTitle2)
if (TTS_ID || PDF_ID)
    { MsgBox true
        return true
    }
else
    { MsgBox false
        return false
    }    
}
~WheelUp::
    {MouseGetPos &xpos,&ypos
    if (5<xpos && xpos<400)
        {   MsgBox "x在范围内"
            ControlSend "^{Left}",,"ahk_exe balabolka.exe"
        }
    else
        {  MsgBox "x不在范围内"
            Send "{WheelUp}"
        }
    }

~WheelDown::{
    MouseGetPos &xpos,&ypos
    if (5<xpos && xpos<400){
        ControlSend "^{Right}",,"ahk_exe balabolka.exe"
        }
    else
        {Send "{WheelDown}"
        }
    }
#HotIf