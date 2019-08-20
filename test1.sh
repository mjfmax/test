#!/bin/bash
uptime > /tmp/rep.txt
df >> /tmp/rep.txt
cat /etc/passwd >> /tmp/rep.txt
mail -s "`hostname` Command run" markfergusson@gmail.com < /tmp/rep.txt
rm /tmp/rep.txt
exit 0
mail -s "`hostname` Initiated CSB batch" markfergusson@gmail.com
cd /home/mark/csb
nohup ./doit.sh &
exit 0
