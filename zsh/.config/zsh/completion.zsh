functionsd="$ZSH_CONFIG/functions.d"
if [[ -d "$functionsd" ]] {
    fpath=($functionsd $fpath)
    autoload -U $functionsd/*(:t)
}

zstyle ':completion:*:*:*:*:*' menu select
zstyle ':completion:*:default' menu select=2
zstyle ':completion:*' list-colors ''

zstyle ':completion:*:*:git:*' script ~/.git-completion.bash

autoload -Uz compinit && compinit

function d () {
    if [[ -n $1 ]]; then
        dirs "$@"
    else
        dirs -v | head -n 10
    fi
}
compdef _dirs d
