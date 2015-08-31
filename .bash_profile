alias grep="grep -E --color=ALWAYS"
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

export PATH="$PATH:/Applications/DevDesktop/drush"

error=$(tput setaf 124)
faded=$(tput setaf 244)

user=$(tput setaf 130)
host=$(tput setaf 136)
path=$(tput setaf 142)
git=$(tput setaf 148)

reset=$(tput sgr0)

prompt_command() {
  exit_code=$?
  load=$(uptime | awk '{min=NF-2;print $min}')

  PS1='\[$faded\][\D{%Y-%m-%d %H:%M:%S} ${load}] \[$user\]\u \[$faded\]at \[$host\]\h \[$faded\]in \[$path\]\w$(__git_ps1 " \[$faded\]on \[$git\]%s")\[$reset\]\n[\!] $([[ $exit_code -eq 0 ]] || printf %s \[$error\] Exit:$exit_code \[$reset\] " ")\$ '
}
PROMPT_COMMAND=prompt_command
