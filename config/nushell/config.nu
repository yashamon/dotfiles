# Nushell Config File
let-env Path = ["C:/Users/yasha/scoop/shims" "C:/Users/yasha/dotfiles/scripts" "C:/Users/yasha/scoop/apps" "C:/Users/yasha/scoop/apps/python39/current" "C:/Users/yasha/scoop/apps/nodejs/current/bin" "C:/Users/yasha/scoop/apps/nodejs/current" "C:/Users/yasha/scoop/apps/latex/current/texmfs/install/miktex/bin/x64" "C:\Program Files\PowerShell\7" "C:/windows/system32" "C:/windows" "C:/windows/System32/Wbem" "C:/windows/System32/WindowsPowerShell/v1.0" "C:/windows/System32/OpenSSH" "C:\Program Files/dotnet" "C:/Program Files/PowerShell\7" "C:/Users/yasha/AppData/Local/Microsoft/WindowsApps"]

# ($env.Path | append ["C:\\Users\\yasha\\dotfiles\\scripts" "C:\\Users\\yasha\\scoop\\apps" "C:\\Users\\yasha\\scoop\\shims"])

source ~/.zoxide.nu
source ~/.cache/starship/init.nu
def swap [] {
rm swap/* 
}
def neo [file:string] {
# Invoke-Expression $neo --multigrid $1
neovide --multigrid $file
}
let HOME = "C:/Users/yasha"
# let profile = $"($HOME)/dotfiles/config/nvim/init.vim"
def nf [] {
let $ho = (fd . $HOME -H -E /.undo/* -E /undo/* -E /tmp/* -E *.pdf | fzf | str trim)
neovide --multigrid $ho 
}
alias hello = ( echo "hello" )
alias j = __zoxide_z
def vrc [] { neo $"($HOME)/dotfiles/config/nvim/init.vim" }
def lfrc [] { neo $"($HOME)/dotfiles/config/lf/lfrc" } 
# def psrc [] { neo $profile } 
def nurc [] { neo $"($HOME)/dotfiles/config/nushell/config.nu"}
def texi [file:string] { pdflatex -file-line-error -synctex=1  -interaction=nonstopmode -recorder $file }
def latexi [file:string] { latexmk -g -pdf -file-line-error -synctex=1  -interaction=nonstopmode -recorder -f $file}
def pvc [file:string] { latexmk -pdf -pvc -file-line-error -synctex=1  -interaction=nonstopmode -recorder -f $file} 
def lat [file:string] { latexmk -pvc -pdf -file-line-error -synctex=1 -interaction=nonstopmode -recorder -f -g $file}
#
def pushmod [] { git submodule foreach git add . ; git submodule foreach git commit -m -a ; git submodule foreach git push origin master; git add . ; git commit -m -a; git push --all origin }
def push [] { git add . ; git commit -m -a ; git push --all origin }
def pull [] { git pull --recurse-submodules ; git submodule update --recursive --remote }
def pullmaster [] { git pull --recurse-submodules ; git submodule update --recursive --remote ; git submodule foreach git checkout master ; git submodule foreach git pull --all
}
def pushgh [] { cd $"($HOME)/web" ; pandoc index.md > index.html ; git add . ; git commit -m -a ; git push origin gh-pages }
def hw [] { pandoc $"($HOME)/web/classes/AlgTop/2022.md" > $"($HOME)/web/classes/AlgTop/2022.html" ; pandoc $"($HOME)/web/classes/CalcIII/2022.md"  > $"($HOME)/web/classes/CalcIII/2022.html" ; cd "($HOME)/web" ; git add . ; git commit -m -a ; git push origin gh-pages } 
def pdf [file:string] { zathura $file }

alias config = ( cd $"($HOME)/dotfiles"; push; cd $"($HOME)/workspacemodules"; pushmod; cd $"($HOME)/workspace"; push; cd web pushgh; pacman -Qqe > $"($HOME)/dotfiles/pkglist.txt" )

def sendFunction [file:string] {
let cwdb = $env.PWD
cd $"($HOME)/web"
git pull
cd $cwdb
cp $file $"($HOME)/web/papers/($file)"
cd $"($HOME)/web"
git add .
git commit -m -a
git push origin gh-pages
cd $cwdb
}
alias send = sendFunction
def-env lf [...opt] { source C:/Users/yasha/dotfiles/scripts/lfcd.nu
main $opt
let dir = ((open "C:\\Users\\yasha\\AppData\\Local\\Temp\\tmp9E2XX.tmp") | str trim)
$dir | clip
cd $dir
}
def update [] { scoop update -a; scoop export > ~/dotfiles/scoopPackageList.json }

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
    repository?: string@"nu-complete git remotes" # name of the branch to fetch
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
    --keep(-k)                                    # Keep dowloaded pack
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
    --force-with-lease: string                      # require old value of ref to be at this value
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
  ]
}

# Get just the extern definitions without the custom completion commands
use completions *

# for more information on themes see
# https://www.nushell.sh/book/coloring_and_theming.html
let default_theme = {
    # color for nushell primitives
    separator: white
    leading_trailing_space_bg: { attr: n } # no fg, no bg, attr none effectively turns this off
    header: green_bold
    empty: blue
    bool: white
    int: white
    filesize: white
    duration: white
    date: white
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

    # shapes are used to change the cli syntax highlighting
    shape_garbage: { fg: "#FFFFFF" bg: "#FF0000" attr: b}
    shape_binary: purple_bold
    shape_bool: light_cyan
    shape_int: purple_bold
    shape_float: purple_bold
    shape_range: yellow_bold
    shape_internalcall: cyan_bold
    shape_external: cyan
    shape_externalarg: green_bold
    shape_literal: blue
    shape_operator: yellow
    shape_signature: green_bold
    shape_string: green
    shape_string_interpolation: cyan_bold
    shape_datetime: cyan_bold
    shape_list: cyan_bold
    shape_table: blue_bold
    shape_record: cyan_bold
    shape_block: blue_bold
    shape_filepath: cyan
    shape_globpattern: cyan_bold
    shape_variable: purple
    shape_flag: blue_bold
    shape_custom: green
    shape_nothing: light_cyan
}

# The default config record. This is where much of your global configuration is setup.
let-env config = {
  filesize_metric: false
  table_mode: rounded # basic, compact, compact_double, light, thin, with_love, rounded, reinforced, heavy, none, other
  use_ls_colors: true
  rm_always_trash: false
  color_config: $default_theme
  use_grid_icons: true
  footer_mode: "25" # always, never, number_of_rows, auto
  quick_completions: true  # set this to false to prevent auto-selecting completions when only one remains
  partial_completions: true  # set this to false to prevent partial filling of the prompt
  completion_algorithm: "prefix"  # prefix, fuzzy
  animate_prompt: false # redraw the prompt every second
  float_precision: 2
  # buffer_editor: "emacs" # command that will be used to edit the current line buffer with ctrl+o, if unset fallback to $env.EDITOR and $env.VISUAL
  use_ansi_coloring: true
  filesize_format: "auto" # b, kb, kib, mb, mib, gb, gib, tb, tib, pb, pib, eb, eib, zb, zib, auto
  edit_mode: vi # emacs, vi
  max_history_size: 10000 # Session has to be reloaded for this to take effect
  sync_history_on_enter: true # Enable to share the history between multiple sessions, else you have to close the session to persist history to file
  shell_integration: true # enables terminal markers and a workaround to arrow keys stop working issue
  disable_table_indexes: false # set to true to remove the index column from tables
  cd_with_abbreviations: false # set to true to allow you to do things like cd s/o/f and nushell expand it to cd some/other/folder
  hooks: {
    pre_prompt: [{
      $nothing  # replace with source code to run before the prompt is shown
    }]
    pre_execution: [{
      $nothing  # replace with source code to run before the repl input is run
    }]
    env_change: {
      PWD: [{|before, after|
        $nothing  # replace with source code to run if the PWD environment is different since the last repl input
      }]
    }
  }
  menus: [
      # Configuration for default nushell menus
      # Note the lack of souce parameter
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
            | where command =~ $buffer
            | each { |it| {value: $it.command description: $it.usage} }
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
            | where command =~ $buffer
            | each { |it| {value: $it.command description: $it.usage} }
        }
      }
  ]
  keybindings: [
  {
        name: histUp
        modifier: alt
        keycode: char_k
        mode: [emacs, vi_normal, vi_insert] 
        event: [
            { send: NextHistory }
        ]
  }

  {
        name: histDown
        modifier: alt
        keycode: char_j
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
      name: completion_menu
      modifier: none
      keycode: tab
      mode: vi_insert # Options: emacs vi_normal vi_insert
      event: {
        until: [
          { send: menu name: completion_menu }
          { send: menunext }
        ]
      }
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
      modifier: control
      keycode: char_y
      mode: [emacs, vi_normal, vi_insert]
      event: { send: menu name: vars_menu }
    }
    {
      name: commands_with_description
      modifier: control
      keycode: char_u
      mode: [emacs, vi_normal, vi_insert]
      event: { send: menu name: commands_with_description }
    }
  ]
 
}



# def lfn [] {
# # let pwd = ((pwd) | str trim | str replace -a '/' '\\')
# let tmp = "C:\\Users\\yasha\\AppData\\Local\\Temp\\tmp9E2.tmp"
# \\AppData \\Local\\Temp\\tmpZ714.tmp"
# touch C:\\Users\\yasha\\temp.tmp 
# touch C:/Users/yasha/AppData/Local/lf/temp.tmp
# let tmp = ((pwsh -c [System.IO.Path]::GetTempFileName() 2> null) | str trim)
# $tmp
# let exec = "C:\\Users\\yasha\\scoop\\shims\\lf.exe -last-dir-path=C:\\Users\\yasha\\AppData\\Local\\Temp\\tmp9E2.tmp"
# ^$exec
# let dir = ((open "C:\\Users\\yasha\\AppData\\Local\\Temp\\tmp9E2.tmp") | str trim)
# cd "C:\\Users\\yasha"
# if (($dir | path type)  == dir) {
#             cd $dir
#         }
# }
# alias lf = pwsh -c C:/Users/yasha/dotfiles/scripts/lfcdWin.ps1 
# 
