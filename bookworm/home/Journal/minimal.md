# Software

## update, upgrade & clean

```bash
$ sudo apt update
$ sudo apt upgrade
$ sudo apt dist-upgrade
$ sudo apt autoremove
$ sudo apt autoclean
$ sudo apt clean
```

## Install

```bash
$ sudo apt install <package-name>
```

### Firmware
firmware-linux
//firmware-iwlwifi
//firmware-atheros
//firmware-realtek
//broadcom-sta-dkms
//r8168-dkms
//nvidia-legacy-390xx-driver
//nvidia-legacy-390xx-driver-libs

### Window Manager
xinit
i3
feh xdotool
network-manager-gnome
pulseaudio
xfce4-settings
xfce4-terminal
xfce4-power-manager
xfce4-notifyd
xfce4-screenshooter
thunar
thunar-archive-plugin
//thunar-media-tags-plugin
thunar-gtkhash
ristretto
//catfish

### Fonts
fonts-terminus
fonts-terminus-otb
xfonts-terminus xfonts-terminus-dos xfonts-terminus-oblique
fonts-ubuntu fonts-ubuntu-console
ttf-xfree86-nonfree

### Internet
firefox-esr
chromium
aria2
//uget

### Multimedia
mpv
vlc

#### Hardware Video Acceleration
//libva-glx2
//vdpau-driver-all
//mesa-va-drivers
//nvidia-legacy-390xx-vdpau-driver
//libnvidia-legacy-390xx-nvcuvid1
//libnvidia-legacy-390xx-encode1
//vainfo
//vdpauinfo

### Theme
greybird-gtk-theme
elementary-xfce-icon-theme
breeze-cursor-theme

#### MTP
libimobiledevice-utils
gvfs-backends
gvfs-bin
gvfs-fuse

### Archive
unzip
rar unrar
p7zip-rar

### Security
ufw gufw
//cryptsetup
//diceware
//gpg gnupg2
//wipe
//secure-delete
//mat2
//apparmor
//apparmor-profiles
//apparmor-profiles-extra
//apparmor-notify
//apparmor-utils
//macchanger

### Office
file-roller
//engrampa
gedit
//gedit-plugins
//mousepad
gnome-calculator
//mate-calc
evince
//atril
mupdf
//mupdf-tools
//zathura zathura-pdf-poppler zathura-djvu zathura-ps zathura-cb
gimp
inkscape

### Tools
vim
gnome-disk-utility
htop
lm-sensors
//nnn
//trash-cli
//gparted
//udiskie
//testdisk
//gdmap
//net-tools
//dnsutils
//whois
//qrencode
//acpi

### Development

#### Git
git
//gitg

### Misc.
curl
rsync

#### Other
meld
sqlitebrowser
jq
//build-essential
//snapd
//kazam
//xfburn
//filezilla
//redshift-gtk
//gigolo
//dconf-editor
//astyle
//scrcpy

## Remove

```bash
$ sudo apt remove --autoremove --purge <package-name>
```

avahi-daemon

dunst
os-prober
tasksel
vim-tiny
pipewire
