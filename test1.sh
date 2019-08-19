#!/bin/bash
mail -s "`hostname` Initiated CSB batch" markfergusson@gmail.com
exec /home/mark/csb/doit.sh
exit 0
