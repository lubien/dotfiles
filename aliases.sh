# dotfiles
alias dot='/usr/bin/git --git-dir=$HOME/.dot/ --work-tree=$HOME'

# ssh
alias pc='ssh lubien@$PC -p $PC_PORT'
alias notebook='ssh lubien@$NOTE -p $NOTE_PORT'

# Navigation
# alias fd='cd `loc-dir`'
alias ..='cd ..'
alias ...='cd ../../'
alias ....='cd ../../../'
alias .....='cd ../../../../'
alias .5='cd ../../../../../'
alias .6='cd ../../../../../../'

# Tree
alias tree='tree -I "node_modules|_build|deps"'
alias t1='tree -L 1'
alias t2='tree -L 2'
alias t3='tree -L 3'
alias t4='tree -L 4'
alias t5='tree -L 5'

# Useful
alias vim='nvim'
alias n='nvim'
alias e='${EDITOR:-nvim} $(fzf)'
alias c='clear'
alias ll='ls -la'
alias l.='ls -d .*'
alias refresh='source ~/.bashrc'
alias sagi='sudo apt-get install'
alias pac='sudo pacman -S'

# Git
alias g=git
alias gis='git s'
alias gp='git push'

# Docker
alias d=docker
alias dc=docker-compose

# Quickly open config files
alias nvimc='nvim ~/.config/nvim/init.vim'
alias zshc='nvim ~/.zshrc'
alias gitc='nvim ~/.gitconfig'
alias tmuxc='nvim ~/.tmux.conf'

# Quickly jump to my folders
alias fdev='cd ~/dev'

# tmux
alias tmuxr='tmux source-file ~/.tmux.conf'
alias tmuxn='tmux new -s'
alias tmuxa='tmux attach -t'
alias tmuxl='tmux ls'
alias tl='tmuxp load -y'
alias ta='tmux attach'
alias td='tmux detach'

# Vagrant
alias vup='vagrant up'
alias vsus='vagrant suspend'
alias vhalt='vagrant halt'
alias vdie='vagrant destroy'

# npm
alias nr='npm run'

# AdonisJS
alias ace='node --harmony_proxies ./ace'
alias acemr='ace migration:refresh && ace db:seed'

# Moar useful stuff

# Fuzzy change dir
# fd_function() {
#   dir=`loc-dir`

#   if [ $dir ]
#   then
#     cd $dir
#   fi
# }

# alias fd=fd_function

# `up N` goes N dirs up
up_function() {
  for ((i=1; i <= $1; i++)) do
    cd ..
  done
}

alias up=up_function

# Makes a dir and cd into it
mk_function() {
  if [ $1 ]
  then
    mkdir $1
    cd $1
  fi
}

alias mk=mk_function

# Git clone then cd
clone_function() {
  if [ $1 ]
  then
    full=$1
    if [ $2 ]
    then
      reponame=$2
    else
      with_dot_git="${full##*/}"
      reponame="${with_dot_git%.*}"
    fi

    git clone $full $reponame
    cd $reponame
  fi
}

alias clone=clone_function

# Bookmarker (https://github.com/lubien/bookmarker)
alias bkm='bookmarker -i People -i Orders -i Templates -i Books/Rainobe -i Containers -i Fandom -i Markets'

publish_bookmarks_function() {
  cwd=`pwd`

  cd ~/dev/bookmarks
  bkm -o ~/dev/bookmarks/README.md

  rm -rf .git
  git init
  git add .
  git cm "Generated"
  git remote add origin git@github.com:lubien/bookmarks.git
  gp origin master -f # here are demons

  cd $cwd
}

alias publish-bookmarks=publish_bookmarks_function
