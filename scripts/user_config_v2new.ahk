; ====================
; === INSTRUCTIONS ===
; ====================
; 1. Any lines starting with ; are ignored
; 2. After changing this config file run script file "desktop_switcher.ahk"
; 3. Every line is in the format HOTKEY::ACTION

; === SYMBOLS ===
; !   <- Alt
; +   <- Shift
; ^   <- Ctrl
; #   <- Win
; For more, visit https://autohotkey.com/docs/Hotkeys.htm
; === EXAMPLES ===
; !n::switchDesktopToRight()             <- <Alt> + <N> will switch to the next desktop (to the right of the current one)
; #!space::switchDesktopToRight()        <- <Win> + <Alt> + <Space> will switch to next desktop
; CapsLock & n::switchDesktopToRight()   <- <CapsLock> + <N> will switch to the next desktop (& is necessary when using non-modifier key such as CapsLock)

; ===========================
; === END OF INSTRUCTIONS ===
; ===========================

; General remapping script for AutoHotkey

; The behaviour is such that the control key is located on the home
; row. CapsLock serve as Control, but with one detail: when
; pressed alone (fast enough), it has a different behaviour. When
; CapsLock is pressed fast, it behaves as a Escape key

; These ideas came from three blog posts, targeted at Mac users:
; 
; http://batsov.com/articles/2012/12/06/emacs-tip-number-7-remap-return-to-control-in-osx/
; http://brettterpstra.com/2012/12/08/a-useful-caps-lock-key/
; http://stevelosh.com/blog/2012/10/a-modern-space-cadet/

; The basic algorithm come from this discussion:
; https://superuser.com/questions/223831/remap-a-key-depending-on-whether-it-was-pressed-alone-or-not

; The limit for 'fast enough' is 150 ms, but this may change

; I am still learning AutoHotkey, so there is much room to improve

; ---
;-- when pressing CapsLock alone, it will activate the Escpae button

SetCapsLockState("AlwaysOff")
CapsLock::Esc
!Tab::!Esc
!Esc::^!Tab

+!h::
{ ; V1toV2: Added bracket
Send("^#{Left}")
return
} ; V1toV2: Added Bracket before hotkey or Hotstring
+!l::
{ ; V1toV2: Added bracket
Send("^#{Right}")
return

;k::Send {Up}
;Hotkey, k,off
;CapsLock & k::
;GetKeyState, state,CapsLock,P
;If state=D
;{
;   Send {Up}
;   Hotkey, k, off  
;   return
;}
;Return
;j::Send {Down}
;Hotkey, j,off
;CapsLock & j::
;GetKeyState, state,CapsLock,P
;If state=D
;{
;   Send {Down}
;   Hotkey, j, off  
;   return
;}
;Return
;l::Send {Right}
;Hotkey, l,off
;CapsLock & l::
;GetKeyState, state,CapsLock,P
;If state=D
;{
;   Send {Right}
;   Hotkey, l, off  
;   return
;}
;Return
;CapsLock & h::
;GetKeyState, state,CapsLock,P
;If state=D
;{
;   Send {Left}
;;   Hotkey, h, off
;   return
;}
;Return
} ; V1toV2: Added Bracket before hotkey or Hotstring
#A::
{ ; V1toV2: Added bracket
switchDesktopByNumber(1)
Send("!{Esc}")
;sleep 100
;Send !{Esc}
return
} ; V1toV2: Added Bracket before hotkey or Hotstring

#S::
{ ; V1toV2: Added bracket
switchDesktopByNumber(2)
Send("!{Esc}")
;sleep 100
;Send !{Esc}
return
} ; V1toV2: Added Bracket before hotkey or Hotstring

#X::
{ ; V1toV2: Added bracket
WinClose("A")
return
} ; V1toV2: Added Bracket before hotkey or Hotstring

#J::
{ ; V1toV2: Added bracket
switchDesktopByNumber(4)
Send("!{Esc}")
;sleep 100
;Send !{Esc}
return
} ; V1toV2: Added Bracket before hotkey or Hotstring

#M::
{ ; V1toV2: Added bracket
switchDesktopByNumber(5)
Send("!{Esc}")
;sleep 100
;Send !{Esc}
return
} ; V1toV2: Added Bracket before hotkey or Hotstring
#D::
{ ; V1toV2: Added bracket
switchDesktopByNumber(6)
Send("!{Esc}")
;sleep 100
;Send !{Esc}
return
} ; V1toV2: Added Bracket before hotkey or Hotstring
#C::
{ ; V1toV2: Added bracket
switchDesktopByNumber(3)
Send("!{Esc}")
;sleep 100
;Send !{Esc} 
return
} ; V1toV2: Added Bracket before hotkey or Hotstring

