#!/bin/bash
declare -i sum=0
file=$1

read -p "Hva er hendelsen? " hendelse
while read -r name value
do
    if [ "$name" = "$hendelse" ];then sum+=$value; fi
done < "$file"

echo $sum