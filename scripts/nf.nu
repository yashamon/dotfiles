def main [] {
let $ho = (fd . C:/Users/yasha -H -E /.undo/* -E /undo/* -E /tmp/* -E *.pdf | fzf | str trim)
neovide --multigrid $ho 
}
