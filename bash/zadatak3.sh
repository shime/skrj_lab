#!/bin/bash
for datoteka in `ls|grep log`
do 
datum=`echo $datoteka | cut -d . -f2`
dan=$(echo $datum | cut -d - -f3)
mjesec=$(echo $datum | cut -d - -f2)
godina=$(echo $datum | cut -d - -f1)
echo 
echo  datum: $dan-$mjesec-$godina
echo ------------------------------
echo "$(cat $datoteka | cut -d \" -f2)" | sort | uniq -c | sort -g -r | sed 's/[0-9][0-9]*/& :/'
done
