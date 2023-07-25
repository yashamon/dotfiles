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

#Requires AutoHotkey >=1.1.36 <2
SetCapsLockState AlwaysOff
CapsLock::Esc
;!Tab::!Esc
!Esc::^!Tab
#h::
return
+#h::
SendInput ^#{Left}
sleep 20
Send !{Esc}
return
+#l::
SendInput ^#{Right}
sleep 20
Send !{Esc}
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

;#A::
;switchDesktopByNumber(1)
;Send !{Esc}
;;sleep 20
;;Send !{Esc}
;return
#A::
;Send {LWin down}{Tab down}{Left down}{LWin up}{LCtrl up}{Left up}
Send ^#{Left}
sleep 20
Send ^#{Left}
sleep 20
Send ^#{Left}
sleep 20
Send ^#{Left}
sleep 20
Send !{Esc}
;sleep 20
;Send {LWin down}{LCtrl down}{Left down}{LWin up}{LCtrl up}{Left up}
;sleep 20
;Send {LWin down}{LCtrl down}{Left down}{LWin up}{LCtrl up}{Left up}
;sleep 20
;Send {LWin down}{LCtrl down}{Left down}{LWin up}{LCtrl up}{Left up}
;sleep 20
;Send {LWin down}{LCtrl down}{Left down}{LWin up}{LCtrl up}{Left up}
return
#S::
Send ^#{Left}
sleep 20
Send ^#{Left}
sleep 20
Send ^#{Left}
sleep 20
Send ^#{Left}
sleep 20
Send ^#{Right}
sleep 20
Send !{Esc}
return

;sleep 20
;Send {LWin down}{LCtrl down}{Left down}{LWin up}{LCtrl up}{Left up}
;sleep 20
;Send {LWin down}{LCtrl down}{Left down}{LWin up}{LCtrl up}{Left up}
;sleep 20
;Send {LWin down}{LCtrl down}{Left down}{LWin up}{LCtrl up}{Left up}
;sleep 20
;Send {LWin down}{LCtrl down}{Left down}{LWin up}{LCtrl up}{Left up}
;sleep 20
;Send {LWin down}{LCtrl down}{Right down}{LWin up}{LCtrl up}{Right up}
;switchDesktopByNumber(2)
;Send !{Esc}
;sleep 100
;Send !{Esc}
#X::
WinClose A 
return

#D::
switchDesktopByNumber(4)
Send !{Esc}
return
#F::
switchDesktopByNumber(5)
Send !{Esc}
return
#C::
Send {LWin down}{LCtrl down}{Left down}{LWin up}{LCtrl up}{Left up}
sleep 20
Send {LWin down}{LCtrl down}{Left down}{LWin up}{LCtrl up}{Left up}
sleep 20
Send {LWin down}{LCtrl down}{Left down}{LWin up}{LCtrl up}{Left up}
sleep 20
Send {LWin down}{LCtrl down}{Left down}{LWin up}{LCtrl up}{Left up}
sleep 20
Send {LWin down}{LCtrl down}{Left down}{LWin up}{LCtrl up}{Left up}
sleep 20
Send {LWin down}{LCtrl down}{Right down}{LWin up}{LCtrl up}{Right up}
sleep 20
Send {LWin down}{LCtrl down}{Right down}{LWin up}{LCtrl up}{Right up}
Send !{Esc}
return
#Space::
send {F11}
return
PgUp::CapsLock
#!a::MoveCurrentWindowToDesktop(1)
#!s::MoveCurrentWindowToDesktop(2)
#!d::MoveCurrentWindowToDesktop(3)
#!f::MoveCurrentWindowToDesktop(4)
#!c::MoveCurrentWindowToDesktop(5)
return
#!h::
return
#k::
return
#^a::
return
#^f::
return
#^d::
return
#^s::
return
#!k::
return
#^l::
return
#^j::
return

; Win+Alt+G - Open Gmail in Chrome
#Enter::
    Run "nu" 
    Return
#+f::
    Run lf
    Return
#n::
    Run nu C:\Users\yasha\OneDrive\dotfiles\scripts\nf.nu
    Return
