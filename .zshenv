# .zshenv is sourced for ALL shells, unless -f is set.
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Environment variables
export EDITOR=vim

# Add locally installed Gem binaries to path
if which ruby >/dev/null && which gem >/dev/null; then
    PATH="$(ruby -rrubygems -e 'puts Gem.user_dir')/bin:$PATH"
fi

# Add locally installed Python binaries to path too
if which python >/dev/null; then
    PATH="$(python -m site --user-base)/bin:$PATH"
fi

# Always add custom stuff to the path first: My home directory, then
# Homebrew/other systemwide custom stuff.
typeset -U path
path=($HOME/local/bin /usr/local/sbin /usr/local/bin /opt/homebrew/bin $path)

if which python3 >/dev/null; then
    PATH="$(python3 -m site --user-base)/bin:$PATH"
fi

export PATH

# Machine specific settings go here:
source ~/.zshenv_local
