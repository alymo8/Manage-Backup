# #! /bin/bash








Y=$(date +%Y%m%d)

if [[ $# -eq 2 ]]
then
if [[ -d $1 ]]
then
	if [[ -d $2 ]]
	then
	k=0
		for i in $2/*
	       	do
			if [[ -f "$i" ]]
			then
			X=$(basename "$i")

			if [[ !  -f "$1/$X.$Y" ]]
		       	then
				((k=k+1))
				echo "$X does not have a backup for today"
			fi
		else
			echo "Error!! $2 has no files"
			exit 1
		fi
		done
		if [[ k -eq 0 ]]
		then
			echo "All files in $2 have backups for today in $1"
		fi
	else
		
		echo " Error!! $2 is not a valid directory"
		exit 1
	fi
else
	
	echo " Error!! $1 is not a valid directory"
	exit 1
fi
elif [[ $# -eq 1 ]]
then
	if [[ -d $1 ]]
	then
 k=0
 curdir=.
                for i in $curdir/*
                do
			
                        if [[ -f "$i" ]]
                        then
                        X=$(basename "$i")

                        if [[ !  -f "$1/$X.$Y" ]]
                        then
			
				((k=k+1))
                                echo "$X does not have a backup for today in $1"
                        fi
                else
                        echo "Error!! $curdir has no files"
                        exit 1
                fi
                done
                if [[ k -eq 0 ]]
                then
                        echo "3 All files in $curdir  have backups for today in $1"
                fi
	
	else
		echo "Error!! $1 is not a valid directory"
		exit 1
	fi
else
       	echo "Usage ./chkbackups.sh backupdirname [sourcedir]"
	exit 1
fi




