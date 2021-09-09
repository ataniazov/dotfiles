# Configuration

* Installed **virtualbox** from official repository
```bash
$ echo "deb [arch=amd64] https://download.virtualbox.org/virtualbox/debian $(lsb_release -cs) contrib" | sudo tee /etc/apt/sources.list.d/virtualbox.list

$ wget -q https://www.virtualbox.org/download/oracle_vbox_2016.asc -O- | sudo apt-key add -
$ wget -q https://www.virtualbox.org/download/oracle_vbox.asc -O- | sudo apt-key add -

$ sudo apt update
$ sudo apt install virtualbox-6.1

```

```bash
$ sudo add-apt-repository \
      "deb [arch=amd64] https://download.virtualbox.org/virtualbox/debian \
      $(lsb_release -cs) \
      contrib"
```

* Disabled systemd services:

```bash
$ sudo systemctl disable

- bluetooth.service

- libvirt-guests.service
- libvirtd.service

- vboxautostart-service.service
- vboxdrv.service
- vboxballoonctrl-service.service
- vboxweb-service.service
```
