#!/bin/bash
mail -s "`hostname` Good Morning World" markfergusson@gmail.com
sleep 5
mail -s "`hostname` Initiated CSB batch" markfergusson@gmail.com
cd /home/mark/csb
nohup ./doit.sh &
exit 0
