#!/bin/bash

echo "Grabbing oh-my-zsh and other submodules..."
git submodule init
git submodule update

echo "Creating local-only shell files if not already present..."
if [ ! -f ~/.zshenv_local ] 
then 
	echo "# .zshenv is sourced first, and for ALL shells that don't have -f set." > ~/.zshenv_local
	echo "# Note that macOS is going to add its stuff to the front of PATH after this, so if you want your stuff first it should probably go in .zshrc_local instead." >> ~/.zshenv_local
fi 
if [ ! -f ~/.zshrc_local ] 
then 
	echo "# .zshrc is sourced for INTERACTIVE shells after .zshenv and .zprofile." > ~/.zshrc_local
fi
if [ ! -f ~/.macos_login ]
then 
	cat > ~/.macos_login <<EOF
# Run by ~/Library/LaunchAgents/local.login-script.plist at login.

# You are running under sh, not zsh or bash, so script accordingly.
# To set an environment variable for all subsequent user processes, including
# GUI applications, do this:
#    launchctl setenv VAR_NAME "some value"

EOF
fi

echo "To change your shell, run:"
echo "    chsh -s /bin/zsh"
echo "This is now a 'stow' package, so make sure it's in ~/stow or something"
echo "and then run"
echo "    stow dotfiles"
echo "That should do it!"
