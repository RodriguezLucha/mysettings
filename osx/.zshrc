PATH=~/.local/bin:$PATH
export PATH=/usr/local/bin:$PATH
export ZSH=/Users/rodolforodriguez/.oh-my-zsh

ZSH_THEME="powerlevel9k/powerlevel9k"
POWERLEVEL9K_MODE='nerdfont-complete'
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir vcs newline virtualenv root_indicator vi_mode)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=()
POWERLEVEL9K_VI_INSERT_MODE_STRING="➤"
POWERLEVEL9K_VI_COMMAND_MODE_STRING="!"
POWERLEVEL9K_SHOW_CHANGESET=true
POWERLEVEL9K_VIRTUALENV_BACKGROUND=green


plugins=(
    git
    vi-mode
    autojump
    httpie
    virtualenvwrapper
    docker
    docker-compose
)

source $ZSH/oh-my-zsh.sh
export EDITOR='vim'

#eval `dircolors ~/.dir_colors`

alias cd..="cd .."
alias l="gls --color --classify --hide='*.pyc' --hide='__pycache__'"
alias root="sudo su -m root"
alias automocha="supervisor -q -n exit -x mocha -- -b"
drsc() { docker rm -v $(docker ps -aq -f status=exited); }
alias ve2='f() { virtualenv .venv };f'
alias ve3='f() { virtualenv -p python3 .venv };f'
alias ve="cd `pwd`"
export ALL_THE_PLUGINS=1
PATH=~/scripts:$PATH
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/Devel
export GOPATH=~/go
source /usr/local/bin/virtualenvwrapper.sh
ve

function exec_run_command()
{
    ./run
    zle accept-line
}
zle -N exec_run_command
bindkey "^O" exec_run_command


#if [[ $EUID -ne 0 ]]; then
    #[ -z "$TMUX"  ] && { tmux attach || exec tmux new-session && exit;}
#fi

