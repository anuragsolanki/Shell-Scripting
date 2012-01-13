#! /bin/bash
SOURCE=./project/abc/1.0/code/
DESTINATION=~/Shell-Scripting/version_change/project/abc/2.0/code/

cd $SOURCE
for filename in *
do
	mkdir -p $DESTINATION
	cat $filename | sed -e "1 s/version\:1\.0/version\:2\.0/" > "$DESTINATION$filename"
done