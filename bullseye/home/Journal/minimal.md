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
feh xdotools
network-manager-gnome
pulseaudio
//pavucontrol
xfce4-settings
xfce4-terminal
xfce4-screenshooter
xfce4-notifyd
thunar
//thunar-volman
//thunar-archive-plugin
//thunar-media-tags-plugin
//thunar-gtkhash
engrampa
ristretto
//catfish

### Fonts
xfonts-terminus
ttf-mscorefonts-installer

### Internet
firefox-esr
chromium
uget

### Multimedia
mpv
vlc

#### Hardware Video Acceleration
libva-glx2
vdpau-driver-all
mesa-va-drivers
nvidia-legacy-390xx-vdpau-driver
libnvidia-legacy-390xx-nvcuvid1
libnvidia-legacy-390xx-encode1
//vainfo
//vdpauinfo

### Theme
greybird-gtk-theme
elementary-xfce-icon-theme
arc-theme
breeze-cursor-theme

#### MTP
libimobiledevice-utils
gvfs-backends
gvfs-bin
gvfs-fuse

### Security
ufw gufw
cryptsetup
diceware
gpg gnupg2
wipe
secure-delete
mat2
apparmor
apparmor-profiles
apparmor-profiles-extra
apparmor-notify
apparmor-utils
macchanger

### Office
mousepad
gedit
gedit-plugins
evince
atril
mupdf
mupdf-tools
gnome-calculator
mate-calc
zathura zathura-pdf-poppler zathura-djvu zathura-ps zathura-cb

### Tools
htop
nnn
trash-cli
gnome-disk-utility
gparted
udiskie
testdisk
gdmap
net-tools
dnsutils
whois
qrencode
acpi
lm-sensors

### Development

#### Git
git gitg

### Misc.
curl
rsync

#### Other
build-essential
snapd
kazam
xfburn
filezilla
meld
redshift-gtk
gigolo
dconf-editor

## Remove

```bash
$ sudo apt remove --autoremove --purge <package-name>
```

avahi-daemon
avahi-autoipd
