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

### Internet
chromium chromium-l10n chromium-widevine
transmission

### Multimedia
mpv cmus
gimp inkscape
libavcodec-extra

### Tools
git vim-nox
ufw gufw


### Firmware
firmware-linux firmware-iwlwifi
firmware-realtek r8168-dkms

### Fonts
fonts-liberation2 ttf-bitstream-vera ttf-dejavu ttf-freefont ttf-mscorefonts-installer

### Development

#### C/C++
g++
codeblocks

#### Java
software-properties-common
dirmngr
oracle-java8-installer
default-jdk
openjdk-8-source

#### Docker
apt-transport-https
ca-certificates
curl
gnupg2
software-properties-common

#### VirtualBox
virtualbox-5.1

### Misc.
arc-theme
lightdm-gtk-greeter-settings



## Remove

```bash
$ sudo apt remove --autoremove --purge <package-name>
```

avahi-daemon
avahi-autoipd

## Other
