#!/bin/sh

# startup daemons
#/usr/libexec/at-spi-bus-launcher --launch-immediately &
/usr/lib/policykit-1-gnome/polkit-gnome-authentication-agent-1 &
#/usr/libexec/polkit-mate-authentication-agent-1 &
xiccd --edid &
#start-pulseaudio-x11 &
xfsettingsd --daemon
xfce4-power-manager --daemon
blueman-applet --loglevel 0 2>/dev/null &
nm-applet &
#sh -c "systemctl --user start xfce4-notifyd.service 2>/dev/null || exec /usr/lib/x86_64-linux-gnu/xfce4/notifyd/xfce4-notifyd" &
#xdg-user-dirs-update &
#/usr/lib/x86_64-linux-gnu/xfce4/notifyd/xfce4-notifyd &
#compton -cCG
#compton -CGb --shadow-opacity=1.0 --fade-delta=3 --menu-opacity=1.0 --inactive-opacity=1.0 --inactive-dim 0.0 --dbus --detect-rounded-corners --detect-client-opacity --vsync opengl --shadow-exclude fullscreen --frame-opacity=1.0 --no-dnd-shadow --backend glx &
#redshift -l 40.7:29.9 -t 5900:5500 -g 0.8 -m randr &

# gsettings schema
# gsettings set org.freedesktop.ibus.general use-system-keyboard-layout 'true'
# gsettings set org.freedesktop.ibus.general use-xmodmap 'true'
#gsettings set org.freedesktop.ibus.panel xkb-icon-rgba '#00ff00'
# gsettings set org.gnome.desktop.wm.keybindings switch-input-source "['Shift_L']"
# gsettings set org.gnome.desktop.wm.keybindings switch-input-source-backward "['Alt_L']"
#gsettings set org.freedesktop.ibus.general.hotkey triggers "['<Alt>space']"
#gsettings set org.freedesktop.ibus.general switcher-delay-time '-1'
