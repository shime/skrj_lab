#!/bin/bash
proba="Ovo je proba"
echo $proba
lista_datoteka=`ls *`
proba3="$proba. $proba. $proba. "
a=4
b=3
c=7
d=$(($a+4*$b%$c))
broj_rijeci=$(ls *.txt | wc -w)
echo $(ls ~)
less /etc/passwd | cut -d\: -f1,6,7
ps -el | sed -r 's/[ ]+/ /g' | cut -d " " -f3,4,14

