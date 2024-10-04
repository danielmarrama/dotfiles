# aliases
alias vim="nvim"
alias gd="git diff"
alias gaa="git add ."
alias gc="git commit"
alias gp="git push"
alias pvpn="wg-quick up wg-UK"
alias pvpn-down="wg-quick down wg-UK"
alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

alias termdown='termdown_func'
termdown_func() {
    command termdown "$@" && mpv ~/Music/done.mp3
}

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Global Python env
if [ -f ~/env/global/bin/activate ]; then
    source ~/env/global/bin/activate
fi

# IEDB MySQL credentials
if [ -f ~/.iedb_credentials ]; then
    source ~/.iedb_credentials
fi
