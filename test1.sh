#!/bin/bash
#exit 0
MR=markfergusson@gmail.com
SL=/usr/local/bin

RMDOT ()
{
cd /usr/local/bin/scripts
nohup ./rmdot.sh &
}

CSB ()
{
cd /home/mark/csb
nohup ./doit.sh &
}

CSB1 ()
{
cd /home/mark/csb1
nohup ./doit.sh &
}

CSB2 ()
{
cd /home/mark/csb2
nohup ./doit.sh &
}

CSB3 ()
{
cd /home/mark/csb3
nohup ./doit.sh &
}

CSB4 ()
{
cd /home/mark/csb4
nohup ./doit.sh &
}

ZERO1 ()
{
mail -s "`hostname` ZERO1 file creation initiated" $MR < /dev/null
cd /data1
rm zero*.txt
dd if=/dev/zero of=zero1.txt count=9600000
hd5sum zero1.txt
mail -s "`hostname` data3 ZERO file creation completed" $MR < /dev/null
}

ZERO3 ()
{
mail -s "`hostname` ZERO3 file creation initiated" $MR < /dev/null
cd /data3
rm zero*.txt
dd if=/dev/zero of=zero3.txt count=7100000
hd5sum zero1.txt
mail -s "`hostname` data3 ZERO file creation completed" $MR < /dev/null
}

GETSCRIPTS ()
{
cd /usr/local/bin/
tar czvf scripts.tar.gz scripts
uuencode scripts.tar.gz scripts.tar.gz | mail -s "`hostname` Scripts package" $MR
sleep 2
rm scripts.tar.gz
}

HEALTH ()
{
/usr/local/bin/scripts/health.sh > /dev/null 2>&1
}

RMDOT
#CSB
#CSB1
#CSB2
#CSB3
#CSB4
#ZERO1
#ZERO3
HEALTH
#GETSCRIPTS
