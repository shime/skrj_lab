#!/bin/bash
if [ $# != 2 ]
then
    echo "Pogresan broj argumenata"
    exit 1
fi
for dat in `ls $1`
do
if [ ! -r $1/$dat ]
then
    echo "Zabranjeno je citanje na datoteci $1/$dat ."
    continue
fi
if [ $(find $2 -name "$dat") ]
then
if [ ! -r $(find $2 -name "$dat") ]
then
    echo "Zabranjeno je citanje na datoteci $2/$dat ."
    continue
fi
if [ $(stat `find $2 -name "$dat"` -c %Y) -gt $(stat $1/$dat -c %Y) ]
then
echo "$2/$dat  ->  $1" #echo "Nadena novija datoteka $dat u folderu $2"
cp $2/$dat $1/
else
echo "$1/$dat  ->  $2" #echo "Nadena novija datoteka $dat u folderu $1"
cp $1/$dat $2/
fi
fi
done

