# C:\Users\yasha\bin\lf-rename-keep-ext.ps1

param(
    [string]$NewStem
)

$f = $Env:f.Trim('"')

if ([string]::IsNullOrWhiteSpace($NewStem)) {
    exit 1
}

$ext = [System.IO.Path]::GetExtension($f)

Rename-Item -LiteralPath $f -NewName ($NewStem + $ext)
