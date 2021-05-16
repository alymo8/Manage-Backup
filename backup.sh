
#!/bin/bash

Y=$(date +%Y%m%d)
X=$(basename "$2")

if [[ -f "$1/$X.$Y" ]]
then

        echo "Backup file already exists for $Y"
	exit 1
fi


if [[ $# -eq 2 ]]
then
        if [[ -f $2 ]]
        then
                if [[ -d $1 ]]
                then
                        cp "$2" "$1/$X.$Y"
                        exit 0
                else echo "Error!! $1 is not a valid directory"
                        exit 1
                fi
        else echo "Error!! $2 is not a valid file"
                exit 1
        fi

else
        echo " Usage: ./backup.sh backupdirname filetobackup"
        exit 1
fi
