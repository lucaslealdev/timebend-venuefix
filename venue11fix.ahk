#InstallKeybdHook
SendMode Input

Volume_Mute::F1
F1::Volume_Mute

$*Volume_Down::
if GetKeyState("Volume_Down","P"){
	Send {Blind}{Volume_Down}
}else{
	Send {Blind}{F2}
}
return

F2::Volume_Down

$*Volume_Up::
if GetKeyState("Volume_Up","P"){
	Send {Blind}{Volume_Up}
}else{
	Send {Blind}{F3}
}
return

F3::Volume_Up

Media_Play_Pause::F4
F4::Media_Play_Pause

Browser_Search::F5
F5::Browser_Search

LWin & F21:: 
	GetKeyState, state, Alt
	if state = D
		Send, {F6}
	else
		Send, {F8}
Return

F6::#!F21
F8::#F21

LControl & F21:: 
	GetKeyState, state, LWin
	if state = D
		Send, {F7}
Return 

F7::#^F21

LControl & F20:: 
	GetKeyState, state, LWin
	if state = D
		Send, {F9}
Return 
F9::#^F20

AppsKey::F10
F10::AppsKey
