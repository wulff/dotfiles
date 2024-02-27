export PATH="$PATH:$HOME/.bin:$HOME/.local/bin:$HOME/.symfony/bin:/opt/homebrew/Cellar/perl/5.36.0/bin"

export LC_ALL=en_US.UTF-8

export EDITOR=/opt/homebrew/bin/vim
export VISUAL=/opt/homebrew/bin/vim

alias ddrush='docker compose exec php drush'
alias gcd='git checkout ${GIT_DEVELOPMENT_BRANCH:-develop}'
alias gmd='git merge ${GIT_DEVELOPMENT_BRANCH:-develop}'
alias git-prune='git fetch -p && git branch -vv | awk "/: gone]/{print \$1}" | xargs git branch -D'

alias \?='duckduckgo'

if [[ ! -n $SSH_CONNECTION ]]; then
	DEFAULT_USER="$(whoami)"
fi

alias pullprodsettings='scp inf-web1:/srv/www/www.information.dk/htdocs/sites/information.dk/settings.local.php /Users/wulff/src/github.com/informeren/inf/sites/information.dk/settings.prod.php'
alias pushprodsettings='scp /Users/wulff/Sites/www.information.dk/htdocs/sites/information.dk/settings.prod.php inf-web1:/srv/www/www.information.dk/htdocs/sites/information.dk/settings.local.php'

export FZF_DEFAULT_COMMAND="ag -l --hidden -g '' --ignore .git -p ~/.ignore"
export FZF_DEFAULT_OPTS="--ansi --height 40% --layout=reverse --border"
export FZF_CTRL_T_COMMAND="ag -l --hidden -g '' --ignore .git -p ~/.ignore . $HOME"
export FZF_CTRL_T_OPTS="--preview-window 'right:60%' --preview 'bat --color=always --style=header,grid --line-range :300 {}'"
export FZF_ALT_C_COMMAND="fd -t d . $HOME"

