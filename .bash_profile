alias grep="grep -lnE --color=ALWAYS"
alias ll="ls -la"

export PATH=$PATH:/Users/wulff/Applications/0.3.10_darwin_386

complete -W "$(echo `cat ~/.ssh/known_hosts | cut -f 1 -d ' ' | sed -e s/,.*//g | uniq`;)" ssh

export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8

source ~/.dotfiles/git-completion.bash
source ~/.dotfiles/git-prompt.sh

MY_USERHOST=$(printf %s `whoami` @ `hostname -s`)
MY_LENGTH=`expr 27 + ${#MY_USERHOST}`

PROMPT_COMMAND="
  echo -en '\033[31m';
  echo -n '-- $MY_USERHOST ';
  eval printf %.0s- '{1..'$(expr `tput cols` - $MY_LENGTH)}\};
  echo -n \" `date +"%Y-%m-%d %H:%M:%S"` --\";
  echo -e '\033[0m'
"

PS1='[\!] $(exit_code=$?; [[ $exit_code -eq 0 ]] || printf %s \e[31m Exit:$exit_code \e[0m " ")\w$(__git_ps1 " (%s)")\$ '

# eval printf %.0s- '{1..'"${COLUMNS:-$(expr `tput cols` - $MY_LENGTH)}"\};

# http://www.maketecheasier.com/more-useful-and-interesting-bash-prompts/
# http://seann.herdejurgen.com/resume/samag.com/html/v12/i01/a4.htm
# http://misc.flogisoft.com/bash/tip_colors_and_formatting
# http://wiki.bash-hackers.org/snipplets/print_horizontal_line

function prompt_command {

}
