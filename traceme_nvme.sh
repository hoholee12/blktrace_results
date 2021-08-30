#!/bin/bash

rm -rf $(ls --ignore=*.sh)
if [[ $1 == "clean" ]]; then
	exit
fi
sudo blktrace -d /dev/nvme0n1 -o trace


