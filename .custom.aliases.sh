# Shell stuff
alias aca="vim ~/.custom.aliases.sh && source ~/.zshrc" # Add a custom alias and reload shell
alias ez="vim ~/.zshrc" # edit zsh config
alias sz="source ~/.zshrc" # reload zsh

# Vim
alias ev="vim ~/.vimrc"

# Terminal stuff
alias tmux="TERM=screen-256color-bce tmux"

# Ruby testing
alias st="clear && ruby -I test $1" # short-cut to run a single unit test. assumes you are in rails root.
alias sc="clear && cucumber $1" # run a single cucumber test. assumes you are in rails root.

# Misc
alias pbjsonpretty='pbpaste | python -mjson.tool | pygmentize -l javascript'

# Rails
alias rg="rails g $1"

# Git
alias gpom="git push origin master"
alias gpoq="git push origin qa"
alias gup="git pull --rebase"
alias gb="git branch"
alias gst="git status"
alias gc="git commit $1"
alias gdt="git difftool $1"

# Load my private aliases (SSH shortcuts, etc)
source ~/.private.aliases.sh
