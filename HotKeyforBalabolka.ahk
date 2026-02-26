#SingleInstance Force
#Requires AutoHotkey v2.0 
#HotIf WinActive("ahk_exe balabolka.exe")


WheelUp::{
	CoordMode "Mouse","Window"
	MouseGetPos &xpos,&ypos
	if (xpos<451){
		ControlFocus "TPlusMemo2"
		ControlSend "{Esc}{^up}","TPlusMemo2"
	}else{	
		Send "{WheelUp}"
	}
}
WheelDown::{
	CoordMode "Mouse","Window"
	MouseGetPos &xpos,&ypos
	if (xpos<451){
		ControlFocus "TPlusMemo2"
		ControlSend "{Esc}{^Down}","TPlusMemo2"
	}else{	
		send "{WheelDown}"
	}
}

