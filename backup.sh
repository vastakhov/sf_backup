#!/bin/bash

#Set directory for backup
bck_dir="/home/user/test_backup/"

#Mount YaDisk
mkdir /mnt/yadsk
mount -t davfs https://webdav.yandex.ru /mnt/yadsk

#Create archive
cd $bck_dir
tar -cvzf /mnt/yadsk/backup_$(date +%Y-%m-%d-%H-%M).tgz ./

#Unmount
umount -f /mnt/yadsk
