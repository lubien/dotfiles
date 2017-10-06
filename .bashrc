#
# ~/.bashrc
#

[[ $- != *i* ]] && return

export PATH="$HOME/bin:$PATH"

[[ -f ~/.extend.bashrc ]] && . ~/.extend.bashrc

[[ -f ~/.env.sh ]] && . ~/.env.sh

[[ -f ~/aliases.sh ]] && . ~/aliases.sh

[ -r /usr/share/bash-completion/bash_completion   ] && . /usr/share/bash-completion/bash_completion

