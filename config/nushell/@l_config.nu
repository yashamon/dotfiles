 C:/Users/yasha/dotfiles/config/nushell/config.nu:1:: # Nushell Config File
 C:/Users/yasha/dotfiles/config/nushell/config.nu:2:: let env Path = ["C:/Users/yasha/scoop/shims" "C:/Users/yasha/dotfiles/scripts" "C:/Users/yasha/scoop/apps" "C:/Users/yasha/scoop/apps/python39/current" "C:/Users/yasha/scoop/apps/nodejs/current/bin" "C:/Users/yasha/scoop/apps/nodejs/current" "C:/Users/yasha/scoop/apps/latex/current/texmfs/install/miktex/bin/x64" "C:/Program Files/PowerShell/7" "C:/windows/system32" "C:/windows" "C:/windows/System32/Wbem" "C:/windows/System32/WindowsPowerShell/v1.0" "C:/windows/System32/OpenSSH" "C:/Program Files/dotnet" "C:/Program Files/PowerShell/7" "C:/Users/yasha/AppData/Local/Microsoft/WindowsApps" "C:/Users/yasha/scoop/apps/perl/current/perl/bin" "C:/Users/yasha/scoop/apps/gcc/current/bin "C:/Users/yasha/scoop/apps/llvm/14.0./bin/clang.exe" 
 C:/Users/yasha/dotfiles/config/nushell/config.nu:3:: 
 C:/Users/yasha/dotfiles/config/nushell/config.nu:4:: # ( env.Path | append ["C:  Users  yasha  dotfiles  scripts" "C:  Users  yasha  scoop  apps" "C:  Users  yasha  scoop  shims" )
 C:/Users/yasha/dotfiles/config/nushell/config.nu:5:: 
 C:/Users/yasha/dotfiles/config/nushell/config.nu:6:: source ~/.zoxide.nu
 C:/Users/yasha/dotfiles/config/nushell/config.nu:7:: source ~/.cache/starship/init.nu
 C:/Users/yasha/dotfiles/config/nushell/config.nu:8:: def neo [file: string  {
 C:/Users/yasha/dotfiles/config/nushell/config.nu:9:: # Invoke Expression  neo   multigrid  1
 C:/Users/yasha/dotfiles/config/nushell/config.nu:10:: neovide   multigrid  file
 C:/Users/yasha/dotfiles/config/nushell/config.nu:11:: 
 C:/Users/yasha/dotfiles/config/nushell/config.nu:12:: let env HOME = "C:/Users/yasha"
 C:/Users/yasha/dotfiles/config/nushell/config.nu:13:: let HOME = "C:/Users/yasha"
 C:/Users/yasha/dotfiles/config/nushell/config.nu:14:: def swap [  {
 C:/Users/yasha/dotfiles/config/nushell/config.nu:15:: rm  "( HOME)/AppData/Local/nvim data/swap/*"
 C:/Users/yasha/dotfiles/config/nushell/config.nu:16:: 
 C:/Users/yasha/dotfiles/config/nushell/config.nu:17:: # let profile =  "( HOME)/dotfiles/config/nvim/init.vim"
 C:/Users/yasha/dotfiles/config/nushell/config.nu:18:: def nf [  {
 C:/Users/yasha/dotfiles/config/nushell/config.nu:19:: let  ho = (fd .  HOME  H  E /.undo/*  E /undo/*  E /tmp/*  E *.pdf | fzf | str trim)
 C:/Users/yasha/dotfiles/config/nushell/config.nu:20:: neovide   multigrid  ho 
 C:/Users/yasha/dotfiles/config/nushell/config.nu:21:: 
 C:/Users/yasha/dotfiles/config/nushell/config.nu:22:: 
 C:/Users/yasha/dotfiles/config/nushell/config.nu:23:: def killn [name: string  { ps | where name ==  name | each {|it| kill   force  it.pid 
 C:/Users/yasha/dotfiles/config/nushell/config.nu:24:: 
 C:/Users/yasha/dotfiles/config/nushell/config.nu:25:: alias hello = ( echo "hello" )
 C:/Users/yasha/dotfiles/config/nushell/config.nu:26:: alias j = __zoxide_z
 C:/Users/yasha/dotfiles/config/nushell/config.nu:27:: def vrc [  { neo  "( HOME)/dotfiles/config/nvimnew/init.vim" 
 C:/Users/yasha/dotfiles/config/nushell/config.nu:28:: def lfrc [  { neo  "( HOME)/dotfiles/config/lf/lfrc"  
 C:/Users/yasha/dotfiles/config/nushell/config.nu:29:: # def psrc [  { neo  profile  
 C:/Users/yasha/dotfiles/config/nushell/config.nu:30:: def nurc [  { neo  "( HOME)/dotfiles/config/nushell/config.nu"
 C:/Users/yasha/dotfiles/config/nushell/config.nu:31:: def texi [file:string  { pdflatex  file line error  synctex=1   interaction=nonstopmode  recorder  file 
 C:/Users/yasha/dotfiles/config/nushell/config.nu:32:: def latexi [file:string  { latexmk  g  pdf  file line error  synctex=1   interaction=nonstopmode  recorder  f  file
 C:/Users/yasha/dotfiles/config/nushell/config.nu:33:: def pvc [file:string  { latexmk  pdf  pvc  file line error  synctex=1   interaction=nonstopmode  recorder  f  file 
 C:/Users/yasha/dotfiles/config/nushell/config.nu:34:: def lat [file:string  { latexmk  pvc  pdf  file line error  synctex=1  interaction=nonstopmode  recorder  f  g  file
 C:/Users/yasha/dotfiles/config/nushell/config.nu:35:: #
 C:/Users/yasha/dotfiles/config/nushell/config.nu:36:: def pushmod [  { git submodule foreach git add . ; git submodule foreach git commit  m  a ; git submodule foreach git push origin master; git add . ; git commit  m  a; git push   all origin 
 C:/Users/yasha/dotfiles/config/nushell/config.nu:37:: def push [  { git add . ; git commit  m  a ; git push   all origin 
 C:/Users/yasha/dotfiles/config/nushell/config.nu:38:: def pull [  { git pull   recurse submodules ; git submodule update   recursive   remote 
 C:/Users/yasha/dotfiles/config/nushell/config.nu:39:: def pullmaster [  { git pull   recurse submodules ; git submodule update   recursive   remote ; git submodule foreach git checkout master ; git submodule foreach git pull   all
 C:/Users/yasha/dotfiles/config/nushell/config.nu:40:: 
 C:/Users/yasha/dotfiles/config/nushell/config.nu:41:: def pushgh [  { cd  "( HOME)/web" ; pandoc index.md  o index.html ; git add . ; git commit  m  a ; git push origin gh pages 
 C:/Users/yasha/dotfiles/config/nushell/config.nu:42:: def hw [  { pandoc  "( HOME)/web/classes/AlgTop/2022.md"  o  "( HOME)/web/classes/AlgTop/2022.html" ; pandoc  "( HOME)/web/classes/CalcIII/2022.md"   o  "( HOME)/web/classes/CalcIII/2022.html" ; cd "( HOME)/web" ; git add . ; git commit  m  a ; git push origin gh pages  
 C:/Users/yasha/dotfiles/config/nushell/config.nu:43:: def pdf [file:string  { zathura  file 
 C:/Users/yasha/dotfiles/config/nushell/config.nu:44:: 
 C:/Users/yasha/dotfiles/config/nushell/config.nu:45:: alias config = ( cd  "( HOME)/dotfiles"; push; cd  "( HOME)/workspacemodules"; pushmod; cd  "( HOME)/workspace"; push; cd web pushgh; pacman  Qqe >  "( HOME)/dotfiles/pkglist.txt" )
 C:/Users/yasha/dotfiles/config/nushell/config.nu:46:: 
 C:/Users/yasha/dotfiles/config/nushell/config.nu:47:: def sendFunction [file:string  {
 C:/Users/yasha/dotfiles/config/nushell/config.nu:48:: let cwdb =  env.PWD
 C:/Users/yasha/dotfiles/config/nushell/config.nu:49:: cd  "( HOME)/web"
 C:/Users/yasha/dotfiles/config/nushell/config.nu:50:: git pull
 C:/Users/yasha/dotfiles/config/nushell/config.nu:51:: cd  cwdb
 C:/Users/yasha/dotfiles/config/nushell/config.nu:52:: cp  file  "( HOME)/web/papers"
 C:/Users/yasha/dotfiles/config/nushell/config.nu:53:: cd  "( HOME)/web"
 C:/Users/yasha/dotfiles/config/nushell/config.nu:54:: git add .
 C:/Users/yasha/dotfiles/config/nushell/config.nu:55:: git commit  m  a
 C:/Users/yasha/dotfiles/config/nushell/config.nu:56:: git push origin gh pages
 C:/Users/yasha/dotfiles/config/nushell/config.nu:57:: cd  cwdb
 C:/Users/yasha/dotfiles/config/nushell/config.nu:58:: 
 C:/Users/yasha/dotfiles/config/nushell/config.nu:59:: alias send = sendFunction
 C:/Users/yasha/dotfiles/config/nushell/config.nu:60:: def env lf [...opt  { source C:/Users/yasha/dotfiles/scripts/lfcd.nu
 C:/Users/yasha/dotfiles/config/nushell/config.nu:61:: main  opt
 C:/Users/yasha/dotfiles/config/nushell/config.nu:62:: let dir = ((open "C:  Users  yasha  AppData  Local  Temp  tmp9E2XX.tmp") | str trim)
 C:/Users/yasha/dotfiles/config/nushell/config.nu:63::  dir | clip
 C:/Users/yasha/dotfiles/config/nushell/config.nu:64:: cd  dir
 C:/Users/yasha/dotfiles/config/nushell/config.nu:65:: 
 C:/Users/yasha/dotfiles/config/nushell/config.nu:66:: def update [  { scoop update  a; scoop export > ~/dotfiles/scoopPackageList.json 
 C:/Users/yasha/dotfiles/config/nushell/config.nu:67:: 
 C:/Users/yasha/dotfiles/config/nushell/config.nu:68:: module completions {
 C:/Users/yasha/dotfiles/config/nushell/config.nu:69::   # Custom completions for external commands (those outside of Nushell)
 C:/Users/yasha/dotfiles/config/nushell/config.nu:70::   # Each completions has two parts: the form of the external command, including its flags and parameters
 C:/Users/yasha/dotfiles/config/nushell/config.nu:71::   # and a helper command that knows how to complete values for those flags and parameters
 C:/Users/yasha/dotfiles/config/nushell/config.nu:72::   #
 C:/Users/yasha/dotfiles/config/nushell/config.nu:73::   # This is a simplified version of completions for git branches and git remotes
 C:/Users/yasha/dotfiles/config/nushell/config.nu:74:: 
 C:/Users/yasha/dotfiles/config/nushell/config.nu:75::   def "nu complete git branches" [  {
 C:/Users/yasha/dotfiles/config/nushell/config.nu:76::     ^git branch | lines | each { |line|  line | str replace '[ * +  ' '' | str trim 
 C:/Users/yasha/dotfiles/config/nushell/config.nu:77::   
 C:/Users/yasha/dotfiles/config/nushell/config.nu:78:: 
 C:/Users/yasha/dotfiles/config/nushell/config.nu:79::   def "nu complete git remotes" [  {
 C:/Users/yasha/dotfiles/config/nushell/config.nu:80::     ^git remote | lines | each { |line|  line | str trim 
 C:/Users/yasha/dotfiles/config/nushell/config.nu:81::   
 C:/Users/yasha/dotfiles/config/nushell/config.nu:82:: 
 C:/Users/yasha/dotfiles/config/nushell/config.nu:83::   # Download objects and refs from another repository
 C:/Users/yasha/dotfiles/config/nushell/config.nu:84::   export extern "git fetch" [
 C:/Users/yasha/dotfiles/config/nushell/config.nu:85::     repository?: string@"nu complete git remotes" # name of the branch to fetch
 C:/Users/yasha/dotfiles/config/nushell/config.nu:86::       all                                         # Fetch all remotes
 C:/Users/yasha/dotfiles/config/nushell/config.nu:87::       append( a)                                  # Append ref names and object names to .git/FETCH_HEAD
 C:/Users/yasha/dotfiles/config/nushell/config.nu:88::       atomic                                      # Use an atomic transaction to update local refs.
 C:/Users/yasha/dotfiles/config/nushell/config.nu:89::       depth: int                                  # Limit fetching to n commits from the tip
 C:/Users/yasha/dotfiles/config/nushell/config.nu:90::       deepen: int                                 # Limit fetching to n commits from the current shallow boundary
 C:/Users/yasha/dotfiles/config/nushell/config.nu:91::       shallow since: string                       # Deepen or shorten the history by date
 C:/Users/yasha/dotfiles/config/nushell/config.nu:92::       shallow exclude: string                     # Deepen or shorten the history by branch/tag
 C:/Users/yasha/dotfiles/config/nushell/config.nu:93::       unshallow                                   # Fetch all available history
 C:/Users/yasha/dotfiles/config/nushell/config.nu:94::       update shallow                              # Update .git/shallow to accept new refs
 C:/Users/yasha/dotfiles/config/nushell/config.nu:95::       negotiation tip: string                     # Specify which commit/glob to report while fetching
 C:/Users/yasha/dotfiles/config/nushell/config.nu:96::       negotiate only                              # Do not fetch, only print common ancestors
 C:/Users/yasha/dotfiles/config/nushell/config.nu:97::       dry run                                     # Show what would be done
 C:/Users/yasha/dotfiles/config/nushell/config.nu:98::       write fetch head                            # Write fetched refs in FETCH_HEAD (default)
 C:/Users/yasha/dotfiles/config/nushell/config.nu:99::       no write fetch head                         # Do not write FETCH_HEAD
 C:/Users/yasha/dotfiles/config/nushell/config.nu:100::       force( f)                                   # Always update the local branch
 C:/Users/yasha/dotfiles/config/nushell/config.nu:101::       keep( k)                                    # Keep dowloaded pack
 C:/Users/yasha/dotfiles/config/nushell/config.nu:102::       multiple                                    # Allow several arguments to be specified
 C:/Users/yasha/dotfiles/config/nushell/config.nu:103::       auto maintenance                            # Run 'git maintenance run   auto' at the end (default)
 C:/Users/yasha/dotfiles/config/nushell/config.nu:104::       no auto maintenance                         # Don't run 'git maintenance' at the end
 C:/Users/yasha/dotfiles/config/nushell/config.nu:105::       auto gc                                     # Run 'git maintenance run   auto' at the end (default)
 C:/Users/yasha/dotfiles/config/nushell/config.nu:106::       no auto gc                                  # Don't run 'git maintenance' at the end
 C:/Users/yasha/dotfiles/config/nushell/config.nu:107::       write commit graph                          # Write a commit graph after fetching
 C:/Users/yasha/dotfiles/config/nushell/config.nu:108::       no write commit graph                       # Don't write a commit graph after fetching
 C:/Users/yasha/dotfiles/config/nushell/config.nu:109::       prefetch                                    # Place all refs into the refs/prefetch/ namespace
 C:/Users/yasha/dotfiles/config/nushell/config.nu:110::       prune( p)                                   # Remove obsolete remote tracking references
 C:/Users/yasha/dotfiles/config/nushell/config.nu:111::       prune tags( P)                              # Remove any local tags that do not exist on the remote
 C:/Users/yasha/dotfiles/config/nushell/config.nu:112::       no tags( n)                                 # Disable automatic tag following
 C:/Users/yasha/dotfiles/config/nushell/config.nu:113::       refmap: string                              # Use this refspec to map the refs to remote tracking branches
 C:/Users/yasha/dotfiles/config/nushell/config.nu:114::       tags( t)                                    # Fetch all tags
 C:/Users/yasha/dotfiles/config/nushell/config.nu:115::       recurse submodules: string                  # Fetch new commits of populated submodules (yes/on demand/no)
 C:/Users/yasha/dotfiles/config/nushell/config.nu:116::       jobs( j): int                               # Number of parallel children
 C:/Users/yasha/dotfiles/config/nushell/config.nu:117::       no recurse submodules                       # Disable recursive fetching of submodules
 C:/Users/yasha/dotfiles/config/nushell/config.nu:118::       set upstream                                # Add upstream (tracking) reference
 C:/Users/yasha/dotfiles/config/nushell/config.nu:119::       submodule prefix: string                    # Prepend to paths printed in informative messages
 C:/Users/yasha/dotfiles/config/nushell/config.nu:120::       upload pack: string                         # Non default path for remote command
 C:/Users/yasha/dotfiles/config/nushell/config.nu:121::       quiet( q)                                   # Silence internally used git commands
 C:/Users/yasha/dotfiles/config/nushell/config.nu:122::       verbose( v)                                 # Be verbose
 C:/Users/yasha/dotfiles/config/nushell/config.nu:123::       progress                                    # Report progress on stderr
 C:/Users/yasha/dotfiles/config/nushell/config.nu:124::       server option( o): string                   # Pass options for the server to handle
 C:/Users/yasha/dotfiles/config/nushell/config.nu:125::       show forced updates                         # Check if a branch is force updated
 C:/Users/yasha/dotfiles/config/nushell/config.nu:126::       no show forced updates                      # Don't check if a branch is force updated
 C:/Users/yasha/dotfiles/config/nushell/config.nu:127::      4                                            # Use IPv4 addresses, ignore IPv6 addresses
 C:/Users/yasha/dotfiles/config/nushell/config.nu:128::      6                                            # Use IPv6 addresses, ignore IPv4 addresses
 C:/Users/yasha/dotfiles/config/nushell/config.nu:129::    
 C:/Users/yasha/dotfiles/config/nushell/config.nu:130:: 
 C:/Users/yasha/dotfiles/config/nushell/config.nu:131::   # Check out git branches and files
 C:/Users/yasha/dotfiles/config/nushell/config.nu:132::   export extern "git checkout" [
 C:/Users/yasha/dotfiles/config/nushell/config.nu:133::     ...targets: string@"nu complete git branches"   # name of the branch or files to checkout
 C:/Users/yasha/dotfiles/config/nushell/config.nu:134::       conflict: string                              # conflict style (merge or diff3)
 C:/Users/yasha/dotfiles/config/nushell/config.nu:135::       detach( d)                                    # detach HEAD at named commit
 C:/Users/yasha/dotfiles/config/nushell/config.nu:136::       force( f)                                     # force checkout (throw away local modifications)
 C:/Users/yasha/dotfiles/config/nushell/config.nu:137::       guess                                         # second guess 'git checkout <no such branch>' (default)
 C:/Users/yasha/dotfiles/config/nushell/config.nu:138::       ignore other worktrees                        # do not check if another worktree is holding the given ref
 C:/Users/yasha/dotfiles/config/nushell/config.nu:139::       ignore skip worktree bits                     # do not limit pathspecs to sparse entries only
 C:/Users/yasha/dotfiles/config/nushell/config.nu:140::       merge( m)                                     # perform a 3 way merge with the new branch
 C:/Users/yasha/dotfiles/config/nushell/config.nu:141::       orphan: string                                # new unparented branch
 C:/Users/yasha/dotfiles/config/nushell/config.nu:142::       ours( 2)                                      # checkout our version for unmerged files
 C:/Users/yasha/dotfiles/config/nushell/config.nu:143::       overlay                                       # use overlay mode (default)
 C:/Users/yasha/dotfiles/config/nushell/config.nu:144::       overwrite ignore                              # update ignored files (default)
 C:/Users/yasha/dotfiles/config/nushell/config.nu:145::       patch( p)                                     # select hunks interactively
 C:/Users/yasha/dotfiles/config/nushell/config.nu:146::       pathspec from file: string                    # read pathspec from file
 C:/Users/yasha/dotfiles/config/nushell/config.nu:147::       progress                                      # force progress reporting
 C:/Users/yasha/dotfiles/config/nushell/config.nu:148::       quiet( q)                                     # suppress progress reporting
 C:/Users/yasha/dotfiles/config/nushell/config.nu:149::       recurse submodules: string                    # control recursive updating of submodules
 C:/Users/yasha/dotfiles/config/nushell/config.nu:150::       theirs( 3)                                    # checkout their version for unmerged files
 C:/Users/yasha/dotfiles/config/nushell/config.nu:151::       track( t)                                     # set upstream info for new branch
 C:/Users/yasha/dotfiles/config/nushell/config.nu:152::      b: string                                      # create and checkout a new branch
 C:/Users/yasha/dotfiles/config/nushell/config.nu:153::      B: string                                      # create/reset and checkout a branch
 C:/Users/yasha/dotfiles/config/nushell/config.nu:154::      l                                              # create reflog for new branch
 C:/Users/yasha/dotfiles/config/nushell/config.nu:155::    
 C:/Users/yasha/dotfiles/config/nushell/config.nu:156:: 
 C:/Users/yasha/dotfiles/config/nushell/config.nu:157::   # Push changes
 C:/Users/yasha/dotfiles/config/nushell/config.nu:158::   export extern "git push" [
 C:/Users/yasha/dotfiles/config/nushell/config.nu:159::     remote?: string@"nu complete git remotes",      # the name of the remote
 C:/Users/yasha/dotfiles/config/nushell/config.nu:160::     ...refs: string@"nu complete git branches"      # the branch / refspec
 C:/Users/yasha/dotfiles/config/nushell/config.nu:161::       all                                           # push all refs
 C:/Users/yasha/dotfiles/config/nushell/config.nu:162::       atomic                                        # request atomic transaction on remote side
 C:/Users/yasha/dotfiles/config/nushell/config.nu:163::       delete( d)                                    # delete refs
 C:/Users/yasha/dotfiles/config/nushell/config.nu:164::       dry run( n)                                   # dry run
 C:/Users/yasha/dotfiles/config/nushell/config.nu:165::       exec: string                                  # receive pack program
 C:/Users/yasha/dotfiles/config/nushell/config.nu:166::       follow tags                                   # push missing but relevant tags
 C:/Users/yasha/dotfiles/config/nushell/config.nu:167::       force with lease: string                      # require old value of ref to be at this value
 C:/Users/yasha/dotfiles/config/nushell/config.nu:168::       force( f)                                     # force updates
 C:/Users/yasha/dotfiles/config/nushell/config.nu:169::       ipv4( 4)                                      # use IPv4 addresses only
 C:/Users/yasha/dotfiles/config/nushell/config.nu:170::       ipv6( 6)                                      # use IPv6 addresses only
 C:/Users/yasha/dotfiles/config/nushell/config.nu:171::       mirror                                        # mirror all refs
 C:/Users/yasha/dotfiles/config/nushell/config.nu:172::       no verify                                     # bypass pre push hook
 C:/Users/yasha/dotfiles/config/nushell/config.nu:173::       porcelain                                     # machine readable output
 C:/Users/yasha/dotfiles/config/nushell/config.nu:174::       progress                                      # force progress reporting
 C:/Users/yasha/dotfiles/config/nushell/config.nu:175::       prune                                         # prune locally removed refs
 C:/Users/yasha/dotfiles/config/nushell/config.nu:176::       push option( o): string                       # option to transmit
 C:/Users/yasha/dotfiles/config/nushell/config.nu:177::       quiet( q)                                     # be more quiet
 C:/Users/yasha/dotfiles/config/nushell/config.nu:178::       receive pack: string                          # receive pack program
 C:/Users/yasha/dotfiles/config/nushell/config.nu:179::       recurse submodules: string                    # control recursive pushing of submodules
 C:/Users/yasha/dotfiles/config/nushell/config.nu:180::       repo: string                                  # repository
 C:/Users/yasha/dotfiles/config/nushell/config.nu:181::       set upstream( u)                              # set upstream for git pull/status
 C:/Users/yasha/dotfiles/config/nushell/config.nu:182::       signed: string                                # GPG sign the push
 C:/Users/yasha/dotfiles/config/nushell/config.nu:183::       tags                                          # push tags (can't be used with   all or   mirror)
 C:/Users/yasha/dotfiles/config/nushell/config.nu:184::       thin                                          # use thin pack
 C:/Users/yasha/dotfiles/config/nushell/config.nu:185::       verbose( v)                                   # be more verbose
 C:/Users/yasha/dotfiles/config/nushell/config.nu:186::    
 C:/Users/yasha/dotfiles/config/nushell/config.nu:187:: 
 C:/Users/yasha/dotfiles/config/nushell/config.nu:188:: 
 C:/Users/yasha/dotfiles/config/nushell/config.nu:189:: # Get just the extern definitions without the custom completion commands
 C:/Users/yasha/dotfiles/config/nushell/config.nu:190:: use completions *
 C:/Users/yasha/dotfiles/config/nushell/config.nu:191:: 
 C:/Users/yasha/dotfiles/config/nushell/config.nu:192:: # for more information on themes see
 C:/Users/yasha/dotfiles/config/nushell/config.nu:193:: # https://www.nushell.sh/book/coloring_and_theming.html
 C:/Users/yasha/dotfiles/config/nushell/config.nu:194:: let default_theme = {
 C:/Users/yasha/dotfiles/config/nushell/config.nu:195::     # color for nushell primitives
 C:/Users/yasha/dotfiles/config/nushell/config.nu:196::     separator: white
 C:/Users/yasha/dotfiles/config/nushell/config.nu:197::     leading_trailing_space_bg: { attr: n  # no fg, no bg, attr none effectively turns this off
 C:/Users/yasha/dotfiles/config/nushell/config.nu:198::     header: green_bold
 C:/Users/yasha/dotfiles/config/nushell/config.nu:199::     empty: blue
 C:/Users/yasha/dotfiles/config/nushell/config.nu:200::     bool: white
 C:/Users/yasha/dotfiles/config/nushell/config.nu:201::     int: white
 C:/Users/yasha/dotfiles/config/nushell/config.nu:202::     filesize: white
 C:/Users/yasha/dotfiles/config/nushell/config.nu:203::     duration: white
 C:/Users/yasha/dotfiles/config/nushell/config.nu:204::     date: white
 C:/Users/yasha/dotfiles/config/nushell/config.nu:205::     range: white
 C:/Users/yasha/dotfiles/config/nushell/config.nu:206::     float: white
 C:/Users/yasha/dotfiles/config/nushell/config.nu:207::     string: white
 C:/Users/yasha/dotfiles/config/nushell/config.nu:208::     nothing: white
 C:/Users/yasha/dotfiles/config/nushell/config.nu:209::     binary: white
 C:/Users/yasha/dotfiles/config/nushell/config.nu:210::     cellpath: white
 C:/Users/yasha/dotfiles/config/nushell/config.nu:211::     row_index: green_bold
 C:/Users/yasha/dotfiles/config/nushell/config.nu:212::     record: white
 C:/Users/yasha/dotfiles/config/nushell/config.nu:213::     list: white
 C:/Users/yasha/dotfiles/config/nushell/config.nu:214::     block: white
 C:/Users/yasha/dotfiles/config/nushell/config.nu:215::     hints: dark_gray
 C:/Users/yasha/dotfiles/config/nushell/config.nu:216:: 
 C:/Users/yasha/dotfiles/config/nushell/config.nu:217::     # shapes are used to change the cli syntax highlighting
 C:/Users/yasha/dotfiles/config/nushell/config.nu:218::     shape_garbage: { fg: "#FFFFFF" bg: "#FF0000" attr: b
 C:/Users/yasha/dotfiles/config/nushell/config.nu:219::     shape_binary: purple_bold
 C:/Users/yasha/dotfiles/config/nushell/config.nu:220::     shape_bool: light_cyan
 C:/Users/yasha/dotfiles/config/nushell/config.nu:221::     shape_int: purple_bold
 C:/Users/yasha/dotfiles/config/nushell/config.nu:222::     shape_float: purple_bold
 C:/Users/yasha/dotfiles/config/nushell/config.nu:223::     shape_range: yellow_bold
 C:/Users/yasha/dotfiles/config/nushell/config.nu:224::     shape_internalcall: cyan_bold
 C:/Users/yasha/dotfiles/config/nushell/config.nu:225::     shape_external: cyan
 C:/Users/yasha/dotfiles/config/nushell/config.nu:226::     shape_externalarg: green_bold
 C:/Users/yasha/dotfiles/config/nushell/config.nu:227::     shape_literal: blue
 C:/Users/yasha/dotfiles/config/nushell/config.nu:228::     shape_operator: yellow
 C:/Users/yasha/dotfiles/config/nushell/config.nu:229::     shape_signature: green_bold
 C:/Users/yasha/dotfiles/config/nushell/config.nu:230::     shape_string: green
 C:/Users/yasha/dotfiles/config/nushell/config.nu:231::     shape_string_interpolation: cyan_bold
 C:/Users/yasha/dotfiles/config/nushell/config.nu:232::     shape_datetime: cyan_bold
 C:/Users/yasha/dotfiles/config/nushell/config.nu:233::     shape_list: cyan_bold
 C:/Users/yasha/dotfiles/config/nushell/config.nu:234::     shape_table: blue_bold
 C:/Users/yasha/dotfiles/config/nushell/config.nu:235::     shape_record: cyan_bold
 C:/Users/yasha/dotfiles/config/nushell/config.nu:236::     shape_block: blue_bold
 C:/Users/yasha/dotfiles/config/nushell/config.nu:237::     shape_filepath: cyan
 C:/Users/yasha/dotfiles/config/nushell/config.nu:238::     shape_globpattern: cyan_bold
 C:/Users/yasha/dotfiles/config/nushell/config.nu:239::     shape_variable: purple
 C:/Users/yasha/dotfiles/config/nushell/config.nu:240::     shape_flag: blue_bold
 C:/Users/yasha/dotfiles/config/nushell/config.nu:241::     shape_custom: green
 C:/Users/yasha/dotfiles/config/nushell/config.nu:242::     shape_nothing: light_cyan
 C:/Users/yasha/dotfiles/config/nushell/config.nu:243:: 
 C:/Users/yasha/dotfiles/config/nushell/config.nu:244:: 
 C:/Users/yasha/dotfiles/config/nushell/config.nu:245:: # The default config record. This is where much of your global configuration is setup.
 C:/Users/yasha/dotfiles/config/nushell/config.nu:246:: let env config = {
 C:/Users/yasha/dotfiles/config/nushell/config.nu:247::   filesize_metric: false
 C:/Users/yasha/dotfiles/config/nushell/config.nu:248::   table_mode: rounded # basic, compact, compact_double, light, thin, with_love, rounded, reinforced, heavy, none, other
 C:/Users/yasha/dotfiles/config/nushell/config.nu:249::   use_ls_colors: true
 C:/Users/yasha/dotfiles/config/nushell/config.nu:250::   rm_always_trash: false
 C:/Users/yasha/dotfiles/config/nushell/config.nu:251::   color_config:  default_theme
 C:/Users/yasha/dotfiles/config/nushell/config.nu:252::   use_grid_icons: true
 C:/Users/yasha/dotfiles/config/nushell/config.nu:253::   footer_mode: "25" # always, never, number_of_rows, auto
 C:/Users/yasha/dotfiles/config/nushell/config.nu:254::   quick_completions: true  # set this to false to prevent auto selecting completions when only one remains
 C:/Users/yasha/dotfiles/config/nushell/config.nu:255::   partial_completions: true  # set this to false to prevent partial filling of the prompt
 C:/Users/yasha/dotfiles/config/nushell/config.nu:256::   completion_algorithm: "prefix"  # prefix, fuzzy
 C:/Users/yasha/dotfiles/config/nushell/config.nu:257::   animate_prompt: false # redraw the prompt every second
 C:/Users/yasha/dotfiles/config/nushell/config.nu:258::   float_precision: 2
 C:/Users/yasha/dotfiles/config/nushell/config.nu:259::   # buffer_editor: "emacs" # command that will be used to edit the current line buffer with ctrl+o, if unset fallback to  env.EDITOR and  env.VISUAL
 C:/Users/yasha/dotfiles/config/nushell/config.nu:260::   use_ansi_coloring: true
 C:/Users/yasha/dotfiles/config/nushell/config.nu:261::   filesize_format: "auto" # b, kb, kib, mb, mib, gb, gib, tb, tib, pb, pib, eb, eib, zb, zib, auto
 C:/Users/yasha/dotfiles/config/nushell/config.nu:262::   edit_mode: vi # emacs, vi
 C:/Users/yasha/dotfiles/config/nushell/config.nu:263::   max_history_size: 10000 # Session has to be reloaded for this to take effect
 C:/Users/yasha/dotfiles/config/nushell/config.nu:264::   sync_history_on_enter: true # Enable to share the history between multiple sessions, else you have to close the session to persist history to file
 C:/Users/yasha/dotfiles/config/nushell/config.nu:265::   shell_integration: true # enables terminal markers and a workaround to arrow keys stop working issue
 C:/Users/yasha/dotfiles/config/nushell/config.nu:266::   disable_table_indexes: false # set to true to remove the index column from tables
 C:/Users/yasha/dotfiles/config/nushell/config.nu:267::   cd_with_abbreviations: false # set to true to allow you to do things like cd s/o/f and nushell expand it to cd some/other/folder
 C:/Users/yasha/dotfiles/config/nushell/config.nu:268::   hooks: {
 C:/Users/yasha/dotfiles/config/nushell/config.nu:269::     pre_prompt: [{
 C:/Users/yasha/dotfiles/config/nushell/config.nu:270::        nothing  # replace with source code to run before the prompt is shown
 C:/Users/yasha/dotfiles/config/nushell/config.nu:271::      
 C:/Users/yasha/dotfiles/config/nushell/config.nu:272::     pre_execution: [{
 C:/Users/yasha/dotfiles/config/nushell/config.nu:273::        nothing  # replace with source code to run before the repl input is run
 C:/Users/yasha/dotfiles/config/nushell/config.nu:274::      
 C:/Users/yasha/dotfiles/config/nushell/config.nu:275::     env_change: {
 C:/Users/yasha/dotfiles/config/nushell/config.nu:276::       PWD: [{|before, after|
 C:/Users/yasha/dotfiles/config/nushell/config.nu:277::          nothing  # replace with source code to run if the PWD environment is different since the last repl input
 C:/Users/yasha/dotfiles/config/nushell/config.nu:278::        
 C:/Users/yasha/dotfiles/config/nushell/config.nu:279::     
 C:/Users/yasha/dotfiles/config/nushell/config.nu:280::   
 C:/Users/yasha/dotfiles/config/nushell/config.nu:281::   menus: [
 C:/Users/yasha/dotfiles/config/nushell/config.nu:282::       # Configuration for default nushell menus
 C:/Users/yasha/dotfiles/config/nushell/config.nu:283::       # Note the lack of souce parameter
 C:/Users/yasha/dotfiles/config/nushell/config.nu:284::       {
 C:/Users/yasha/dotfiles/config/nushell/config.nu:285::         name: completion_menu
 C:/Users/yasha/dotfiles/config/nushell/config.nu:286::         only_buffer_difference: false
 C:/Users/yasha/dotfiles/config/nushell/config.nu:287::         marker: "| "
 C:/Users/yasha/dotfiles/config/nushell/config.nu:288::         type: {
 C:/Users/yasha/dotfiles/config/nushell/config.nu:289::             layout: columnar
 C:/Users/yasha/dotfiles/config/nushell/config.nu:290::             columns: 4
 C:/Users/yasha/dotfiles/config/nushell/config.nu:291::             col_width: 20   # Optional value. If missing all the screen width is used to calculate column width
 C:/Users/yasha/dotfiles/config/nushell/config.nu:292::             col_padding: 2
 C:/Users/yasha/dotfiles/config/nushell/config.nu:293::         
 C:/Users/yasha/dotfiles/config/nushell/config.nu:294::         style: {
 C:/Users/yasha/dotfiles/config/nushell/config.nu:295::             text: green
 C:/Users/yasha/dotfiles/config/nushell/config.nu:296::             selected_text: green_reverse
 C:/Users/yasha/dotfiles/config/nushell/config.nu:297::             description_text: yellow
 C:/Users/yasha/dotfiles/config/nushell/config.nu:298::         
 C:/Users/yasha/dotfiles/config/nushell/config.nu:299::       
 C:/Users/yasha/dotfiles/config/nushell/config.nu:300::       {
 C:/Users/yasha/dotfiles/config/nushell/config.nu:301::         name: history_menu
 C:/Users/yasha/dotfiles/config/nushell/config.nu:302::         only_buffer_difference: true
 C:/Users/yasha/dotfiles/config/nushell/config.nu:303::         marker: "? "
 C:/Users/yasha/dotfiles/config/nushell/config.nu:304::         type: {
 C:/Users/yasha/dotfiles/config/nushell/config.nu:305::             layout: list
 C:/Users/yasha/dotfiles/config/nushell/config.nu:306::             page_size: 10
 C:/Users/yasha/dotfiles/config/nushell/config.nu:307::         
 C:/Users/yasha/dotfiles/config/nushell/config.nu:308::         style: {
 C:/Users/yasha/dotfiles/config/nushell/config.nu:309::             text: green
 C:/Users/yasha/dotfiles/config/nushell/config.nu:310::             selected_text: green_reverse
 C:/Users/yasha/dotfiles/config/nushell/config.nu:311::             description_text: yellow
 C:/Users/yasha/dotfiles/config/nushell/config.nu:312::         
 C:/Users/yasha/dotfiles/config/nushell/config.nu:313::       
 C:/Users/yasha/dotfiles/config/nushell/config.nu:314::       {
 C:/Users/yasha/dotfiles/config/nushell/config.nu:315::         name: help_menu
 C:/Users/yasha/dotfiles/config/nushell/config.nu:316::         only_buffer_difference: true
 C:/Users/yasha/dotfiles/config/nushell/config.nu:317::         marker: "? "
 C:/Users/yasha/dotfiles/config/nushell/config.nu:318::         type: {
 C:/Users/yasha/dotfiles/config/nushell/config.nu:319::             layout: description
 C:/Users/yasha/dotfiles/config/nushell/config.nu:320::             columns: 4
 C:/Users/yasha/dotfiles/config/nushell/config.nu:321::             col_width: 20   # Optional value. If missing all the screen width is used to calculate column width
 C:/Users/yasha/dotfiles/config/nushell/config.nu:322::             col_padding: 2
 C:/Users/yasha/dotfiles/config/nushell/config.nu:323::             selection_rows: 4
 C:/Users/yasha/dotfiles/config/nushell/config.nu:324::             description_rows: 10
 C:/Users/yasha/dotfiles/config/nushell/config.nu:325::         
 C:/Users/yasha/dotfiles/config/nushell/config.nu:326::         style: {
 C:/Users/yasha/dotfiles/config/nushell/config.nu:327::             text: green
 C:/Users/yasha/dotfiles/config/nushell/config.nu:328::             selected_text: green_reverse
 C:/Users/yasha/dotfiles/config/nushell/config.nu:329::             description_text: yellow
 C:/Users/yasha/dotfiles/config/nushell/config.nu:330::         
 C:/Users/yasha/dotfiles/config/nushell/config.nu:331::       
 C:/Users/yasha/dotfiles/config/nushell/config.nu:332::       # Example of extra menus created using a nushell source
 C:/Users/yasha/dotfiles/config/nushell/config.nu:333::       # Use the source field to create a list of records that populates
 C:/Users/yasha/dotfiles/config/nushell/config.nu:334::       # the menu
 C:/Users/yasha/dotfiles/config/nushell/config.nu:335::       {
 C:/Users/yasha/dotfiles/config/nushell/config.nu:336::         name: commands_menu
 C:/Users/yasha/dotfiles/config/nushell/config.nu:337::         only_buffer_difference: false
 C:/Users/yasha/dotfiles/config/nushell/config.nu:338::         marker: "# "
 C:/Users/yasha/dotfiles/config/nushell/config.nu:339::         type: {
 C:/Users/yasha/dotfiles/config/nushell/config.nu:340::             layout: columnar
 C:/Users/yasha/dotfiles/config/nushell/config.nu:341::             columns: 4
 C:/Users/yasha/dotfiles/config/nushell/config.nu:342::             col_width: 20
 C:/Users/yasha/dotfiles/config/nushell/config.nu:343::             col_padding: 2
 C:/Users/yasha/dotfiles/config/nushell/config.nu:344::         
 C:/Users/yasha/dotfiles/config/nushell/config.nu:345::         style: {
 C:/Users/yasha/dotfiles/config/nushell/config.nu:346::             text: green
 C:/Users/yasha/dotfiles/config/nushell/config.nu:347::             selected_text: green_reverse
 C:/Users/yasha/dotfiles/config/nushell/config.nu:348::             description_text: yellow
 C:/Users/yasha/dotfiles/config/nushell/config.nu:349::         
 C:/Users/yasha/dotfiles/config/nushell/config.nu:350::         source: { |buffer, position|
 C:/Users/yasha/dotfiles/config/nushell/config.nu:351::              nu.scope.commands
 C:/Users/yasha/dotfiles/config/nushell/config.nu:352::             | where command =~  buffer
 C:/Users/yasha/dotfiles/config/nushell/config.nu:353::             | each { |it| {value:  it.command description:  it.usage 
 C:/Users/yasha/dotfiles/config/nushell/config.nu:354::         
 C:/Users/yasha/dotfiles/config/nushell/config.nu:355::       
 C:/Users/yasha/dotfiles/config/nushell/config.nu:356::       {
 C:/Users/yasha/dotfiles/config/nushell/config.nu:357::         name: vars_menu
 C:/Users/yasha/dotfiles/config/nushell/config.nu:358::         only_buffer_difference: true
 C:/Users/yasha/dotfiles/config/nushell/config.nu:359::         marker: "# "
 C:/Users/yasha/dotfiles/config/nushell/config.nu:360::         type: {
 C:/Users/yasha/dotfiles/config/nushell/config.nu:361::             layout: list
 C:/Users/yasha/dotfiles/config/nushell/config.nu:362::             page_size: 10
 C:/Users/yasha/dotfiles/config/nushell/config.nu:363::         
 C:/Users/yasha/dotfiles/config/nushell/config.nu:364::         style: {
 C:/Users/yasha/dotfiles/config/nushell/config.nu:365::             text: green
 C:/Users/yasha/dotfiles/config/nushell/config.nu:366::             selected_text: green_reverse
 C:/Users/yasha/dotfiles/config/nushell/config.nu:367::             description_text: yellow
 C:/Users/yasha/dotfiles/config/nushell/config.nu:368::         
 C:/Users/yasha/dotfiles/config/nushell/config.nu:369::         source: { |buffer, position|
 C:/Users/yasha/dotfiles/config/nushell/config.nu:370::              nu.scope.vars
 C:/Users/yasha/dotfiles/config/nushell/config.nu:371::             | where name =~  buffer
 C:/Users/yasha/dotfiles/config/nushell/config.nu:372::             | sort by name
 C:/Users/yasha/dotfiles/config/nushell/config.nu:373::             | each { |it| {value:  it.name description:  it.type 
 C:/Users/yasha/dotfiles/config/nushell/config.nu:374::         
 C:/Users/yasha/dotfiles/config/nushell/config.nu:375::       
 C:/Users/yasha/dotfiles/config/nushell/config.nu:376::       {
 C:/Users/yasha/dotfiles/config/nushell/config.nu:377::         name: commands_with_description
 C:/Users/yasha/dotfiles/config/nushell/config.nu:378::         only_buffer_difference: true
 C:/Users/yasha/dotfiles/config/nushell/config.nu:379::         marker: "# "
 C:/Users/yasha/dotfiles/config/nushell/config.nu:380::         type: {
 C:/Users/yasha/dotfiles/config/nushell/config.nu:381::             layout: description
 C:/Users/yasha/dotfiles/config/nushell/config.nu:382::             columns: 4
 C:/Users/yasha/dotfiles/config/nushell/config.nu:383::             col_width: 20
 C:/Users/yasha/dotfiles/config/nushell/config.nu:384::             col_padding: 2
 C:/Users/yasha/dotfiles/config/nushell/config.nu:385::             selection_rows: 4
 C:/Users/yasha/dotfiles/config/nushell/config.nu:386::             description_rows: 10
 C:/Users/yasha/dotfiles/config/nushell/config.nu:387::         
 C:/Users/yasha/dotfiles/config/nushell/config.nu:388::         style: {
 C:/Users/yasha/dotfiles/config/nushell/config.nu:389::             text: green
 C:/Users/yasha/dotfiles/config/nushell/config.nu:390::             selected_text: green_reverse
 C:/Users/yasha/dotfiles/config/nushell/config.nu:391::             description_text: yellow
 C:/Users/yasha/dotfiles/config/nushell/config.nu:392::         
 C:/Users/yasha/dotfiles/config/nushell/config.nu:393::         source: { |buffer, position|
 C:/Users/yasha/dotfiles/config/nushell/config.nu:394::              nu.scope.commands
 C:/Users/yasha/dotfiles/config/nushell/config.nu:395::             | where command =~  buffer
 C:/Users/yasha/dotfiles/config/nushell/config.nu:396::             | each { |it| {value:  it.command description:  it.usage 
 C:/Users/yasha/dotfiles/config/nushell/config.nu:397::         
 C:/Users/yasha/dotfiles/config/nushell/config.nu:398::       
 C:/Users/yasha/dotfiles/config/nushell/config.nu:399::    
 C:/Users/yasha/dotfiles/config/nushell/config.nu:400::   keybindings: [
 C:/Users/yasha/dotfiles/config/nushell/config.nu:401::   {
 C:/Users/yasha/dotfiles/config/nushell/config.nu:402::         name: histUp
 C:/Users/yasha/dotfiles/config/nushell/config.nu:403::         modifier: alt
 C:/Users/yasha/dotfiles/config/nushell/config.nu:404::         keycode: char_j
 C:/Users/yasha/dotfiles/config/nushell/config.nu:405::         mode: [emacs, vi_normal, vi_insert  
 C:/Users/yasha/dotfiles/config/nushell/config.nu:406::         event: [
 C:/Users/yasha/dotfiles/config/nushell/config.nu:407::             { send: NextHistory 
 C:/Users/yasha/dotfiles/config/nushell/config.nu:408::          
 C:/Users/yasha/dotfiles/config/nushell/config.nu:409::   
 C:/Users/yasha/dotfiles/config/nushell/config.nu:410:: 
 C:/Users/yasha/dotfiles/config/nushell/config.nu:411::   {
 C:/Users/yasha/dotfiles/config/nushell/config.nu:412::         name: histDown
 C:/Users/yasha/dotfiles/config/nushell/config.nu:413::         modifier: alt
 C:/Users/yasha/dotfiles/config/nushell/config.nu:414::         keycode: char_k
 C:/Users/yasha/dotfiles/config/nushell/config.nu:415::         mode: [emacs, vi_normal, vi_insert  
 C:/Users/yasha/dotfiles/config/nushell/config.nu:416::         event: [
 C:/Users/yasha/dotfiles/config/nushell/config.nu:417::             { send: PreviousHistory 
 C:/Users/yasha/dotfiles/config/nushell/config.nu:418::          
 C:/Users/yasha/dotfiles/config/nushell/config.nu:419::   
 C:/Users/yasha/dotfiles/config/nushell/config.nu:420:: 
 C:/Users/yasha/dotfiles/config/nushell/config.nu:421::   {
 C:/Users/yasha/dotfiles/config/nushell/config.nu:422::         name: complete
 C:/Users/yasha/dotfiles/config/nushell/config.nu:423::         modifier: alt
 C:/Users/yasha/dotfiles/config/nushell/config.nu:424::         keycode: char_a
 C:/Users/yasha/dotfiles/config/nushell/config.nu:425::         mode: [emacs, vi_normal, vi_insert  
 C:/Users/yasha/dotfiles/config/nushell/config.nu:426::         event: [
 C:/Users/yasha/dotfiles/config/nushell/config.nu:427::             { send: HistoryHintComplete 
 C:/Users/yasha/dotfiles/config/nushell/config.nu:428::          
 C:/Users/yasha/dotfiles/config/nushell/config.nu:429::   
 C:/Users/yasha/dotfiles/config/nushell/config.nu:430:: 
 C:/Users/yasha/dotfiles/config/nushell/config.nu:431::   
 C:/Users/yasha/dotfiles/config/nushell/config.nu:432::     {
 C:/Users/yasha/dotfiles/config/nushell/config.nu:433::       name: completion_menu
 C:/Users/yasha/dotfiles/config/nushell/config.nu:434::       modifier: none
 C:/Users/yasha/dotfiles/config/nushell/config.nu:435::       keycode: tab
 C:/Users/yasha/dotfiles/config/nushell/config.nu:436::       mode: vi_insert # Options: emacs vi_normal vi_insert
 C:/Users/yasha/dotfiles/config/nushell/config.nu:437::       event: {
 C:/Users/yasha/dotfiles/config/nushell/config.nu:438::         until: [
 C:/Users/yasha/dotfiles/config/nushell/config.nu:439::           { send: menu name: completion_menu 
 C:/Users/yasha/dotfiles/config/nushell/config.nu:440::           { send: menunext 
 C:/Users/yasha/dotfiles/config/nushell/config.nu:441::          
 C:/Users/yasha/dotfiles/config/nushell/config.nu:442::       
 C:/Users/yasha/dotfiles/config/nushell/config.nu:443::     
 C:/Users/yasha/dotfiles/config/nushell/config.nu:444::     {
 C:/Users/yasha/dotfiles/config/nushell/config.nu:445::       name: completion_previous
 C:/Users/yasha/dotfiles/config/nushell/config.nu:446::       modifier: shift
 C:/Users/yasha/dotfiles/config/nushell/config.nu:447::       keycode: backtab
 C:/Users/yasha/dotfiles/config/nushell/config.nu:448::       mode: [emacs, vi_normal, vi_insert  # Note: You can add the same keybinding to all modes by using a list
 C:/Users/yasha/dotfiles/config/nushell/config.nu:449::       event: { send: menuprevious 
 C:/Users/yasha/dotfiles/config/nushell/config.nu:450::     
 C:/Users/yasha/dotfiles/config/nushell/config.nu:451::     {
 C:/Users/yasha/dotfiles/config/nushell/config.nu:452::       name: history_menu
 C:/Users/yasha/dotfiles/config/nushell/config.nu:453::       modifier: control
 C:/Users/yasha/dotfiles/config/nushell/config.nu:454::       keycode: char_r
 C:/Users/yasha/dotfiles/config/nushell/config.nu:455::       mode: emacs
 C:/Users/yasha/dotfiles/config/nushell/config.nu:456::       event: { send: menu name: history_menu 
 C:/Users/yasha/dotfiles/config/nushell/config.nu:457::     
 C:/Users/yasha/dotfiles/config/nushell/config.nu:458::     {
 C:/Users/yasha/dotfiles/config/nushell/config.nu:459::       name: next_page
 C:/Users/yasha/dotfiles/config/nushell/config.nu:460::       modifier: control
 C:/Users/yasha/dotfiles/config/nushell/config.nu:461::       keycode: char_x
 C:/Users/yasha/dotfiles/config/nushell/config.nu:462::       mode: emacs
 C:/Users/yasha/dotfiles/config/nushell/config.nu:463::       event: { send: menupagenext 
 C:/Users/yasha/dotfiles/config/nushell/config.nu:464::     
 C:/Users/yasha/dotfiles/config/nushell/config.nu:465::     {
 C:/Users/yasha/dotfiles/config/nushell/config.nu:466::       name: undo_or_previous_page
 C:/Users/yasha/dotfiles/config/nushell/config.nu:467::       modifier: control
 C:/Users/yasha/dotfiles/config/nushell/config.nu:468::       keycode: char_z
 C:/Users/yasha/dotfiles/config/nushell/config.nu:469::       mode: emacs
 C:/Users/yasha/dotfiles/config/nushell/config.nu:470::       event: {
 C:/Users/yasha/dotfiles/config/nushell/config.nu:471::         until: [
 C:/Users/yasha/dotfiles/config/nushell/config.nu:472::           { send: menupageprevious 
 C:/Users/yasha/dotfiles/config/nushell/config.nu:473::           { edit: undo 
 C:/Users/yasha/dotfiles/config/nushell/config.nu:474::          
 C:/Users/yasha/dotfiles/config/nushell/config.nu:475::        
 C:/Users/yasha/dotfiles/config/nushell/config.nu:476::     
 C:/Users/yasha/dotfiles/config/nushell/config.nu:477::     # Keybindings used to trigger the user defined menus
 C:/Users/yasha/dotfiles/config/nushell/config.nu:478::     {
 C:/Users/yasha/dotfiles/config/nushell/config.nu:479::       name: commands_menu
 C:/Users/yasha/dotfiles/config/nushell/config.nu:480::       modifier: control
 C:/Users/yasha/dotfiles/config/nushell/config.nu:481::       keycode: char_t
 C:/Users/yasha/dotfiles/config/nushell/config.nu:482::       mode: [emacs, vi_normal, vi_insert 
 C:/Users/yasha/dotfiles/config/nushell/config.nu:483::       event: { send: menu name: commands_menu 
 C:/Users/yasha/dotfiles/config/nushell/config.nu:484::     
 C:/Users/yasha/dotfiles/config/nushell/config.nu:485::     {
 C:/Users/yasha/dotfiles/config/nushell/config.nu:486::       name: vars_menu
 C:/Users/yasha/dotfiles/config/nushell/config.nu:487::       modifier: control
 C:/Users/yasha/dotfiles/config/nushell/config.nu:488::       keycode: char_y
 C:/Users/yasha/dotfiles/config/nushell/config.nu:489::       mode: [emacs, vi_normal, vi_insert 
 C:/Users/yasha/dotfiles/config/nushell/config.nu:490::       event: { send: menu name: vars_menu 
 C:/Users/yasha/dotfiles/config/nushell/config.nu:491::     
 C:/Users/yasha/dotfiles/config/nushell/config.nu:492::     {
 C:/Users/yasha/dotfiles/config/nushell/config.nu:493::       name: commands_with_description
 C:/Users/yasha/dotfiles/config/nushell/config.nu:494::       modifier: control
 C:/Users/yasha/dotfiles/config/nushell/config.nu:495::       keycode: char_u
 C:/Users/yasha/dotfiles/config/nushell/config.nu:496::       mode: [emacs, vi_normal, vi_insert 
 C:/Users/yasha/dotfiles/config/nushell/config.nu:497::       event: { send: menu name: commands_with_description 
 C:/Users/yasha/dotfiles/config/nushell/config.nu:498::     
 C:/Users/yasha/dotfiles/config/nushell/config.nu:499::    
 C:/Users/yasha/dotfiles/config/nushell/config.nu:500::  
 C:/Users/yasha/dotfiles/config/nushell/config.nu:501:: 
 C:/Users/yasha/dotfiles/config/nushell/config.nu:502:: 
 C:/Users/yasha/dotfiles/config/nushell/config.nu:503:: 
 C:/Users/yasha/dotfiles/config/nushell/config.nu:504:: 
 C:/Users/yasha/dotfiles/config/nushell/config.nu:505:: # def lfn [  {
 C:/Users/yasha/dotfiles/config/nushell/config.nu:506:: # # let pwd = ((pwd) | str trim | str replace  a '/' '  ')
 C:/Users/yasha/dotfiles/config/nushell/config.nu:507:: # let tmp = "C:  Users  yasha  AppData  Local  Temp  tmp9E2.tmp"
 C:/Users/yasha/dotfiles/config/nushell/config.nu:508:: #   AppData   Local  Temp  tmpZ714.tmp"
 C:/Users/yasha/dotfiles/config/nushell/config.nu:509:: # touch C:  Users  yasha  temp.tmp 
 C:/Users/yasha/dotfiles/config/nushell/config.nu:510:: # touch C:/Users/yasha/AppData/Local/lf/temp.tmp
 C:/Users/yasha/dotfiles/config/nushell/config.nu:511:: # let tmp = ((pwsh  c [System.IO.Path ::GetTempFileName() 2> null) | str trim)
 C:/Users/yasha/dotfiles/config/nushell/config.nu:512:: #  tmp
 C:/Users/yasha/dotfiles/config/nushell/config.nu:513:: # let exec = "C:  Users  yasha  scoop  shims  lf.exe  last dir path=C:  Users  yasha  AppData  Local  Temp  tmp9E2.tmp"
 C:/Users/yasha/dotfiles/config/nushell/config.nu:514:: # ^ exec
 C:/Users/yasha/dotfiles/config/nushell/config.nu:515:: # let dir = ((open "C:  Users  yasha  AppData  Local  Temp  tmp9E2.tmp") | str trim)
 C:/Users/yasha/dotfiles/config/nushell/config.nu:516:: # cd "C:  Users  yasha"
 C:/Users/yasha/dotfiles/config/nushell/config.nu:517:: # if (( dir | path type)  == dir) {
 C:/Users/yasha/dotfiles/config/nushell/config.nu:518:: #             cd  dir
 C:/Users/yasha/dotfiles/config/nushell/config.nu:519:: #         
 C:/Users/yasha/dotfiles/config/nushell/config.nu:520:: # 
 C:/Users/yasha/dotfiles/config/nushell/config.nu:521:: # alias lf = pwsh  c C:/Users/yasha/dotfiles/scripts/lfcdWin.ps1 
 C:/Users/yasha/dotfiles/config/nushell/config.nu:522:: # 
