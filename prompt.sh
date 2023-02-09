#!/bin/bash

if [[ $1 == "on" ]]; then
    export PS1='\e[1;32m\u\e[0m > \e[1;34m\W\e[0m $ '
elif [[ $1 == "off" ]]; then
    export PS1='\[\e]0;\u@\h: \w\a\]${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
fi
