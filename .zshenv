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
if which python3 >/dev/null; then
    PATH="$(python3 -m site --user-base)/bin:$PATH"
fi

# Note: macOS adds more things to the $PATH after this file is included.
# See .zprofile for /usr/local and /opt/homebrew stuff, since I want those
# first in the $PATH and therefore want to add them *after* macOS is done 
# changing things

# But for now, we are done.
export PATH

# Machine specific settings go here:
source ~/.zshenv_local
