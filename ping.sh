#!/bin/bash
#################################################################
#																																#
#																																#
#																																#
#Author: 	 Yan Brasiliano Silva Penalva <yanpenabr@gmail.com>		#
#Maintainer: Yan Brasiliano Silva Penalva <yanpenabr@gmail.com>	#
#Date: 22/5/2021																								#
#																																#
#Description:																										#
#																																#
#Exemple Use: ./ping																						#
#																																#
#Modifications:																									#
#	Day 22/5 - Create script and introduction functions. 					#
#																																#
#																																#
#################################################################
clear
echo " ____  _               ____ "
echo "|  _ \(_)_ __   __ _  / ___|  ___ __ _ _ __ "
echo "| |_) | | \`_ \ / _\` | \___ \ / __/ _\` | '_ \ "
echo "|  __/| | | | | (_| |  ___) | (_| (_| | | | |"
echo "|_|   |_|_| |_|\__, | |____/ \___\__,_|_| |_|"
echo "               |___/"
echo "Example use: In the tab below, enter the first 3 octets."
echo "The scan will run from network 1 to network 254."
echo
echo -n "Enther the subnet:  "
read SUBNET

for IP in $(seq 1 254); do
	ping -c 1 -w 1 $SUBNET.$IP | grep "64 bytes" | cut -d " " -f 4 | tr -d ":" &
done