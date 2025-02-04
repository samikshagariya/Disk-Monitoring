Disk Space Monitoring Script
Overview
This Bash script monitors free disk space and logs usage. If disk usage exceeds a specified threshold, it sends an email alert to a specified recipient.

Features
Monitors disk usage of /dev/sda1.
Logs disk usage details to a log file ($HOME/disk_monitor.log).
Sends an email alert if disk usage exceeds a set threshold.
Checks if the mail command is installed.
Prerequisites
Ensure that the mail command is installed. You can install it using:

bash
Copy
Edit
sudo apt install mailutils  # Debian/Ubuntu  
sudo yum install mailx      # CentOS/RHEL  
Usage
Copy the script to a file, e.g., disk_monitor.sh.
Make the script executable:
bash
Copy
Edit
chmod +x disk_monitor.sh  
Run the script manually:
bash
Copy
Edit
./disk_monitor.sh  
(Optional) Add it to a cron job for automated monitoring:
bash
Copy
Edit
crontab -e  
Add the following line to check every hour:
bash
Copy
Edit
0 * * * * /path/to/disk_monitor.sh  
Configuration
Modify THRESHOLD to change the disk usage alert level.
Set TO to the recipient's email address.
Ensure /dev/sda1 is the correct partition. You can check your partitions using:
bash
Copy
Edit
df -h  
Logging
Logs disk usage with timestamps to $HOME/disk_monitor.log.
Example Log Entry
yaml
Copy
Edit
Mon Feb 5 10:00:00 UTC 2025: Disk Usage - 75%  
