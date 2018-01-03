### Uninstall:
### Removendo RPMs:
rpm -e mongodb-org-3.6.1-1.el7.x86_64
rpm -e mongodb-org-shell-3.6.1-1.el7.x86_64
rpm -e mongodb-org-server-3.6.1-1.el7.x86_64
rpm -e mongodb-org-mongos-3.6.1-1.el7.x86_64
rpm -e mongodb-org-tools-3.6.1-1.el7.x86_64

### Removendo usuários:
userdel mon
uderdel mongo
groupdel mon
groupdel mongo

### Removendo diretorios:
rm -rf /opt/mongodb
rm -rf /u00/*

### Desmonstando partição /u00
cd ~
umount /u00

### Deletando LV/VG
lvremove db0-u00
vgremove db0
pvremove /dev/sdb1

### Deletando partição
/bin/echo -e "d\nw" | fdisk /dev/sdb

