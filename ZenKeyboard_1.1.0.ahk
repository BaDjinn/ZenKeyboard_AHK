>!+à::À
    	return
+ò::Ò  
    	return
>!+ò::ç  
    	return
>!+ù::Ù  
    	return
>!u::ü
    	return
>!+u::Ü   
	return 
>!+e::È
	return
>!\::`
	return
>!+\::~
	return    
>!d::ø
    	return
		
>!+d::Ø
    	return		
<^>!z::Send,<
	return
<^>!x::Send,>
	return

;<^>!l::Send,{F23}
;	return

<^>!y::Send,{U+2713}
    	return
<^>!n::Send,{U+2717}
    	return		

<^>!l::send,{U+2517}
		return
<^>!+l::send,{U+250F}
		return	
<^>!i::send,{U+2503}
		return
		
<^>!k::send,{U+2523}
		return		

<^>!-::
KeyWait Control
KeyWait Alt
Send,{AppsKey}
return


;Mouse buttons

;XButton1::Send,{Delete}
;return

;XButton2::Send,{Control down}
;XButton2 up::Send,{Control up}
;return

;XButton1 & Xbutton2:: Send,{Enter}
;return


;~LButton & ~RButton::
;  Send, {MButton down}
;  While ( GetKeyState("LButton") AND GetKeyState("RButton") )
;    Continue
;  Send, {MButton up}
;Return

~RButton & ~MButton::
	Send, {Esc down}
	While ( GetKeyState("RButton") AND GetKeyState("MButton") )
		Continue
	Send, {Esc up}
Return






;CapsLock double click

*CapsLock:: ; Fire the hotkey even if extra modifiers are being held down. 
If (A_ThisHotkey == A_PriorHotkey && A_TimeSincePriorHotkey < 300)
{
	If GetKeyState("CapsLock", "T") 
   		SetCapsLockState, off
	else
   		SetCapsLockState, on
}
Return


;Capslock arrows-------------------------------------------START

SetCapsLockState, AlwaysOff

CapsLock & j:: 
GetKeyState, state, LAlt
if state = D 
   Send +{LEFT}
else
   Send {LEFT}
return

CapsLock & l:: 
GetKeyState, state, LAlt
if state = D 
   Send +{UP}
else
   Send {UP}
return

CapsLock & k:: 
GetKeyState, state, LAlt
if state = D 
   Send +{DOWN}
else
   Send {DOWN}
return

CapsLock & ò:: 
GetKeyState, state, LAlt
if state = D 
   Send +{RIGHT}
else
   Send {RIGHT}
return
;Capslock arrows-------------------------------------------END
