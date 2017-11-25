# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

export EDITOR=vim
export TERM=xterm-256color
alias cls="clear"
alias cd..="cd .."
alias e="exit"
alias l="ls --color --classify"
alias dev="sudo su -m dev"
alias root="sudo su -m root"
alias oesismonitor="sudo su -m oesismonitor"

if [ $HOSTNAME = "rudyspvm" ]; then
    export ALL_THE_PLUGINS=1
elif [ $HOSTNAME = "RUDY-SURFACE" ]; then
    export ALL_THE_PLUGINS=1
elif [ $HOSTNAME = "rudy-w8e" ]; then
    export ALL_THE_PLUGINS=1
else
    export ALL_THE_PLUGINS=0
fi

if [ -f ~/.powerline-shell.json ]; then
    function _update_ps1() {
        PS1="$(powerline-shell $?)"
    }
    if [ "$TERM" != "linux" ]; then
        PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
    fi
fi

[[ -s /home/rodri/.autojump/etc/profile.d/autojump.sh ]] && source /home/rodri/.autojump/etc/profile.d/autojump.sh
[[ -s /home/rudy/.autojump/etc/profile.d/autojump.sh ]] && source /home/rudy/.autojump/etc/profile.d/autojump.sh
[[ -s /usr/share/autojump/autojump.sh ]] && source /usr/share/autojump/autojump.sh

PATH=~/scripts:$PATH

bind '"\t":menu-complete'
set -o vi


PATH="/home/rudy/perl5/bin${PATH:+:${PATH}}"; export PATH;
PERL5LIB="/home/rudy/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/home/rudy/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/home/rudy/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/home/rudy/perl5"; export PERL_MM_OPT;
