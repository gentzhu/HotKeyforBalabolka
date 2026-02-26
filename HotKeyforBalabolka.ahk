#SingleInstance Force
#Requires AutoHotkey v2.0
#Include ".\clipboardorocr.ahk"

F2::{
clipboardorocr()
If  not WinExist("ahk_exe balabolka.exe")
    {Run "D:\Program Files\Balabolka\balabolka.exe"
    WinWaitActive("ahk_exe balabolka.exe")
    Send  A_Clipboard
}
else {
    WinActivate("ahk_exe balabolka.exe")
    WinWaitActive("ahk_exe balabolka.exe")
    Send "^{F4}"
    Send "N"
    Send  A_Clipboard
}
Send "{F5}"
}