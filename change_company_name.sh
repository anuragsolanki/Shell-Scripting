#! /bin/bash

FILEPATH=./company_name_change.txt

cat $FILEPATH | sed -e "s_www\._http\://&_" > $FILEPATH