PATH=~/.local/bin:$PATH
export ZSH=/Users/rudy/.oh-my-zsh
export TERM="screen-256color"

ZSH_THEME="powerlevel9k/powerlevel9k"
POWERLEVEL9K_MODE='nerdfont-complete'
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir vcs newline root_indicator vi_mode)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=()
POWERLEVEL9K_VI_INSERT_MODE_STRING="➤"
POWERLEVEL9K_VI_COMMAND_MODE_STRING="!"
#POWERLEVEL9K_SHOW_CHANGESET=true


plugins=(
    #git
    #vi-mode
    #httpie
    #rails
    #autojump
    #ruby
    #bundler
)

source $ZSH/oh-my-zsh.sh
export EDITOR='vim'

alias cd..="cd .."
alias l="gls --color --classify --hide='*.pyc' --hide='__pycache__'"
alias ls="gls --color --classify --hide='*.pyc' --hide='__pycache__'"
alias root="sudo su -m root"
alias nethogs=/usr/local/Cellar/nethogs/0.8.5/sbin/nethogs
alias automocha="npx mocha --watch"
alias ve="cd `pwd`"
export ALL_THE_PLUGINS=1
PATH=~/scripts:$PATH
PATH=~/usr/local/Cellar/nethogs/0.8.5/sbin:$PATH

eval "$(rbenv init -)"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

