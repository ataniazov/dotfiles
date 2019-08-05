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

### GUI
i3 feh xdotools
redshift-gtk

### Internet
chromium chromium-l10n
transmission
transmission-gtk

### Multimedia
mpv cmus
libavcodec-extra

#### MTP
libimobiledevice-utils
gvfs-backends
gvfs-bin
gvfs-fuse

### Tools
vim-nox
htop
ranger
trash-cli
gnome-terminal
gpick
blueman
gnome-disk-utility
udiskie
testdisk
gdmap
net-tools
dnsutils
whois
qrencode
#solaar
acpi
sqlite3
postgresql-all
android-tools-adb
heimdall-flash
heimdall-flash-frontend

### Firmware
firmware-linux firmware-iwlwifi
firmware-realtek
broadcom-sta-dkms
r8168-dkms

### Fonts
fonts-liberation fonts-liberation2 ttf-bitstream-vera
xfonts-terminus xfonts-terminus-dos xfonts-terminus-oblique
ttf-xfree86-nonfree
ttf-mscorefonts-installer

### Office
mousepad
gedit
evince
mupdf
mupdf-tools
gnome-calculator
zathura zathura-pdf-poppler zathura-djvu zathura-ps zathura-cb
simple-scan
gimp
inkscape
libreoffice-l10n-tr
libreoffice-help-tr
libreoffice-style-breeze

### Development

#### Git
git gitg

#### C/C++
g++
gdb
codeblocks
codeblocks-contrib
cppcheck
cppcheck-gui

#### Java
software-properties-common
dirmngr

#### Docker
apt-transport-https
ca-certificates
curl
software-properties-common

#### Archive
p7zip-rar rar unrar

### Theme
greybird-gtk-theme
elementary-xfce-icon-theme
arc-theme
breeze-cursor-theme
lightdm-gtk-greeter-settings

### Misc.
autoconf
libgtk-3-dev

## Remove

```bash
$ sudo apt remove --autoremove --purge <package-name>
```

avahi-daemon
avahi-autoipd

### Window Manager
i3 lightdm lightdm-gtk-greeter-settings
feh xdotools xautolock
#network-manager-gnome
xfce4-settings
xfce4-notifyd
xfce4-screenshooter
xfce4-terminal
thunar
thunar-volman
thunar-archive-plugin
thunar-gtkhash
thunar-media-tags-plugin
catfish
pulseaudio
mpv cmus
vlc
firefox-esr
chromium chromium-l10n
file-roller
ristretto
gnome-calculator
gnome-terminal

### Security
ufw gufw
cryptsetup
diceware
gpg gnupg2
seahorse
veracrypt
clamav
libclamunrar7

#### Encryption
haveged
rng-tools5
signify-openbsd

### Development

#### Docker-CE
apt-transport-https
ca-certificates
curl
software-properties-common
docker-ce

#### RDP
freerdp-x11

#### Other
build-essential
snapd
hping3
cu
composer
php-curl
whois
dnsutils
make
libx11-dev libxkbfile-dev libsecret-1-dev
fakeroot
rpm
libappindicator1
shutter
numpy
python3-pip
python-pip
gkbd-capplet
tkgate
kazam
xfburn
python3-tk
debootstrap
subversion
subversion-tools

