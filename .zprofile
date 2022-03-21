# macOS now adds stuff to the path after .zshenv is sourced. 
# Okay, fine, but I want some of my stuff first.

typeset -U path
path=($HOME/local/bin /opt/homebrew/sbin /opt/homebrew/bin /usr/local/sbin /usr/local/bin $path)
export PATH

