export EDITOR=vim
export TERM=xterm-256color
alias cd..="cd .."
alias l="ls --color --classify"
alias root="sudo su -m root"

#Pretty colors for ls
eval `dircolors ~/.dir_colors`

if [ $HOSTNAME = "RUDY-SB" ]; then
    export ALL_THE_PLUGINS=0
    export CYGWIN=1
    export VAGRANT_PREFER_SYSTEM_BIN=1
else
    export ALL_THE_PLUGINS=1
    export CYGWIN=0
fi

#Clipboard host script
if [ CYGWIN ]; then
    if ! pgrep -f clipboard_host.py > /dev/null
    then
        python ~/scripts/clipboard_host.py > /dev/null 2>&1 &
    fi
fi

#Powerline-shell-proxy
if ! pgrep -f powerline-shell.py > /dev/null
then
    ~/powerline-shell-proxy/powerline-shell.py &
fi

#Use powerline-shell-proxy for a nice prompt
export POWERLINE_SOCKET="$HOME/.powerline-daemon-socket-$(hostname)"
_powerline_prompt() {
	RET=$?  # save return code before calling whoami
	JOBS=0
	PS1="$(echo $(whoami)";$$;$RET;bash;$PWD;$JOBS;$SSH_CLIENT" | nc -U $POWERLINE_SOCKET) "
}
export PROMPT_COMMAND="_powerline_prompt"

#Autojump
[[ -s /home/rodri/.autojump/etc/profile.d/autojump.sh ]] && source /home/rodri/.autojump/etc/profile.d/autojump.sh
[[ -s /home/rudy/.autojump/etc/profile.d/autojump.sh ]] && source /home/rudy/.autojump/etc/profile.d/autojump.sh
[[ -s /usr/share/autojump/autojump.sh ]] && source /usr/share/autojump/autojump.sh

#Scripts
PATH=~/scripts:$PATH

#vi mode
set -o vi
bind '"\t":menu-complete'
bind -m vi-insert "\C-l":clear-screen
