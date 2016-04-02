#!/bin/sh
while true 
do
    date=$(date +"%m_%d_%Y")
    dirname='dump'.date
    # dump= mongodump --port 4001 --db safir --collection colname
    if [ -d "dirname" ]
    then
    	echo "folder is already work!!!"
    else
     	mkdir "$date"
     	cd $date
	export LC_ALL=C
     	wait
	mongodump
     	cd ..
	git add --all
	wait
	git commit -m "udpate db"
	wait
	sudo git push --repo https://lengsophy:sophyleng1267437611@github.com/lengsophy/backup_safir_live_iran.git

    fi
    sleep 1d

done
