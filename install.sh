#!/bin/bash

echo "Installing packages"

sudo pacman -S --needed --noconfirm \
  lain-git \
  awesome-freedesktop \
  awesome \
  xterm \
  yaourt \
  fzf \
  ripgrep \
  tmux \
  neovim \
  elixir \
  bluez \
  bluez-utils

yaourt -S --needed --noconfirm \
  tree \
  dropbox \
  firefox-developer-edition \
  powerline-fonts-git \
  flameshot \
  w3m \
  # thunar-gtk3 \
  lxappearance \
  tamsyn-font \
  xcompmgr \
  ranger

# tmux plugin manager
TPM_DIR=~/.tmux/plugins/tpm
if [ ! -d $TPM_DIR ]; then
  echo "Installing tmux plugin manager"
  git clone https://github.com/tmux-plugins/tpm $TPM_DIR
fi

export ASDF_DIR="$HOME/.asdf"
if [ ! -d $ASDF_DIR ]; then
  echo "Installing asdf"
  git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.6.0
fi

# refresh env.sh to source asdf
source ~/.env.sh

asdf plugin-add elixir https://github.com/asdf-vm/asdf-elixir.git
asdf plugin-add nodejs https://github.com/asdf-vm/asdf-nodejs.git

asdf install elixir 1.7
asdf global elixir 1.7

asdf install nodejs 11.0.0
bash ~/.asdf/plugins/nodejs/bin/import-release-team-keyring > /dev/null
asdf global nodejs 11.0.0

# node global modules
echo "Installing NodeJS useful global modules"
npm i -g \
  yarn \
  vue-cli \
  eslint \
  http-server

# neovim python support
sudo pip3 install neovim

# enable bitmap fonts
if [ -e /etc/fonts/conf.d/70-no-bitmaps.conf ]
then
	sudo rm /etc/fonts/conf.d/70-no-bitmaps.conf
fi

# refresh env.sh once again to
# source nvm global node_modules binaries
source ~/.env.sh
