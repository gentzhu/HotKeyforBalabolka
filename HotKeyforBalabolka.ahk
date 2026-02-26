#SingleInstance Force
#Requires AutoHotkey v2.0
CoordMode "Mouse","Window"

~WheelUp::
    {MouseGetPos &xpos,&ypos
    if (5<xpos && xpos<400)
        {   ;MsgBox "x在范围内"
            ControlSend "{Left}",,"ahk_exe tts-vue.exe"
        }
    else
        { ; MsgBox "x不在范围内"
            Send "{WheelUp}"
        }
    }

~WheelDown::{
    MouseGetPos &xpos,&ypos
    if (5<xpos && xpos<400){
        ControlSend "{Right}",,"ahk_exe tts-vue.exe"
        }
    else
        {Send "{WheelDown}"
        }
    }
MButton::{
    ImageSearch &FoundX, &FoundY,-453, 497,-174, 486, "C:\Users\zjl\Documents\20240524_103040.png"

}Window:	
#HotIf