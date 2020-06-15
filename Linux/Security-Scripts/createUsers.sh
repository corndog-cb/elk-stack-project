#!/bin/bash

#Have to run this script as superuser

for i in "$@"

do
	adduser $i
	chage -d 0 $i
	chage -M 90 $i
done
