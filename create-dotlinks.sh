#!/bin/bash
# Script to create the links in the home directory to the .dotfiles

# Update the latest dotfiles and git submodules from github

git pull
git submodule update

# Create the links

ln -si ~/.dotfiles/.vimrc ~/.vimrc
ln -si ~/.dotfiles/.vim ~/.vim
<<<<<<< HEAD
#ln -si ~/.dotfiles/.bashrc ~/.bashrc
#ln -si ~/.dotfiles/.i3 ~/.i3
#ln -si ~/.dotfiles/.i3status.conf ~/.i3status.conf
=======
ln -si ~/.dotfiles/.bashrc ~/.bashrc
ln -si ~/.dotfiles/.conkyrc ~/.conkyrc                                            
ln -si ~/.dotfiles/.i3 ~/.i3
ln -si ~/.dotfiles/.i3status.conf ~/.i3status.conf
ln -si ~/.dotfiles/.Xresources ~/.Xresources
>>>>>>> 9327d7d66ff0e960be2e9ceea354ce8316c7208b
