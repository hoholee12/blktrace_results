#!/bin/bash

name="trace"
rm -rf $(ls --ignore=*.sh)
if [[ $1 == "clean" ]]; then
	exit
elif [[ $1 == "" ]]; then
	:
else
	name=$1
fi
sudo blktrace -d /dev/nvme0n1 -o $name


