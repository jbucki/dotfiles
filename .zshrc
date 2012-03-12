# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

export EDITOR="/usr/local/bin/vim"
export GIT_EDITOR="/usr/local/bin/vim"

bindkey "^R" history-incremental-search-backward

# Load RVM, if you are using it
[[ -s $HOME/.rvm/scripts/rvm ]] && source $HOME/.rvm/scripts/rvm

# Load tmuxinator
# [[ -s $HOME/.tmuxinator/scripts/tmuxinator ]] && source $HOME/.tmuxinator/scripts/tmuxinator

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="josh"

# keep TONS of history
export HISTSIZE=4096

# Enable extended globbing
setopt EXTENDED_GLOB

DISABLE_AUTO_TITLE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git vi-mode brew)

source $ZSH/oh-my-zsh.sh

# Custom/machine-specific files
source ~/.custom.sh
source ~/.custom.aliases.sh

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
