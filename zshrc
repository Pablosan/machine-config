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

source $ZSH/oh-my-zsh.sh

if [[ -f $HOME/.zshrc.local ]]; then
  . $HOME/.zshrc.local
fi

