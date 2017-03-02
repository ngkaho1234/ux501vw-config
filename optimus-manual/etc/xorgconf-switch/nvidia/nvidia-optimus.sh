#!/bin/bash
xrandr --setprovideroutputsource modesetting NVIDIA-0
xrandr --auto

logfile=$(mktemp -p /tmp nvidia-optimus.log.XXXXXXXXXX)
ppid=$(ps -q $$ -ho ppid:1)
if [[ -e ${logfile} ]]; then
	echo "Enabled by comm: $(ps -q ${ppid} -ho comm:1) pid: ${ppid}" >> ${logfile}
fi