#e::
Run microsoft-edge:https://this-page-intentionally-left-blank.org/
;Run "brave"
;Run "chrome"
Return   
#+j::
; Run microsoft-edge:https://this-page-intentionally-left-blank.org/ 
Run xournalpp
Return   
; Win+Shift+Break - Edit this file
#+Break::
    Run "neo" "d:\AutoHotkey.ahk"
    Return
CapsLock & Numpad1::switchDesktopByNumber(1)
CapsLock & Numpad2::switchDesktopByNumber(2)
CapsLock & Numpad3::switchDesktopByNumber(3)
CapsLock & Numpad4::switchDesktopByNumber(4)
CapsLock & Numpad5::switchDesktopByNumber(5)
CapsLock & Numpad6::switchDesktopByNumber(6)
CapsLock & Numpad7::switchDesktopByNumber(7)
CapsLock & Numpad8::switchDesktopByNumber(8)
CapsLock & Numpad9::switchDesktopByNumber(9)


#IfWinActive, ahk_class SUMATRA_PDF_FRAME
{
.:: 
jump := true
mark := false
return
m:: 
mark := true
jump := false
return
a::
If jump 
{
Send !ACa
jump := false
}
if mark 
{
Send ^b
Sleep 50
send a
sleep 50
SendInput {enter}
}
else 
{
send a
}
period := false
mark := false
return

b::
If jump 
{
Send !ACb
jump := false
}
if mark
{
Send ^b
Sleep 50
send b
sleep 50
SendInput {enter}
markb := true
}
period := false
mark := false
return

c::
If jump 
{
Send !ACc
jump := false
}
if mark 
{
Send ^b
Sleep 50
send c
sleep 50
SendInput {enter}
markc := true
}
period := false
mark := false
return

d::
If jump 
{
Send !ACd
jump := false
}
if mark 
{
Send ^b
Sleep 50
send d
sleep 50
SendInput {enter}
markd := true
}
period := false
mark := false
return
}

#Requires AutoHotkey v2.0
hWnd := Map()
Loop {
 hWnd[VirtualDesktops.GetCurrentVirtualDesktopName()] := WinActive('A')
 WinWaitNotActive 'A'
}

>!Left::
>!Right:: {
 Send StrReplace(A_ThisHotkey, '>!', '#^{') '}'
 Try WinActivate hWnd[VirtualDesktops.GetCurrentVirtualDesktopName()]
 SoundBeep 1000
}

; ----------------------------------

; teadrinker: https://www.autohotkey.com/boards/viewtopic.php?p=503001#p503001

class VirtualDesktops
{
    static CLSID_ImmersiveShell                := '{C2F03A33-21F5-47FA-B4BB-156362A2F239}'
         , CLSID_VirtualDesktopManager         := '{AA509086-5CA9-4C25-8F95-589D3C07B48A}'
         , CLSID_VirtualDesktopManagerInternal := '{C5E0CDCA-7B6E-41B2-9FC4-D93975CC467B}'
         , IID_IUnknown                        := '{00000000-0000-0000-C000-000000000046}'
         , IID_IServiceProvider                := '{6D5140C1-7436-11CE-8034-00AA006009FA}'
         , IID_IVirtualDesktopManagerInternal  := '{F31574D6-B682-4CDC-BD56-1827860ABEC6}'
         , IID_IVirtualDesktop                 := '{FF72FFDD-BE7E-43FC-9C03-AD81681E88E4}'
         , IID_IVirtualDesktop2                := '{31EBDE3F-6EC3-4CBD-B9FB-0EF6D09B41F4}'

         , build := StrSplit(A_OSVersion, '.')[3]

    static _CheckDescendantsMetod(name, &res?, params*) {
        if this.build < 19041 && this.build_17763.HasOwnProp(name)
            res := this.build_17763.%name%(params*)
        if this.build = 20348 && this.build_20348_server.HasOwnProp(name)
            res := this.build_20348_server%name%(params*)
        else if this.build = 22000 && this.build_22000.HasOwnProp(name)
            res := this.build_22000.%name%(params*)
        else if this.build > 22000 && this.build_22621.HasOwnProp(name)
            res := this.build_22621.%name%(params*)
    }

