#!/bin/bash


# Simple script to keep eye on any given ASN whenever it is executed. This can help in versioning of table via git. 


cat rrc01.txt |grep -w "$1" |awk -F '|' '{OFS=","} {print $6,$7}' > $1.txt

git add $1.txt
git commit -m "Updated $1 routes" 
git push origin master
