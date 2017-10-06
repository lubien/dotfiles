#!/bin/bash

echo "Installing packages"

sudo pacman -S --needed --noconfirm \
  awesome \
  xterm \
  yaourt \
  fzf \
  ripgrep \
  tmux \
  neovim \
  elixir

yaourt -S --needed --noconfirm \
  lain \
  awesome-freedesktop \
  tree \
  dropbox \
  firefox-developer \
  ranger

# tmux plugin manager
TPM_DIR=~/.tmux/plugins/tpm
if [ ! -d $TPM_DIR ]; then
  echo "Installing tmux plugin manager"
  git clone https://github.com/tmux-plugins/tpm $TPM_DIR
fi

export NVM_DIR="$HOME/.nvm"
if [ ! -d $NVM_DIR ]; then
  echo "Installing nvm"
  curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.5/install.sh | bash
  # refresh env.sh to source nvm
  source ~/.env.sh
fi


# download a nodejs version
if ! hash node 2>/dev/null; then
  echo "Installing NodeJS"
  nvm install 8
  nvm use 8
fi

# node global modules
echo "Installing NodeJS useful global modules"
npm i -g \
  vue-cli \
  eslint \
  http-server

# refresh env.sh once again to
# source nvm global node_modules binaries
source ~/.env.sh
