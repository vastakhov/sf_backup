#!/bin/bash

#Mount YaDisk
mkdir /mnt/yadsk
mount -t davfs https://webdav.yandex.ru /mnt/yadsk

#Create archive
cd $1
tar -cvzf /mnt/yadsk/backup_$(date +%Y-%m-%d-%H-%M).tgz ./

#Unmount
umount -f /mnt/yadsk
rm -rf /mnt/yadsk
