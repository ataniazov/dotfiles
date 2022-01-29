#!/bin/sh

# kill startup daemons
#pkill conky
#pkill redshift
#pkill light-locker
#pkill xautolock
#pkill compton
#pkill xfce4-notifyd
#pkill xdg-user-dirs-update
#pkill xiccd
#pkill fcitx5 mozc_server
#pkill xfce4-power-manager
#pkill xfsettingsd
#pkill start-pulseaudio-x11
#pkill polkit-gnome-authentication-agent-1
#pkill at-spi-bus-launcher

#sleep 1

# startup daemons
#/usr/libexec/at-spi-bus-launcher --launch-immediately &
/usr/lib/policykit-1-gnome/polkit-gnome-authentication-agent-1 &
#start-pulseaudio-x11 &
xfsettingsd --daemon
xfce4-power-manager --daemon
#xiccd &
#xdg-user-dirs-update &
#/usr/lib/x86_64-linux-gnu/xfce4/notifyd/xfce4-notifyd &
#compton -cCG --shadow-opacity=1.0 --fade-delta=3 --menu-opacity=1.0 --inactive-opacity=1.0 --inactive-dim 0.0 --dbus --detect-rounded-corners --detect-client-opacity --vsync opengl --shadow-exclude fullscreen --frame-opacity=1.0 --no-dnd-shadow --backend glx &
#compton -CGb --shadow-opacity=1.0 --fade-delta=3 --menu-opacity=1.0 --inactive-opacity=1.0 --inactive-dim 0.0 --dbus --detect-rounded-corners --detect-client-opacity --vsync opengl --shadow-exclude fullscreen --frame-opacity=1.0 --no-dnd-shadow --backend glx &

#i3-msg restart
#light-locker &
#redshift -l 40.7:29.9 -t 5900:5500 -g 0.8 -m randr &

# gsettings schema
# gsettings set org.freedesktop.ibus.general use-system-keyboard-layout 'true'
# gsettings set org.freedesktop.ibus.general use-xmodmap 'true'
#gsettings set org.freedesktop.ibus.panel xkb-icon-rgba '#00ff00'
# gsettings set org.gnome.desktop.wm.keybindings switch-input-source "['Shift_L']"
# gsettings set org.gnome.desktop.wm.keybindings switch-input-source-backward "['Alt_L']"
#gsettings set org.freedesktop.ibus.general.hotkey triggers "['<Alt>space']"
#gsettings set org.freedesktop.ibus.general switcher-delay-time '-1'
