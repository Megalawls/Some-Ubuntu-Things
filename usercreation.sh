#!/bin/bash
sudo su -c "useradd $1 -s /bin/bash -m"
echo $1
echo $2
sudo su -c "chpasswd << 'END'
$1:$2
END"

cut -d: -f1 /etc/passwd
sudo userdel testuser -r