#Space::
{ ; V1toV2: Added bracket
Send("{F11}")
return
} ; V1toV2: Added Bracket before hotkey or Hotstring
PgUp::CapsLock
#!h::
{ ; V1toV2: Added bracket
return
} ; V1toV2: Added Bracket before hotkey or Hotstring
#k::
{ ; V1toV2: Added bracket
return
} ; V1toV2: Added Bracket before hotkey or Hotstring
#^a::
{ ; V1toV2: Added bracket
return
} ; V1toV2: Added Bracket before hotkey or Hotstring
#^f::
{ ; V1toV2: Added bracket
return
} ; V1toV2: Added Bracket before hotkey or Hotstring
#^d::
{ ; V1toV2: Added bracket
return
} ; V1toV2: Added Bracket before hotkey or Hotstring
#^s::
{ ; V1toV2: Added bracket
return
} ; V1toV2: Added Bracket before hotkey or Hotstring
#!k::
{ ; V1toV2: Added bracket
return
} ; V1toV2: Added Bracket before hotkey or Hotstring
#^l::
{ ; V1toV2: Added bracket
return
} ; V1toV2: Added Bracket before hotkey or Hotstring
#^j::
{ ; V1toV2: Added bracket
return

; Win+Alt+G - Open Gmail in Chrome
} ; V1toV2: Added Bracket before hotkey or Hotstring
#q::
{ ; V1toV2: Added bracket
WinKill("A")
} ; V1toV2: Added Bracket before hotkey or Hotstring
#Enter::
{ ; V1toV2: Added bracket
    Run("`"nu`"")
    Return
} ; V1toV2: Added Bracket before hotkey or Hotstring
#+f::
{ ; V1toV2: Added bracket
    Run("lf")
    Return
} ; V1toV2: Added Bracket before hotkey or Hotstring
#n::
{ ; V1toV2: Added bracket
    Run("nu C:\Users\yasha\dotfiles\scripts\nf.nu")
    Return
} ; V1toV2: Added Bracket before hotkey or Hotstring
#e::
; Run microsoft-edge:https://this-page-intentionally-left-blank.org/ 
{ ; V1toV2: Added bracket
Run("`"brave`"")
Return 
} ; V1toV2: Added Bracket before hotkey or Hotstring
#+j::
; Run microsoft-edge:https://this-page-intentionally-left-blank.org/ 
{ ; V1toV2: Added bracket
Run("xournalpp")
Return 
; Win+Shift+Break - Edit this file
} ; V1toV2: Added Bracket before hotkey or Hotstring
CapsLock & Numpad1::switchDesktopByNumber(1)
CapsLock & Numpad2::switchDesktopByNumber(2)
CapsLock & Numpad3::switchDesktopByNumber(3)
CapsLock & Numpad4::switchDesktopByNumber(4)
CapsLock & Numpad5::switchDesktopByNumber(5)
CapsLock & Numpad6::switchDesktopByNumber(6)
CapsLock & Numpad7::switchDesktopByNumber(7)
CapsLock & Numpad8::switchDesktopByNumber(8)
CapsLock & Numpad9::switchDesktopByNumber(9)


; === INSTRUCTIONS ===
; Below is the alternate key configuration. Delete symbol ; in the beginning of the line to enable.
; Note, that  ^!1  means "Ctrl + Alt + 1" and  ^#1  means "Ctrl + Win + 1"
; === END OF INSTRUCTIONS ===

; ^!1::switchDesktopByNumber(1)
; ^!2::switchDesktopByNumber(2)
; ^!3::switchDesktopByNumber(3)
; ^!4::switchDesktopByNumber(4)
; ^!5::switchDesktopByNumber(5)
; ^!6::switchDesktopByNumber(6)
; ^!7::switchDesktopByNumber(7)
; ^!8::switchDesktopByNumber(8)
; ^!9::switchDesktopByNumber(9)

; ^!Numpad1::switchDesktopByNumber(1)
; ^!Numpad2::switchDesktopByNumber(2)
; ^!Numpad3::switchDesktopByNumber(3)
; ^!Numpad4::switchDesktopByNumber(4)
; ^!Numpad5::switchDesktopByNumber(5)
; ^!Numpad6::switchDesktopByNumber(6)
; ^!Numpad7::switchDesktopByNumber(7)
; ^!Numpad8::switchDesktopByNumber(8)
; ^!Numpad9::switchDesktopByNumber(9)

; ^!n::switchDesktopToRight()
; ^!p::switchDesktopToLeft()
; ^!s::switchDesktopToRight()
; ^!a::switchDesktopToLeft()
; ^!tab::switchDesktopToLastOpened()

; ^!c::createVirtualDesktop()
; ^!d::deleteVirtualDesktop()

; ^#1::MoveCurrentWindowToDesktop(1)
; ^#2::MoveCurrentWindowToDesktop(2)
; ^#3::MoveCurrentWindowToDesktop(3)
; ^#4::MoveCurrentWindowToDesktop(4)
; ^#5::MoveCurrentWindowToDesktop(5)
; ^#6::MoveCurrentWindowToDesktop(6)
; ^#7::MoveCurrentWindowToDesktop(7)
; ^#8::MoveCurrentWindowToDesktop(8)
; ^#9::MoveCurrentWindowToDesktop(9)

; ^#Numpad1::MoveCurrentWindowToDesktop(1)
; ^#Numpad2::MoveCurrentWindowToDesktop(2)
; ^#Numpad3::MoveCurrentWindowToDesktop(3)
; ^#Numpad4::MoveCurrentWindowToDesktop(4)
; ^#Numpad5::MoveCurrentWindowToDesktop(5)
; ^#Numpad6::MoveCurrentWindowToDesktop(6)
; ^#Numpad7::MoveCurrentWindowToDesktop(7)
; ^#Numpad8::MoveCurrentWindowToDesktop(8)
; ^#Numpad9::MoveCurrentWindowToDesktop(9)

; ^#Right::MoveCurrentWindowToRightDesktop()
; ^#Left::MoveCurrentWindowToLeftDesktop()



; === INSTRUCTIONS ===
; Additional alternative shortcut for moving current window to left or right desktop (ctrl+shift+Win+left/right)
; === END OF INSTRUCTIONS ===

; ^#+Right::MoveCurrentWindowToRightDesktop()
; ^#+Left::MoveCurrentWindowToLeftDesktop() 
