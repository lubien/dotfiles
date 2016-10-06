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
alias nvimconf='nvim ~/.config/nvim/init.vim'
alias zshconf='nvim ~/.zshrc'
alias gitconf='nvim ~/.gitconfig'

# Quickly jump to my folders
alias devf='cd ~/dev'
alias dotf='cd ~/dotfiles'

# Vagrant
alias vup='vagrant up'
alias vsus='vagrant suspend'
alias vhalt='vagrant halt'
alias vdie='vagrant destroy'

up_function() {
  for ((i=1; i <= $1; i++)) do
    cd ..
  done
}

alias up=up_function
