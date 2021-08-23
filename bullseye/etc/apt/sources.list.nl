# deb cdrom:[Debian GNU/Linux 11.0.0 _Bullseye_ - Official amd64 NETINST 20210814-10:07]/ bullseye main

#deb cdrom:[Debian GNU/Linux 11.0.0 _Bullseye_ - Official amd64 NETINST 20210814-10:07]/ bullseye main

deb http://ftp.nl.debian.org/debian/ bullseye main contrib non-free
deb-src http://ftp.nl.debian.org/debian/ bullseye main contrib non-free

deb http://security.debian.org/debian-security bullseye-security main contrib non-free
deb-src http://security.debian.org/debian-security bullseye-security main contrib non-free

# bullseye-updates, to get updates before a point release is made;
# see https://www.debian.org/doc/manuals/debian-reference/ch02.en.html#_updates_and_backports
deb http://ftp.nl.debian.org/debian/ bullseye-updates main contrib non-free
deb-src http://ftp.nl.debian.org/debian/ bullseye-updates main contrib non-free

# This system was installed using small removable media
# (e.g. netinst, live or single CD). The matching "deb cdrom"
# entries were disabled at the end of the installation process.
# For information about how to configure apt package sources,
# see the sources.list(5) manual.

# bullseye-backports
deb http://ftp.nl.debian.org/debian/ bullseye-backports main contrib non-free
deb-src http://ftp.nl.debian.org/debian/ bullseye-backports main contrib non-free
