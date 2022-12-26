 C:/Users/yasha/dotfiles/config/nushell/env.nu:1:: # Nushell Environment Config File
 C:/Users/yasha/dotfiles/config/nushell/env.nu:2:: 
 C:/Users/yasha/dotfiles/config/nushell/env.nu:3:: def create_left_prompt [  {
 C:/Users/yasha/dotfiles/config/nushell/env.nu:4::     let path_segment = ( env.PWD)
 C:/Users/yasha/dotfiles/config/nushell/env.nu:5:: 
 C:/Users/yasha/dotfiles/config/nushell/env.nu:6::      path_segment
 C:/Users/yasha/dotfiles/config/nushell/env.nu:7:: 
 C:/Users/yasha/dotfiles/config/nushell/env.nu:8:: 
 C:/Users/yasha/dotfiles/config/nushell/env.nu:9:: def create_right_prompt [  {
 C:/Users/yasha/dotfiles/config/nushell/env.nu:10::     let time_segment = ([
 C:/Users/yasha/dotfiles/config/nushell/env.nu:11::         (date now | date format '%m/%d/%Y %r')
 C:/Users/yasha/dotfiles/config/nushell/env.nu:12::       | str collect)
 C:/Users/yasha/dotfiles/config/nushell/env.nu:13:: 
 C:/Users/yasha/dotfiles/config/nushell/env.nu:14::      time_segment
 C:/Users/yasha/dotfiles/config/nushell/env.nu:15:: 
 C:/Users/yasha/dotfiles/config/nushell/env.nu:16:: 
 C:/Users/yasha/dotfiles/config/nushell/env.nu:17:: # Use nushell functions to define your right and left prompt
 C:/Users/yasha/dotfiles/config/nushell/env.nu:18:: let env PROMPT_COMMAND = { create_left_prompt 
 C:/Users/yasha/dotfiles/config/nushell/env.nu:19:: let env PROMPT_COMMAND_RIGHT = { create_right_prompt 
 C:/Users/yasha/dotfiles/config/nushell/env.nu:20:: 
 C:/Users/yasha/dotfiles/config/nushell/env.nu:21:: # The prompt indicators are environmental variables that represent
 C:/Users/yasha/dotfiles/config/nushell/env.nu:22:: # the state of the prompt
 C:/Users/yasha/dotfiles/config/nushell/env.nu:23:: let env PROMPT_INDICATOR = { "〉" 
 C:/Users/yasha/dotfiles/config/nushell/env.nu:24:: let env PROMPT_INDICATOR_VI_INSERT = { ": " 
 C:/Users/yasha/dotfiles/config/nushell/env.nu:25:: let env PROMPT_INDICATOR_VI_NORMAL = { "〉" 
 C:/Users/yasha/dotfiles/config/nushell/env.nu:26:: let env PROMPT_MULTILINE_INDICATOR = { "::: " 
 C:/Users/yasha/dotfiles/config/nushell/env.nu:27:: 
 C:/Users/yasha/dotfiles/config/nushell/env.nu:28:: # Specifies how environment variables are:
 C:/Users/yasha/dotfiles/config/nushell/env.nu:29:: #   converted from a string to a value on Nushell startup (from_string)
 C:/Users/yasha/dotfiles/config/nushell/env.nu:30:: #   converted from a value back to a string when running external commands (to_string)
 C:/Users/yasha/dotfiles/config/nushell/env.nu:31:: # Note: The conversions happen *after* config.nu is loaded
 C:/Users/yasha/dotfiles/config/nushell/env.nu:32:: let env ENV_CONVERSIONS = {
 C:/Users/yasha/dotfiles/config/nushell/env.nu:33::   "PATH": {
 C:/Users/yasha/dotfiles/config/nushell/env.nu:34::     from_string: { |s|  s | split row (char esep) 
 C:/Users/yasha/dotfiles/config/nushell/env.nu:35::     to_string: { |v|  v | str collect (char esep) 
 C:/Users/yasha/dotfiles/config/nushell/env.nu:36::   
 C:/Users/yasha/dotfiles/config/nushell/env.nu:37::   "Path": {
 C:/Users/yasha/dotfiles/config/nushell/env.nu:38::     from_string: { |s|  s | split row (char esep) 
 C:/Users/yasha/dotfiles/config/nushell/env.nu:39::     to_string: { |v|  v | str collect (char esep) 
 C:/Users/yasha/dotfiles/config/nushell/env.nu:40::   
 C:/Users/yasha/dotfiles/config/nushell/env.nu:41:: 
 C:/Users/yasha/dotfiles/config/nushell/env.nu:42:: 
 C:/Users/yasha/dotfiles/config/nushell/env.nu:43:: # Directories to search for scripts when calling source or use
 C:/Users/yasha/dotfiles/config/nushell/env.nu:44:: #
 C:/Users/yasha/dotfiles/config/nushell/env.nu:45:: # By default, <nushell config dir>/scripts is added
 C:/Users/yasha/dotfiles/config/nushell/env.nu:46:: let env NU_LIB_DIRS = [
 C:/Users/yasha/dotfiles/config/nushell/env.nu:47::     ( nu.config path | path dirname | path join 'scripts')
 C:/Users/yasha/dotfiles/config/nushell/env.nu:48::  
 C:/Users/yasha/dotfiles/config/nushell/env.nu:49:: 
 C:/Users/yasha/dotfiles/config/nushell/env.nu:50:: # Directories to search for plugin binaries when calling register
 C:/Users/yasha/dotfiles/config/nushell/env.nu:51:: #
 C:/Users/yasha/dotfiles/config/nushell/env.nu:52:: # By default, <nushell config dir>/plugins is added
 C:/Users/yasha/dotfiles/config/nushell/env.nu:53:: let env NU_PLUGIN_DIRS = [
 C:/Users/yasha/dotfiles/config/nushell/env.nu:54::     ( nu.config path | path dirname | path join 'plugins')
 C:/Users/yasha/dotfiles/config/nushell/env.nu:55::  
 C:/Users/yasha/dotfiles/config/nushell/env.nu:56:: zoxide init nushell   hook prompt | save ~/.zoxide.nu
 C:/Users/yasha/dotfiles/config/nushell/env.nu:57:: mkdir ~/.cache/starship
 C:/Users/yasha/dotfiles/config/nushell/env.nu:58:: starship init nu | save ~/.cache/starship/init.nu
 C:/Users/yasha/dotfiles/config/nushell/env.nu:59:: # To add entries to PATH (on Windows you might use Path), you can use the following pattern:
 C:/Users/yasha/dotfiles/config/nushell/env.nu:60:: # let env PATH = ( env.PATH | prepend '/some/path')
