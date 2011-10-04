##  Disable user's password
passwd -l username
##  Find The User's Files
find / -user username
##  Change The Login Shell
username:x:1023:1023::/home/username:/bin/bash to /bin/null
##  Remove SSH Keys
rm -r /home/username/.ssh/*
rm -r /home/username/.ssh2/*
rm -r /home/username/.shosts
rm -r /home/username/.rhosts
##  Kill The User's Processes
ps aux | grep -i ^username
kill ProcessIDentifyer
##  Remove User's Cron Jobs
crontab -u username -l  ## and then delete them
crontab -u username -r
##   Remove User From sudoers
remove the user from /etc/sudoers
