#!/bash/bin

#Monitoring free disk space and send email alerts
FU=$(df -H | egrep -v "Filesystem|tmpfs" | grep "sda1" | awk '{print $5}' | tr -d %)
TO="samikshagariya09@gmail.com"


if [[ $FU -ge 10 ]]
then
	echo "Warning, disk space is low - $FU %" | mail -s "Disk Space Alert!" $TO
else
	echo "All good" | mail -s "testing"
fi

