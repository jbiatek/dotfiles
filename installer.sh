#!/bin/bash
############################
# .make.sh
# This script creates symlinks from the home directory to any desired dotfiles in ~/dotfiles
############################

########## Variables

dir=~/dotfiles                    # dotfiles directory
olddir=~/dotfiles_old             # old dotfiles backup directory
files="hgrc zshrc zshenv vimrc gvimrc vim gitconfig gitignore_global inputrc oh-my-zsh"    # list of files/folders to symlink in homedir

##########

# create dotfiles_old in homedir
echo "Creating $olddir for backup of any existing dotfiles in ~"
mkdir -p $olddir
echo "...done"

# change to the dotfiles directory
echo "Changing to the $dir directory"
cd $dir
echo "...done"

# move any existing dotfiles in homedir to dotfiles_old directory, then create symlinks 
echo "Blindly moving any existing dotfiles from ~ to $olddir,"
echo "without actually checking to see if they're there."
echo "If a file isn't found, just ignore it."

for file in $files; do
    mv ~/.$file ~/dotfiles_old/
    echo "Creating symlink to $file in home directory."
    ln -s $dir/$file ~/.$file
done

echo "Creating local-only shell files..."
echo "# .zshenv is sourced for ALL shells that don't have -f set." > ~/.zshenv_local
echo "# .zshrc is sourced for INTERACTIVE shells." > ~/.zshrc_local

echo "Now you need to run:"
echo "    git submodule init"
echo "    git submodule update"
echo "    chsh -s /bin/zsh"
echo "That should do it!"
