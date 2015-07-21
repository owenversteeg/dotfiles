#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

alias killx="sudo pkill -15 X"
#export PATH="/usr/local/bin/cw:$PATH"
