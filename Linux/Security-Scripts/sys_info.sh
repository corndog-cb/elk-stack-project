#!/bin/bash

echo "System Script: $(date)"

echo $USER

echo "$(ifconfig | grep -A 1 inet | head -1)"

echo $HOSTNAME

echo "$(systemd-resolve --status)"

echo "$(free -mh)"

echo "$(lscpu | grep CPU)"

echo "$(df -H | head -2)"

echo "$(who)"
