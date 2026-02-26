#Requires Autohotkey v2.0
#SingleInstance

CoordMode "Mouse","Window"
#HotIf WinActive("ahk_exe balabolka.exe")
WheelUp::{
    MouseGetPos &xpos,&ypos
    if (xpos<400){
        SendKey("{^up}",ID)
        }
               
    else
        {Send "{WheelUp}"
        }

    }


WheelDown::{
    MouseGetPos &xpos,&ypos
    if (xpos<400){
        SendKey("{^down}",ID)
        }
    else
        {Send "{WheelDown}"
        }
    }
ID:=WinGetID("ahk_exe balabolka.exe")
SendKey(Key, hWnd){
	VK := GetKeyVK(Key),SC := GetKeySC(Key)
		DllCall("keybd_event", "UChar", VK, "UChar", SC, "UInt", 0, "UPtr", 0)
		Sleep 500
		DllCall("keybd_event", "UChar", VK, "UChar", SC, "UInt", 2, "UPtr", 0)
}

F4::ExitApp