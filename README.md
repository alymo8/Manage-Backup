# Manage Backup
This bash script manages backups in a Unix environment

This code written in bash permits users to manage backups in the directories they have. The chkbackups.sh script can compare two directories to find if a file is backed up in the backup directory in a specific day. If it's not, the user will be notified. Then the user can execute the backup.sh script to backup the files he wants in the backup directory.

Here is a picture showing how the user checks if the files in the wanted directory have a copy in the backup directory using chkbackups.sh

![Screenshot (381)](https://user-images.githubusercontent.com/76274266/118408561-ca440a00-b68e-11eb-98ce-41e051020198.png)

We can see that all the files in the wanted directory are not backed up for the current day. Therefore the user chooses the files he wants to backup, and at the end, we can see that the files were backed up on the date specified as in the next picture 

![Screenshot (382)](https://user-images.githubusercontent.com/76274266/118408868-2196aa00-b690-11eb-8aa7-1651c8abb864.png)
