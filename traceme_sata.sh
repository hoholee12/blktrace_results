#!/bin/bash

rm -rf $(ls --ignore=*.sh)
if [[ $1 == "clean" ]]; then
	exit
fi
sudo blktrace -d /dev/sdb -o trace


