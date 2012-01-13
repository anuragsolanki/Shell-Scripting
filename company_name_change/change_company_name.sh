#! /bin/bash

FILEPATH=./company_name_change.txt

cat $FILEPATH | sed -e "s_\(www\.[a-zA-Z0-9@:%_\+.~#?&//=]\)_http\://&_"

#cat $FILEPATH | sed -e "s_www\._http\://&_" > $FILEPATH