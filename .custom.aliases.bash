# Bash stuff
alias aca="vim ~/.custom.aliases.bash && source ~/.bash_profile" # Add a custom alias and reload shell
alias sourceb="source ~/.bash_profile"
alias bp="vim .bash_profile"

# Terminal stuff
alias tmux="TERM=screen-256color-bce tmux"
alias cl="clear"

# Ruby testing
alias st="clear && ruby -I test $1" # short-cut to run a single unit test. assumes you are in rails root.
alias sc="clear && cucumber $1" # run a single cucumber test. assumes you are in rails root.

# Rails
alias rg="rails g $1"

# Git
alias gpom="git push origin master"
alias gup="git pull --rebase"
alias gb="git branch"
alias gst="git status"
alias gc="git checkout $1"
alias gdt="git difftool $1"

# Load my private aliases (SSH shortcuts, etc)
source ~/.private.aliases.bash
