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

# The lag when hitting ESC to enter vi mode is abysmal:
export KEYTIMEOUT=0

# Get rid of auto title so that I can force window names in tmux
export DISABLE_AUTO_TITLE=true

source $ZSH/oh-my-zsh.sh

if [[ -f $HOME/.zshrc.local ]]; then
  . $HOME/.zshrc.local
fi

# Make pip faster via caching
export PIP_DOWNLOAD_CACHE=~/.pip/cache

# Fix alias 'l' to show file size in human-readable format
alias l='ls -lha'

# Git Aliases
alias g.lg='git log --oneline --graph --all --decorate'

# Am I in a shell from within vim?
alias invim='env | grep vim'

# For virtualenvwrapper
export WORKON_HOME=$HOME/.venvs
source /usr/local/bin/virtualenvwrapper.sh
alias v='workon'
alias v.deactivate='deactivate'
alias v.mk='mkvirtualenv --no-site-packages'
alias v.rm='rmvirtualenv'
alias v.switch='workon'
alias v.add2virtualenv='add2virtualenv'
alias v.cdsitepackages='cdsitepackages'
alias v.cd='cdvirtualenv'
alias v.lssitepackages='lssitepackages'
alias v.3mk='mkvirtualenv --no-site-packages --python=/usr/local/bin/python3'

# For Pylint
alias pyl='pylint -f colorized'

# History command that, if passed an argument, only shows command line history
# for that specific command. Otherwise it is just shorthand for "history 1"
h() { if [ -z "$*" ]; then history ; else history | egrep "$@"; fi; }


PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
