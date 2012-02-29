#! /bin/bash

FILE1="subscribers.txt"
FILE2="yahoo_record.txt"
FILE3="Chennai_record.txt"

sed -n 's/ Chennai/&/p' $FILE1 > $FILE3
sed -n 's/@yahoo.com/&/p' $FILE1 > $FILE2

#if [ -e $FILE2 ]; then
#	echo
#else 
#	touch $FILE2
#fi
#if [ -e $FILE3 ]; then
#	echo
#else 
#	touch $FILE3
#fi 

#while read line    
#do    
#	echo $line | grep $CHENNAI >> $FILE3
#	echo $line | grep $YAHOO >> $FILE2
#done <$FILE1

