
HISTCONTROL=ignoreboth

shopt -s histappend
HISTSIZE=1000

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

color_prompt=yes

if [ "$color_prompt" = yes ]; then
    PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
else
    PS1='\u@\h:\w\$ '
fi
unset color_prompt force_color_prompt

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

alias apt-get='sudo apt-get'
alias apt-cache='sudo apt-cache'
alias apt-search='sudo apt-cache --names-only search'
alias apt-install='sudo apt-get install'

alias ..='cd ..'
alias ...='cd ../..'
alias mode='(set -o | grep emacs.*on >/dev/null 2>&1 && echo "emacs mode" || echo "vi mode")'
alias refresh='. ~/.bashrc'

# fuzzy cd 
function fcd() {
    cd *$1*/
}

[ -d $HOME/bin ] && PATH=$PATH:$HOME/bin
[ -d $HOME/work/bin ] && PATH=$PATH:$HOME/work/bin
