#Requires Autohotkey v2.0
#SingleInstance

CoordMode "Mouse","Window"
#HotIf WinActive("ahk_exe balabolka.exe")
~WheelUp::
    {MouseGetPos &xpos,&ypos
    if (xpos<400)
        {SendEvent "^{up}"
        }
    else
        {Send "{WheelUp}"
        }
    }


~WheelDown::{
    MouseGetPos &xpos,&ypos
    if (xpos<400){
        SendEvent "^{down}"
        }
    else
        {Send "{WheelDown}"
        }
    }

#HotIf