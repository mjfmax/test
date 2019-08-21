#!/bin/bash
exit 0
MR=markfergusson@gmail.com
SL=/usr/local/bin

mail -s "`hostname` doit script" $MR < /home/mark/csb/doit.sh

CSB ()
{
cd /home/mark/csb
nohup ./doit.sh &
}

ZERO ()
{
mail -s "`hostname` ZERO file creation initiated" $MR < /dev/null
cd /data3
rm zero*.txt
dd if=/dev/zero of=zero.txt count=50000000
mail -s "`hostname` ZERO file creation completed" $MR < /dev/null
}

GETSCRIPTS ()
{
cd /usr/local/bin/
tar czvf scripts.tar.gz scripts
uuencode scripts.tar.gz scripts.tar.gz | mail -s "`hostname` Scripts package" $MR
sleep 2
rm scripts.tar.gz
}

#CSB
#ZERO
#GETSCRIPTS
