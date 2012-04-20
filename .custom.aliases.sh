# Shell stuff
alias aca="vim ~/.custom.aliases.sh && source ~/.zshrc" # Add a custom alias and reload shell
alias ez="vim ~/.zshrc" # edit zsh config
alias sz="source ~/.zshrc" # reload zsh

# Vagrant
alias vagrant="rvm use 1.9.2 && vagrant ${@}"
alias vssh="vagrant ssh"

# Vim
alias ev="vim ~/.vimrc"

# Terminal stuff
alias tmux="TERM=screen-256color-bce tmux"

# tmux
alias tma="tmux attach -t $1"
alias tme="vim ~/.tmux.conf && echo 'Reloading tmux conf file...' && tmux source ~/.tmux.conf"
alias tkill="tmux kill-session -t $1"
alias tls="tmux ls"

# tmux project config
alias tstart_fc="tmux -f ~/fanchatter.tmux.conf attach"
alias tstart_ep="tmux -f ~/energyprint.tmux.conf attach"

# Ruby testing
alias st="clear && ruby -I test $1" # short-cut to run a single unit test. assumes you are in rails root.
alias sc="clear && cucumber $1" # run a single cucumber test. assumes you are in rails root.

# Misc
alias pbjsonpretty='pbpaste | python -mjson.tool | pygmentize -l javascript'

# Rails
alias rg="rails g $1"
alias rake='noglob rake' # zsh has a hard time with rake task parameters so turning off globbing with rake

# Git
alias gcm="git checkout master"
alias gcq="git checkout qa"
alias gpom="git push origin master"
alias gpoq="git push origin qa"
alias gup="git pull --rebase"
alias gb="git branch"
alias gst="git status"
alias gc="git commit -m $1"
alias gdt="git difftool $1"

# Load my private aliases (SSH shortcuts, etc)
source ~/.private.aliases.sh
