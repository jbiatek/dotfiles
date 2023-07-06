# .zprofile is sourced for LOGIN shells BEFORE .zshrc but AFTER .zshenv.

typeset -U path
path=($HOME/local/bin /opt/homebrew/sbin /opt/homebrew/bin /usr/local/sbin /usr/local/bin $path)
export PATH

