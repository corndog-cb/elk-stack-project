#!/bin/bash

freemem=~/backups/freemem
diskuse=~/backups/diskuse
openlist=~/backups/openlist
freedisk=~/backups/freedisk

for d in {freemem,diskuse,openlist,freedisk}; do
	if [ ! -d "~/backups/$d" ]; then
		mkdir -p ~/backups/$d
	fi
done

#Print the free memory and save it to a text file
touch $freemem/free_mem.txt
free -mh > $freemem/free_mem.txt
cat $freemem/free_mem.txt

#Print disk usage and save it to a text file
touch $diskuse/disk_usage.txt
du -hc ~ > $diskuse/disk_usage.txt
#cat $diskuse/disk_usage.txt

#List all open files and save it to a text file
touch $openlist/openlist.txt
lsof > $openlist/openlist.txt

#Print file system disk space and save it to a text file
touch $freedisk/freedisk.txt
df -h > $freedisk/freedisk.txt
cat $freedisk/freedisk.txt


