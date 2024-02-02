#Persistent
SetWorkingDir %A_ScriptDir%

; Mappatura di tasti con formattazione generica
>!+à::SendInput, {U+00C0}
+ò::SendInput, {U+00D2}
>!+ò::SendInput, ç
>!+ù::SendInput, {U+00D9}
>!u::SendInput, ü
>!+u::SendInput, {U+00DC}
>!+e::SendInput, {U+00C8}
>!\::SendInput, `
>!+\::SendInput, ~
>!d::SendInput, {U+00F8}
>!+d::SendInput, {U+00D8}
<^>!z::SendInput, <
<^>!x::SendInput, >
<^>!l::SendInput, {F23}
<^>!y::SendInput, {U+2713}
<^>!n::SendInput, {U+2717}
<^>!l::SendInput, {U+2517}
<^>!k::SendInput, {U+2523}
<^>!-::SendInput, {AppsKey}

; Pulsanti del mouse
;XButton1::SendInput, {Delete}
;XButton2::SendInput, ^
;XButton2 up::SendInput, ^{Up}
;XButton1 & Xbutton2::SendInput, {Enter}

; Pulsanti del mouse modificati
;~LButton & ~RButton::
;  SendInput, {MButton down}
;  While ( GetKeyState("LButton") AND GetKeyState("RButton") )
;    Continue
;  SendInput, {MButton up}
;Return

~RButton & ~MButton::
	SendInput, {Esc down}
	While ( GetKeyState("RButton") AND GetKeyState("MButton") )
		Continue
	SendInput, {Esc up}
Return

; Doppio clic su CapsLock
*CapsLock::
If (A_ThisHotkey == A_PriorHotkey && A_TimeSincePriorHotkey < 300)
{
	If GetKeyState("CapsLock", "T") 
   		SetCapsLockState, off
	else
   		SetCapsLockState, on
}
Return

; Freccette con CapsLock
SetCapsLockState, AlwaysOff

CapsLock & j:: 
GetKeyState, state, LAlt
if state = D 
   SendInput, +{LEFT}
else
   SendInput, {LEFT}
return

CapsLock & l:: 
GetKeyState, state, LAlt
if state = D 
   SendInput, +{UP}
else
   SendInput, {UP}
return

CapsLock & k:: 
GetKeyState, state, LAlt
if state = D 
   SendInput, +{DOWN}
else
   SendInput, {DOWN}
return

CapsLock & ò:: 
GetKeyState, state, LAlt
if state = D 
   SendInput, +{RIGHT}
else
   SendInput, {RIGHT}
return
