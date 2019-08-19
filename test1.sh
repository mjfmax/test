#!/bin/bash
exit 0
df -h > /tmp/rep.txt
echo "" >> /tmp/rep.txt
uname -a >> /tmp/rep.txt
mail -s "`hostname` Quick Report" markfergusson@gmail.com < /tmp/rep.txt
sleep 2
rm /tmp/rep.txt
exit 0
