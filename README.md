dotfiles
========

Dotfiles I want synced across my computers.

When first cloning, use
	git submodule init
to register third party repos in your local clone. Then use
	git submodule update
to actually pull them in.

Run the installer script to symlink these files in. Anything that's already there 
will be moved out of the way safely.
