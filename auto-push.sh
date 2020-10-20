# Git: add and commit changes
cd ~/covid19-routes-survey && /usr/bin/git add --all && /usr/bin/git commit -m "daily crontab backup `date`"

# send data to Git server
cd ~/covid19-routes-survey && /usr/bin/git push origin master