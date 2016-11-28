# Overwrites
# ----------
export FZF_DEFAULT_COMMAND='ag -g "" --hidden --ignore .git --ignore /node_modules --ignore /_build'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

# Setup fzf
# ---------
if [[ ! "$PATH" == */home/joao/.fzf/bin* ]]; then
  export PATH="$PATH:/home/joao/.fzf/bin"
fi

# Man path
# --------
if [[ ! "$MANPATH" == */home/joao/.fzf/man* && -d "/home/joao/.fzf/man" ]]; then
  export MANPATH="$MANPATH:/home/joao/.fzf/man"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/home/joao/.fzf/shell/completion.zsh" 2> /dev/null

# Key bindings
# ------------
source "/home/joao/.fzf/shell/key-bindings.zsh"

