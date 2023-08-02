$file = $args[0]
echo $file
$code =  @"
var options = new Windows.System.LauncherOptions();
options.DisplayApplicationPicker = true;

bool success = await Windows.System.Launcher.LaunchFileAsync($file, "goneovim");
"@
Add-Type -TypeDefinition $code -Language CSharp
iex "[openfile.Program]::Main()"
