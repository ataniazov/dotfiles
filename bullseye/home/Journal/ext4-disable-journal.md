# ext4 disable journal

## Create ext4 fs on /dev/sda1 disk
```
mkfs.ext4 -O ^has_journal /dev/sda1
mkfs.ext4 /dev/sda1
```

## Enable writeback mode. This mode will typically provide the best ext4 performance.
```
tune4fs -o journal_data_writeback /dev/sda1
```

## Delete has_journal option
```
tune4fs -O ^has_journal /dev/sda1
```

## Required fsck
```
e4fsck -f /dev/sda1
```

## Check fs options
```
dumpe4fs /dev/sda1 | more
```

## For more performance add fstab opions: data=writeback,noatime,nodiratime i.e:
```
/dev/sda1 /opt ext4 defaults,data=writeback,noatime,nodiratime 0 0
```
