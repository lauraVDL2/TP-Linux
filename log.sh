#! /bin/bash
characters=$(head -c 10 /dev/random)
mkdir -p /var/log/exercice/recent_logs
cd /var/log/exercice/recent_logs
for i in 1 .. $1
do
	uuid=$(cat /proc/sys/kernel/random/uuid)
	filename="monFichier-${uuid}"
	touch $filename
	echo $characters>$filename
done
