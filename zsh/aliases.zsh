# Navigation
alias ..='cd ..'
alias ...='cd ../../'
alias ....='cd ../../../'
alias .....='cd ../../../../'
alias .5='cd ../../../../../'
alias .6='cd ../../../../../../'

# Tree
alias tree='tree -I "node_modules"'
alias t1='tree -L 1'
alias t2='tree -L 2'
alias t3='tree -L 3'
alias t4='tree -L 4'
alias t5='tree -L 5'

# Useful
alias c='clear'
alias ll='ls -la'
alias l.='ls -d .*'
alias refresh='source ~/.zshrc'
alias sagi='sudo apt-get install'

# Git
alias gis='git s'
alias gp='git push'

# Quickly open config files
alias nvimc='nvim ~/.config/nvim/init.vim'
alias zshc='nvim ~/.zshrc'
alias gitc='nvim ~/.gitconfig'
alias tmuxc='nvim ~/.tmux.conf'

# Quickly jump to my folders
alias devf='cd ~/dev'
alias dotf='cd ~/dotfiles'

# TMux
alias tmuxr='tmux source-file ~/.tmux.conf'
alias tmuxn='tmux new -s'
alias tmuxa='tmux attach -t'
alias tmuxl='tmux ls'

# Vagrant
alias vup='vagrant up'
alias vsus='vagrant suspend'
alias vhalt='vagrant halt'
alias vdie='vagrant destroy'

# AdonisJS
alias ace='node --harmony_proxies ./ace'
alias acemr='ace migration:refresh && ace db:seed'

# Moar useful stuff
up_function() {
  for ((i=1; i <= $1; i++)) do
    cd ..
  done
}

alias up=up_function