    static GetCurrentVirtualDesktopName() {
        this._CheckDescendantsMetod(StrSplit(A_ThisFunc, '.')[2], &res?)
        if IsSet(res)
            return res

        IVirtualDesktop := this.GetCurrentDesktop()
        if ((name := this.GetVirtualDesktopName(IVirtualDesktop)) = '')
            name := 'Desktop ' . this.GetIVirtualDesktopIndex(IVirtualDesktop)
        return name
    }

    static GetVirtualDesktopNames() {
        this._CheckDescendantsMetod(StrSplit(A_ThisFunc, '.')[2], &res?)
        if IsSet(res)
            return res

        IVirtualDesktopManagerInternal := this.GetIVirtualDesktopManagerInternal()
        IObjectArray := this.GetDesktops(IVirtualDesktopManagerInternal)
        ComCall(GetCount := 3, IObjectArray, 'UIntP', &count := 0)
        names := []
        Loop count {
            IVirtualDesktop := this.GetIVirtualDesktopFromIObjectArray(IObjectArray, A_Index - 1)
            name := this.GetVirtualDesktopName(IVirtualDesktop)
            (name = '' && name := 'Desktop ' . A_Index)
            names.Push(name)
        }
        return names
    }

    static GetCurrentDesktop() {
        this._CheckDescendantsMetod(StrSplit(A_ThisFunc, '.')[2], &res?)
        if IsSet(res)
            return res

        IVirtualDesktopManagerInternal := this.GetIVirtualDesktopManagerInternal()
        ComCall(GetCurrentDesktop := 6, IVirtualDesktopManagerInternal, 'PtrP', &ptr := 0)
        return IVirtualDesktop := ComValue(VT_UNKNOWN := 0xD, ptr)
    }

    static GetVirtualDesktopName(IVirtualDesktop) {
        this._CheckDescendantsMetod(StrSplit(A_ThisFunc, '.')[2], &res?, IVirtualDesktop)
        if IsSet(res)
            return res

        IVirtualDesktop2 := ComObjQuery(IVirtualDesktop, this.IID_IVirtualDesktop2)
        ComCall(GetName := 5, IVirtualDesktop2, 'PtrP', &hString := 0)
        if !hString
            return ''
        pBuf := DllCall('Combase\WindowsGetStringRawBuffer', 'Ptr', hString, 'UIntP', &len := 0, 'Ptr')
        DllCall('Combase\WindowsDeleteString', 'Ptr', hString)
        return StrGet(pBuf, len, 'UTF-16')
    }

    static GetIVirtualDesktopManagerInternal() {
        this._CheckDescendantsMetod(StrSplit(A_ThisFunc, '.')[2], &res?)
        if IsSet(res)
            return res

        ImmersiveShell := ComObject(this.CLSID_ImmersiveShell, this.IID_IUnknown)
        IServiceProvider := ComObject(this.CLSID_ImmersiveShell, this.IID_IServiceProvider)
        IVirtualDesktopManagerInternal := ComObjQuery( IServiceProvider, this.CLSID_VirtualDesktopManagerInternal
                                                                       , this.IID_IVirtualDesktopManagerInternal )
        return IVirtualDesktopManagerInternal
    }

    static GetIVirtualDesktopIndex(IVirtualDesktop) {
        this._CheckDescendantsMetod(StrSplit(A_ThisFunc, '.')[2], &res?, IVirtualDesktop)
        if IsSet(res)
            return res

        IVirtualDesktopManagerInternal := this.GetIVirtualDesktopManagerInternal()
        id := this.GetID(IVirtualDesktop)
        IObjectArray := this.GetDesktops(IVirtualDesktopManagerInternal)
        ComCall(GetCount := 3, IObjectArray, 'UIntP', &count := 0)
        idx := 0
        Loop count {
            IVirtualDesktop := this.GetIVirtualDesktopFromIObjectArray(IObjectArray, A_Index - 1)
            currentID := this.GetID(IVirtualDesktop)
        } until currentID = id && idx := A_Index
        return idx
    }

    static GetDesktops(IVirtualDesktopManagerInternal) {
        this._CheckDescendantsMetod(StrSplit(A_ThisFunc, '.')[2], &res?, IVirtualDesktopManagerInternal)
        if IsSet(res)
            return res

        ComCall(GetDesktops := 7, IVirtualDesktopManagerInternal, 'PtrP', &ptr := 0)
        return IObjectArray := ComValue(VT_UNKNOWN := 0xD, ptr)
    }

