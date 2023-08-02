$file = $args[0]

$options = New-Object -TypeName new Windows.System.LauncherOptions()
$options.DisplayApplicationPicker = true

$success = New-Object -TypeName await Windows.System.Launcher.LaunchFileAsync($file, options)
