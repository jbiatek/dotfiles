# .zshrc is sourced for INTERACTIVE shells. 

# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="mortalscumbag"



# Only do this one if AppleScript exists
# if (( $+commands[osascript] )); then
# 	function ff { osascript -e 'tell application "Finder"'\
# 	-e 'if (0 < (count Finder windows)) then'\
# 	-e 'set finderpath to get target of the front window as alias'\
# 	-e 'else'\
# 	-e 'set finderpath to get desktop as alias'\
# 	-e 'end if'\
# 	-e 'get POSIX path of finderpath'\
# 	-e 'end tell';};\
# 
# 	function cdff { cd "`ff $@`"; };
# fi

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Uncomment this to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git mercurial svn brew osx)


# Convenience aliases
# alias ll="ls -lA"
alias la="ls -A"
alias ..="cd .."
alias md="mkdir -pv"
alias wget="wget -c"
alias cdff="cdf"
alias manp="man-preview"
alias beep="tput bel"
alias notify="beep || beep"

alias restow="stow -R"
alias unstow="stow -D"


source $ZSH/oh-my-zsh.sh

# zsh has a built in function that conflicts with MultiMarkdown, delete it.
compdef -d mmd


# Machine specific settings go here.
source ~/.zshrc_local


# Things I like to see at startup:
uptime
if (( $+commands[ddate] )); then
	ddate
fi

