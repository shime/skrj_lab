#!/bin/bash
if [ $# != 2 ]
then
    echo "krivi broj argumenata"
    echo "UPOTREBA: zadatak5.sh prva_datoteka druga_datoteka"
    exit 1
fi
while read Redak
do
mbr=$(echo $Redak| cut -d " " -f1)
podaci=$(grep $mbr $1) || : echo "--"
if [ "$podaci" != "--" -a -n "$podaci" ]
then
ime=$(echo $podaci | cut -d ";" -f2 | cut -d "," -f2)
prezime=$(echo $podaci | cut -d ";" -f2 | cut -d "," -f1 | cut -c 2-)
grupa=$(echo $podaci | cut -d ";" -f4 | cut -c2- )
bodovi=$(echo $podaci | cut -d ";" -f3)
ubac=$(echo "$prezime $ime ($grupa)    $bodovi  ")
else
    ubac=$(echo "--")
fi
echo $Redak | sed -r "s/[0-9]{10}/&   $ubac   /"
done < $2

