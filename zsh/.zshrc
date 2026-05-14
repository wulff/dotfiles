export XDG_CONFIG_HOME="$HOME/.config"

export ZSH_CONFIG="$XDG_CONFIG_HOME/zsh"

typeset -ga sources

sources+="$ZSH_CONFIG/aliases.zsh"
sources+="$ZSH_CONFIG/base.zsh"
sources+="$ZSH_CONFIG/clipboard.zsh"
sources+="$ZSH_CONFIG/completion.zsh"
sources+="$ZSH_CONFIG/direnv.zsh"
sources+="$ZSH_CONFIG/fzf.zsh"
sources+="$ZSH_CONFIG/git.zsh"
sources+="$ZSH_CONFIG/gpg.zsh"
sources+="$ZSH_CONFIG/history.zsh"
sources+="$ZSH_CONFIG/keybindings.zsh"
sources+="$ZSH_CONFIG/prompt.zsh"

foreach file (`echo $sources`)
    if [[ -a $file ]]; then
        source $file
    fi
end

unset sources
