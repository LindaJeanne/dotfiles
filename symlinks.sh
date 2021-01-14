#!/bin/bash

exec ln -sf ~/dotfiles/bashrc ~/.bashrc
exec ln -sf ~/dotfiles/gitconfig ~/.gitconfig
exec ln -sf ~/dotfiles/gitignore ~/.gitignore
exec ln -sf ~/dotfiles/i3conf ~/.config/i3/conf
exec ln -sf ~/dotfiles/vimrc ~/.vimrc
exec ln -sf ~/dotfiles/xinitrc ~/.xinitrc
exec ln -sf ~/dotfiles/xmodmaprc ~/.xmodmaprc
exec ln -sf ~/dotfiles/redshift.conf ~/.config/redshift.conf
exec ln -sf ~/dotfiles/terminator ~/.config/terminator/conf
exec ln -sf ~/dotfiles/rclone ~/.config/rclone/rclone.conf

# the path to i3status is given in the i3conf config file, no link needed.

