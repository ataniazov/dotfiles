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
firmware-iwlwifi
firmware-atheros
firmware-realtek
//broadcom-sta-dkms
//r8168-dkms
//nvidia-legacy-390xx-driver
//nvidia-legacy-390xx-driver-libs

### Window Manager
xinit
i3
lightdm lightdm-gtk-greeter-settings
feh xdotools
network-manager-gnome
alsa-utils
pulseaudio
pavucontrol
xfce4-settings
xfce4-terminal
xfce4-screenshooter
xfce4-notifyd
xfce4-power-manager
thunar
thunar-volman
thunar-archive-plugin
thunar-media-tags-plugin
thunar-gtkhash
gnome-terminal
file-roller
engrampa
ristretto
catfish

### Fonts
//fonts-liberation fonts-liberation2 ttf-bitstream-vera
fonts-terminus fonts-terminus-otb
xfonts-terminus xfonts-terminus-dos xfonts-terminus-oblique
fonts-ubuntu fonts-ubuntu-console
ttf-xfree86-nonfree
//ttf-mscorefonts-installer

### Internet
firefox-esr
chromium chromium-l10n
//webext-ublock-origin webext-privacy-badger webext-https-everywhere
qbittorrent
transmission
transmission-gtk
aria2
uget

### Multimedia
mpv cmus
mplayer
vlc
libavcodec-extra
gstreamer1.0-plugins-base
gstreamer1.0-plugins-good
gstreamer1.0-plugins-ugly
gstreamer1.0-plugins-bad
gstreamer1.0-libav
//gstreamer1.0-alsa
gstreamer1.0-pulse
//gstreamer1.0-pipewire
gstreamer1.0-vaapi
gstreamer1.0-gtk3
//gstreamer1.0-qt5
x265
x264

#### Hardware Video Acceleration
libva-glx2
vdpau-driver-all
mesa-va-drivers
nvidia-legacy-390xx-vdpau-driver
libnvidia-legacy-390xx-nvcuvid1
libnvidia-legacy-390xx-encode1
//vainfo
//vdpauinfo

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
seahorse
veracrypt
wipe
secure-delete
mat2
clamav
libclamunrar
apparmor
apparmor-profiles
apparmor-profiles-extra
apparmor-notify
apparmor-utils
macchanger
dnscrypt-proxy
stubby
unbound

#### Encryption
haveged
rng-tools5
signify-openbsd
minisign
age
gocryptfs
magic-wormhole

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
simple-scan
gimp
inkscape
libreoffice-l10n-tr
libreoffice-help-tr
libreoffice-style-breeze
onboard

### Tools
//vim-nox
htop
//ranger
nnn
trash-cli
gpick
blueman
gnome-disk-utility
gparted
udiskie
testdisk
photorec
gdmap
net-tools
dnsutils
whois
qrencode
//solaar
acpi
sqlite3
postgresql-all
android-tools-adb
heimdall-flash
heimdall-flash-frontend
firejail
wxhexeditor
lm-sensors
xautolock

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

### Archive
p7zip-rar rar unrar
unzip

### Theme
greybird-gtk-theme
elementary-xfce-icon-theme
arc-theme
breeze-cursor-theme
lightdm-gtk-greeter-settings

### Misc.
curl
rsync
autoconf
libgtk-3-dev

### Development

#### Docker
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
minicom
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
filezilla
meld
redshift-gtk
ftp
gigolo
mc
wireshark
nmap zenmap
netcat
dconf-editor
geo-bin
rofi
shellcheck

### jp
#ibus-mozc
#mozc-utils-gui
#ibus-anthy
fcitx5-mozc
fonts-noto fonts-noto-mono
fonts-ipafont fonts-vlgothic
fonts-dejima-mincho fonts-umeplus fonts-umeplus-cl fonts-takao fonts-takao-gothic fonts-takao-mincho
fonts-ipafont-nonfree-jisx0208 fonts-ipafont-nonfree-uigothic
fonts-aoyagi-kouzan-t fonts-aoyagi-soseki fonts-kouzan-mouhitsu
fonts-hanazono fonts-monapo fonts-mplus fonts-kanjistrokeorders

## Remove

```bash
$ sudo apt remove --autoremove --purge <package-name>
```

avahi-daemon
avahi-autoipd
