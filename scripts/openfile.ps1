$file = $args[0]
$code =  @"
var options = new Windows.System.LauncherOptions();
options.DisplayApplicationPicker = true;

bool success = await Windows.System.Launcher.LaunchFileAsync($file, options);
"@
Add-Type -TypeDefinition $code -Language CSharp
iex "[openfile.Program]::Main()"