    static GetIVirtualDesktopFromIObjectArray(IObjectArray, n) {
        this._CheckDescendantsMetod(StrSplit(A_ThisFunc, '.')[2], &res?, IObjectArray, n)
        if IsSet(res)
            return res

        CLSID := Buffer(16, 0)
        DllCall('Ole32\CLSIDFromString', 'WStr', this.IID_IVirtualDesktop, 'Ptr', CLSID)
        ComCall(GatAt := 4, IObjectArray, 'UInt', n, 'Ptr', CLSID, 'PtrP', &ptr := 0)
        return IVirtualDesktop := ComValue(VT_UNKNOWN := 0xD, ptr)
    }

    static GetID(IVirtualDesktop) {
        this._CheckDescendantsMetod(StrSplit(A_ThisFunc, '.')[2], &res?, IVirtualDesktop)
        if IsSet(res)
            return res

        ComCall(GetId := 4, IVirtualDesktop, 'Ptr', GUID := Buffer(16, 0))
        VarSetStrCapacity(&sGuid, 78)
        DllCall('Ole32\StringFromGUID2', 'Ptr', GUID, 'WStr', sGuid, 'Int', 39)
        return sGuid
}

    class build_17763 extends VirtualDesktops {
        static GetVirtualDesktopName(IVirtualDesktop) {
            return ''
        }
    }

    class build_20348_server extends VirtualDesktops
    {
        static IID_IVirtualDesktopManagerInternal := '{094AFE11-44F2-4BA0-976F-29A97E263EE0}'
             , IID_IVirtualDesktop                := '{62FDF88B-11CA-4AFB-8BD8-2296DFAE49E2}'

        static GetIVirtualDesktopManagerInternal() {
            ImmersiveShell := ComObject(this.CLSID_ImmersiveShell, this.IID_IUnknown)
            IServiceProvider := ComObject(this.CLSID_ImmersiveShell, this.IID_IServiceProvider)
            IVirtualDesktopManagerInternal := ComObjQuery( IServiceProvider, this.CLSID_VirtualDesktopManagerInternal
                                                                           , this.IID_IVirtualDesktopManagerInternal )
            return IVirtualDesktopManagerInternal
        }

        static GetIVirtualDesktopFromIObjectArray(IObjectArray, n) {
            CLSID := Buffer(16, 0)
            DllCall('Ole32\CLSIDFromString', 'WStr', this.IID_IVirtualDesktop, 'Ptr', CLSID)
            ComCall(GatAt := 4, IObjectArray, 'UInt', n, 'Ptr', CLSID, 'PtrP', &ptr := 0)
            return IVirtualDesktop := ComValue(VT_UNKNOWN := 0xD, ptr)
        }
    }

    class build_22000 extends VirtualDesktops
    {
        static IID_IVirtualDesktopManagerInternal := '{B2F925B9-5A0F-4D2E-9F4D-2B1507593C10}'
             , IID_IVirtualDesktop                := '{536D3495-B208-4CC9-AE26-DE8111275BF8}'

        static GetCurrentVirtualDesktopName() {
            IVirtualDesktop := this.GetCurrentDesktop()
            if ((name := this.GetVirtualDesktopName(IVirtualDesktop)) = '')
;                name := 'Desktop ' . super.GetIVirtualDesktopIndex.Call(this.base, IVirtualDesktop)
                 name := 'Desktop ' . super.GetIVirtualDesktopIndex.Bind(this.base)(IVirtualDesktop)
            return name
        }

        static GetVirtualDesktopName(IVirtualDesktop) {
            ComCall(GetName := 6, IVirtualDesktop, 'PtrP', &hString := 0)
            if !hString
                return ''
            pBuf := DllCall('Combase\WindowsGetStringRawBuffer', 'Ptr', hString, 'UIntP', &len := 0, 'Ptr')
            DllCall('Combase\WindowsDeleteString', 'Ptr', hString)
            return StrGet(pBuf, len, 'UTF-16')
        }

