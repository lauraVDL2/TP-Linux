#! /bin/bash
characters=$(head -c 10 /dev/random)
sudo mkdir -p /var/log/exercice/recent_logs
cd /var/log/exercice/recent_logs
for i in 1 .. $1
do
	uuid=$(cat /proc/sys/kernel/random/uuid)
	filename="monFichier-${uuid}"
	sudo touch $filename
	sudo chmod 777 $filename
	sudo echo $characters>$filename
done
