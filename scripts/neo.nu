def main [file?:string] {
# let execute =  $"C:/Users/yasha/neovim/build/bin/nvim.exe ($file)"
let execute =  "C:/Users/yasha/nvy/build/nvy --fullscreen --neovim-bin" .. "\"C:/Users/yasha/neovim/build/bin/nvim.exe " .. $"($file)\""
nu -c $execute
# nu -c "neovide --maximized --no-vsync --no-idle --neovim-bin ~/neovim/build/bin/nvim"
}

