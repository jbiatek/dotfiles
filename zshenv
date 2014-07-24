# .zshenv is sourced for ALL shells, unless -f is set.
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Environment variables
export EDITOR=vim
# Always add custom stuff to the path first: My home directory, then
# Homebrew/other systemwide custom stuff.
typeset -U path
path=($HOME/local/bin /usr/local/bin $path)

export PATH

# Machine specific settings go here:
source ~/.zshenv_local
