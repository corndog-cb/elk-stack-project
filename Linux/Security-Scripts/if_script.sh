#!/bin/bash

output="$HOME/Research/sys_info.txt"

ipaddress="$(ip addr | grep inet | tail -2 | head -1)"

findsuid="$(find / -type f -perm /4000)"


#Check if script was running as sudo

if [ $USER='root' ]
then
	echo "Dont run with sudo."
	exit
fi

#Does the research directory exist?
if [ !-d $HOME/Research ] 
then
	mkdir $HOME/Research
fi

#Does the file exist?
if [ -f $output ]
then 
	rm $output
fi




