# source ~/.vim/repos/github.com/morhetz/gruvbox/gruvbox_256palette.sh

# Disable Tmux rename panes
export DISABLE_AUTO_TITLE='true'

export PATH="$HOME/.yarn/bin:$PATH"
# Path to your oh-my-zsh installation.
# export PATH='/usr/local/heroku/bin:/home/joao/.nvm/versions/node/v6.3.1/bin:/home/joao/bin:/home/joao/.local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin:/home/joao/.vim/repos/github.com/junegunn/fzf/bin':$PATH
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="powerline" #miloshadzic"
# ZSH_THEME="theunraveler" #miloshadzic"
# ZSH_THEME="xiong-chiamiov-plus"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

plugins=(git, tmux, almostontop)

# User configuration

# export PATH="/usr/bin:/bin:/usr/sbin:/sbin:$HOME/.local/bin:$PATH"
# PATH=/bin:/usr/bin:/usr/local/bin:${PATH}
# export PATH
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh
source $ZSH_CUSTOM/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.setup.zsh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Env variables
source ~/.env.sh

# Aliases
source ~/aliases.sh

# Map Caps to F10 for Tmux mapping
# xmodmap -e "keycode 66 = F9" -e 'clear Lock'

# FZF
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Auto start tmux
# I know zsh can do it, but I had issues.
# if [[ ! $TMUX ]];
# then
#   # export TERM=xterm-256color
#   # tmux new -s main
#   # tmuxp load main
#   # tmux source-file ~/.tmux.conf
# else
#   # export TERM=screen-256color
# fi

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
