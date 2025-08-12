# Configuration

* Installed **virtualbox** from official repository
```bash
$ echo "deb [arch=amd64 signed-by=/usr/share/keyrings/oracle-virtualbox-2016.gpg] https://download.virtualbox.org/virtualbox/debian $(lsb_release -cs) contrib" | sudo tee /etc/apt/sources.list.d/virtualbox.list

$ wget -q https://www.virtualbox.org/download/oracle_vbox_2016.asc -O- | sudo apt-key add -
$ wget -q https://www.virtualbox.org/download/oracle_vbox.asc -O- | sudo apt-key add -

$ wget -O- https://www.virtualbox.org/download/oracle_vbox_2016.asc | sudo gpg --dearmor --yes --output /usr/share/keyrings/oracle-virtualbox-2016.gpg

$ sudo apt update
$ sudo apt install virtualbox-6.1

$ sudo adduser ${USER} vboxusers

```

```bash
$ sudo add-apt-repository \
      "deb [arch=amd64 signed-by=/usr/share/keyrings/oracle-virtualbox-2016.gpg] https://download.virtualbox.org/virtualbox/debian \
      $(lsb_release -cs) \
      contrib"
```

```bash
$ VBoxManage setextradata "<VM_NAME>" "VBoxInternal/Devices/nvme/0/Config/MsiXSupported" 0
$ VBoxManage setextradata "<VM_NAME>" "VBoxInternal/Devices/nvme/0/Config/CtrlMemBufSize" 0
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

* Installed KVM
```bash
$ sudo apt install qemu-system libvirt-daemon-system virt-manager

$ sudo adduser ${USER} libvirt
```
