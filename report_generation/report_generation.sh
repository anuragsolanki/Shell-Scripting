#! /bin/bash

cd .

length=10
num=4
charset=abcdefghijklmnopqrstuvwxyz0123456789
charset2=123456789

function rand_char
{
  if [ $1 -eq 1 ]; then
	RAND_CHAR=${charset:$RANDOM % ${#charset}:1}
  else
	RAND_CHAR=${charset2:$RANDOM % ${#charset2}:1}
  fi

}
function rand_word
{
  RANDOM_STRING=''
  while [ ${#RANDOM_STRING} -lt $length ]
  do
    rand_char $1
    RANDOM_STRING=$RANDOM_STRING$RAND_CHAR
  done
}

FILE1="subscribers.txt"

EMAIL1="yahoo.com"
EMAIL2="gmail.com"
EMAIL3="hotmail.com"
EMAIL4="rediffmail.com"
EMAIL_ARRAY=( $EMAIL1 $EMAIL2 $EMAIL3 $EMAIL4 )

CITY1="Delhi"
CITY2="Mumbai"
CITY3="Chennai"
CITY4="Kolkatta"
CITY_ARRAY=( $CITY1 $CITY2 $CITY3 $CITY4 )

if [ -e $FILE1 ]; then
	echo
else 
	touch $FILE1
fi 

for a in `seq 1 100`; do
	RANDOM1=$[ RANDOM%4 ]
	RANDOM2=$[ RANDOM%4 ]
	RANDOM_CITY=${CITY_ARRAY[$RANDOM1]}
	rand_word 1
	RANDOM_EMAIL=$RANDOM_STRING@${EMAIL_ARRAY[$RANDOM2]}
	rand_word 0
	RANDOM_PHONE=$RANDOM_STRING
	echo "$RANDOM_EMAIL $RANDOM_CITY $RANDOM_PHONE" >> $FILE1
done
