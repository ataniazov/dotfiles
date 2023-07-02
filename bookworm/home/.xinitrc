#!/bin/sh

# /etc/X11/xinit/xinitrc
#
# global xinitrc file, used by all X sessions started by xinit (startx)

# invoke global X session script
. /etc/X11/Xsession

# load resource file
#[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources

if [ -f "/usr/bin/i3" ]; then
    exec i3 --shmlog-size 0
fi
