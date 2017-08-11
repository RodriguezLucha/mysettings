# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# User specific aliases and functions
export EDITOR=vim
alias cls="clear"
alias cd..="cd .."
alias l="ls -A --color --classify"
alias dev="sudo su -m dev"
alias root="sudo su -m root"
alias oesismonitor="sudo su -m oesismonitor"
