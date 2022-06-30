;Chrome on Windows does not force close when Ctrl+Shift+w is accidentally pressed
SoftName=WarnChromeQuit

;Parameter API=============================================================
;Auto-execute
#HotkeyInterval 1000
#MaxHotkeysPerInterval 100
#NoEnv
SetBatchLines, -1
ListLines, Off
SendMode Event
#UseHook
;/Parameter  API=============================================================

;MENU  API===================================================================
#Persistent
#SingleInstance ignore
menu, tray, NoStandard
menu, tray, Tip ,%SoftName% ver. %varVERSION%
menu, tray, add, Check_Update
menu, tray, add, Exit
;/MENU API==================================================================
return

;--------------------------------------------------------------------------------startup↑
Check_Update:
	TrayTip, , %SoftName% ver. %varVERSION%, 10, 16
	Run www.github.com/enthumble/WarnChromeQuit
return

Exit:
	TrayTip, ,ByeBye, 10, 16
	sleep 1000
	ExitApp
return

SetTitleMatchMode,2 ;部分一致

;shift+ctrl+w refuse quit @chrome
#IfWinActive ahk_class Chrome_WidgetWin_0
+^w::
MsgBox, 308, , WARNING`n`Quit Chrome?
IfMsgBox, No
    {
        ;do nothing
    }
IfMsgBox, Yes
    Send, {ctrl down}{shift down}{w}{shift up}{ctrl up}
return

#IfWinActive ahk_class Chrome_WidgetWin_1
+^w::
MsgBox, 308, , WARNING`n`Quit Chrome?
IfMsgBox, No
    {
        ;do nothing
    }
IfMsgBox, Yes
    Send, {ctrl down}{shift down}{w}{shift up}{ctrl up}
return

#IfWinActive ahk_class Chrome_WidgetWin_2
+^w::
MsgBox, 308, , WARNING`n`Quit Chrome?
IfMsgBox, No
    {
        ;do nothing
    }
IfMsgBox, Yes
    Send, {ctrl down}{shift down}{w}{shift up}{ctrl up}
return

#IfWinActive ahk_class Chrome_WidgetWin_3
+^w::
MsgBox, 308, , WARNING`n`Quit Chrome?
IfMsgBox, No
    {
        ;do nothing
    }
IfMsgBox, Yes
    Send, {ctrl down}{shift down}{w}{shift up}{ctrl up}
return

#IfWinActive ahk_class Chrome_WidgetWin_4
+^w::
MsgBox, 308, , WARNING`n`Quit Chrome?
IfMsgBox, No
    {
        ;do nothing
    }
IfMsgBox, Yes
    Send, {ctrl down}{shift down}{w}{shift up}{ctrl up}
return

#IfWinActive