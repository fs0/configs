# /etc/skel/.bashrc
#
# This file is sourced by all *interactive* bash shells on startup,
# including some apparently interactive shells such as scp and rcp
# that can't tolerate any output.  So make sure this doesn't display
# anything or bad things will happen !


# Test for an interactive shell.  There is no need to set anything
# past this point for scp and rcp, and it's important to refrain from
# outputting anything in those cases.
if [[ $- != *i* ]] ; then
    # Shell is non-interactive.  Be done now!
    return
fi


# Put your fun stuff here.

if [ $TERM = "linux" ]; then
    PS1="\`echo \$?\`\[\e[1;34m\]\u\[\e[m\]\[\e[1;37m\]@\[\e[m\]\[\e[1;34m\]\h\[\e[m\] \[\e[1;37m\]\w $ \[\e[m\]"
else
    PS1="\`if [ \$? = 0 ]; then echo \"\[\033[01;32m\]\342\234\223\"; else echo \"\[\033[01;31m\]\342\234\227\"; fi\`\[\e[1;34m\]\u\[\e[m\]\[\e[1;37m\]@\[\e[m\]\[\e[1;34m\]\h\[\e[m\] \[\e[1;37m\]\w $ \[\e[m\]"
fi

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

alias ls='ls --color=auto'
alias ll='ls -l'
alias vi='vim -p'
alias rm='rm -vi'
alias srm='mv -vi -t /other/trash/'
alias cp='cp -vi'
alias mv='mv -vi'
alias python='python2.7'
alias mplayerdmix='mplayer -ao alsa:device=both'
alias xclip='xclip -selection clipboard'

set -o vi

# Complete
complete -cf sudo
complete -cf man

export PATH=.:$PATH:/sbin:/home/fs0/prg/shell-scripts:/home/fs0/prg/prgs

export BROWSER=firefox
