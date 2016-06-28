#!/usr/bin/env bash

# neovim
sudo apt-get install software-properties-common
sudo add-apt-repository ppa:neovim-ppa/unstable
sudo apt-get update
sudo apt-get install neovim

# vim-plug
curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# git
sudo apt-get install git
# tmux
sudo apt-get install tmux

# oceanic-next-shell
git clone https://github.com/mhartington/oceanic-next-shell.git ~/.config/oceanic-next-shell

ln -sfv ~/dotfiles/.nvimrc ~/.config/nvim/init.vim
