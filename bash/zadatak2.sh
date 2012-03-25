#!/bin/bash

grep -E "(banana|jabuka|jagoda|dinja|lubenica)" namirnice.txt
grep -E -v "(banana|jabuka|jagoda|dinja|lubenica)" namirnice.txt > ne-voce.txt
grep -E -r "[[:upper:]]{3}[[:digit:]]{6}" ~/projekti/* -n
find -mtime +7 -mtime -14 -ls
for i in `seq 1 15`; do echo $i; done
a=0
for file in `find . -maxdepth 1 -type f | cut -c 3-`
do 
a=$(($a+1))
echo "$a: $file ... `wc -l $file | cut -d ' ' -f1` redaka"
echo "---------------------------"
head -n 3 $file
echo
done

