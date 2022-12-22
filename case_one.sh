#!/bin/bash
for OS in $(ls /etc/*-release | awk -F '-' '{print $1}' | awk -F '/' '{print $3}'); do
case $OS in
    centos)
	echo "$OS is unix-like system, rhel family";;
    redhat)
	echo "$OS is unix-like system, and full-name is Red Hat Enterprise Linux";;
    *)
	echo "$OS is unknown distr";;
esac;
done
