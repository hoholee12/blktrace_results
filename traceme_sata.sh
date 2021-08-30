#!/bin/bash

timer=60
if [[ $1 != "" ]]; then
	timer=$1
fi

rm -rf $(ls --ignore=*.sh)
if [[ $1 == "clean" ]]; then
	exit
fi
sudo blktrace -w $timer-d /dev/sdb -o trace


