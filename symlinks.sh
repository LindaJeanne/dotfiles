#!/bin/bash

mkdir .config/i3
mkdir .config/i3status
mkdir .config/terminator
mkdir .config/rclone

exec ln -sf ~/dotfiles/bashrc ~/.bashrc
exec ln -sf ~/dotfiles/gitconfig ~/.gitconfig
exec ln -sf ~/dotfiles/gitignore ~/.gitignore
exec ln -sf ~/dotfiles/i3conf ~/.config/i3/config
exec ln -sf ~/dotfiles/i3status ~/.config/i3/conf

exec ln -sf ~/dotfiles/vimrc ~/.vimrc
exec ln -sf ~/dotfiles/xinitrc ~/.xinitrc
# exec ln -sf ~/dotfiles/xmodmaprc ~/.xmodmaprc
exec ln -sf ~/dotfiles/redshift.conf ~/.config/redshift.conf
exec ln -sf ~/dotfiles/terminator ~/.config/terminator/config
exec ln -sf ~/dotfiles/rclone ~/.config/rclone/rclone.conf

# Fonts: Fantasque, Monofur, Terminus, Hermit, Yana
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

