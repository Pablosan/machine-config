# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.oh-my-zsh
# Set to the name theme to load.
# Look in ~/.oh-my-zsh/themes/
export ZSH_THEME="wezm"

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


# Golang package path
export GOPATH=~/src/gopath
export PATH=$PATH:/usr/local/opt/go/libexec/bin
export PATH=$PATH:~/go-appengine
export PATH=$PATH:~/google-appengine

# Setup command aliases
alias l='ls -lha'

alias tf='terraform'

# Count lines of code (excluding blanks)
alias ctlns="cat ./**/* | sed '/^\s*$/d' | wc -l"
alias ctlnspy="cat ./**/*.py | sed '/^\s*$/d' | wc -l"

# For virtualenvwrapper
alias v.36mk='pyenv virtualenv 3.6.5'
alias v.deactivate='pyenv deactivate'
alias v.rm='pyenv uninstall'
alias v='pyenv activate'
alias v.cdsitepackages='cdsitepackages'
alias v.cd='cdvirtualenv'
alias v.lssitepackages='lssitepackages'

export PATH="/usr/local/bin:/usr/local/sbin:$PATH"
