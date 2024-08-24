# Nushell Config File
let path0 = ["C:/Users/yasha/OneDrive/dotfiles/scripts" "C:/Users/yasha/scoop/apps/python39/current" "C:/Program Files/Microsoft Visual Studio/2022/Community/VC/Tools/MSVC/14.40.33807/bin/Hostarm64/arm64" "C:/Program Files/Microsoft Visual Studio/2022/Community/Common7/Tools"
"C:/Users/yasha/scoop/apps/nodejs/current/bin" "C:/Users/yasha/scoop/apps/nodejs/current" "C:/Users/yasha/scoop/apps/latex/current/texmfs/install/miktex/bin/x64" "C:/Program Files/PowerShell/7" "C:/windows/system32" "C:/windows" "C:/windows/System32/Wbem" "C:/windows/System32/WindowsPowerShell/v1.0" "C:/windows/System32/OpenSSH" "C:/Program Files/dotnet" "C:/Program Files/PowerShell/7" "C:/Users/yasha/AppData/Local/Microsoft/WindowsApps" "C:/Users/yasha/scoop/apps/perl/current/perl/bin" "C:/Users/yasha/scoop/apps/gcc/current/bin" "C:/Users/yasha/scoop/apps/llvm/14.0.4/bin"]
let scoop1 = (ls C:/Users/yasha/scoop/apps/*/current).name
let scoop2 = (ls C:/Users/yasha/scoop/apps/*/current/bin).name
let path = $path0 | append $scoop1 | append $scoop2 | append ["C:/Users/yasha/scoop/shims"] | append ["C:/Users/yasha/.cargo/bin"] | append ["C:/Users/yasha/scoop/apps/autohotkey/current/installer/AutoHotkeyU64.exe"]
$env.CARGO_HOME = "C:/Users/yasha/Cargo"
$env.Path = $path
$env.SKIA_GN_COMMAND = "C:/Users/yasha/OneDrive/executables/gn-windows-amd64/gn.exe"
$env.HOMED = $"($env.HOMEPATH)/OneDrive"
let HOME = $"($env.HOMEPATH)"
let HOMED = $"($HOME)/OneDrive"
def keyGH [] { open $"($HOMED)/authenticateGH.txt" }
def sudo [command:string] {pwsh -c $command}
def run [command: string] {do --ignore-errors { $command }
}
def restorelink [] {
do --ignore-errors {rm link.bib}
pwsh -nop -c New-Item -ItemType SymbolicLink -Path ./link.bib -Target C:/Users/yasha/onedrive/dotfiles/link.bib}

def uploadGit [name:string] { let key = (keyGH)
nu $"($HOMED)/dotfiles/scripts/uploadGit.nu" $name (keyGH) }
def neo [file = ""] {
# nu -c $"C:/Users/yasha/scoop/apps/neovide/current/neovide.exe ($file)"
nu -c $"nvy.exe --fullscreen ($file)"
}
def vi [file = ""] {
nvy --maximize $file
}
def p [] {
let $command = $"Set-Location '($env.PWD)'"
echo $command
pwsh -NoExit -Command $command
}

def swap [] {
rm $"($HOME)/AppData/Local/nvim-data/swap/*"
}
# test let profile = $"($HOMED)/dotfiles/config/nvim/init.vim"|ZCXVBNM<>=
def n [] {
neo
}

