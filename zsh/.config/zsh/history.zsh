export HISTFILE=${HOME}/.zsh_history
export HISTSIZE=100000
export HIST_STAMPS="yyyy-mm-dd"
export SAVEHIST=100000

export HISTORY_IGNORE="(ls|cd|pwd|exit|cd)*"

setopt append_history
setopt extended_history
setopt hist_ignore_all_dups
setopt hist_ignore_dups
setopt hist_ignore_space
setopt hist_no_store
setopt hist_reduce_blanks
setopt hist_verify
setopt inc_append_history
setopt share_history
