#! /bin/bash

FILE1="subscribers.txt"
FILE2="yahoo_record.txt"
FILE3="Chennai_record.txt"
CHENNAI=" Chennai"
YAHOO="@yahoo.com"

if [ -e $FILE2 ]; then
	echo
else 
	touch $FILE2
fi
if [ -e $FILE3 ]; then
	echo
else 
	touch $FILE3
fi 

while read line    
do    
	echo $line | grep $CHENNAI >> $FILE3
	echo $line | grep $YAHOO >> $FILE2
done <$FILE1
