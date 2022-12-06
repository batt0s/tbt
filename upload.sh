#!/bin/sh
set currentDate $(date +"%d/%m/%Y")
echo "$1. [Ders $1] - $currentDate](ders$1.md) " >> README.md
git add . 
git commit -m "Ders $1" 
git push origin master