def nf [] {
let $ho = (fd . $HOMED -H -E /.undo/* -E /undo/* -E /tmp/* -E *.pdf | fzf | str trim)
# neovide --multigrid $ho 
neo $ho
}
def r [name: string] { rm --recursive --trash $name }
def killn [name: string] { ps | where name =~ $name | each {|it| kill --force $it.pid} }

# alias hello = ( echo "hello" )
# def --env j [file: string] {
# if ($file | str trim | path type) == dir {
# zoxide add $file}
# __zoxide_z $file}
def vrc [] { neo $"($HOMED)/dotfiles/config/nvimnew/init.lua" }
def lfrc [] { neo $"($HOMED)/dotfiles/config/lf/lfrc" } 
# def psrc [] { neo $profile } 
def nurc [] { neo $"($HOMED)/dotfiles/config/nushell/config.nu"}
def texi [file:string] { pdflatex -file-line-error -synctex=1  -interaction=nonstopmode -recorder $file }
def latexi [file:string] { latexmk -g -pdf -file-line-error -synctex=1  -interaction=nonstopmode -recorder -f $file}
def pdf [file:string] { nu -c C:/Users/yasha/scoop/shims/sumatrapdf.exe $file} 
def ink [file = ""] { inkscape $file} 
def pvc [file:string] { latexmk -pdf -pvc -file-line-error -synctex=1  -interaction=nonstopmode -recorder -f $file} 
def lat [file:string] { latexmk -pvc -pdf -file-line-error -synctex=1 -interaction=nonstopmode -recorder -f -g $file}
#
def pushmod [] { git submodule foreach git add . ; git submodule foreach git commit -m -a ; git submodule foreach git push origin master; git add . ; git commit -m $"(git diff --staged)"; git push --all origin }
def push [] { git add .; git diff --staged | save --force message.log; git commit -F message.log; git push --all origin }
def pull [] { git pull --recurse-submodules ; git submodule update --recursive --remote }
def pullmaster [] { git pull --recurse-submodules ; git submodule update --recursive --remote ; git submodule foreach git checkout master ; git submodule foreach git pull --all
}
def pushgh [] { cd $"($HOMED)/web" ; pandoc index.md -o index.html ; git add . ; git commit -m -a ; git push origin gh-pages }

# def init [dir:string] {mkdir $dir ; cd $dir ; git init ; git branch -M master; git commit -m "fist commit"
# } 

def hw [] { pandoc $"($HOMED)/web/classes/CalcIII/2023.md" -o $"($HOMED)/web/classes/CalcIII/2023.html" ;  pandoc $"($HOMED)/web/classes/ModernGeometry/2023.tex" -o $"($HOMED)/web/classes/ModernGeometry/2023.html" ; cd $"($HOMED)/web"; git add . ; git commit -m -a ; git push origin gh-pages 
} 

# alias config = ( cd $"($HOMED)/dotfiles"; push; cd $"($HOMED)/workspacemodules"; pushmod; cd $"($HOMED)/workspace"; push; cd web pushgh; pacman -Qqe > $"($HOMED)/dotfiles/pkglist.txt" )

def sendFunction [file:string] {
let cwdb = $env.PWD
cd $"($HOMED)/web"
git pull
cd $cwdb
cp $file $"($HOMED)/web/papers"
cd $"($HOMED)/web"
git add .
git commit -m -a
git push origin gh-pages
cd $cwdb
}
alias send = sendFunction
def --env lf [...opt] { source "C:/Users/yasha/OneDrive/dotfiles/scripts/lfcd.nu"
main $opt
let dir = ((open "C:\\Users\\yasha\\AppData\\Local\\Temp\\tmp9E2XX.tmp") | str trim)
$dir | clip
cd $dir
}
def upscoop [] { scoop update -a; echo "saving"; scoop export | save -f $"($HOMED)/dotfiles/scoopPackageList.json"; pwsh -nop -c 'scoop cleanup *' }
def upwin [] { winget upgrade --all --accept-source-agreements --silent; echo "saving"; winget export -o $"($HOMED)/dotfiles/WingetList.json" }
module completions {
  # Custom completions for external commands (those outside of Nushell)
  # Each completions has two parts: the form of the external command, including its flags and parameters
  # and a helper command that knows how to complete values for those flags and parameters
  #
  # This is a simplified version of completions for git branches and git remotes
  def "nu-complete git branches" [] {
    ^git branch | lines | each { |line| $line | str replace '[\*\+] ' '' | str trim }
  }

  def "nu-complete git remotes" [] {
    ^git remote | lines | each { |line| $line | str trim }
  }

  # Download objects and refs from another repository
  export extern "git fetch" [
    repository?: string@"nu-complete git remotes" # name of the repository to fetch
    branch?: string@"nu-complete git branches" # name of the branch to fetch
    --all                                         # Fetch all remotes
    --append(-a)                                  # Append ref names and object names to .git/FETCH_HEAD
    --atomic                                      # Use an atomic transaction to update local refs.
    --depth: int                                  # Limit fetching to n commits from the tip
    --deepen: int                                 # Limit fetching to n commits from the current shallow boundary
    --shallow-since: string                       # Deepen or shorten the history by date
    --shallow-exclude: string                     # Deepen or shorten the history by branch/tag
    --unshallow                                   # Fetch all available history
    --update-shallow                              # Update .git/shallow to accept new refs
    --negotiation-tip: string                     # Specify which commit/glob to report while fetching
    --negotiate-only                              # Do not fetch, only print common ancestors
    --dry-run                                     # Show what would be done
    --write-fetch-head                            # Write fetched refs in FETCH_HEAD (default)
    --no-write-fetch-head                         # Do not write FETCH_HEAD
    --force(-f)                                   # Always update the local branch
    --keep(-k)                                    # Keep downloaded pack
    --multiple                                    # Allow several arguments to be specified
    --auto-maintenance                            # Run 'git maintenance run --auto' at the end (default)
    --no-auto-maintenance                         # Don't run 'git maintenance' at the end
    --auto-gc                                     # Run 'git maintenance run --auto' at the end (default)
    --no-auto-gc                                  # Don't run 'git maintenance' at the end
    --write-commit-graph                          # Write a commit-graph after fetching
    --no-write-commit-graph                       # Don't write a commit-graph after fetching
    --prefetch                                    # Place all refs into the refs/prefetch/ namespace
    --prune(-p)                                   # Remove obsolete remote-tracking references
    --prune-tags(-P)                              # Remove any local tags that do not exist on the remote
    --no-tags(-n)                                 # Disable automatic tag following
    --refmap: string                              # Use this refspec to map the refs to remote-tracking branches
    --tags(-t)                                    # Fetch all tags
    --recurse-submodules: string                  # Fetch new commits of populated submodules (yes/on-demand/no)
    --jobs(-j): int                               # Number of parallel children
    --no-recurse-submodules                       # Disable recursive fetching of submodules
    --set-upstream                                # Add upstream (tracking) reference
    --submodule-prefix: string                    # Prepend to paths printed in informative messages
    --upload-pack: string                         # Non-default path for remote command
    --quiet(-q)                                   # Silence internally used git commands
    --verbose(-v)                                 # Be verbose
    --progress                                    # Report progress on stderr
    --server-option(-o): string                   # Pass options for the server to handle
    --show-forced-updates                         # Check if a branch is force-updated
    --no-show-forced-updates                      # Don't check if a branch is force-updated
    -4                                            # Use IPv4 addresses, ignore IPv6 addresses
    -6                                            # Use IPv6 addresses, ignore IPv4 addresses
    --help                                        # Display the help message for this command
  ]

  # Check out git branches and files
  export extern "git checkout" [
    ...targets: string@"nu-complete git branches"   # name of the branch or files to checkout
    --conflict: string                              # conflict style (merge or diff3)
    --detach(-d)                                    # detach HEAD at named commit
    --force(-f)                                     # force checkout (throw away local modifications)
    --guess                                         # second guess 'git checkout <no-such-branch>' (default)
    --ignore-other-worktrees                        # do not check if another worktree is holding the given ref
    --ignore-skip-worktree-bits                     # do not limit pathspecs to sparse entries only
    --merge(-m)                                     # perform a 3-way merge with the new branch
    --orphan: string                                # new unparented branch
    --ours(-2)                                      # checkout our version for unmerged files
    --overlay                                       # use overlay mode (default)
    --overwrite-ignore                              # update ignored files (default)
    --patch(-p)                                     # select hunks interactively
    --pathspec-from-file: string                    # read pathspec from file
    --progress                                      # force progress reporting
    --quiet(-q)                                     # suppress progress reporting
    --recurse-submodules: string                    # control recursive updating of submodules
    --theirs(-3)                                    # checkout their version for unmerged files
    --track(-t)                                     # set upstream info for new branch
    -b: string                                      # create and checkout a new branch
    -B: string                                      # create/reset and checkout a branch
    -l                                              # create reflog for new branch
    --help                                          # Display the help message for this command
  ]

  # Push changes
  export extern "git push" [
    remote?: string@"nu-complete git remotes",      # the name of the remote
    ...refs: string@"nu-complete git branches"      # the branch / refspec
    --all                                           # push all refs
    --atomic                                        # request atomic transaction on remote side
    --delete(-d)                                    # delete refs
    --dry-run(-n)                                   # dry run
    --exec: string                                  # receive pack program
    --follow-tags                                   # push missing but relevant tags
    --force(-f)                                     # force updates
    --ipv4(-4)                                      # use IPv4 addresses only
    --ipv6(-6)                                      # use IPv6 addresses only
    --mirror                                        # mirror all refs
    --no-verify                                     # bypass pre-push hook
    --porcelain                                     # machine-readable output
    --progress                                      # force progress reporting
    --prune                                         # prune locally removed refs
    --push-option(-o): string                       # option to transmit
    --quiet(-q)                                     # be more quiet
    --receive-pack: string                          # receive pack program
    --recurse-submodules: string                    # control recursive pushing of submodules
    --repo: string                                  # repository
    --set-upstream(-u)                              # set upstream for git pull/status
    --signed: string                                # GPG sign the push
    --tags                                          # push tags (can't be used with --all or --mirror)
    --thin                                          # use thin pack
    --verbose(-v)                                   # be more verbose
    --help                                          # Display the help message for this command
  ]
}

# Get just the extern definitions without the custom completion commands
use completions *

# For more information on themes, see
# https://www.nushell.sh/book/coloring_and_theming.html
let dark_theme = {
    # color for nushell primitives
    separator: white
    leading_trailing_space_bg: { attr: n } # no fg, no bg, attr none effectively turns this off
    header: green_bold
    empty: blue
    # Closures can be used to choose colors for specific values.
    # The value (in this case, a bool) is piped into the closure.
    bool: { if $in { 'light_cyan' } else { 'light_gray' } }
    int: white
    filesize: {|e|
      if $e == 0b {
        'white'
      } else if $e < 1mb {
        'cyan'
      } else { 'blue' }
    }
    duration: white
    date: { (date now) - $in |
      if $in < 1hr {
        '#e61919'
      } else if $in < 6hr {
        '#e68019'
      } else if $in < 1day {
        '#e5e619'
      } else if $in < 3day {
        '#80e619'
      } else if $in < 1wk {
        '#19e619'
      } else if $in < 6wk {
        '#19e5e6'
      } else if $in < 52wk {
        '#197fe6'
      } else { 'light_gray' }
    }
    range: white
    float: white
    string: white
    nothing: white
    binary: white
    cellpath: white
    row_index: green_bold
    record: white
    list: white
    block: white
    hints: dark_gray

    shape_and: purple_bold
    shape_binary: purple_bold
    shape_block: blue_bold
    shape_bool: light_cyan
    shape_custom: green
    shape_datetime: cyan_bold
    shape_directory: cyan
    shape_external: cyan
    shape_externalarg: green_bold
    shape_filepath: cyan
    shape_flag: blue_bold
    shape_float: purple_bold
    # shapes are used to change the cli syntax highlighting
    shape_garbage: { fg: "#FFFFFF" bg: "#FF0000" attr: b}
    shape_globpattern: cyan_bold
    shape_int: purple_bold
    shape_internalcall: cyan_bold
    shape_list: cyan_bold
    shape_literal: blue
    shape_matching_brackets: { attr: u }
    shape_nothing: light_cyan
    shape_operator: yellow
    shape_or: purple_bold
    shape_pipe: purple_bold
    shape_range: yellow_bold
    shape_record: cyan_bold
    shape_redirection: purple_bold
    shape_signature: green_bold
    shape_string: green
    shape_string_interpolation: cyan_bold
    shape_table: blue_bold
    shape_variable: purple
}

let light_theme = {
    # color for nushell primitives
    separator: dark_gray
    leading_trailing_space_bg: { attr: n } # no fg, no bg, attr none effectively turns this off
    header: green_bold
    empty: blue
    # Closures can be used to choose colors for specific values.
    # The value (in this case, a bool) is piped into the closure.
    bool: { if $in { 'dark_cyan' } else { 'dark_gray' } }
    int: dark_gray
    filesize: {|e|
      if $e == 0b {
        'dark_gray'
      } else if $e < 1mb {
        'cyan_bold'
      } else { 'blue_bold' }
    }
    duration: dark_gray
  date: { (date now) - $in |
    if $in < 1hr {
      'red3b'
    } else if $in < 6hr {
      'orange3'
    } else if $in < 1day {
      'yellow3b'
    } else if $in < 3day {
      'chartreuse2b'
    } else if $in < 1wk {
      'green3b'
    } else if $in < 6wk {
      'darkturquoise'
    } else if $in < 52wk {
      'deepskyblue3b'
    } else { 'dark_gray' }
  }
    range: dark_gray
    float: dark_gray
    string: dark_gray
    nothing: dark_gray
    binary: dark_gray
    cellpath: dark_gray
    row_index: green_bold
    record: white
    list: white
    block: white
    hints: dark_gray

    shape_and: purple_bold
    shape_binary: purple_bold
    shape_block: blue_bold
    shape_bool: light_cyan
    shape_custom: green
    shape_datetime: cyan_bold
    shape_directory: cyan
    shape_external: cyan
    shape_externalarg: green_bold
    shape_filepath: cyan
    shape_flag: blue_bold
    shape_float: purple_bold
    # shapes are used to change the cli syntax highlighting
    shape_garbage: { fg: "#FFFFFF" bg: "#FF0000" attr: b}
    shape_globpattern: cyan_bold
    shape_int: purple_bold
    shape_internalcall: cyan_bold
    shape_list: cyan_bold
    shape_literal: blue
    shape_matching_brackets: { attr: u }
    shape_nothing: light_cyan
    shape_operator: yellow
    shape_or: purple_bold
    shape_pipe: purple_bold
    shape_range: yellow_bold
    shape_record: cyan_bold
    shape_redirection: purple_bold
    shape_signature: green_bold
    shape_string: green
    shape_string_interpolation: cyan_bold
    shape_table: blue_bold
    shape_variable: purple
}

# External completer example
# let carapace_completer = {|spans|
#     carapace $spans.0 nushell $spans | from json
# }


# The default config record. This is where much of your global configuration is setup.
$env.config = {
# completion_algorithm: "fuzzy"  # prefix, fuzzy
 cursor_shape: {
    vi_insert: line 
    vi_normal: block
    emacs: line
  }
  ls: {
    use_ls_colors: true # use the LS_COLORS environment variable to colorize output
    clickable_links: true # enable or disable clickable links. Your terminal has to support links.
  }
  rm: {
    always_trash: false # always act as if -t was given. Can be overridden with -p
  }
  # cd: {
  #   abbreviations: false # allows `cd s/o/f` to expand to `cd some/other/folder`
  # }
  table: {
    mode: rounded # basic, compact, compact_double, light, thin, with_love, rounded, reinforced, heavy, none, other
    index_mode: always # "always" show indexes, "never" show indexes, "auto" = show indexes when a table has "index" column
    trim: {
      methodology: wrapping # wrapping or truncating
      wrapping_try_keep_words: true # A strategy used by the 'wrapping' methodology
      truncating_suffix: "..." # A suffix used by the 'truncating' methodology
    }
  }

  explore: {
    help_banner: false
    exit_esc: true

    command_bar_text: '#C4C9C6'
    # command_bar: {fg: '#C4C9C6' bg: '#223311' }

    status_bar_background: {fg: '#1D1F21' bg: '#C4C9C6' }
    # status_bar_text: {fg: '#C4C9C6' bg: '#223311' }

    highlight: {bg: 'yellow' fg: 'black' }

    status: {
      # warn: {bg: 'yellow', fg: 'blue'}
      # error: {bg: 'yellow', fg: 'blue'}
      # info: {bg: 'yellow', fg: 'blue'}
    }

    try: {
      # border_color: 'red'
      # highlighted_color: 'blue'

      # reactive: false
    }

    table: {
      split_line: '#404040'

      cursor: true

      line_index: true
      line_shift: true
      line_head_top: true
      line_head_bottom: true

      show_head: true
      show_index: true

      # selected_cell: {fg: 'white', bg: '#777777'}
      # selected_row: {fg: 'yellow', bg: '#C1C2A3'}
      # selected_column: blue

      # padding_column_right: 2
      # padding_column_left: 2

      # padding_index_left: 2
      # padding_index_right: 1
    }

    config: {
      cursor_color: {bg: 'yellow' fg: 'black' }

      # border_color: white
      # list_color: green
    }
  }

  history: {
    max_size: 100000 # Session has to be reloaded for this to take effect
    sync_on_enter: true # Enable to share history between multiple sessions, else you have to close the session to write history to file
    file_format: "plaintext" # "sqlite" or "plaintext"
  }
  completions: {
    case_sensitive: false # set to true to enable case-sensitive completions
    quick: true  # set this to false to prevent auto-selecting completions when only one remains
    partial: true  # set this to false to prevent partial filling of the prompt
    algorithm: "fuzzy"  # prefix or fuzzy
    external: {
      enable: true # set to false to prevent nushell looking into $env.PATH to find more suggestions, `false` recommended for WSL users as this look up my be very slow
      max_results: 100 # setting it lower can improve completion performance at the cost of omitting some options
      completer: null # check 'carapace_completer' above as an example
    }
  }
  filesize: {
    metric: true # true => KB, MB, GB (ISO standard), false => KiB, MiB, GiB (Windows standard)
    format: "auto" # b, kb, kib, mb, mib, gb, gib, tb, tib, pb, pib, eb, eib, zb, zib, auto
  }
  color_config: $light_theme   # if you want a light theme, replace `$dark_theme` to `$light_theme`
  use_grid_icons: true
  footer_mode: "25" # always, never, number_of_rows, auto
  float_precision: 2
  buffer_editor: "nvim" # command that will be used to edit the current line buffer with ctrl+o, if unset fallback to $env.EDITOR and $env.VISUAL
  use_ansi_coloring: true
  edit_mode: vi # emacs, vi
  # shell_integration: true # enables terminal markers and a workaround to arrow keys stop working issue
  show_banner: false # true or false to enable or disable the banner
  render_right_prompt_on_last_line: false # true or false to enable or disable right prompt to be rendered on last line of the prompt.

  hooks: {
    pre_prompt: [{
      null  # replace with source code to run before the prompt is shown
    }]
    pre_execution: [{
      null  # replace with source code to run before the repl input is run
    }]
    env_change: {
      PWD: [{|before, after|
        null  # replace with source code to run if the PWD environment is different since the last repl input
      }]
    }
    display_output: {
      if (term size).columns >= 100 { table -e } else { table }
    }
  }
  menus: [
      # Configuration for default nushell menus
      # Note the lack of source parameter
      {
        name: completion_menu
        only_buffer_difference: false
        marker: "| "
        type: {
            layout: columnar
            columns: 4
            col_width: 20   # Optional value. If missing all the screen width is used to calculate column width
            col_padding: 2
        }
        style: {
            text: green
            selected_text: green_reverse
            description_text: yellow
        }
      }
      {
        name: history_menu
        only_buffer_difference: true
        marker: "? "
        type: {
            layout: list
            page_size: 10
        }
        style: {
            text: green
            selected_text: green_reverse
            description_text: yellow
        }
      }
      {
        name: help_menu
        only_buffer_difference: true
        marker: "? "
        type: {
            layout: description
            columns: 4
            col_width: 20   # Optional value. If missing all the screen width is used to calculate column width
            col_padding: 2
            selection_rows: 4
            description_rows: 10
        }
        style: {
            text: green
            selected_text: green_reverse
            description_text: yellow
        }
      }
      # Example of extra menus created using a nushell source
      # Use the source field to create a list of records that populates
      # the menu
      {
        name: commands_menu
        only_buffer_difference: false
        marker: "# "
        type: {
            layout: columnar
            columns: 4
            col_width: 20
            col_padding: 2
        }
        style: {
            text: green
            selected_text: green_reverse
            description_text: yellow
        }
        source: { |buffer, position|
            $nu.scope.commands
            | where name =~ $buffer
            | each { |it| {value: $it.name description: $it.usage} }
        }
      }
      {
        name: vars_menu
        only_buffer_difference: true
        marker: "# "
        type: {
            layout: list
            page_size: 10
        }
        style: {
            text: green
            selected_text: green_reverse
            description_text: yellow
        }
        source: { |buffer, position|
            $nu.scope.vars
            | where name =~ $buffer
            | sort-by name
            | each { |it| {value: $it.name description: $it.type} }
        }
      }
      {
        name: commands_with_description
        only_buffer_difference: true
        marker: "# "
        type: {
            layout: description
            columns: 4
            col_width: 20
            col_padding: 2
            selection_rows: 4
            description_rows: 10
        }
        style: {
            text: green
            selected_text: green_reverse
            description_text: yellow
        }
        source: { |buffer, position|
            $nu.scope.commands
            | where name =~ $buffer
            | each { |it| {value: $it.name description: $it.usage} }
        }
      }
  ]
  keybindings: [
    {
      name: completion_menu
      modifier: none
      keycode: tab
      mode: [emacs vi_normal vi_insert]
      event: {
        until: [
          { send: menu name: completion_menu }
          { send: menunext }
        ]
      }
    }


{
        name: capitalize
        modifier: none
        keycode: char_~
        mode: [vi_normal]
        event: [
            { edit: CapitalizeChar }
        ]
}


{
        name: Paste
        modifier: none
        keycode: char_p
        mode: [vi_normal]
        event: {
        until: [
          {edit: PasteSystem }
        ]
      }
}
{
        name: movetolineEnd
        modifier: shift
        keycode: char_l
        mode: [vi_normal] 
        event: [
            { edit:  MoveToLineEnd }
        ]
}
{
        name: movetolinestart
        modifier: shift
        keycode: char_h
        mode: [vi_normal] 
        event: [
            { edit:  MoveToLineStart }
        ]
}
{
        name: histUp
        modifier: alt
        keycode: char_j
        mode: [emacs, vi_normal, vi_insert] 
        event: [
            { send: NextHistory }
        ]
}

  {
        name: histDown
        modifier: alt
        keycode: char_k
        mode: [emacs, vi_normal, vi_insert] 
        event: [
            { send: PreviousHistory }
        ]
  }

  {
        name: complete
        modifier: alt
        keycode: char_a
        mode: [emacs, vi_normal, vi_insert] 
        event: [
            { send: HistoryHintComplete }
        ]
  }
    {
      name: completion_previous
      modifier: shift
      keycode: backtab
      mode: [emacs, vi_normal, vi_insert] # Note: You can add the same keybinding to all modes by using a list
      event: { send: menuprevious }
    }
    {
      name: history_menu
      modifier: control
      keycode: char_r
      mode: emacs
      event: { send: menu name: history_menu }
    }
    {
      name: next_page
      modifier: control
      keycode: char_x
      mode: emacs
      event: { send: menupagenext }
    }
    {
      name: undo_or_previous_page
      modifier: control
      keycode: char_z
      mode: emacs
      event: {
        until: [
          { send: menupageprevious }
          { edit: undo }
        ]
       }
    }
		{
        name: undo
        modifier: none
        keycode: char_u
        mode: [vi_normal]
        event: {
        until: [
          {edit: Undo }
        ]
      }
}

		{
        name: redo
        modifier: alt
        keycode: char_r
        mode: [vi_normal, vi_insert]
        event: {
        until: [
          {edit: Redo }
        ]
      }
}

    {
      name: yank
      modifier: CONTROL
      keycode: char_c
      mode: [vi_normal, emacs, vi_insert]
      event: {
        until: [
          {edit: CutSelectionSystem }
        ]
      }
    }
    {
      name: unix-line-discard
      modifier: control
      keycode: char_u
      mode: [emacs, vi_normal, vi_insert]
      event: {
        until: [
          {edit: cutfromlinestart}
        ]
      }
    }
    {
      name: kill-line
      modifier: control
      keycode: char_k
      mode: [emacs, vi_normal, vi_insert]
      event: {
        until: [
          {edit: cuttolineend}
        ]
      }
    }
    # Keybindings used to trigger the user defined menus
    {
      name: commands_menu
      modifier: control
      keycode: char_t
      mode: [emacs, vi_normal, vi_insert]
      event: { send: menu name: commands_menu }
    }
    {
      name: vars_menu
      modifier: alt
      keycode: char_o
      mode: [emacs, vi_normal, vi_insert]
      event: { send: menu name: vars_menu }
    }
    {
      name: commands_with_description
      modifier: control
      keycode: char_s
      mode: [emacs, vi_normal, vi_insert]
      event: { send: menu name: commands_with_description }
    }
		
  ]
}
source ~/.cache/starship/init.nu
source ~/.zoxide.nu
alias j = z 

