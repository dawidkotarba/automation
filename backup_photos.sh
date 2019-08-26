#!/bin/bash
HOST="192.168.1.15 9999"
USER="anonymous"
PASSWORD="anonymous"
BACKUP_FOLDER1=`echo L21lZGlhL3pha29jaGFuaS9QbGlraS9GT1RZL1BvY29waG9uZV9SZWRtaQo= | base64 --decode`
BACKUP_FOLDER2=`echo L21udC9wdWJsaWMvWmRqxJljaWEvUG9jb3Bob25lX1JlZG1pCg== | base64 --decode`

sudo mount -t cifs //192.168.1.2/public /mnt/public -o username=nobody,password=,iocharset=utf8,rw,file_mode=0777,dir_mode=0777

ftp -inv $HOST <<EOF
user $USER $PASSWORD
cd DCIM/Camera
binary
mget *.jpg
bye
EOF

cp *.jpg $BACKUP_FOLDER1
cp *.jpg $BACKUP_FOLDER2
rm *.jpg
