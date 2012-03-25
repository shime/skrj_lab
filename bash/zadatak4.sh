#!/bin/bash

if [ $# != 2 ]
then
echo "Pogrešan broj argumenata."
echo "UPOTREBA: zadatak4.sh izvorno_kazalo kazalo"
exit 1
fi
if [ -d $2 ]
then
    echo "Direktorij $2 već postoji";
else
    mkdir $2
fi
cd $1
for slika in `ls *.jpg`
do
direktorij=`date -r $slika +%Y`-`date -r $slika +%m`
if [ ! -d ../$2/$direktorij ]
then
mkdir ../$2/$direktorij
fi
mv $slika ../$2/$direktorij
done


