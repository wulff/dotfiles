alias ll="ls -la"

export PATH=$PATH:/Users/wulff/Applications/0.3.10_darwin_386

complete -W "$(echo `cat ~/.ssh/known_hosts | cut -f 1 -d ' ' | sed -e s/,.*//g | uniq`;)" ssh

export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8

PROMPT_COMMAND="eval printf %.0s- '{1..'"${COLUMNS:-$(tput cols)}"\}; echo"
