#
# ~/.bashrc
#

[[ $- != *i* ]] && return

export PATH="$HOME/bin:$PATH"

[[ -f ~/.extend.bashrc ]] && . ~/.extend.bashrc

[[ -f ~/.config/bash/fzf-base16-ocean.config ]] && . ~/.config/bash/fzf-base16-ocean.config

[[ -f ~/.env.sh ]] && . ~/.env.sh

[[ -f ~/aliases.sh ]] && . ~/aliases.sh

[[ -f ~/.fuzzy.sh ]] && . ~/.fuzzy.sh

[ -r /usr/share/bash-completion/bash_completion ] && . /usr/share/bash-completion/bash_completion

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Auto start tmux
if [[ -z "$TMUX" ]]; then
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

function __update_ps1() {
  export PS1="$(~/.bash_prompt $? 2> /dev/null)"
}
export PROMPT_COMMAND="__update_ps1; $PROMPT_COMMAND"
