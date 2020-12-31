#!/bin/bash
# Get process name for each port specified

ports='32400 80 443 8186 1197 8686 2368 8123 8080 8181 445 137 138 139 5901 8280 8888 4000'

for port in $ports
do
	echo  Port: $port
	ntproc=`netstat -tulpn | grep $port`
	echo $ntproc
done

echo All done
