#!/bin/bash
# var
hd="123";
c="comment";

# std
mkdir -p /home/postgres/cruser/{env,done}/{usr,host}/${hd};

# main

for H in $(cat /home/postgres/cruser/script/env/host.txt); do
   if [ $(ssh -T $H "hostname" >/dev/null 2>/dev/null; echo $?) -lt 1 ];
        then
           if [ $(ssh -T $H 'psql -d postgres -c "\! hostname"' >/dev/null 2>/dev/null; echo $?) -lt 1 ];
	        then
	           scp -r /home/postgres/cruser/env		

