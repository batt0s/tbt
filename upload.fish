#!/bin/fish
set currentDate $(date +"%d/%m/%Y")
echo "$argv[1]. [Ders $argv[1] - $currentDate](https://github.com/batt0s/tbt/blob/master/ders$argv[1]/Ders$argv[1].md) " >> README.md
git add . 
git commit -m "Ders $argv" 
git push origin master
