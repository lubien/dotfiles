#!/usr/bin/env bash

# git
if ! hash git 2>/dev/null; then
	echo "Installing git";
	sudo apt-get install git
else
	echo "Git already installed";
fi

# neovim
if ! hash nvim 2>/dev/null; then
	sudo apt-get install software-properties-common
	sudo add-apt-repository ppa:neovim-ppa/unstable
	sudo apt-get update
	sudo apt-get install neovim

	# oceanic-next-shell
	git clone https://github.com/mhartington/oceanic-next-shell.git ~/.config/oceanic-next-shell

	# vim-plug
	curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	nvim +PlugInstall +qall
else
	echo "nvim already installed";
fi

# tmux
if ! hash tmux 2>/dev/null; then
	sudo apt-get install tmux
else
	echo "tmux already installed";
fi

# stow
if ! hash stow 2>/dev/null; then
	sudo apt-get install stow
else
	echo "stow already installed";
fi

if ! hash zsh 2>/dev/null; then
	echo "zsh already installed";
else
	sudo apt-get install zsh
	sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
	chsh -s $(which zsh)

	# Powerline fonts
	wget https://github.com/powerline/powerline/raw/develop/font/PowerlineSymbols.otf
	wget https://github.com/powerline/powerline/raw/develop/font/10-powerline-symbols.conf
	mv PowerlineSymbols.otf ~/.fonts/
	mkdir -p .config/fontconfig/conf.d
	fc-cache -vf ~/.fonts/
	mv 10-powerline-symbols.conf ~/.config/fontconfig/conf.d/
fi

stow bin
stow git
stow neovim
stow zsh
