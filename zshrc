# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.oh-my-zsh
# Set to the name theme to load.
# Look in ~/.oh-my-zsh/themes/
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

# Golang package path
export GOPATH=~/

# Count lines of code (excluding blanks)
alias ctlns="cat ./**/* | sed '/^\s*$/d' | wc -l"
alias ctlnspy="cat ./**/*.py | sed '/^\s*$/d' | wc -l"

# For virtualenvwrapper
export WORKON_HOME=$HOME/.venvs
source /usr/local/bin/virtualenvwrapper.sh
alias v='hash -r && workon'
alias v.deactivate='deactivate'
alias v.mk='mkvirtualenv --no-site-packages'
alias v.rm='rmvirtualenv'
alias v.switch='workon'
alias v.add2virtualenv='add2virtualenv'
alias v.cdsitepackages='cdsitepackages'
alias v.cd='cdvirtualenv'
alias v.lssitepackages='lssitepackages'
alias v.3mk='mkvirtualenv --no-site-packages --python=/usr/local/bin/python3'

# For Python
alias pyl='pylint -f colorized'
alias nt='nosetests --nologcapture'
