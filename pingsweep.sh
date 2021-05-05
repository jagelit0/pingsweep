#!/bin/bash

#Colors
y='\e[1;33m'
r='\e[1;31m'
g='\e[1;32m'
nc='\e[0m'

#Ping Sweep
if [ -z "$1" ]; then
	echo -e "$r" "[!] Usage: ./pingsweep.sh <IP-RANGE>" "$nc"
else
	for host in $(fping -a -g "$1" 2>/dev/null); do
	echo -e "$g""[+]""$y" "$host" "->""$nc""$g" "is alive." "$nc"	| tee -a -i host_list.log
	done
fi
