# Machine specific settings, including PATH
source .bash_local

command_exists () {
    type "$1" &> /dev/null
}

# Aliases go here
alias la="ls -lA"
alias smv="nusmv -pre cpp -df -dynamic"

# Only do this one if AppleScript exists
if command_exists osascript ; then
    function ff { osascript -e 'tell application "Finder"'\
     -e 'if (0 < (count Finder windows)) then'\
     -e 'set finderpath to get target of the front window as alias'\
     -e 'else'\
     -e 'set finderpath to get desktop as alias'\
     -e 'end if'\
     -e 'get POSIX path of finderpath'\
     -e 'end tell';};\

    function cdff { cd "`ff $@`"; };
fi



# Prompt settings
# old plain prompt PS1="\n\h: \w\n\u\$ "
# second prompt, always shows exit code PS1='\n($?) \w\n\u@\h\$ '
# current prompt, shows nonzero exit codes
PS1='\n$(es=$?; if [ $es -ne 0 ]; then echo "*$es* "; fi)\w\n\u@\h$ '

# Startup message
uptime
if command_exists ddate ; then
    ddate
fi

# Editor: MacVim if it exists, otherwise vim
if command_exists mvim ; then
    export EDITOR=mvim
else 
    export EDITOR=vim
fi

bind "set completion-ignore-case on"


