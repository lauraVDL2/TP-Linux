#! /bin/bash
size=$(df -i / | cut -d " " -f 12 | tail -n 1 | tr -d '%')
if ((100 - $size < $1))
then
	uuid=$(cat /proc/sys/kernel/random/uuid)
	tar -cvf "mon_archive-${uuid}.tar.gz" /var/log/exercice/recent_logs
	sudo rm -f /var/log/exercice/recent_logs/*
	sudo mv "mon_archive-${uuid}.tar.gz" /var/log/exercice/archives
	wall "HODOOOR"
fi
