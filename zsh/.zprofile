eval "$(/opt/homebrew/bin/brew shellenv)"

export LC_ALL=en_US.UTF-8

export EDITOR=/opt/homebrew/bin/vim
export VISUAL=/opt/homebrew/bin/vim

if [[ ! -n $SSH_CONNECTION ]]; then
	export DEFAULT_USER="$(whoami)"
fi

export PERLBREW_ROOT="$HOME/.perl5/perlbrew"

source "$PERLBREW_ROOT/etc/bashrc"
