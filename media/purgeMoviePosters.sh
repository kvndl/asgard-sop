#!/bin/bash

# Purge directory of image files

directory='/home/noah/Portal/uno/media/movies'
findcmd=`find $directory -type f -name "*.jpg" -mtime +15 -print0`

echo '--- Found the following images ---'
echo $findcmd

# user input to confirm
echo "Confirm the deletion of the above?"
select yn in "Yes" "No"; do
    case $yn in
        Yes ) sudo $findcmd  | xargs -0 rm -v; break;;
        No ) exit;;
    esac
done