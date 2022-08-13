#!/bin/nu
let line = $args[0]
let buf = $args[1]
echo $buf > 'C:\Users\yasha\sumatra.txt'
echo $line
echo $buf
let var=(cat ~/servername.txt)
echo $var
nvim --server $"($var) --remote-send :buffer ($buf)<cr><esc>:($line)<cr>"
echo $e
