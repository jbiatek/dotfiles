# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias ll="ls -lA"
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

# NuSMV with sensible settings
if (( $+commands[nusmv] )); then
	alias smv="nusmv -pre cpp -df -dynamic"
fi

alias jpf="~/workspace/jpf-core/bin/jpf"
alias tplex="java -jar /Users/jbiatek/Repositories/TPlex/TPlex.jar"
