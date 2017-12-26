# Overwrites
# ----------
# `rg` does respect .gitignore but only if you're running
# `rg` in the current folder with a .gitignore file.
# export FZF_DEFAULT_COMMAND='rg --files --no-ignore --hidden --glob "!.git/*" --glob "!node_modules/*" --glob "!_build"'
export FZF_DEFAULT_COMMAND='rg --files --hidden --glob "!.git/*"'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

# Auto-completion
# ---------------
[[ -f ~/.fzf/shell/completion.bash ]] && . ~/.fzf/shell/completion.bash

# Key bindings
# ------------
[[ -f ~/.fzf/shell/key-bindings.bash ]] && . ~/.fzf/shell/key-bindings.bash

