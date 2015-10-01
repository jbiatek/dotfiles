#!/bin/bash

echo "Grabbing oh-my-zsh and other submodules..."
git submodule init
git submodule update

echo "Creating local-only shell files..."
if [ ! -f ~/.zshenv_local ] 
then 
	echo "# .zshenv is sourced for ALL shells that don't have -f set." > ~/.zshenv_local
fi 
if [ ! -f ~/.zshrc_local ] 
then 
	echo "# .zshrc is sourced for INTERACTIVE shells." > ~/.zshrc_local
fi

echo "To change your shell, run:"
echo "    chsh -s /bin/zsh"
echo "That should do it!"
