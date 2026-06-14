#Requires AutoHotkey v2.0
#SingleInstance Force
KeyHistory(0)

SetWorkingDir(A_ScriptDir)
SendMode("Input")
SetKeyDelay(75)

; Globals
DesktopCount := 2        ; Windows starts with 2 desktops at boot
CurrentDesktop := 1      ; Desktop count is 1-indexed
LastOpenedDesktop := 1

; DLL
hVirtualDesktopAccessor := DllCall(
    "Kernel32\LoadLibrary",
    "Str", A_ScriptDir "\VirtualDesktopAccessor.dll",
    "Ptr"
)

if (!hVirtualDesktopAccessor) {
    MsgBox("Could not load VirtualDesktopAccessor.dll from:`n" . A_ScriptDir)
    ExitApp()
}

IsWindowOnDesktopNumberProc := DllCall(
    "Kernel32\GetProcAddress",
    "Ptr", hVirtualDesktopAccessor,
    "AStr", "IsWindowOnDesktopNumber",
    "Ptr"
)

MoveWindowToDesktopNumberProc := DllCall(
    "Kernel32\GetProcAddress",
    "Ptr", hVirtualDesktopAccessor,
    "AStr", "MoveWindowToDesktopNumber",
    "Ptr"
)

if (!IsWindowOnDesktopNumberProc || !MoveWindowToDesktopNumberProc) {
    MsgBox("Could not find the expected VirtualDesktopAccessor.dll exports.")
    ExitApp()
}

; Main
mapDesktopsFromRegistry()
OutputDebug("[loading] desktops: " . DesktopCount . " current: " . CurrentDesktop)

#Include C:\Users\yasha\OneDrive\workspacemodules\dotfiles\scripts\user_config.ahk
return


;
; This function examines the registry to build an accurate list of the current
; virtual desktops and which one we're currently on.
;
mapDesktopsFromRegistry()
{
    global CurrentDesktop, DesktopCount

    ; Get the current desktop UUID.
    ; Length should be 32, but don't assume Microsoft will resist temptation.
    IdLength := 32
    CurrentDesktopId := ""

    SessionId := getSessionId()
    if (SessionId != "") {
        CurrentDesktopId := RegRead(
            "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VirtualDesktops",
            "CurrentVirtualDesktop",
            ""
        )

        if (CurrentDesktopId = "") {
            CurrentDesktopId := RegRead(
                "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\SessionInfo\" SessionId "\VirtualDesktops",
                "CurrentVirtualDesktop",
                ""
            )
        }

        if (CurrentDesktopId != "") {
            IdLength := StrLen(CurrentDesktopId)
        }
    }

    ; Get a list of the UUIDs for all virtual desktops on the system.
    DesktopList := RegRead(
        "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VirtualDesktops",
        "VirtualDesktopIDs",
        ""
    )

    if (DesktopList != "") {
        DesktopListLength := StrLen(DesktopList)
        DesktopCount := Floor(DesktopListLength / IdLength)
    } else {
        DesktopCount := 1
    }

    ; Parse the REG_BINARY hex string that stores the UUID array.
    i := 0
    while (CurrentDesktopId != "" && i < DesktopCount) {
        StartPos := (i * IdLength) + 1
        DesktopIter := SubStr(DesktopList, StartPos, IdLength)

        OutputDebug("The iterator is pointing at " . DesktopIter . " and count is " . i . ".")

        if (DesktopIter = CurrentDesktopId) {
            CurrentDesktop := i + 1
            OutputDebug("Current desktop number is " . CurrentDesktop . " with an ID of " . DesktopIter . ".")
            break
        }

        i++
    }
}


;
; This function finds out ID of current session.
;
getSessionId()
{
    ProcessId := DllCall("Kernel32\GetCurrentProcessId", "UInt")

    if (!ProcessId) {
        OutputDebug("Error getting current process id: " . A_LastError)
        return ""
    }

    OutputDebug("Current Process Id: " . ProcessId)

    if !DllCall(
        "Kernel32\ProcessIdToSessionId",
        "UInt", ProcessId,
        "UInt*", &SessionId := 0
    ) {
        OutputDebug("Error getting session id: " . A_LastError)
        return ""
    }

    OutputDebug("Current Session Id: " . SessionId)
    return SessionId
}


_switchDesktopToTarget(targetDesktop)
{
    global CurrentDesktop, DesktopCount, LastOpenedDesktop

    ; Don't attempt to switch to an invalid desktop.
    if (targetDesktop > DesktopCount || targetDesktop < 1 || targetDesktop = CurrentDesktop) {
        OutputDebug("[invalid] target: " . targetDesktop . " current: " . CurrentDesktop)
        return
    }

    LastOpenedDesktop := CurrentDesktop

    ; Go right until we reach the desktop we want.
    while (CurrentDesktop < targetDesktop) {
        Send("{LWin down}{LCtrl down}{Right down}{LWin up}{LCtrl up}{Right up}")
        CurrentDesktop++
        OutputDebug("[right] target: " . targetDesktop . " current: " . CurrentDesktop)
    }

    ; Go left until we reach the desktop we want.
    while (CurrentDesktop > targetDesktop) {
        Send("{LWin down}{LCtrl down}{Left down}{LWin up}{LCtrl up}{Left up}")
        CurrentDesktop--
        OutputDebug("[left] target: " . targetDesktop . " current: " . CurrentDesktop)
    }

    ; Optional old behavior:
    ; Sleep(50)
    ; focusTheForemostWindow(targetDesktop)
}


