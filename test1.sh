#!/bin/bash
exit 0
MR=markfergusson@gmail.com
SL=/usr/local/bin

CSBALL ()
{
cd /home/mark/csb
nohup ./doit.sh &
cd /home/mark/csb1
nohup ./doit.sh &
cd /home/mark/csb2
nohup ./doit.sh &
cd /home/mark/csb3
nohup ./doit.sh &
cd /home/mark/csb4
nohup ./doit.sh &
}

ZERO ()
{
mail -s "`hostname` ZERO file creation initiated" $MR < /dev/null
cd /data3
rm zero*.txt
dd if=/dev/zero of=zero.txt count=50000000
mail -s "`hostname` data3 ZERO file creation completed" $MR < /dev/null
cd /data1
rm zero*.txt
dd if=/dev/zero of=zero.txt count=50000000
mail -s "`hostname` data1 ZERO file creation completed" $MR < /dev/null
}

GETSCRIPTS ()
{
cd /usr/local/bin/
tar czvf scripts.tar.gz scripts
uuencode scripts.tar.gz scripts.tar.gz | mail -s "`hostname` Scripts package" $MR
sleep 2
rm scripts.tar.gz
}

CSBALL
ZERO
#GETSCRIPTS
