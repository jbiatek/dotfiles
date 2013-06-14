#PS1="\n\h: \w\n\u\$ "
#PS1='\n($?) \w\n\u@\h\$ '
PS1='\n$(es=$?; if [ $es -ne 0 ]; then echo "*$es* "; fi)\w\n\u@\h$ '
uptime
ddate

export PLEXIL_HOME=/Users/jbiatek/plexil/trunk
export PATH=~/bin:/usr/local/bin:/usr/local/sbin:$PATH
export EDITOR=mvim

bind "set completion-ignore-case on"

alias lsa="ls -lA"
alias smv="nusmv -pre cpp -df -dynamic"

function ff { osascript -e 'tell application "Finder"'\
 -e 'if (0 < (count Finder windows)) then'\
 -e 'set finderpath to get target of the front window as alias'\
 -e 'else'\
 -e 'set finderpath to get desktop as alias'\
 -e 'end if'\
 -e 'get POSIX path of finderpath'\
 -e 'end tell';};\

function cdff { cd "`ff $@`"; };
