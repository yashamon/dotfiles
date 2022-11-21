 C:/Users/yasha/dotfiles/config/nushell/config.nu:1:: # Nushell Config File
 C:/Users/yasha/dotfiles/config/nushell/config.nu:2:: source ~/.zoxide.nu
 C:/Users/yasha/dotfiles/config/nushell/config.nu:3:: def swap [  {
 C:/Users/yasha/dotfiles/config/nushell/config.nu:4:: rm swap/* 
 C:/Users/yasha/dotfiles/config/nushell/config.nu:5:: 
 C:/Users/yasha/dotfiles/config/nushell/config.nu:6:: def neo [file:string  {
 C:/Users/yasha/dotfiles/config/nushell/config.nu:7:: # Invoke Expression  neo   multigrid  1
 C:/Users/yasha/dotfiles/config/nushell/config.nu:8:: neovide   multigrid  file
 C:/Users/yasha/dotfiles/config/nushell/config.nu:9:: 
 C:/Users/yasha/dotfiles/config/nushell/config.nu:10:: let HOME = "C:/Users/yasha"
 C:/Users/yasha/dotfiles/config/nushell/config.nu:11:: # let profile =  "( HOME)/dotfiles/config/nvim/init.vim"
 C:/Users/yasha/dotfiles/config/nushell/config.nu:12:: def nf [  {
 C:/Users/yasha/dotfiles/config/nushell/config.nu:13:: let  ho = (fd .  HOME  H  E /.undo/*  E /undo/*  E /tmp/*  E *.pdf | fzf | str trim)
 C:/Users/yasha/dotfiles/config/nushell/config.nu:14:: neovide   multigrid  ho 
 C:/Users/yasha/dotfiles/config/nushell/config.nu:15:: 
 C:/Users/yasha/dotfiles/config/nushell/config.nu:16:: alias hello = ( echo "hello" )
 C:/Users/yasha/dotfiles/config/nushell/config.nu:17:: alias j = __zoxide_z
 C:/Users/yasha/dotfiles/config/nushell/config.nu:18:: def vrc [  { neo  "( HOME)/dotfiles/config/nvim/init.vim" 
 C:/Users/yasha/dotfiles/config/nushell/config.nu:19:: def lfrc [  { neo  "( HOME)/dotfiles/config/lf/lfrc"  
 C:/Users/yasha/dotfiles/config/nushell/config.nu:20:: # def psrc [  { neo  profile  
 C:/Users/yasha/dotfiles/config/nushell/config.nu:21:: def nurc [  { neo  "( HOME)/dotfiles/config/nushell/config.nu"
 C:/Users/yasha/dotfiles/config/nushell/config.nu:22:: def texi [file:string  { pdflatex  file line error  synctex=1   interaction=nonstopmode  recorder  file 
 C:/Users/yasha/dotfiles/config/nushell/config.nu:23:: def latexi [file:string  { latexmk  g  pdf  file line error  synctex=1   interaction=nonstopmode  recorder  f  file
 C:/Users/yasha/dotfiles/config/nushell/config.nu:24:: def pvc [file:string  { latexmk  pdf  pvc  file line error  synctex=1   interaction=nonstopmode  recorder  f  file 
 C:/Users/yasha/dotfiles/config/nushell/config.nu:25:: def lat [file:string  { latexmk  pvc  pdf  file line error  synctex=1  interaction=nonstopmode  recorder  f  g  file
 C:/Users/yasha/dotfiles/config/nushell/config.nu:26:: #
 C:/Users/yasha/dotfiles/config/nushell/config.nu:27:: def pushmod [  { git submodule foreach git add . ; git submodule foreach git commit  m  a ; git submodule foreach git push origin master; git add . ; git commit  m  a; git push   all origin 
 C:/Users/yasha/dotfiles/config/nushell/config.nu:28:: def push [  { git add . ; git commit  m  a ; git push   all origin 
 C:/Users/yasha/dotfiles/config/nushell/config.nu:29:: def pull [  { git pull   recurse submodules ; git submodule update   recursive   remote 
 C:/Users/yasha/dotfiles/config/nushell/config.nu:30:: def pullmaster [  { git pull   recurse submodules ; git submodule update   recursive   remote ; git submodule foreach git checkout master ; git submodule foreach git pull   all
 C:/Users/yasha/dotfiles/config/nushell/config.nu:31:: 
 C:/Users/yasha/dotfiles/config/nushell/config.nu:32:: def pushgh [  { cd  "( HOME)/web" ; pandoc index.md > index.html ; git add . ; git commit  m  a ; git push origin gh pages 
 C:/Users/yasha/dotfiles/config/nushell/config.nu:33:: def hw [  { pandoc  "( HOME)/web/classes/AlgTop/2022.md" >  "( HOME)/web/classes/AlgTop/2022.html" ; pandoc  "( HOME)/web/classes/CalcIII/2022.md"  >  "( HOME)/web/classes/CalcIII/2022.html" ; cd "( HOME)/web" ; git add . ; git commit  m  a ; git push origin gh pages  
 C:/Users/yasha/dotfiles/config/nushell/config.nu:34:: def pdf [file:string  { zathura  file 
 C:/Users/yasha/dotfiles/config/nushell/config.nu:35:: 
 C:/Users/yasha/dotfiles/config/nushell/config.nu:36:: alias config = ( cd  "( HOME)/dotfiles"; push; cd  "( HOME)/workspacemodules"; pushmod; cd  "( HOME)/workspace"; push; cd web pushgh; pacman  Qqe >  "( HOME)/dotfiles/pkglist.txt" )
 C:/Users/yasha/dotfiles/config/nushell/config.nu:37:: 
 C:/Users/yasha/dotfiles/config/nushell/config.nu:38:: def sendFunction [file:string  {
 C:/Users/yasha/dotfiles/config/nushell/config.nu:39:: let cwdb =  env.PWD
 C:/Users/yasha/dotfiles/config/nushell/config.nu:40:: cd  "( HOME)/web"
 C:/Users/yasha/dotfiles/config/nushell/config.nu:41:: git pull
 C:/Users/yasha/dotfiles/config/nushell/config.nu:42:: cd  cwdb
 C:/Users/yasha/dotfiles/config/nushell/config.nu:43:: cp  file  "( HOME)/web/papers/( file)"
 C:/Users/yasha/dotfiles/config/nushell/config.nu:44:: cd  "( HOME)/web"
 C:/Users/yasha/dotfiles/config/nushell/config.nu:45:: git add .
 C:/Users/yasha/dotfiles/config/nushell/config.nu:46:: git commit  m  a
 C:/Users/yasha/dotfiles/config/nushell/config.nu:47:: git push origin gh pages
 C:/Users/yasha/dotfiles/config/nushell/config.nu:48:: cd  cwdb
 C:/Users/yasha/dotfiles/config/nushell/config.nu:49:: 
 C:/Users/yasha/dotfiles/config/nushell/config.nu:50:: alias send = sendFunction
 C:/Users/yasha/dotfiles/config/nushell/config.nu:51:: alias lf = source C:/Users/yasha/dotfiles/scripts/lfcd.nu
 C:/Users/yasha/dotfiles/config/nushell/config.nu:52:: def update [  { scoop update  a; scoop export > ~/dotfiles/scoopPackageList.json 
 C:/Users/yasha/dotfiles/config/nushell/config.nu:53:: 
 C:/Users/yasha/dotfiles/config/nushell/config.nu:54:: module completions {
 C:/Users/yasha/dotfiles/config/nushell/config.nu:55::   # Custom completions for external commands (those outside of Nushell)
 C:/Users/yasha/dotfiles/config/nushell/config.nu:56::   # Each completions has two parts: the form of the external command, including its flags and parameters
 C:/Users/yasha/dotfiles/config/nushell/config.nu:57::   # and a helper command that knows how to complete values for those flags and parameters
 C:/Users/yasha/dotfiles/config/nushell/config.nu:58::   #
 C:/Users/yasha/dotfiles/config/nushell/config.nu:59::   # This is a simplified version of completions for git branches and git remotes
 C:/Users/yasha/dotfiles/config/nushell/config.nu:60:: 
 C:/Users/yasha/dotfiles/config/nushell/config.nu:61::   def "nu complete git branches" [  {
 C:/Users/yasha/dotfiles/config/nushell/config.nu:62::     ^git branch | lines | each { |line|  line | str replace '[ * +  ' '' | str trim 
 C:/Users/yasha/dotfiles/config/nushell/config.nu:63::   
 C:/Users/yasha/dotfiles/config/nushell/config.nu:64:: 
 C:/Users/yasha/dotfiles/config/nushell/config.nu:65::   def "nu complete git remotes" [  {
 C:/Users/yasha/dotfiles/config/nushell/config.nu:66::     ^git remote | lines | each { |line|  line | str trim 
 C:/Users/yasha/dotfiles/config/nushell/config.nu:67::   
 C:/Users/yasha/dotfiles/config/nushell/config.nu:68:: 
 C:/Users/yasha/dotfiles/config/nushell/config.nu:69::   # Download objects and refs from another repository
 C:/Users/yasha/dotfiles/config/nushell/config.nu:70::   export extern "git fetch" [
 C:/Users/yasha/dotfiles/config/nushell/config.nu:71::     repository?: string@"nu complete git remotes" # name of the branch to fetch
 C:/Users/yasha/dotfiles/config/nushell/config.nu:72::       all                                         # Fetch all remotes
 C:/Users/yasha/dotfiles/config/nushell/config.nu:73::       append( a)                                  # Append ref names and object names to .git/FETCH_HEAD
 C:/Users/yasha/dotfiles/config/nushell/config.nu:74::       atomic                                      # Use an atomic transaction to update local refs.
 C:/Users/yasha/dotfiles/config/nushell/config.nu:75::       depth: int                                  # Limit fetching to n commits from the tip
 C:/Users/yasha/dotfiles/config/nushell/config.nu:76::       deepen: int                                 # Limit fetching to n commits from the current shallow boundary
 C:/Users/yasha/dotfiles/config/nushell/config.nu:77::       shallow since: string                       # Deepen or shorten the history by date
 C:/Users/yasha/dotfiles/config/nushell/config.nu:78::       shallow exclude: string                     # Deepen or shorten the history by branch/tag
 C:/Users/yasha/dotfiles/config/nushell/config.nu:79::       unshallow                                   # Fetch all available history
 C:/Users/yasha/dotfiles/config/nushell/config.nu:80::       update shallow                              # Update .git/shallow to accept new refs
 C:/Users/yasha/dotfiles/config/nushell/config.nu:81::       negotiation tip: string                     # Specify which commit/glob to report while fetching
 C:/Users/yasha/dotfiles/config/nushell/config.nu:82::       negotiate only                              # Do not fetch, only print common ancestors
 C:/Users/yasha/dotfiles/config/nushell/config.nu:83::       dry run                                     # Show what would be done
 C:/Users/yasha/dotfiles/config/nushell/config.nu:84::       write fetch head                            # Write fetched refs in FETCH_HEAD (default)
 C:/Users/yasha/dotfiles/config/nushell/config.nu:85::       no write fetch head                         # Do not write FETCH_HEAD
 C:/Users/yasha/dotfiles/config/nushell/config.nu:86::       force( f)                                   # Always update the local branch
 C:/Users/yasha/dotfiles/config/nushell/config.nu:87::       keep( k)                                    # Keep dowloaded pack
 C:/Users/yasha/dotfiles/config/nushell/config.nu:88::       multiple                                    # Allow several arguments to be specified
 C:/Users/yasha/dotfiles/config/nushell/config.nu:89::       auto maintenance                            # Run 'git maintenance run   auto' at the end (default)
 C:/Users/yasha/dotfiles/config/nushell/config.nu:90::       no auto maintenance                         # Don't run 'git maintenance' at the end
 C:/Users/yasha/dotfiles/config/nushell/config.nu:91::       auto gc                                     # Run 'git maintenance run   auto' at the end (default)
 C:/Users/yasha/dotfiles/config/nushell/config.nu:92::       no auto gc                                  # Don't run 'git maintenance' at the end
 C:/Users/yasha/dotfiles/config/nushell/config.nu:93::       write commit graph                          # Write a commit graph after fetching
 C:/Users/yasha/dotfiles/config/nushell/config.nu:94::       no write commit graph                       # Don't write a commit graph after fetching
 C:/Users/yasha/dotfiles/config/nushell/config.nu:95::       prefetch                                    # Place all refs into the refs/prefetch/ namespace
 C:/Users/yasha/dotfiles/config/nushell/config.nu:96::       prune( p)                                   # Remove obsolete remote tracking references
 C:/Users/yasha/dotfiles/config/nushell/config.nu:97::       prune tags( P)                              # Remove any local tags that do not exist on the remote
 C:/Users/yasha/dotfiles/config/nushell/config.nu:98::       no tags( n)                                 # Disable automatic tag following
 C:/Users/yasha/dotfiles/config/nushell/config.nu:99::       refmap: string                              # Use this refspec to map the refs to remote tracking branches
 C:/Users/yasha/dotfiles/config/nushell/config.nu:100::       tags( t)                                    # Fetch all tags
 C:/Users/yasha/dotfiles/config/nushell/config.nu:101::       recurse submodules: string                  # Fetch new commits of populated submodules (yes/on demand/no)
 C:/Users/yasha/dotfiles/config/nushell/config.nu:102::       jobs( j): int                               # Number of parallel children
 C:/Users/yasha/dotfiles/config/nushell/config.nu:103::       no recurse submodules                       # Disable recursive fetching of submodules
 C:/Users/yasha/dotfiles/config/nushell/config.nu:104::       set upstream                                # Add upstream (tracking) reference
 C:/Users/yasha/dotfiles/config/nushell/config.nu:105::       submodule prefix: string                    # Prepend to paths printed in informative messages
 C:/Users/yasha/dotfiles/config/nushell/config.nu:106::       upload pack: string                         # Non default path for remote command
 C:/Users/yasha/dotfiles/config/nushell/config.nu:107::       quiet( q)                                   # Silence internally used git commands
 C:/Users/yasha/dotfiles/config/nushell/config.nu:108::       verbose( v)                                 # Be verbose
 C:/Users/yasha/dotfiles/config/nushell/config.nu:109::       progress                                    # Report progress on stderr
 C:/Users/yasha/dotfiles/config/nushell/config.nu:110::       server option( o): string                   # Pass options for the server to handle
 C:/Users/yasha/dotfiles/config/nushell/config.nu:111::       show forced updates                         # Check if a branch is force updated
 C:/Users/yasha/dotfiles/config/nushell/config.nu:112::       no show forced updates                      # Don't check if a branch is force updated
 C:/Users/yasha/dotfiles/config/nushell/config.nu:113::      4                                            # Use IPv4 addresses, ignore IPv6 addresses
 C:/Users/yasha/dotfiles/config/nushell/config.nu:114::      6                                            # Use IPv6 addresses, ignore IPv4 addresses
 C:/Users/yasha/dotfiles/config/nushell/config.nu:115::    
 C:/Users/yasha/dotfiles/config/nushell/config.nu:116:: 
 C:/Users/yasha/dotfiles/config/nushell/config.nu:117::   # Check out git branches and files
 C:/Users/yasha/dotfiles/config/nushell/config.nu:118::   export extern "git checkout" [
 C:/Users/yasha/dotfiles/config/nushell/config.nu:119::     ...targets: string@"nu complete git branches"   # name of the branch or files to checkout
 C:/Users/yasha/dotfiles/config/nushell/config.nu:120::       conflict: string                              # conflict style (merge or diff3)
 C:/Users/yasha/dotfiles/config/nushell/config.nu:121::       detach( d)                                    # detach HEAD at named commit
 C:/Users/yasha/dotfiles/config/nushell/config.nu:122::       force( f)                                     # force checkout (throw away local modifications)
 C:/Users/yasha/dotfiles/config/nushell/config.nu:123::       guess                                         # second guess 'git checkout <no such branch>' (default)
 C:/Users/yasha/dotfiles/config/nushell/config.nu:124::       ignore other worktrees                        # do not check if another worktree is holding the given ref
 C:/Users/yasha/dotfiles/config/nushell/config.nu:125::       ignore skip worktree bits                     # do not limit pathspecs to sparse entries only
 C:/Users/yasha/dotfiles/config/nushell/config.nu:126::       merge( m)                                     # perform a 3 way merge with the new branch
 C:/Users/yasha/dotfiles/config/nushell/config.nu:127::       orphan: string                                # new unparented branch
 C:/Users/yasha/dotfiles/config/nushell/config.nu:128::       ours( 2)                                      # checkout our version for unmerged files
 C:/Users/yasha/dotfiles/config/nushell/config.nu:129::       overlay                                       # use overlay mode (default)
 C:/Users/yasha/dotfiles/config/nushell/config.nu:130::       overwrite ignore                              # update ignored files (default)
 C:/Users/yasha/dotfiles/config/nushell/config.nu:131::       patch( p)                                     # select hunks interactively
 C:/Users/yasha/dotfiles/config/nushell/config.nu:132::       pathspec from file: string                    # read pathspec from file
 C:/Users/yasha/dotfiles/config/nushell/config.nu:133::       progress                                      # force progress reporting
 C:/Users/yasha/dotfiles/config/nushell/config.nu:134::       quiet( q)                                     # suppress progress reporting
 C:/Users/yasha/dotfiles/config/nushell/config.nu:135::       recurse submodules: string                    # control recursive updating of submodules
 C:/Users/yasha/dotfiles/config/nushell/config.nu:136::       theirs( 3)                                    # checkout their version for unmerged files
 C:/Users/yasha/dotfiles/config/nushell/config.nu:137::       track( t)                                     # set upstream info for new branch
 C:/Users/yasha/dotfiles/config/nushell/config.nu:138::      b: string                                      # create and checkout a new branch
 C:/Users/yasha/dotfiles/config/nushell/config.nu:139::      B: string                                      # create/reset and checkout a branch
 C:/Users/yasha/dotfiles/config/nushell/config.nu:140::      l                                              # create reflog for new branch
 C:/Users/yasha/dotfiles/config/nushell/config.nu:141::    
 C:/Users/yasha/dotfiles/config/nushell/config.nu:142:: 
 C:/Users/yasha/dotfiles/config/nushell/config.nu:143::   # Push changes
 C:/Users/yasha/dotfiles/config/nushell/config.nu:144::   export extern "git push" [
 C:/Users/yasha/dotfiles/config/nushell/config.nu:145::     remote?: string@"nu complete git remotes",      # the name of the remote
 C:/Users/yasha/dotfiles/config/nushell/config.nu:146::     ...refs: string@"nu complete git branches"      # the branch / refspec
 C:/Users/yasha/dotfiles/config/nushell/config.nu:147::       all                                           # push all refs
 C:/Users/yasha/dotfiles/config/nushell/config.nu:148::       atomic                                        # request atomic transaction on remote side
 C:/Users/yasha/dotfiles/config/nushell/config.nu:149::       delete( d)                                    # delete refs
 C:/Users/yasha/dotfiles/config/nushell/config.nu:150::       dry run( n)                                   # dry run
 C:/Users/yasha/dotfiles/config/nushell/config.nu:151::       exec: string                                  # receive pack program
 C:/Users/yasha/dotfiles/config/nushell/config.nu:152::       follow tags                                   # push missing but relevant tags
 C:/Users/yasha/dotfiles/config/nushell/config.nu:153::       force with lease: string                      # require old value of ref to be at this value
 C:/Users/yasha/dotfiles/config/nushell/config.nu:154::       force( f)                                     # force updates
 C:/Users/yasha/dotfiles/config/nushell/config.nu:155::       ipv4( 4)                                      # use IPv4 addresses only
 C:/Users/yasha/dotfiles/config/nushell/config.nu:156::       ipv6( 6)                                      # use IPv6 addresses only
 C:/Users/yasha/dotfiles/config/nushell/config.nu:157::       mirror                                        # mirror all refs
 C:/Users/yasha/dotfiles/config/nushell/config.nu:158::       no verify                                     # bypass pre push hook
 C:/Users/yasha/dotfiles/config/nushell/config.nu:159::       porcelain                                     # machine readable output
 C:/Users/yasha/dotfiles/config/nushell/config.nu:160::       progress                                      # force progress reporting
 C:/Users/yasha/dotfiles/config/nushell/config.nu:161::       prune                                         # prune locally removed refs
 C:/Users/yasha/dotfiles/config/nushell/config.nu:162::       push option( o): string                       # option to transmit
 C:/Users/yasha/dotfiles/config/nushell/config.nu:163::       quiet( q)                                     # be more quiet
 C:/Users/yasha/dotfiles/config/nushell/config.nu:164::       receive pack: string                          # receive pack program
 C:/Users/yasha/dotfiles/config/nushell/config.nu:165::       recurse submodules: string                    # control recursive pushing of submodules
 C:/Users/yasha/dotfiles/config/nushell/config.nu:166::       repo: string                                  # repository
 C:/Users/yasha/dotfiles/config/nushell/config.nu:167::       set upstream( u)                              # set upstream for git pull/status
 C:/Users/yasha/dotfiles/config/nushell/config.nu:168::       signed: string                                # GPG sign the push
 C:/Users/yasha/dotfiles/config/nushell/config.nu:169::       tags                                          # push tags (can't be used with   all or   mirror)
 C:/Users/yasha/dotfiles/config/nushell/config.nu:170::       thin                                          # use thin pack
 C:/Users/yasha/dotfiles/config/nushell/config.nu:171::       verbose( v)                                   # be more verbose
 C:/Users/yasha/dotfiles/config/nushell/config.nu:172::    
 C:/Users/yasha/dotfiles/config/nushell/config.nu:173:: 
 C:/Users/yasha/dotfiles/config/nushell/config.nu:174:: 
 C:/Users/yasha/dotfiles/config/nushell/config.nu:175:: # Get just the extern definitions without the custom completion commands
 C:/Users/yasha/dotfiles/config/nushell/config.nu:176:: use completions *
 C:/Users/yasha/dotfiles/config/nushell/config.nu:177:: 
 C:/Users/yasha/dotfiles/config/nushell/config.nu:178:: # for more information on themes see
 C:/Users/yasha/dotfiles/config/nushell/config.nu:179:: # https://www.nushell.sh/book/coloring_and_theming.html
 C:/Users/yasha/dotfiles/config/nushell/config.nu:180:: let default_theme = {
 C:/Users/yasha/dotfiles/config/nushell/config.nu:181::     # color for nushell primitives
 C:/Users/yasha/dotfiles/config/nushell/config.nu:182::     separator: white
 C:/Users/yasha/dotfiles/config/nushell/config.nu:183::     leading_trailing_space_bg: { attr: n  # no fg, no bg, attr none effectively turns this off
 C:/Users/yasha/dotfiles/config/nushell/config.nu:184::     header: green_bold
 C:/Users/yasha/dotfiles/config/nushell/config.nu:185::     empty: blue
 C:/Users/yasha/dotfiles/config/nushell/config.nu:186::     bool: white
 C:/Users/yasha/dotfiles/config/nushell/config.nu:187::     int: white
 C:/Users/yasha/dotfiles/config/nushell/config.nu:188::     filesize: white
 C:/Users/yasha/dotfiles/config/nushell/config.nu:189::     duration: white
 C:/Users/yasha/dotfiles/config/nushell/config.nu:190::     date: white
 C:/Users/yasha/dotfiles/config/nushell/config.nu:191::     range: white
 C:/Users/yasha/dotfiles/config/nushell/config.nu:192::     float: white
 C:/Users/yasha/dotfiles/config/nushell/config.nu:193::     string: white
 C:/Users/yasha/dotfiles/config/nushell/config.nu:194::     nothing: white
 C:/Users/yasha/dotfiles/config/nushell/config.nu:195::     binary: white
 C:/Users/yasha/dotfiles/config/nushell/config.nu:196::     cellpath: white
 C:/Users/yasha/dotfiles/config/nushell/config.nu:197::     row_index: green_bold
 C:/Users/yasha/dotfiles/config/nushell/config.nu:198::     record: white
 C:/Users/yasha/dotfiles/config/nushell/config.nu:199::     list: white
 C:/Users/yasha/dotfiles/config/nushell/config.nu:200::     block: white
 C:/Users/yasha/dotfiles/config/nushell/config.nu:201::     hints: dark_gray
 C:/Users/yasha/dotfiles/config/nushell/config.nu:202:: 
 C:/Users/yasha/dotfiles/config/nushell/config.nu:203::     # shapes are used to change the cli syntax highlighting
 C:/Users/yasha/dotfiles/config/nushell/config.nu:204::     shape_garbage: { fg: "#FFFFFF" bg: "#FF0000" attr: b
 C:/Users/yasha/dotfiles/config/nushell/config.nu:205::     shape_binary: purple_bold
 C:/Users/yasha/dotfiles/config/nushell/config.nu:206::     shape_bool: light_cyan
 C:/Users/yasha/dotfiles/config/nushell/config.nu:207::     shape_int: purple_bold
 C:/Users/yasha/dotfiles/config/nushell/config.nu:208::     shape_float: purple_bold
 C:/Users/yasha/dotfiles/config/nushell/config.nu:209::     shape_range: yellow_bold
 C:/Users/yasha/dotfiles/config/nushell/config.nu:210::     shape_internalcall: cyan_bold
 C:/Users/yasha/dotfiles/config/nushell/config.nu:211::     shape_external: cyan
 C:/Users/yasha/dotfiles/config/nushell/config.nu:212::     shape_externalarg: green_bold
 C:/Users/yasha/dotfiles/config/nushell/config.nu:213::     shape_literal: blue
 C:/Users/yasha/dotfiles/config/nushell/config.nu:214::     shape_operator: yellow
 C:/Users/yasha/dotfiles/config/nushell/config.nu:215::     shape_signature: green_bold
 C:/Users/yasha/dotfiles/config/nushell/config.nu:216::     shape_string: green
 C:/Users/yasha/dotfiles/config/nushell/config.nu:217::     shape_string_interpolation: cyan_bold
 C:/Users/yasha/dotfiles/config/nushell/config.nu:218::     shape_datetime: cyan_bold
 C:/Users/yasha/dotfiles/config/nushell/config.nu:219::     shape_list: cyan_bold
 C:/Users/yasha/dotfiles/config/nushell/config.nu:220::     shape_table: blue_bold
 C:/Users/yasha/dotfiles/config/nushell/config.nu:221::     shape_record: cyan_bold
 C:/Users/yasha/dotfiles/config/nushell/config.nu:222::     shape_block: blue_bold
 C:/Users/yasha/dotfiles/config/nushell/config.nu:223::     shape_filepath: cyan
 C:/Users/yasha/dotfiles/config/nushell/config.nu:224::     shape_globpattern: cyan_bold
 C:/Users/yasha/dotfiles/config/nushell/config.nu:225::     shape_variable: purple
 C:/Users/yasha/dotfiles/config/nushell/config.nu:226::     shape_flag: blue_bold
 C:/Users/yasha/dotfiles/config/nushell/config.nu:227::     shape_custom: green
 C:/Users/yasha/dotfiles/config/nushell/config.nu:228::     shape_nothing: light_cyan
 C:/Users/yasha/dotfiles/config/nushell/config.nu:229:: 
 C:/Users/yasha/dotfiles/config/nushell/config.nu:230:: 
 C:/Users/yasha/dotfiles/config/nushell/config.nu:231:: # The default config record. This is where much of your global configuration is setup.
 C:/Users/yasha/dotfiles/config/nushell/config.nu:232:: let env config = {
 C:/Users/yasha/dotfiles/config/nushell/config.nu:233::   filesize_metric: false
 C:/Users/yasha/dotfiles/config/nushell/config.nu:234::   table_mode: rounded # basic, compact, compact_double, light, thin, with_love, rounded, reinforced, heavy, none, other
 C:/Users/yasha/dotfiles/config/nushell/config.nu:235::   use_ls_colors: true
 C:/Users/yasha/dotfiles/config/nushell/config.nu:236::   rm_always_trash: false
 C:/Users/yasha/dotfiles/config/nushell/config.nu:237::   color_config:  default_theme
 C:/Users/yasha/dotfiles/config/nushell/config.nu:238::   use_grid_icons: true
 C:/Users/yasha/dotfiles/config/nushell/config.nu:239::   footer_mode: "25" # always, never, number_of_rows, auto
 C:/Users/yasha/dotfiles/config/nushell/config.nu:240::   quick_completions: true  # set this to false to prevent auto selecting completions when only one remains
 C:/Users/yasha/dotfiles/config/nushell/config.nu:241::   partial_completions: true  # set this to false to prevent partial filling of the prompt
 C:/Users/yasha/dotfiles/config/nushell/config.nu:242::   completion_algorithm: "prefix"  # prefix, fuzzy
 C:/Users/yasha/dotfiles/config/nushell/config.nu:243::   animate_prompt: false # redraw the prompt every second
 C:/Users/yasha/dotfiles/config/nushell/config.nu:244::   float_precision: 2
 C:/Users/yasha/dotfiles/config/nushell/config.nu:245::   # buffer_editor: "emacs" # command that will be used to edit the current line buffer with ctrl+o, if unset fallback to  env.EDITOR and  env.VISUAL
 C:/Users/yasha/dotfiles/config/nushell/config.nu:246::   use_ansi_coloring: true
 C:/Users/yasha/dotfiles/config/nushell/config.nu:247::   filesize_format: "auto" # b, kb, kib, mb, mib, gb, gib, tb, tib, pb, pib, eb, eib, zb, zib, auto
 C:/Users/yasha/dotfiles/config/nushell/config.nu:248::   edit_mode: vi # emacs, vi
 C:/Users/yasha/dotfiles/config/nushell/config.nu:249::   max_history_size: 10000 # Session has to be reloaded for this to take effect
 C:/Users/yasha/dotfiles/config/nushell/config.nu:250::   sync_history_on_enter: true # Enable to share the history between multiple sessions, else you have to close the session to persist history to file
 C:/Users/yasha/dotfiles/config/nushell/config.nu:251::   shell_integration: true # enables terminal markers and a workaround to arrow keys stop working issue
 C:/Users/yasha/dotfiles/config/nushell/config.nu:252::   disable_table_indexes: false # set to true to remove the index column from tables
 C:/Users/yasha/dotfiles/config/nushell/config.nu:253::   cd_with_abbreviations: false # set to true to allow you to do things like cd s/o/f and nushell expand it to cd some/other/folder
 C:/Users/yasha/dotfiles/config/nushell/config.nu:254::   hooks: {
 C:/Users/yasha/dotfiles/config/nushell/config.nu:255::     pre_prompt: [{
 C:/Users/yasha/dotfiles/config/nushell/config.nu:256::        nothing  # replace with source code to run before the prompt is shown
 C:/Users/yasha/dotfiles/config/nushell/config.nu:257::      
 C:/Users/yasha/dotfiles/config/nushell/config.nu:258::     pre_execution: [{
 C:/Users/yasha/dotfiles/config/nushell/config.nu:259::        nothing  # replace with source code to run before the repl input is run
 C:/Users/yasha/dotfiles/config/nushell/config.nu:260::      
 C:/Users/yasha/dotfiles/config/nushell/config.nu:261::     env_change: {
 C:/Users/yasha/dotfiles/config/nushell/config.nu:262::       PWD: [{|before, after|
 C:/Users/yasha/dotfiles/config/nushell/config.nu:263::          nothing  # replace with source code to run if the PWD environment is different since the last repl input
 C:/Users/yasha/dotfiles/config/nushell/config.nu:264::        
 C:/Users/yasha/dotfiles/config/nushell/config.nu:265::     
 C:/Users/yasha/dotfiles/config/nushell/config.nu:266::   
 C:/Users/yasha/dotfiles/config/nushell/config.nu:267::   menus: [
 C:/Users/yasha/dotfiles/config/nushell/config.nu:268::       # Configuration for default nushell menus
 C:/Users/yasha/dotfiles/config/nushell/config.nu:269::       # Note the lack of souce parameter
 C:/Users/yasha/dotfiles/config/nushell/config.nu:270::       {
 C:/Users/yasha/dotfiles/config/nushell/config.nu:271::         name: completion_menu
 C:/Users/yasha/dotfiles/config/nushell/config.nu:272::         only_buffer_difference: false
 C:/Users/yasha/dotfiles/config/nushell/config.nu:273::         marker: "| "
 C:/Users/yasha/dotfiles/config/nushell/config.nu:274::         type: {
 C:/Users/yasha/dotfiles/config/nushell/config.nu:275::             layout: columnar
 C:/Users/yasha/dotfiles/config/nushell/config.nu:276::             columns: 4
 C:/Users/yasha/dotfiles/config/nushell/config.nu:277::             col_width: 20   # Optional value. If missing all the screen width is used to calculate column width
 C:/Users/yasha/dotfiles/config/nushell/config.nu:278::             col_padding: 2
 C:/Users/yasha/dotfiles/config/nushell/config.nu:279::         
 C:/Users/yasha/dotfiles/config/nushell/config.nu:280::         style: {
 C:/Users/yasha/dotfiles/config/nushell/config.nu:281::             text: green
 C:/Users/yasha/dotfiles/config/nushell/config.nu:282::             selected_text: green_reverse
 C:/Users/yasha/dotfiles/config/nushell/config.nu:283::             description_text: yellow
 C:/Users/yasha/dotfiles/config/nushell/config.nu:284::         
 C:/Users/yasha/dotfiles/config/nushell/config.nu:285::       
 C:/Users/yasha/dotfiles/config/nushell/config.nu:286::       {
 C:/Users/yasha/dotfiles/config/nushell/config.nu:287::         name: history_menu
 C:/Users/yasha/dotfiles/config/nushell/config.nu:288::         only_buffer_difference: true
 C:/Users/yasha/dotfiles/config/nushell/config.nu:289::         marker: "? "
 C:/Users/yasha/dotfiles/config/nushell/config.nu:290::         type: {
 C:/Users/yasha/dotfiles/config/nushell/config.nu:291::             layout: list
 C:/Users/yasha/dotfiles/config/nushell/config.nu:292::             page_size: 10
 C:/Users/yasha/dotfiles/config/nushell/config.nu:293::         
 C:/Users/yasha/dotfiles/config/nushell/config.nu:294::         style: {
 C:/Users/yasha/dotfiles/config/nushell/config.nu:295::             text: green
 C:/Users/yasha/dotfiles/config/nushell/config.nu:296::             selected_text: green_reverse
 C:/Users/yasha/dotfiles/config/nushell/config.nu:297::             description_text: yellow
 C:/Users/yasha/dotfiles/config/nushell/config.nu:298::         
 C:/Users/yasha/dotfiles/config/nushell/config.nu:299::       
 C:/Users/yasha/dotfiles/config/nushell/config.nu:300::       {
 C:/Users/yasha/dotfiles/config/nushell/config.nu:301::         name: help_menu
 C:/Users/yasha/dotfiles/config/nushell/config.nu:302::         only_buffer_difference: true
 C:/Users/yasha/dotfiles/config/nushell/config.nu:303::         marker: "? "
 C:/Users/yasha/dotfiles/config/nushell/config.nu:304::         type: {
 C:/Users/yasha/dotfiles/config/nushell/config.nu:305::             layout: description
 C:/Users/yasha/dotfiles/config/nushell/config.nu:306::             columns: 4
 C:/Users/yasha/dotfiles/config/nushell/config.nu:307::             col_width: 20   # Optional value. If missing all the screen width is used to calculate column width
 C:/Users/yasha/dotfiles/config/nushell/config.nu:308::             col_padding: 2
 C:/Users/yasha/dotfiles/config/nushell/config.nu:309::             selection_rows: 4
 C:/Users/yasha/dotfiles/config/nushell/config.nu:310::             description_rows: 10
 C:/Users/yasha/dotfiles/config/nushell/config.nu:311::         
 C:/Users/yasha/dotfiles/config/nushell/config.nu:312::         style: {
 C:/Users/yasha/dotfiles/config/nushell/config.nu:313::             text: green
 C:/Users/yasha/dotfiles/config/nushell/config.nu:314::             selected_text: green_reverse
 C:/Users/yasha/dotfiles/config/nushell/config.nu:315::             description_text: yellow
 C:/Users/yasha/dotfiles/config/nushell/config.nu:316::         
 C:/Users/yasha/dotfiles/config/nushell/config.nu:317::       
 C:/Users/yasha/dotfiles/config/nushell/config.nu:318::       # Example of extra menus created using a nushell source
 C:/Users/yasha/dotfiles/config/nushell/config.nu:319::       # Use the source field to create a list of records that populates
 C:/Users/yasha/dotfiles/config/nushell/config.nu:320::       # the menu
 C:/Users/yasha/dotfiles/config/nushell/config.nu:321::       {
 C:/Users/yasha/dotfiles/config/nushell/config.nu:322::         name: commands_menu
 C:/Users/yasha/dotfiles/config/nushell/config.nu:323::         only_buffer_difference: false
 C:/Users/yasha/dotfiles/config/nushell/config.nu:324::         marker: "# "
 C:/Users/yasha/dotfiles/config/nushell/config.nu:325::         type: {
 C:/Users/yasha/dotfiles/config/nushell/config.nu:326::             layout: columnar
 C:/Users/yasha/dotfiles/config/nushell/config.nu:327::             columns: 4
 C:/Users/yasha/dotfiles/config/nushell/config.nu:328::             col_width: 20
 C:/Users/yasha/dotfiles/config/nushell/config.nu:329::             col_padding: 2
 C:/Users/yasha/dotfiles/config/nushell/config.nu:330::         
 C:/Users/yasha/dotfiles/config/nushell/config.nu:331::         style: {
 C:/Users/yasha/dotfiles/config/nushell/config.nu:332::             text: green
 C:/Users/yasha/dotfiles/config/nushell/config.nu:333::             selected_text: green_reverse
 C:/Users/yasha/dotfiles/config/nushell/config.nu:334::             description_text: yellow
 C:/Users/yasha/dotfiles/config/nushell/config.nu:335::         
 C:/Users/yasha/dotfiles/config/nushell/config.nu:336::         source: { |buffer, position|
 C:/Users/yasha/dotfiles/config/nushell/config.nu:337::              nu.scope.commands
 C:/Users/yasha/dotfiles/config/nushell/config.nu:338::             | where command =~  buffer
 C:/Users/yasha/dotfiles/config/nushell/config.nu:339::             | each { |it| {value:  it.command description:  it.usage 
 C:/Users/yasha/dotfiles/config/nushell/config.nu:340::         
 C:/Users/yasha/dotfiles/config/nushell/config.nu:341::       
 C:/Users/yasha/dotfiles/config/nushell/config.nu:342::       {
 C:/Users/yasha/dotfiles/config/nushell/config.nu:343::         name: vars_menu
 C:/Users/yasha/dotfiles/config/nushell/config.nu:344::         only_buffer_difference: true
 C:/Users/yasha/dotfiles/config/nushell/config.nu:345::         marker: "# "
 C:/Users/yasha/dotfiles/config/nushell/config.nu:346::         type: {
 C:/Users/yasha/dotfiles/config/nushell/config.nu:347::             layout: list
 C:/Users/yasha/dotfiles/config/nushell/config.nu:348::             page_size: 10
 C:/Users/yasha/dotfiles/config/nushell/config.nu:349::         
 C:/Users/yasha/dotfiles/config/nushell/config.nu:350::         style: {
 C:/Users/yasha/dotfiles/config/nushell/config.nu:351::             text: green
 C:/Users/yasha/dotfiles/config/nushell/config.nu:352::             selected_text: green_reverse
 C:/Users/yasha/dotfiles/config/nushell/config.nu:353::             description_text: yellow
 C:/Users/yasha/dotfiles/config/nushell/config.nu:354::         
 C:/Users/yasha/dotfiles/config/nushell/config.nu:355::         source: { |buffer, position|
 C:/Users/yasha/dotfiles/config/nushell/config.nu:356::              nu.scope.vars
 C:/Users/yasha/dotfiles/config/nushell/config.nu:357::             | where name =~  buffer
 C:/Users/yasha/dotfiles/config/nushell/config.nu:358::             | sort by name
 C:/Users/yasha/dotfiles/config/nushell/config.nu:359::             | each { |it| {value:  it.name description:  it.type 
 C:/Users/yasha/dotfiles/config/nushell/config.nu:360::         
 C:/Users/yasha/dotfiles/config/nushell/config.nu:361::       
 C:/Users/yasha/dotfiles/config/nushell/config.nu:362::       {
 C:/Users/yasha/dotfiles/config/nushell/config.nu:363::         name: commands_with_description
 C:/Users/yasha/dotfiles/config/nushell/config.nu:364::         only_buffer_difference: true
 C:/Users/yasha/dotfiles/config/nushell/config.nu:365::         marker: "# "
 C:/Users/yasha/dotfiles/config/nushell/config.nu:366::         type: {
 C:/Users/yasha/dotfiles/config/nushell/config.nu:367::             layout: description
 C:/Users/yasha/dotfiles/config/nushell/config.nu:368::             columns: 4
 C:/Users/yasha/dotfiles/config/nushell/config.nu:369::             col_width: 20
 C:/Users/yasha/dotfiles/config/nushell/config.nu:370::             col_padding: 2
 C:/Users/yasha/dotfiles/config/nushell/config.nu:371::             selection_rows: 4
 C:/Users/yasha/dotfiles/config/nushell/config.nu:372::             description_rows: 10
 C:/Users/yasha/dotfiles/config/nushell/config.nu:373::         
 C:/Users/yasha/dotfiles/config/nushell/config.nu:374::         style: {
 C:/Users/yasha/dotfiles/config/nushell/config.nu:375::             text: green
 C:/Users/yasha/dotfiles/config/nushell/config.nu:376::             selected_text: green_reverse
 C:/Users/yasha/dotfiles/config/nushell/config.nu:377::             description_text: yellow
 C:/Users/yasha/dotfiles/config/nushell/config.nu:378::         
 C:/Users/yasha/dotfiles/config/nushell/config.nu:379::         source: { |buffer, position|
 C:/Users/yasha/dotfiles/config/nushell/config.nu:380::              nu.scope.commands
 C:/Users/yasha/dotfiles/config/nushell/config.nu:381::             | where command =~  buffer
 C:/Users/yasha/dotfiles/config/nushell/config.nu:382::             | each { |it| {value:  it.command description:  it.usage 
 C:/Users/yasha/dotfiles/config/nushell/config.nu:383::         
 C:/Users/yasha/dotfiles/config/nushell/config.nu:384::       
 C:/Users/yasha/dotfiles/config/nushell/config.nu:385::    
 C:/Users/yasha/dotfiles/config/nushell/config.nu:386::   keybindings: [
 C:/Users/yasha/dotfiles/config/nushell/config.nu:387::   {
 C:/Users/yasha/dotfiles/config/nushell/config.nu:388::         name: histUp
 C:/Users/yasha/dotfiles/config/nushell/config.nu:389::         modifier: alt
 C:/Users/yasha/dotfiles/config/nushell/config.nu:390::         keycode: char_k
 C:/Users/yasha/dotfiles/config/nushell/config.nu:391::         mode: [emacs, vi_normal, vi_insert  
 C:/Users/yasha/dotfiles/config/nushell/config.nu:392::         event: [
 C:/Users/yasha/dotfiles/config/nushell/config.nu:393::             { send: NextHistory 
 C:/Users/yasha/dotfiles/config/nushell/config.nu:394::          
 C:/Users/yasha/dotfiles/config/nushell/config.nu:395::   
 C:/Users/yasha/dotfiles/config/nushell/config.nu:396:: 
 C:/Users/yasha/dotfiles/config/nushell/config.nu:397::   {
 C:/Users/yasha/dotfiles/config/nushell/config.nu:398::         name: histDown
 C:/Users/yasha/dotfiles/config/nushell/config.nu:399::         modifier: alt
 C:/Users/yasha/dotfiles/config/nushell/config.nu:400::         keycode: char_j
 C:/Users/yasha/dotfiles/config/nushell/config.nu:401::         mode: [emacs, vi_normal, vi_insert  
 C:/Users/yasha/dotfiles/config/nushell/config.nu:402::         event: [
 C:/Users/yasha/dotfiles/config/nushell/config.nu:403::             { send: PreviousHistory 
 C:/Users/yasha/dotfiles/config/nushell/config.nu:404::          
 C:/Users/yasha/dotfiles/config/nushell/config.nu:405::   
 C:/Users/yasha/dotfiles/config/nushell/config.nu:406:: 
 C:/Users/yasha/dotfiles/config/nushell/config.nu:407::   {
 C:/Users/yasha/dotfiles/config/nushell/config.nu:408::         name: complete
 C:/Users/yasha/dotfiles/config/nushell/config.nu:409::         modifier: alt
 C:/Users/yasha/dotfiles/config/nushell/config.nu:410::         keycode: char_a
 C:/Users/yasha/dotfiles/config/nushell/config.nu:411::         mode: [emacs, vi_normal, vi_insert  
 C:/Users/yasha/dotfiles/config/nushell/config.nu:412::         event: [
 C:/Users/yasha/dotfiles/config/nushell/config.nu:413::             { send: HistoryHintComplete 
 C:/Users/yasha/dotfiles/config/nushell/config.nu:414::          
 C:/Users/yasha/dotfiles/config/nushell/config.nu:415::   
 C:/Users/yasha/dotfiles/config/nushell/config.nu:416:: 
 C:/Users/yasha/dotfiles/config/nushell/config.nu:417::   
 C:/Users/yasha/dotfiles/config/nushell/config.nu:418::     {
 C:/Users/yasha/dotfiles/config/nushell/config.nu:419::       name: completion_menu
 C:/Users/yasha/dotfiles/config/nushell/config.nu:420::       modifier: none
 C:/Users/yasha/dotfiles/config/nushell/config.nu:421::       keycode: tab
 C:/Users/yasha/dotfiles/config/nushell/config.nu:422::       mode: vi_insert # Options: emacs vi_normal vi_insert
 C:/Users/yasha/dotfiles/config/nushell/config.nu:423::       event: {
 C:/Users/yasha/dotfiles/config/nushell/config.nu:424::         until: [
 C:/Users/yasha/dotfiles/config/nushell/config.nu:425::           { send: menu name: completion_menu 
 C:/Users/yasha/dotfiles/config/nushell/config.nu:426::           { send: menunext 
 C:/Users/yasha/dotfiles/config/nushell/config.nu:427::          
 C:/Users/yasha/dotfiles/config/nushell/config.nu:428::       
 C:/Users/yasha/dotfiles/config/nushell/config.nu:429::     
 C:/Users/yasha/dotfiles/config/nushell/config.nu:430::     {
 C:/Users/yasha/dotfiles/config/nushell/config.nu:431::       name: completion_previous
 C:/Users/yasha/dotfiles/config/nushell/config.nu:432::       modifier: shift
 C:/Users/yasha/dotfiles/config/nushell/config.nu:433::       keycode: backtab
 C:/Users/yasha/dotfiles/config/nushell/config.nu:434::       mode: [emacs, vi_normal, vi_insert  # Note: You can add the same keybinding to all modes by using a list
 C:/Users/yasha/dotfiles/config/nushell/config.nu:435::       event: { send: menuprevious 
 C:/Users/yasha/dotfiles/config/nushell/config.nu:436::     
 C:/Users/yasha/dotfiles/config/nushell/config.nu:437::     {
 C:/Users/yasha/dotfiles/config/nushell/config.nu:438::       name: history_menu
 C:/Users/yasha/dotfiles/config/nushell/config.nu:439::       modifier: control
 C:/Users/yasha/dotfiles/config/nushell/config.nu:440::       keycode: char_r
 C:/Users/yasha/dotfiles/config/nushell/config.nu:441::       mode: emacs
 C:/Users/yasha/dotfiles/config/nushell/config.nu:442::       event: { send: menu name: history_menu 
 C:/Users/yasha/dotfiles/config/nushell/config.nu:443::     
 C:/Users/yasha/dotfiles/config/nushell/config.nu:444::     {
 C:/Users/yasha/dotfiles/config/nushell/config.nu:445::       name: next_page
 C:/Users/yasha/dotfiles/config/nushell/config.nu:446::       modifier: control
 C:/Users/yasha/dotfiles/config/nushell/config.nu:447::       keycode: char_x
 C:/Users/yasha/dotfiles/config/nushell/config.nu:448::       mode: emacs
 C:/Users/yasha/dotfiles/config/nushell/config.nu:449::       event: { send: menupagenext 
 C:/Users/yasha/dotfiles/config/nushell/config.nu:450::     
 C:/Users/yasha/dotfiles/config/nushell/config.nu:451::     {
 C:/Users/yasha/dotfiles/config/nushell/config.nu:452::       name: undo_or_previous_page
 C:/Users/yasha/dotfiles/config/nushell/config.nu:453::       modifier: control
 C:/Users/yasha/dotfiles/config/nushell/config.nu:454::       keycode: char_z
 C:/Users/yasha/dotfiles/config/nushell/config.nu:455::       mode: emacs
 C:/Users/yasha/dotfiles/config/nushell/config.nu:456::       event: {
 C:/Users/yasha/dotfiles/config/nushell/config.nu:457::         until: [
 C:/Users/yasha/dotfiles/config/nushell/config.nu:458::           { send: menupageprevious 
 C:/Users/yasha/dotfiles/config/nushell/config.nu:459::           { edit: undo 
 C:/Users/yasha/dotfiles/config/nushell/config.nu:460::          
 C:/Users/yasha/dotfiles/config/nushell/config.nu:461::        
 C:/Users/yasha/dotfiles/config/nushell/config.nu:462::     
 C:/Users/yasha/dotfiles/config/nushell/config.nu:463::     # Keybindings used to trigger the user defined menus
 C:/Users/yasha/dotfiles/config/nushell/config.nu:464::     {
 C:/Users/yasha/dotfiles/config/nushell/config.nu:465::       name: commands_menu
 C:/Users/yasha/dotfiles/config/nushell/config.nu:466::       modifier: control
 C:/Users/yasha/dotfiles/config/nushell/config.nu:467::       keycode: char_t
 C:/Users/yasha/dotfiles/config/nushell/config.nu:468::       mode: [emacs, vi_normal, vi_insert 
 C:/Users/yasha/dotfiles/config/nushell/config.nu:469::       event: { send: menu name: commands_menu 
 C:/Users/yasha/dotfiles/config/nushell/config.nu:470::     
 C:/Users/yasha/dotfiles/config/nushell/config.nu:471::     {
 C:/Users/yasha/dotfiles/config/nushell/config.nu:472::       name: vars_menu
 C:/Users/yasha/dotfiles/config/nushell/config.nu:473::       modifier: control
 C:/Users/yasha/dotfiles/config/nushell/config.nu:474::       keycode: char_y
 C:/Users/yasha/dotfiles/config/nushell/config.nu:475::       mode: [emacs, vi_normal, vi_insert 
 C:/Users/yasha/dotfiles/config/nushell/config.nu:476::       event: { send: menu name: vars_menu 
 C:/Users/yasha/dotfiles/config/nushell/config.nu:477::     
 C:/Users/yasha/dotfiles/config/nushell/config.nu:478::     {
 C:/Users/yasha/dotfiles/config/nushell/config.nu:479::       name: commands_with_description
 C:/Users/yasha/dotfiles/config/nushell/config.nu:480::       modifier: control
 C:/Users/yasha/dotfiles/config/nushell/config.nu:481::       keycode: char_u
 C:/Users/yasha/dotfiles/config/nushell/config.nu:482::       mode: [emacs, vi_normal, vi_insert 
 C:/Users/yasha/dotfiles/config/nushell/config.nu:483::       event: { send: menu name: commands_with_description 
 C:/Users/yasha/dotfiles/config/nushell/config.nu:484::     
 C:/Users/yasha/dotfiles/config/nushell/config.nu:485::    
 C:/Users/yasha/dotfiles/config/nushell/config.nu:486::  
 C:/Users/yasha/dotfiles/config/nushell/config.nu:487:: 
 C:/Users/yasha/dotfiles/config/nushell/config.nu:488:: let env Path = ( env.Path | append [C: Users yasha dotfiles scripts C: Users yasha scoop apps )
 C:/Users/yasha/dotfiles/config/nushell/config.nu:489:: 
 C:/Users/yasha/dotfiles/config/nushell/config.nu:490:: # def lfn [  {
 C:/Users/yasha/dotfiles/config/nushell/config.nu:491:: # # let pwd = ((pwd) | str trim | str replace  a '/' '  ')
 C:/Users/yasha/dotfiles/config/nushell/config.nu:492:: # let tmp = "C:  Users  yasha  AppData  Local  Temp  tmp9E2.tmp"
 C:/Users/yasha/dotfiles/config/nushell/config.nu:493:: #   AppData   Local  Temp  tmpZ714.tmp"
 C:/Users/yasha/dotfiles/config/nushell/config.nu:494:: # touch C:  Users  yasha  temp.tmp 
 C:/Users/yasha/dotfiles/config/nushell/config.nu:495:: # touch C:/Users/yasha/AppData/Local/lf/temp.tmp
 C:/Users/yasha/dotfiles/config/nushell/config.nu:496:: # let tmp = ((pwsh  c [System.IO.Path ::GetTempFileName() 2> null) | str trim)
 C:/Users/yasha/dotfiles/config/nushell/config.nu:497:: #  tmp
 C:/Users/yasha/dotfiles/config/nushell/config.nu:498:: # let exec = "C:  Users  yasha  scoop  shims  lf.exe  last dir path=C:  Users  yasha  AppData  Local  Temp  tmp9E2.tmp"
 C:/Users/yasha/dotfiles/config/nushell/config.nu:499:: # ^ exec
 C:/Users/yasha/dotfiles/config/nushell/config.nu:500:: # let dir = ((open "C:  Users  yasha  AppData  Local  Temp  tmp9E2.tmp") | str trim)
 C:/Users/yasha/dotfiles/config/nushell/config.nu:501:: # cd "C:  Users  yasha"
 C:/Users/yasha/dotfiles/config/nushell/config.nu:502:: # if (( dir | path type)  == dir) {
 C:/Users/yasha/dotfiles/config/nushell/config.nu:503:: #             cd  dir
 C:/Users/yasha/dotfiles/config/nushell/config.nu:504:: #         
 C:/Users/yasha/dotfiles/config/nushell/config.nu:505:: # 
 C:/Users/yasha/dotfiles/config/nushell/config.nu:506:: # alias lf = pwsh  c C:/Users/yasha/dotfiles/scripts/lfcdWin.ps1 
 C:/Users/yasha/dotfiles/config/nushell/config.nu:507:: # [C:/Users/yasha/dotfiles/scripts C:/Users/yasha/scoop/apps/python39/current/Scripts C:/Users/yasha/scoop/apps/python39/current C:/Users/yasha/scoop/apps/nodejs/current/bin C:/Users/yasha/scoop/apps/nodejs/current C:/Users/yasha/scoop/apps/latex/current/texmfs/install/miktex/bin/x64 C:/"Program Files"/PowerShell/7 C:/windows/system32 C:/windows C:/windows/System32/Wbem C:/windows/System32/WindowsPowerShell/v1.0 C:/windows/System32/OpenSSH C:/"Program Files"/dotnet C:/"Program Files"/PowerShell/7 C:/Users/yasha/scoop/shims C:/Users/yasha/AppData/Local/Microsoft/WindowsApps )
