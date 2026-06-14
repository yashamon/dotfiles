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

; This file is intended to be included by the main AutoHotkey v2 script.
; The main script should already contain:
; #Requires AutoHotkey v2.0

SetCapsLockState("AlwaysOff")

; Shared state for SumatraPDF hotkeys
jump := false
mark := false
period := false
markb := false
markc := false
markd := false


CapsLock::Esc
Home::CapsLock

End::{
    Send("{Up}")
}

#Space::{
    Send("{F11}")
}

; !Tab::!Esc

!Esc::{
    Send("^!{Tab}")
}

#h::{
    return
}

+#h::{
    SendEvent("^#{Left}")
    Sleep(20)
    Send("!{Esc}")
}

+#l::{
    SendEvent("^#{Right}")
    Sleep(20)
    Send("!{Esc}")
}


; Desktop switching

#A::{
    switchDesktopByNumber(1)
}

#S::{
    switchDesktopByNumber(2)
}

#C::{
    switchDesktopByNumber(3)
}

#F::{
    switchDesktopByNumber(4)
}

#Z::{
    switchDesktopByNumber(5)
}


; Suppress / reserve these hotkeys

#!h::{
    return
}

#k::{
    return
}

#^a::{
    return
}

#^f::{
    return
}

#^d::{
    return
}

#^s::{
    return
}

#!k::{
    return
}

#^l::{
    return
}

#^j::{
    return
}


; Win+Enter - Open Windows Terminal

#Enter::{
    Run("wt")
}

#+f::{
    Run("lf -config C:\Users\yasha\AppData\Local\lf\lfrc")
}

!Space::{
    Run('"C:\Program Files\Google\Chrome\Application\chrome_proxy.exe" --profile-directory=Default --app-id=lbneikkiodgjddaaeedphegfkehhpnjg')
}

#n::{
    Run("nu -c C:\Users\yasha\OneDrive\workspacemodules\dotfiles\scripts\nf.nu", , "Hide")
}

#+n::{
    Run('"C:\Users\yasha\scoop\apps\neovide\current\neovide.exe" --maximized --no-vsync --no-idle', , "Hide")
}

#e::{
    Run("microsoft-edge:https://this-page-intentionally-left-blank.org/ --start-fullscreen")
    ; Run("brave")
    ; Run("chrome")
}

#+j::{
    Run("onenote")
}


; Win+Shift+Pause/Break - Edit this file
; In AHK v2, Pause is the safer key name here.

#+Pause::{
    Run('"neo" "d:\AutoHotkey.ahk"')
}

#X::{
    WinClose("A")
}


; =========================
; === SumatraPDF hotkeys ===
; =========================

#HotIf WinActive("ahk_class SUMATRA_PDF_FRAME")

.::{
    global jump, mark

    jump := true
    mark := false
}

m::{
    global jump, mark

    mark := true
    jump := false
}

a::{
    global jump, mark, period

    if (jump) {
        Send("!ACa")
        jump := false
    }

    if (mark) {
        Send("^b")
        Sleep(50)
        Send("a")
        Sleep(50)
        SendInput("{Enter}")
    } else {
        Send("a")
    }

    period := false
    mark := false
}

b::{
    global jump, mark, period, markb

    if (jump) {
        Send("!ACb")
        jump := false
    }

    if (mark) {
        Send("^b")
        Sleep(50)
        Send("b")
        Sleep(50)
        SendInput("{Enter}")
        markb := true
    }

    period := false
    mark := false
}

c::{
    global jump, mark, period, markc

    if (jump) {
        Send("!ACc")
        jump := false
    }

    if (mark) {
        Send("^b")
        Sleep(50)
        Send("c")
        Sleep(50)
        SendInput("{Enter}")
        markc := true
    }

    period := false
    mark := false
}

d::{
    global jump, mark, period, markd

    if (jump) {
        Send("!ACd")
        jump := false
    }

    if (mark) {
        Send("^b")
        Sleep(50)
        Send("d")
        Sleep(50)
        SendInput("{Enter}")
        markd := true
    }

    period := false
    mark := false
}

#HotIf


; ===============================
; === Virtual desktop hotkeys ===
; ===============================

; #n::switchDesktopToRight()
; #p::switchDesktopToLeft()

CapsLock & s::{
    switchDesktopToRight()
}

CapsLock & a::{
    switchDesktopToLeft()
}

CapsLock & Tab::{
    switchDesktopToLastOpened()
}

CapsLock & c::{
    createVirtualDesktop()
}

CapsLock & d::{
    deleteVirtualDesktop()
}

#!a::{
    MoveCurrentWindowToDesktop(1)
}

CapsLock & w::{
    MoveCurrentWindowToDesktop(2)
}

CapsLock & e::{
    MoveCurrentWindowToDesktop(3)
}

