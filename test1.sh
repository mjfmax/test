#!/bin/bash
cd /usr/local/bin/
echo "Scripts" | mailx -s "Scripts" -a scripts.tar.gz markfergusson@gmail.com
exit 0
ls -l scripts.tar.gz > /tmp/rep.txt
mail -s "`hostname` tar file rep" markfergusson@gmail.com < /tmp/rep.txt
exit 0
tar czvf scripts.tar.gz scripts
mail -s "Scripts Package" -t markfergusson@gmail.com -A scripts.tar.gz < /dev/null
exit 0
uuencode scripts.tar.gz scripts.tar.gz | mail -s "`hostname` Scripts package" markfergusson@gmail.com
sleep 2
rm scripts.tar.gz
exit 0
mail -s "`hostname` Initiated CSB batch" markfergusson@gmail.com
cd /home/mark/csb
nohup ./doit.sh &
exit 0
# dd if=/dev/zero of=zero7.txt count=5000000
