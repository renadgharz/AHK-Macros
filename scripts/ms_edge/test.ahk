#Persistent ; (Interception hotkeys do not stop AHK from exiting, so use this)
#include ..\Lib\AutoHotInterception.ahk

AHI := new AutoHotInterception()

keyboardId := AHI.GetKeyboardId(0x1EA7, 0x0066)
AHI.SubscribeKeyboard(keyboardId, true, Func("KeyEvent"))
return

KeyEvent(code, state){

if (state=1) & (code=71){
	Send, ^r
}

}