        static GetIVirtualDesktopManagerInternal() {
            ImmersiveShell := ComObject(this.CLSID_ImmersiveShell, this.IID_IUnknown)
            IServiceProvider := ComObject(this.CLSID_ImmersiveShell, this.IID_IServiceProvider)
            IVirtualDesktopManagerInternal := ComObjQuery( IServiceProvider, this.CLSID_VirtualDesktopManagerInternal
                                                                            , this.IID_IVirtualDesktopManagerInternal )
            return IVirtualDesktopManagerInternal
        }

        static GetDesktops(IVirtualDesktopManagerInternal) {
            ComCall(GetDesktops := 7, IVirtualDesktopManagerInternal, 'Ptr', 0, 'PtrP', &ptr := 0)
            return IObjectArray := ComValue(VT_UNKNOWN := 0xD, ptr)
        }

        static GetIVirtualDesktopFromIObjectArray(IObjectArray, n) {
            CLSID := Buffer(16, 0)
            DllCall('Ole32\CLSIDFromString', 'WStr', this.IID_IVirtualDesktop, 'Ptr', CLSID)
            ComCall(GatAt := 4, IObjectArray, 'UInt', n, 'Ptr', CLSID, 'PtrP', &ptr := 0)
            return IVirtualDesktop := ComValue(VT_UNKNOWN := 0xD, ptr)
        }

        static GetCurrentDesktop() {
            IVirtualDesktopManagerInternal := this.GetIVirtualDesktopManagerInternal()
            ComCall(GetCurrentDesktop := 6, IVirtualDesktopManagerInternal, 'Ptr', 0, 'PtrP', &ptr := 0)
            return IVirtualDesktop := ComValue(VT_UNKNOWN := 0xD, ptr)
        }
    }

    class build_22621 extends VirtualDesktops
    {
        static GetCurrentVirtualDesktopName() {
            return super.build_22000.GetCurrentVirtualDesktopName()
        }

        static GetVirtualDesktopName(IVirtualDesktop) {
            return super.build_22000.GetVirtualDesktopName(IVirtualDesktop)
        }

        static GetIVirtualDesktopManagerInternal() {
            return super.build_22000.GetIVirtualDesktopManagerInternal()
        }

        static GetDesktops(IVirtualDesktopManagerInternal) {
            ComCall(GetDesktops := 8, IVirtualDesktopManagerInternal, 'Ptr', 0, 'PtrP', &ptr := 0)
            return IObjectArray := ComValue(VT_UNKNOWN := 0xD, ptr)
        }

        static GetIVirtualDesktopFromIObjectArray(IObjectArray, n) {
            return super.build_22000.GetIVirtualDesktopFromIObjectArray(IObjectArray, n)
        }

        static GetCurrentDesktop() {
            return super.build_22000.GetCurrentDesktop()
        }
    }
}



;#IfWinActive, ahk_class SUMATRA_PDF_FRAME
;m::expectanotherkey := true
;#If expectanotherkey 
;A::
;Send ^BA{enter}
;B::
;Send ^BB{enter} 
;C::
;Send ^BC{enter} 
;expectanotherkey := false
;return

;#IfWinActive, ahk_class SUMATRA_PDF_FRAME
;!A::
;Send !ACA
;return
;#IfWinActive, ahk_class SUMATRA_PDF_FRAME
;!B::
;Send !ACB
;return


/* #n::switchDesktopToRight() */
/* #p::switchDesktopToLeft() */
CapsLock & s::switchDesktopToRight()
CapsLock & a::switchDesktopToLeft()
CapsLock & tab::switchDesktopToLastOpened()

CapsLock & c::createVirtualDesktop()
CapsLock & d::deleteVirtualDesktop()

#!a::MoveCurrentWindowToDesktop(1)

CapsLock & w::MoveCurrentWindowToDesktop(2)
CapsLock & e::MoveCurrentWindowToDesktop(3)
CapsLock & r::MoveCurrentWindowToDesktop(4)
CapsLock & t::MoveCurrentWindowToDesktop(5)
CapsLock & y::MoveCurrentWindowToDesktop(6)
CapsLock & u::MoveCurrentWindowToDesktop(7)
CapsLock & i::MoveCurrentWindowToDesktop(8)
CapsLock & o::MoveCurrentWindowToDesktop(9)

CapsLock & Right::MoveCurrentWindowToRightDesktop()
CapsLock & Left::MoveCurrentWindowToLeftDesktop()

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


