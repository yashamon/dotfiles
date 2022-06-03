#!/bin/bash
a=$1
var="$(cat ~/servername.txt)"
nvim --server $var --remote-send ":$a<cr>"
