alias grep="grep -lnE --color=ALWAYS"
alias ll="ls -la"

export PATH=$PATH:/Users/wulff/Applications/packer:/Library/Frameworks/GDAL.framework/Programs

complete -W "$(echo `cat ~/.ssh/known_hosts | cut -f 1 -d ' ' | sed -e s/,.*//g | uniq`;)" ssh

export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8

export GIT_PS1_SHOWDIRTYSTATE=1
export GIT_PS1_SHOWSTASHSTATE=1
export GIT_PS1_SHOWUNTRACKEDFILES=1
export GIT_PS1_SHOWUPSTREAM="verbose"
export GIT_PS1_SHOWCOLORHINTS=1

source ~/.dotfiles/git-completion.bash
source ~/.dotfiles/git-prompt.sh

PROMPT_COMMAND=prompt_command

PS1='[\!] $(exit_code=$?; [[ $exit_code -eq 0 ]] || printf %s \e[31m Exit:$exit_code \e[0m " ")\w$(__git_ps1 " (%s)")\$ '

function prompt_command {
  MY_USERHOST=$(printf %s `whoami` @ `hostname -s`)
  MY_LENGTH=`expr 27 + ${#MY_USERHOST}`

  echo -en '\033[31m'
  echo -n "-- $MY_USERHOST "
  eval printf %.0s- '{1..'$(expr `tput cols` - $MY_LENGTH)}\}
  echo -n " `date +\"%Y-%m-%d %H:%M:%S\"` --"
  echo -e '\033[0m'
}
