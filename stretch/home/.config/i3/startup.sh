#! /bin/sh

# kill startup daemons
#pkill conky
#pkill redshift
#pkill compton
pkill xfce4-power-manager
pkill xfsettingsd
pkill polkit-gnome-authentication-agent-1
pkill at-spi-bus-launcher

sleep 1

# startup daemons
/usr/lib/at-spi2-core/at-spi-bus-launcher --launch-immediately &
/usr/lib/policykit-1-gnome/polkit-gnome-authentication-agent-1 &
xfsettingsd &
xfce4-power-manager &
#compton -cCG --shadow-opacity=1.0 --fade-delta=3 --menu-opacity=1.0 --inactive-opacity=1.0 --inactive-dim 0.0 --dbus --detect-rounded-corners --detect-client-opacity --vsync opengl --shadow-exclude fullscreen --frame-opacity=1.0 --no-dnd-shadow --backend glx &
#redshift -l 40.7:29.9 -t 5900:5500 -g 0.8 -m randr &
#conky -c "$HOME/.conky/SimpleClock/DArk_Simple_" &
