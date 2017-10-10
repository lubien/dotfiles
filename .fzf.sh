# Overwrites
# ----------
# export FZF_DEFAULT_COMMAND='ag -g "" --hidden --ignore .git --ignore /node_modules --ignore /_build'
export FZF_DEFAULT_COMMAND='rg --files --no-ignore --hidden --glob "!.git/*"'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

# Auto-completion
# ---------------
[[ -f ~/.fzf/shell/completion.bash ]] && . ~/.fzf/shell/completion.bash

# Key bindings
# ------------
[[ -f ~/.fzf/shell/key-bindings.bash ]] && . ~/.fzf/shell/key-bindings.bash

