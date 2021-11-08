#!/bin/bash

mypath=/home/jeongho/mntbackup2
if [[ $1 != ""  ]]; then
	mypath=$1
fi


for name in $(ls $mypath | grep blktrace | grep \\.0); do
	myname=$(echo $name | sed 's/\.blktrace\.0//g')
	echo "$mypath"/"$myname"
	seekwatcher -t "$mypath"/"$myname".* --dpi=700
	mv trace.png "$myname".png
done

#seekwatcher -t "$name".blktrace.* --dpi=700 --zoom=0:$(($(df -B1 | grep mnt | awk '{print $2}')/1000000))
#seekwatcher -t trace.blktrace.* -O io --dpi=700
