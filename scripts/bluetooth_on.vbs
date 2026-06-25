Set WshShell = CreateObject("WScript.Shell") 
WshShell.Run chr(34) & "C:\temp\bluetooth_on.bat" & Chr(34), 0
Set WshShell = Nothing