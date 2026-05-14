#!/bin/bash

set -e

cp /opt/homebrew/share/zsh/site-functions/_git ./zsh/.config/zsh/functions.d/_git
cp /opt/homebrew/share/zsh/site-functions/git-completion.bash ./zsh/.git-completion.bash

start_dir="./vim/.vim/pack/vendor/start"

if [ ! -d "$start_dir/fugitive" ]; then
  mkdir -p "$start_dir"
  (
    cd "$start_dir"
    git clone -q https://tpope.io/vim/fugitive.git
    vim -u NONE -c "helptags fugitive/doc" -c q
  )
else
  (
    cd "$start_dir"
    git fetch --all
    git pull
  )
fi

if [ ! -d "$start_dir/sensible" ]; then
  mkdir -p "$start_dir"
  (
    cd "$start_dir"
    git clone -q https://tpope.io/vim/sensible.git
  )
else
  (
    cd "$start_dir"
    git fetch --all
    git pull
  )
fi

if [ ! -d "$start_dir/dirvish" ]; then
  mkdir -p "$start_dir"
  (
    cd "$start_dir"
    git clone -q https://github.com/justinmk/vim-dirvish.git
    vim -u NONE -c "helptags vim-dirvish/doc" -c q
  )
else
  (
    cd "$start_dir"
    git fetch --all
    git pull
  )
fi

https://github.com/catppuccin/vim/raw/main/colors/catppuccin_frappe.vim
https://github.com/catppuccin/vim/raw/main/colors/catppuccin_latte.vim
https://github.com/catppuccin/vim/raw/main/colors/catppuccin_macchiato.vim
https://github.com/catppuccin/vim/raw/main/colors/catppuccin_mocha.vim

https://github.com/romainl/flattened/raw/master/colors/flattened_dark.vim

https://raw.githubusercontent.com/tmux-plugins/tmux-sensible/master/sensible.tmux
