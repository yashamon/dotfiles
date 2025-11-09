def main [file?:string] {
# let execute =  $"C:/Users/yasha/neovim/build/bin/nvim.exe ($file)"
let execute =  $"C:/Users/yasha/scoop/apps/nvy/current/Nvy.exe --fullscreen ($file)"
nu -c $execute
# nu -c "neovide --maximized --no-vsync --no-idle --neovim-bin ~/neovim/build/bin/nvim"
}

