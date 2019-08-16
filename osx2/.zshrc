export ZSH="/Users/rudy/.oh-my-zsh"

PATH=~/.local/bin:$PATH
export PATH="$HOME/.rbenv/bin:$HOME/.rbenv/shims:$PATH"
PATH=~/.rbenv/shims:$PATH

eval "$(rbenv init -)"

ZSH_THEME="powerlevel9k/powerlevel9k"
POWERLEVEL9K_MODE='nerdfont-complete'
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir vcs newline root_indicator vi_mode)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=()
POWERLEVEL9K_VI_INSERT_MODE_STRING="➤"
POWERLEVEL9K_VI_COMMAND_MODE_STRING="!"
POWERLEVEL9K_SHOW_CHANGESET=true


plugins=(
git
vi-mode
httpie
rails
autojump
ruby
bundler
react-native
)

source $ZSH/oh-my-zsh.sh
export EDITOR='vim'

alias cd..="cd .."
alias l="gls --color --classify --hide='*.pyc' --hide='__pycache__'"
alias ls="gls --color --classify --hide='*.pyc' --hide='__pycache__'"
alias root="sudo su -m root"
alias nethogs=/usr/local/Cellar/nethogs/0.8.5/sbin/nethogs
#alias automocha="npx mocha --watch"
alias automocha="nodemon -x 'clear && timeout 2s mocha --require @babel/register'"
alias autoprove="nodemon --watch t -e .pl -x 'clear && timeout 2s prove -Q t/**'"

#React related
alias ird="npm install axios jwt-decode react-redux react-router-dom redux redux-logger redux-thunk eslint-plugin-react"

alias ve="cd `pwd`"
alias linecount="wc -l **/*.* | sort"
export ALL_THE_PLUGINS=1
PATH=~/scripts:$PATH
PATH=~/usr/local/Cellar/nethogs/0.8.5/sbin:$PATH


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

if [ "$TERM_PROGRAM" != "vscode" ]; then
    if [[ $EUID -ne 0 ]]; then
        [ -z "$TMUX"  ] && { tmux attach || exec tmux new-session && exit;}
    fi
fi

source ~/perl5/perlbrew/etc/bashrc

