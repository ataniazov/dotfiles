# Configuration

* Added **contrib non-free** after **main** in file **/etc/apt/sources.list**

```
deb http://ftp.de.debian.org/debian/ stretch main contrib non-free
deb-src http://ftp.de.debian.org/debian/ stretch main contrib non-free

deb http://security.debian.org/debian-security stretch/updates main contrib non-free
deb-src http://security.debian.org/debian-security stretch/updates main contrib non-free
```

* Enabled SSD weekly trim

```bash
$ sudo cp /usr/share/doc/util-linux/examples/fstrim.{service,timer} /etc/systemd/system
$ sudo systemctl enable fstrim.timer
```

* Disabled pcspkr **beep** sound

```bash
$ echo "blacklist pcspkr" | sudo tee /etc/modprobe.d/pcspkr-blacklist.conf
```

* Install Oracle Java 8

```bash
### Java
$ sudo apt install software-properties-common dirmngr

$ sudo add-apt-repository "deb http://ppa.launchpad.net/webupd8team/java/ubuntu xenial main"

$ echo "deb http://ppa.launchpad.net/webupd8team/java/ubuntu xenial main contrib" | sudo tee /etc/apt/sources.list.d/webupd8team-java.list

$ echo "deb-src http://ppa.launchpad.net/webupd8team/java/ubuntu xenial" | sudo tee -a /etc/apt/sources.list.d/webupd8team-java.list

$ sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys EEA14886
$ sudo apt-get update
$ sudo apt-get install oracle-java8-installer

$ sudo update-alternatives --config java
```

* Edited **us** language **dvorak** variant to support turkish characters

```bash
$ sudo vim /usr/share/X11/xkb/symbols/us
```

* Installed **docker** from official repository

```bash
$ sudo apt-get install \
     apt-transport-https \
     ca-certificates \
     curl \
     gnupg2 \
     software-properties-common

$ curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add -

$ sudo apt-key fingerprint 0EBFCD88
```

 * Adding keys

```bash
$ sudo add-apt-repository \
     "deb [arch=amd64] https://download.docker.com/linux/debian \
     $(lsb_release -cs) \
     stable"
```

**OR**

```bash
$ echo "deb [arch=amd64] https://download.docker.com/linux/debian \
$(lsb_release -cs) \
stable" | sudo tee /etc/apt/sources.list.d/docker.list
```
**Install**

```bash
$ sudo apt-get update

$ sudo apt-get install docker-ce
```

* Installed **virtualbox** from official repository
```bash
$ echo "deb http://download.virtualbox.org/virtualbox/debian stretch contrib" | sudo tee /etc/apt/sources.list.d/virtualbox.list

$ curl -fsSL https://www.virtualbox.org/download/oracle_vbox_2016.asc | sudo apt-key add -

$ wget -q https://www.virtualbox.org/download/oracle_vbox_2016.asc -O- | sudo apt-key add -
$ wget -q https://www.virtualbox.org/download/oracle_vbox.asc -O- | sudo apt-key add -

$ sudo apt-get update
$ sudo apt-get install virtualbox-5.1

```

* Disabled systemd services:

```bash
$ sudo systemctl disable

- bluetooth.service

- docker.socket
- docker.service

- libvirt-guests.service
- libvirtd.service

- vboxautostart-service.service
- vboxdrv.service
- vboxballoonctrl-service.service
- vboxweb-service.service
```

* Installed **nodejs** from official repository
```bash
curl -sL https://deb.nodesource.com/setup_7.x | sudo -E bash -
sudo apt-get install -y nodejs
```
