def main [file?:string] {
execute =  $"C:/Users/yasha/neovim/build/bin/nvim.exe ($file)"
echo $execute
nu -c $execute
# nu -c "neovide --maximized --no-vsync --no-idle --neovim-bin ~/neovim/build/bin/nvim"
}

