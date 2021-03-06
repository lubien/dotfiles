#
# ~/.bashrc
#

if [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
  exec startx
fi

[[ $- != *i* ]] && return

export PATH="$HOME/bin:$PATH"

[[ -f ~/.extend.bashrc ]] && . ~/.extend.bashrc

[[ -f ~/.config/bash/fzf-onedark.config ]] && . ~/.config/bash/fzf-onedark.config

[[ -f ~/.env.sh ]] && . ~/.env.sh

[[ -f ~/aliases.sh ]] && . ~/aliases.sh

[[ -f ~/.fuzzy.sh ]] && . ~/.fuzzy.sh

[ -r /usr/share/bash-completion/bash_completion ] && . /usr/share/bash-completion/bash_completion

# Auto start tmux
if [[ $SSH && -z "$TMUX" ]]; then
  tmux has-session &> /dev/null
  if [ $? -eq 1 ]; then
    exec tmux new
    exit
  else
    exec tmux attach
    exit
  fi
fi

# Prompt
source ~/.bash_prompt
