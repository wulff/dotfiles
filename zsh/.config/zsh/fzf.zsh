export FZF_DEFAULT_COMMAND='ag --hidden -g ""'
export FZF_DEFAULT_OPTS="--tmux 70% --ansi --layout=reverse"

export FZF_ALT_C_COMMAND="fd --hidden --type directory . $HOME"

export FZF_CTRL_T_COMMAND="fd --hidden --type file . $HOME"
export FZF_CTRL_T_OPTS="--preview-window 'right:60%' --preview 'bat --color=always --style=header,grid --line-range :300 {}'"

source <(fzf --zsh)
