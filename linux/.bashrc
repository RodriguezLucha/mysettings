export EDITOR=vim
export TERM=xterm-256color
alias cd..="cd .."
alias l="ls --color --classify"
alias root="sudo su -m root"

#Pretty colors for ls
eval `dircolors ~/.dir_colors`

export ALL_THE_PLUGINS=1

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

[ -z "$TMUX"  ] && { tmux attach || exec tmux new-session && exit;}