CapsLock & r::{
    MoveCurrentWindowToDesktop(4)
}

CapsLock & t::{
    MoveCurrentWindowToDesktop(5)
}

CapsLock & y::{
    MoveCurrentWindowToDesktop(6)
}

CapsLock & u::{
    MoveCurrentWindowToDesktop(7)
}

CapsLock & i::{
    MoveCurrentWindowToDesktop(8)
}

CapsLock & o::{
    MoveCurrentWindowToDesktop(9)
}

CapsLock & Right::{
    MoveCurrentWindowToRightDesktop()
}

CapsLock & Left::{
    MoveCurrentWindowToLeftDesktop()
}


; === INSTRUCTIONS ===
; Below is the alternate key configuration. Delete symbol ; in the beginning of the line to enable.
; Note, that ^!1 means "Ctrl + Alt + 1" and ^#1 means "Ctrl + Win + 1"
; === END OF INSTRUCTIONS ===

; ^!1::{
;     switchDesktopByNumber(1)
; }

; ^!2::{
;     switchDesktopByNumber(2)
; }

; ^!3::{
;     switchDesktopByNumber(3)
; }

; ^!4::{
;     switchDesktopByNumber(4)
; }

; ^!5::{
;     switchDesktopByNumber(5)
; }

; ^!6::{
;     switchDesktopByNumber(6)
; }

; ^!7::{
;     switchDesktopByNumber(7)
; }

; ^!8::{
;     switchDesktopByNumber(8)
; }

; ^!9::{
;     switchDesktopByNumber(9)
; }


; ^!Numpad1::{
;     switchDesktopByNumber(1)
; }

; ^!Numpad2::{
;     switchDesktopByNumber(2)
; }

; ^!Numpad3::{
;     switchDesktopByNumber(3)
; }

; ^!Numpad4::{
;     switchDesktopByNumber(4)
; }

; ^!Numpad5::{
;     switchDesktopByNumber(5)
; }

; ^!Numpad6::{
;     switchDesktopByNumber(6)
; }

; ^!Numpad7::{
;     switchDesktopByNumber(7)
; }

; ^!Numpad8::{
;     switchDesktopByNumber(8)
; }

; ^!Numpad9::{
;     switchDesktopByNumber(9)
; }


; ^!n::{
;     switchDesktopToRight()
; }

; ^!p::{
;     switchDesktopToLeft()
; }

; ^!s::{
;     switchDesktopToRight()
; }

; ^!a::{
;     switchDesktopToLeft()
; }

; ^!Tab::{
;     switchDesktopToLastOpened()
; }


; ^!c::{
;     createVirtualDesktop()
; }

; ^!d::{
;     deleteVirtualDesktop()
; }


; ^#1::{
;     MoveCurrentWindowToDesktop(1)
; }

; ^#2::{
;     MoveCurrentWindowToDesktop(2)
; }

; ^#3::{
;     MoveCurrentWindowToDesktop(3)
; }

; ^#4::{
;     MoveCurrentWindowToDesktop(4)
; }

; ^#5::{
;     MoveCurrentWindowToDesktop(5)
; }

; ^#6::{
;     MoveCurrentWindowToDesktop(6)
; }

; ^#7::{
;     MoveCurrentWindowToDesktop(7)
; }

; ^#8::{
;     MoveCurrentWindowToDesktop(8)
; }

; ^#9::{
;     MoveCurrentWindowToDesktop(9)
; }


; ^#Numpad1::{
;     MoveCurrentWindowToDesktop(1)
; }

; ^#Numpad2::{
;     MoveCurrentWindowToDesktop(2)
; }

; ^#Numpad3::{
;     MoveCurrentWindowToDesktop(3)
; }

; ^#Numpad4::{
;     MoveCurrentWindowToDesktop(4)
; }

; ^#Numpad5::{
;     MoveCurrentWindowToDesktop(5)
; }

; ^#Numpad6::{
;     MoveCurrentWindowToDesktop(6)
; }

; ^#Numpad7::{
;     MoveCurrentWindowToDesktop(7)
; }

; ^#Numpad8::{
;     MoveCurrentWindowToDesktop(8)
; }

; ^#Numpad9::{
;     MoveCurrentWindowToDesktop(9)
; }


; ^#Right::{
;     MoveCurrentWindowToRightDesktop()
; }

; ^#Left::{
;     MoveCurrentWindowToLeftDesktop()
; }


; === INSTRUCTIONS ===
; Additional alternative shortcut for moving current window to left or right desktop:
; Ctrl+Shift+Win+Left/Right
; === END OF INSTRUCTIONS ===

; ^#+Right::{
;     MoveCurrentWindowToRightDesktop()
; }

; ^#+Left::{
;     MoveCurrentWindowToLeftDesktop()
; }