updateGlobalVariables()
{
    ; Re-generate the list of desktops and where we fit in that.
    ; This handles switching desktops outside the script.
    mapDesktopsFromRegistry()
}


switchDesktopByNumber(targetDesktop)
{
    updateGlobalVariables()
    _switchDesktopToTarget(targetDesktop)
}


switchDesktopToLastOpened()
{
    global LastOpenedDesktop

    updateGlobalVariables()
    _switchDesktopToTarget(LastOpenedDesktop)
}


switchDesktopToRight()
{
    global CurrentDesktop, DesktopCount

    updateGlobalVariables()
    _switchDesktopToTarget(CurrentDesktop = DesktopCount ? 1 : CurrentDesktop + 1)
}


switchDesktopToLeft()
{
    global CurrentDesktop, DesktopCount

    updateGlobalVariables()
    _switchDesktopToTarget(CurrentDesktop = 1 ? DesktopCount : CurrentDesktop - 1)
}


focusTheForemostWindow(targetDesktop)
{
    foremostWindowId := getForemostWindowIdOnDesktop(targetDesktop)

    if (foremostWindowId && isWindowNonMinimized(foremostWindowId)) {
        WinActivate("ahk_id " . foremostWindowId)
    }
}


isWindowNonMinimized(windowId)
{
    return WinGetMinMax("ahk_id " . windowId) != -1
}


getForemostWindowIdOnDesktop(n)
{
    global IsWindowOnDesktopNumberProc

    n := n - 1 ; Desktops start at 0, while this script is 1-indexed.

    ; WinGetList returns HWNDs ordered from top to bottom.
    for windowID in WinGetList() {
        windowIsOnDesktop := DllCall(
            IsWindowOnDesktopNumberProc,
            "Ptr", windowID,
            "Int", n,
            "Int"
        )

        if (windowIsOnDesktop = 1) {
            return windowID
        }
    }

    return 0
}


MoveCurrentWindowToDesktop(desktopNumber)
{
    global MoveWindowToDesktopNumberProc

    activeHwnd := WinGetID("A")

    DllCall(
        MoveWindowToDesktopNumberProc,
        "Ptr", activeHwnd,
        "Int", desktopNumber - 1,
        "Int"
    )

    switchDesktopByNumber(desktopNumber)
}


MoveCurrentWindowToRightDesktop()
{
    global CurrentDesktop, DesktopCount, MoveWindowToDesktopNumberProc

    updateGlobalVariables()

    activeHwnd := WinGetID("A")
    targetDesktop := CurrentDesktop = DesktopCount ? 1 : CurrentDesktop + 1

    DllCall(
        MoveWindowToDesktopNumberProc,
        "Ptr", activeHwnd,
        "Int", targetDesktop - 1,
        "Int"
    )

    _switchDesktopToTarget(targetDesktop)
}


MoveCurrentWindowToLeftDesktop()
{
    global CurrentDesktop, DesktopCount, MoveWindowToDesktopNumberProc

    updateGlobalVariables()

    activeHwnd := WinGetID("A")
    targetDesktop := CurrentDesktop = 1 ? DesktopCount : CurrentDesktop - 1

    DllCall(
        MoveWindowToDesktopNumberProc,
        "Ptr", activeHwnd,
        "Int", targetDesktop - 1,
        "Int"
    )

    _switchDesktopToTarget(targetDesktop)
}


;
; This function creates a new virtual desktop and switches to it.
;
createVirtualDesktop()
{
    global CurrentDesktop, DesktopCount

    Send("#^d")
    DesktopCount++
    CurrentDesktop := DesktopCount

    OutputDebug("[create] desktops: " . DesktopCount . " current: " . CurrentDesktop)
}


;
; This function deletes the current virtual desktop.
;
deleteVirtualDesktop()
{
    global CurrentDesktop, DesktopCount, LastOpenedDesktop

    Send("#^{F4}")

    if (LastOpenedDesktop >= CurrentDesktop) {
        LastOpenedDesktop--
    }

    DesktopCount--
    CurrentDesktop--

    ; Avoid impossible desktop numbers after deleting desktop 1.
    if (DesktopCount < 1) {
        DesktopCount := 1
    }

    if (CurrentDesktop < 1) {
        CurrentDesktop := 1
    }

    if (LastOpenedDesktop < 1) {
        LastOpenedDesktop := 1
    }

    OutputDebug("[delete] desktops: " . DesktopCount . " current: " . CurrentDesktop)
}
