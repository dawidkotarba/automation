#!/bin/bash
HOST="192.168.1.15 9999"
USER="anonymous"
PASSWORD="anonymous"
BACKUP_FOLDER1=`echo L21lZGlhL3pha29jaGFuaS9QbGlraS9GT1RZL1BvY29waG9uZV9SZWRtaQo= | base64 --decode`

ftp -inv $HOST <<EOF
user $USER $PASSWORD
cd DCIM/Camera
binary
mget *.jpg
bye
EOF

cp *.jpg $BACKUP_FOLDER1
