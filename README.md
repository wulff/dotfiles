.dotfiles
=========

Getting started
---------------

```shell
brew install stow
mkdir -p ~/Workspace/src/github.com/wulff
cd ~/Workspace/src/github.com/wulff
git clone git@github.com:wulff/dotfiles.git
cd dotfiles
stow --restow --target="$HOME" --verbose */
```
