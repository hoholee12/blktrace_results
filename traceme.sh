#!/bin/bash

rm -rf $(ls | grep -v traceme.sh | grep -v printme.sh)
if [[ $1 == "clean" ]]; then
	exit
fi
sudo blktrace -d /dev/nvme0n1 -o trace


