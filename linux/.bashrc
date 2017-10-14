# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# User specific aliases and functions
export EDITOR=vim
export TERM=xterm-256color
alias cls="clear"
alias cd..="cd .."
alias e="exit"
alias l="ls --color --classify"
alias dev="sudo su -m dev"
alias root="sudo su -m root"
alias oesismonitor="sudo su -m oesismonitor"

if [ -f ~/.powerline-shell.json ]; then
    function _update_ps1() {
        PS1="$(powerline-shell $?)"
    }

    if [ "$TERM" != "linux" ]; then
        PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
    fi
fi

if [ -f /usr/share/autojump/autojump.sh ]; then
    . /usr/share/autojump/autojump.sh
fi

[[ -s /home/rodri/.autojump/etc/profile.d/autojump.sh ]] && source /home/rodri/.autojump/etc/profile.d/autojump.sh

PATH=~/scripts:$PATH

bind '"\t":menu-complete'
