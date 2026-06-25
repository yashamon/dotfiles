def main [file?: string] {
    let neovide = "C:/Users/yasha/scoop/apps/neovide/current/neovide.exe"

    if ($file | is-empty) {
        run-external $neovide "--maximized" "--no-vsync" "--no-idle"
    } else {
        run-external $neovide "--maximized" "--no-vsync" "--no-idle" $file
    }
}
