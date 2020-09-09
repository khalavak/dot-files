 #!/bin/bash
# Script to create the links in the home directory to the .dotfiles

# Update the latest dotfiles and git submodules from github

git pull
git submodule update

# Create the links

ln -si ~/.dot-files/.vimrc ~/.vimrc
ln -si ~/.dot-files/.vim ~/.vim
#ln -si ~/.dot-files/.bashrc ~/.bashrc
#ln -si ~/.dot-files/.i3 ~/.i3
#ln -si ~/.dot-files/.i3status.conf ~/.i3status.conf
#ln -si ~/.dot-files/.Xresources ~/.Xresources
