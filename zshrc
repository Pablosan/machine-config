# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.oh-my-zsh

# Set to the name theme to load.
# Look in ~/.oh-my-zsh/themes/
#export ZSH_THEME="arrow"
#export ZSH_THEME="clean"
#export ZSH_THEME="kennethreitz"
export ZSH_THEME="wezm"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
plugins=(git vi-mode)

# Get rid of auto title so that I can force window names in tmux
export DISABLE_AUTO_TITLE=true

source $ZSH/oh-my-zsh.sh

if [[ -f $HOME/.zshrc.local ]]; then
  . $HOME/.zshrc.local
fi

# Fix alias 'l' to show file size in human-readable format
alias l='ls -lha'

# Git Aliases
alias g.lg='git log --oneline --graph --all --decorate'

# History command that, if passed an argument, only shows command line history
# for that specific command. Otherwise it is just shorthand for "history 1"
h() { if [ -z "$*" ]; then history ; else history | egrep "$@"; fi; }
