# https://zsh.sourceforge.io/Doc/Release/User-Contributions.html#Version-Control-Information
# TODO: Move this to a theme in functions.d: https://zsh.sourceforge.io/Doc/Release/User-Contributions.html#Prompt-Themes-1

BRANCH_CHAR=$'\ue0a0'

autoload -Uz vcs_info

setopt TRANSIENT_RPROMPT
setopt PROMPT_SUBST

zstyle ':vcs_info:*' max-exports 3
zstyle ':vcs_info:*' enable git
zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:*' formats '%s|%b|%a|%i|%c|%u|%R|%r|%S|%m|%Q' "$BRANCH_CHAR %b %c%u"
zstyle ':vcs_info:*' actionformats '%F{5}(%f%s%F{5})%F{3}-%F{5}[%F{2}%b%F{3}|%F{1}%a%F{5}]%f ' '%b %c%u'
zstyle ':vcs_info:*' stagedstr '✚'
zstyle ':vcs_info:*' unstagedstr '±'
#zstyle ':vcs_info:*' formats '%F{5}(%f%s%F{5})%F{3}-%F{5}[%F{2}%b%F{5}]%f '

precmd () {
    vcs_info
    RPROMPT="${(MS)${vcs_info_msg_1_}##[[:graph:]]*[[:graph:]]}"
}

PS1=''; RPS1=''
PS2="↷ %_>"; RPS2=''
PS3="↷ ?#"; RPS3=''
PS4="↷ +i>"; RPS3=''

PS1='%F{3}%3~ %f❯ '
