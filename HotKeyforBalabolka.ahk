#SingleInstance Force
#Requires AutoHotkey v2.0 
;MonitorCount := MonitorGetCount()
;If (MonitorCount=2)
    VirtualScreenWidth:=SysGet(78)-22


CoordMode "Mouse","Screen"
WheelUp::{
	MouseGetPos &xpos,&ypos
	if (xpos>VirtualScreenWidth){
		Send "{Volume_Up}"
	} 
    if (xpos = 0){	
       If WinActive("ahk_exe chrome.exe")
        Send "{Left}"
	}
    else {
        Send "{WheelUp}"
    }
}
WheelDown::{
	MouseGetPos &xpos,&ypos
	if (xpos>VirtualScreenWidth){
        Send "{Volume_Down}"
			}
    if (xpos = 0){
        If WinActive("ahk_exe chrome.exe")
        Send "{Right}"
	} 
    else { 
        Send "{WheelDown}"
    }
}