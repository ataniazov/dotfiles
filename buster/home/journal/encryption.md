# Encryption

## Volume encryption

cryptsetup -v --type luks2 --cipher aes-xts-plain64 --key-size 256 --hash sha256 --iter-time 2000 --use-random --verify-passphrase luksFormat <device>

cryptsetup luksDump <device>

cryptsetup luksFormat <device> /path/to/<keyfile>

cryptsetup open <device> <volume_name>

cryptsetup open <device> <volume_name> --key-file /path/to/<keyfile>

mkfs -t ext4 /dev/mapper/<volume_name>

cryptsetup close <volume_name>

## Container encryption

mkdir temp_storage
mount -t tmpfs -o size=100M tmpfs temp_storage/

df -Th temp_storage/

cd temp_storage/
dd if=/dev/zero of=enrypted_container bs=1M count=50

cryptsetup luksFormat -h whirlpool -i 5555 enrypted_container

cryptsetup open enrypted_container my_stuff
ls -lA /dev/mapper/

mkfs.ext4 -L "My Container" /dev/mapper/my_stuff
mount /dev/mapper/my_stuff /mnt/

df -Th /mnt/

umount /mnt
cryptsetup close /dev/mapper/my_stuff

cryptsetup luksHeaderBackup --header-backup-file my_container_luks_header.bin enrypted_container

file my_container_luks_header.bin

gpg -a -c --cipher-algo AES256 my_container_luks_header.bin

rm -f my_diary_luks_header.bin

file my_diary_luks_header.bin.asc

## Key management

cryptsetup luksAddKey /dev/<device> (/path/to/<additionalkeyfile>)

cryptsetup luksAddKey /dev/<device> (/path/to/<additionalkeyfile>) -d /path/to/<keyfile>

cryptsetup luksChangeKey /dev/<device> -S <slot_num>

cryptsetup luksRemoveKey /dev/<device>

cryptsetup luksRemoveKey /dev/<device> -S <slot_num>

cryptsetup luksKillSlot /dev/<device> <slot_num>

## Creating a keyfile with random characters

dd bs=512 count=4 if=/dev/random of=/path/to/<keyfile> iflag=fullblock

chmod 600 /path/to/<keyfile>

shred --remove --zero /path/to/<keyfile>

## Benchmark

cryptsetup benchmark

## LUKS volume detection
hexdump -C -n 100 /dev/sdxX
grep -rnw /dev/sdxX -e "LUKS"


cryptsetup

aes-xts-plain64
key-size=256
--type=luks2

PBKDF2-sha256
aes-xts 256b
