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


echo -n "Enther the subnet:  "
read SUBNET

for IP in $(seq 1 254); do
	ping -c 1 $SUBNET.$IP
done