#!/bin/bash
HOST="192.168.1.15 9999"
USER="anonymous"
PASSWORD="anonymous"

ftp -inv $HOST <<EOF
user $USER $PASSWORD
cd DCIM/Camera
binary
mget *.jpg
bye
EOF
