# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.oh-my-zsh
# Set to the name theme to load.
# Look in ~/.oh-my-zsh/themes/
#export ZSH_THEME="arrow"
#export ZSH_THEME="clean"
#export ZSH_THEME="kennethreitz"
export ZSH_THEME="wezm"


# Re-route help to online help
unalias run-help
autoload run-help
HELPDIR=/usr/local/share/zsh/helpfiles

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
plugins=(git vi-mode)

# The lag when hitting ESC to enter vi mode is abysmal:
export KEYTIMEOUT=0

# Get rid of auto title so that I can force window names in tmux
export DISABLE_AUTO_TITLE=true

source $ZSH/oh-my-zsh.sh

if [[ -f $HOME/.zshrc.local ]]; then
  . $HOME/.zshrc.local
fi

# Command completion
autoload -U compinit
compinit

# Fix Ctrl-R (borked by vi-Mode)
bindkey -M viins '^r' history-beginning-search-backward
bindkey -M vicmd '^r' history-beginning-search-backward

# Fix alias 'l' to show file size in human-readable format
alias l='ls -lha'

# Git Aliases
alias g.lg='git log --oneline --graph --all --decorate'

# Golang package path
export GOPATH=~/
